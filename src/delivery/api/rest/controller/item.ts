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
    const { deviceType } = req.query;

    const ucReq: ucio.ListItemsUseCaseRequest = {
      deviceType: typeof deviceType === "string" ? deviceType : "",
    };

    const itemRepository = this.factory.makeItemRepository();
    const usecase = new useCase.ListItemsUseCase(itemRepository);
    const ucRes = await usecase.execute(ucReq);

    if (!ucRes.error) {
      new SuccessResponse().success(res, { items: ucRes.items });
    } else {
      new InternalServerErrorResponse().internalServerError(res, ucRes.error);
    }
  }
}
