import { Request, Response } from "express";
import { Controller } from "./controller";
import {
  InternalServerErrorResponse,
  SuccessResponse,
} from "../response/response";
import { DeviceType } from "@prisma/client";
import {
  newInternalServerError,
  INTERNAL_SERVER_ERROR_MESSAGE,
} from "../../../../domain/entity/error";

export class ListDevicesController extends Controller {
  async execute(req: Request, res: Response) {
    try {
      // Mapeia o Enum gerado pelo Prisma dinamicamente
      const devices = Object.values(DeviceType).map((value, index) => ({
        id: index + 1,
        name: value,
      }));

      new SuccessResponse().success(res, { devices });
    } catch (error) {
      console.error("[ListDevicesController] Erro inesperado:", error);

      new InternalServerErrorResponse().internalServerError(
        res,
        newInternalServerError(INTERNAL_SERVER_ERROR_MESSAGE),
      );
    }
  }
}
