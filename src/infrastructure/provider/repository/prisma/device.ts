import { DeviceEntity } from "../../../../domain/entity/device";
import { DeviceRepositoryInterface } from "../../../../domain/usecase/repository/device";
import { CreateDeviceUseCaseRequest } from "../../../../domain/usecase/ucio/device";
import { PrismaRepository } from "./repository";
import { Prisma } from "@prisma/client";

export class DevicePrismaRepository
  extends PrismaRepository
  implements DeviceRepositoryInterface
{
  protected withTransaction(tx: Prisma.TransactionClient): this {
    return new DevicePrismaRepository(tx) as this;
  }

  create(req: CreateDeviceUseCaseRequest): Promise<DeviceEntity> {
    throw new Error("Method not implemented." + req);
  }

  async existByIds(ids: number[]): Promise<number[]> {
    throw new Error("Method not implemented." + ids);
  }

  async list(): Promise<DeviceEntity[]> {
    return [
      new DeviceEntity(1, "Sensor"),
      new DeviceEntity(2, "Wearable"),
      new DeviceEntity(3, "Implantavel"),
    ];
  }
}
