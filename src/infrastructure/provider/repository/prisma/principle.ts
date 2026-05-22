import { Prisma } from "@prisma/client";
import { PrincipleEntity } from "../../../../domain/entity/principle";
import { PrincipleRepositoryInterface } from "../../../../domain/usecase/repository/principle";
import { PrismaRepository } from "./repository";

export class PrinciplePrismaRepository
  extends PrismaRepository
  implements PrincipleRepositoryInterface
{
  protected withTransaction(tx: Prisma.TransactionClient): this {
    return new PrinciplePrismaRepository(tx) as this;
  }

  async create(data: { name: string }): Promise<PrincipleEntity> {
    const p = await this.prisma.principles.create({ data: { name: data.name } });
    return new PrincipleEntity(p.id, p.name);
  }

  async existByIds(ids: number[]): Promise<number[]> {
    const found = await this.prisma.principles.findMany({ where: { id: { in: ids } } });
    return ids.filter((id) => !found.find((p) => p.id === id));
  }

  async list(): Promise<PrincipleEntity[]> {
    const all = await this.prisma.principles.findMany();
    return all.map((p) => new PrincipleEntity(p.id, p.name));
  }
}