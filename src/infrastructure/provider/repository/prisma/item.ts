import { ItemRepositoryInterface } from "../../../../domain/usecase/repository/item";
import { ItemEntity } from "../../../../domain/entity/item";
import {
  CreateItemUseCaseRequest,
  ListItemsUseCaseRequest,
} from "../../../../domain/usecase/ucio/item";
import { PrismaRepository } from "./repository";
import { Prisma } from "@prisma/client";
import { PrincipleEntity } from "../../../../domain/entity/principle";

class ItemPrismaRepository
  extends PrismaRepository
  implements ItemRepositoryInterface
{
  protected withTransaction(tx: Prisma.TransactionClient): this {
    return new ItemPrismaRepository(tx) as this;
  }

  createItem(req: CreateItemUseCaseRequest): Promise<ItemEntity> {
    throw new Error("Method not implemented." + req);
  }

  async itemsExistByIds(ids: number[]): Promise<number[]> {
    const items = await this.prisma.items.findMany({
      where: {
        id: { in: ids },
      },
    });

    return ids.filter((id) => !items.find((item) => item.id === id));
  }

  async list(req: ListItemsUseCaseRequest): Promise<ItemEntity[]> {
    const items = await this.prisma.items.findMany({
      where: {
        deviceType: req.deviceType as any,
      },
      include: {
        principles: true,
      },
    });

    return items.map(
      (item) =>
        new ItemEntity(
          item.id,
          item.code,
          item.itemDesc,
          item.recommendations,
          item.deviceType,
          item.principles.map((p) => new PrincipleEntity(p.id, p.name)),
        ),
    );
  }
}

export { ItemPrismaRepository };
