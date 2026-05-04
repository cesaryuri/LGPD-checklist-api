import * as z from "zod";
import { validateWithZod, zodNumberSchema } from "./utils";
import { ValidateInterface } from ".";
import { ListItemsUseCaseRequest } from "../ucio/item";
import { PrincipleRepositoryInterface } from "../repository/principle";
import { DeviceRepositoryInterface } from "../repository/device";

export class ListItemsUseCaseValidate implements ValidateInterface {
  private principleRepository: PrincipleRepositoryInterface;
  private deviceRepository: DeviceRepositoryInterface;
  private validationSchema = z.object({
    principles: zodNumberSchema("principles").array().nonempty({
      message: "Principles não pode ser um array vazio.",
    }),
    devices: zodNumberSchema("devices").array(),
  });

  constructor(
    principleRepository: PrincipleRepositoryInterface,
    deviceRepository: DeviceRepositoryInterface,
  ) {
    this.principleRepository = principleRepository;
    this.deviceRepository = deviceRepository;
  }

  async validate(req: ListItemsUseCaseRequest): Promise<string | null> {
    return await validateWithZod(
      () => this.validationSchema.parse(req),
      async () => {
        const principles = await this.principleRepository.existByIds(req.principles);

        if (principles.length)
          return "Os seguintes ids de princípios não existem: " + principles.join(", ");

        const devices = await this.deviceRepository.existByIds(req.devices);

        if (devices.length)
          return (
            "Os seguintes ids de dispositivos não existem: " +
            devices.join(", ")
          );

        return null;
      },
    );
  }
}
