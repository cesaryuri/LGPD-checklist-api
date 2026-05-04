import { Request, Response } from "express";
import * as useCase from "@/domain/usecase/item";
import * as ucio from "@/domain/usecase/ucio/item";
import { Controller } from "./controller";
import {
  InternalServerErrorResponse,
  SuccessResponse,
} from "../response/response";

export class ListItemsController extends Controller {
  async execute(req: Request, res: Response) {
    const { principles, devices } = req.query;

    const ucReq: ucio.ListItemsUseCaseRequest = {
      principles: typeof principles === "string" ? principles.split(",").map(Number) : [],
      devices:
        typeof devices === "string" ? devices.split(",").map(Number) : [],
    };

    const itemRepository = this.factory.makeItemRepository();
    const principleRepository = this.factory.makePrincipleRepository();
    const deviceRepository = this.factory.makeDeviceRepository();
    const usecase = new useCase.ListItemsUseCase(
      itemRepository,
      principleRepository,
      deviceRepository,
    );
    const ucRes = await usecase.execute(ucReq);

    if (!ucRes.error) {
      new SuccessResponse().success(res, { items: ucRes.items });
    } else {
      new InternalServerErrorResponse().internalServerError(res, ucRes.error);
    }
  }
}
