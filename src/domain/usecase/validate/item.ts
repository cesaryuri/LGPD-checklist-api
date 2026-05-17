import * as z from "zod";
import { validateWithZod } from "./utils";
import { ValidateInterface } from ".";
import { ListItemsUseCaseRequest } from "../ucio/item";

export class ListItemsUseCaseValidate implements ValidateInterface {
  private validationSchema = z.object({
    deviceType: z.enum(["Sensor", "Wearable", "Implantavel"], {
      errorMap: () => ({
        message: "deviceType deve ser Sensor, Wearable ou Implantavel.",
      }),
    }),
  });

  async validate(req: ListItemsUseCaseRequest): Promise<string | null> {
    return await validateWithZod(() => this.validationSchema.parse(req));
  }
}
