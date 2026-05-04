import { Request, Response } from "express";
import * as useCase from "@/domain/usecase/principle";
import { Controller } from "./controller";
import { InternalServerErrorResponse, SuccessResponse } from "../response/response";

export class ListPrinciplesController extends Controller {
  async execute(req: Request, res: Response) {
    const principleRepository = this.factory.makePrincipleRepository();
    const ucRes = await new useCase.ListPrinciplesUseCase(principleRepository).execute();

    if (!ucRes.error) {
      new SuccessResponse().success(res, { principles: ucRes.principles });
    } else {
      new InternalServerErrorResponse().internalServerError(res, ucRes.error);
    }
  }
}