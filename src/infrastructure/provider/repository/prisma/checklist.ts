import { ChecklistEntity } from "../../../../domain/entity/checklist";
import { Prisma, DeviceType } from "@prisma/client";
import {
  CreateChecklistUseCaseRequest,
  DeleteChecklistUseCaseRequest,
  ListChecklistsBySystemIdUseCaseRequest,
  ListChecklistsByUserIdUseCaseRequest,
  UpdateChecklistUseCaseRequest,
} from "../../../../domain/usecase/ucio/checklist";
import { ChecklistRepositoryInterface } from "../../../../domain/usecase/repository/checklist";
import {
  AnswerType,
  ChecklistItemEntity,
  SeverityDegreeType,
} from "../../../../domain/entity/checklistItem";
import { ItemEntity } from "../../../../domain/entity/item";
import { PrincipleEntity } from "../../../../domain/entity/principle";
import { PrismaRepository } from "./repository";

class ChecklistPrismaRepository
  extends PrismaRepository
  implements ChecklistRepositoryInterface
{
  items?: ChecklistEntity[];

  protected withTransaction(tx: Prisma.TransactionClient): this {
    return new ChecklistPrismaRepository(tx) as this;
  }

  async createChecklist(
    req: CreateChecklistUseCaseRequest,
  ): Promise<ChecklistEntity> {
    const checklist = await this.prisma.checklists.create({
      data: {
        userId: req.userId,
        systemId: req.systemId,
        deviceType: req.deviceType as DeviceType,
        ItemsChecklists: {
          createMany: {
            data: req.items.map((item) => ({
              itemId: item.id,
              answer: item.answer,
              severityDegree: item.severityDegree,
              userComment: item.userComment,
            })),
          },
        },
      },
      include: {
        ItemsChecklists: {
          include: {
            item: {
              include: {
                principles: true,
              },
            },
          },
        },
      },
    });

    return new ChecklistEntity(
      checklist.id,
      checklist.userId,
      checklist.systemId,
      checklist.ItemsChecklists.map(
        (itemChecklist) =>
          new ChecklistItemEntity(
            null,
            new ItemEntity(
              itemChecklist.item.id,
              itemChecklist.item.code,
              itemChecklist.item.itemDesc,
              itemChecklist.item.recommendations,
              itemChecklist.item.deviceType,
              itemChecklist.item.principles.map(
                (p) => new PrincipleEntity(p.id, p.name),
              ),
            ),
            itemChecklist.answer as AnswerType,
            itemChecklist.severityDegree as SeverityDegreeType,
            itemChecklist.userComment,
          ),
      ),
      undefined,
      checklist.deviceType,
    );
  }

  async getChecklist(id: number): Promise<ChecklistEntity> {
    const checklist = await this.prisma.checklists.findUnique({
      where: { id },
      include: {
        ItemsChecklists: {
          include: {
            item: {
              include: {
                principles: true,
              },
            },
          },
        },
      },
    });

    return checklist
      ? new ChecklistEntity(
          checklist.id,
          checklist.userId,
          checklist.systemId,
          checklist.ItemsChecklists.map(
            (itemChecklist) =>
              new ChecklistItemEntity(
                null,
                new ItemEntity(
                  itemChecklist.item.id,
                  itemChecklist.item.code,
                  itemChecklist.item.itemDesc,
                  itemChecklist.item.recommendations,
                  itemChecklist.item.deviceType,
                  itemChecklist.item.principles.map(
                    (p) => new PrincipleEntity(p.id, p.name),
                  ),
                ),
                itemChecklist.answer as AnswerType,
                itemChecklist.severityDegree as SeverityDegreeType,
                itemChecklist.userComment,
              ),
          ),
          undefined,
          checklist.deviceType,
          checklist.createdAt,
          checklist.updatedAt,
        )
      : null;
  }

  async deleteChecklist(req: DeleteChecklistUseCaseRequest): Promise<void> {
    await this.prisma.checklists.delete({
      where: { id: req.id },
    });
  }

  async updateChecklist(req: UpdateChecklistUseCaseRequest): Promise<void> {
    await this.prisma.checklists.update({
      where: { id: req.id },
      data: {
        systemId: req.systemId,
        deviceType: req.deviceType as DeviceType,
      },
    });
  }

  async listChecklistsByUserId(
    req: ListChecklistsByUserIdUseCaseRequest,
  ): Promise<ChecklistEntity[]> {
    const checklists = await this.prisma.checklists.findMany({
      where: { userId: req.userId },
      orderBy: { updatedAt: "desc" },
    });

    return checklists.map(
      (checklist) =>
        new ChecklistEntity(
          checklist.id,
          checklist.userId,
          checklist.systemId,
          null,
          null,
          checklist.deviceType,
          checklist.createdAt,
          checklist.updatedAt,
        ),
    );
  }

  async listChecklistsBySystemId(
    req: ListChecklistsBySystemIdUseCaseRequest,
  ): Promise<ChecklistEntity[]> {
    const checklists = await this.prisma.checklists.findMany({
      where: { systemId: req.systemId },
      orderBy: { updatedAt: "desc" },
    });

    return checklists.map(
      (checklist) =>
        new ChecklistEntity(
          checklist.id,
          checklist.userId,
          checklist.systemId,
          null,
          null,
          checklist.deviceType,
          checklist.createdAt,
          checklist.updatedAt,
        ),
    );
  }

  async getItems(id: number): Promise<ChecklistItemEntity[]> {
    const items = await this.prisma.checklistItems.findMany({
      where: { checklistId: id },
      include: {
        item: {
          include: {
            principles: true,
          },
        },
      },
    });

    return items.map(
      (item) =>
        new ChecklistItemEntity(
          null,
          new ItemEntity(
            item.item.id,
            item.item.code,
            item.item.itemDesc,
            item.item.recommendations,
            item.item.deviceType,
            item.item.principles.map((p) => new PrincipleEntity(p.id, p.name)),
          ),
          item.answer as AnswerType,
          item.severityDegree as SeverityDegreeType,
          item.userComment,
        ),
    );
  }

  async insertItems(id: number, items: ChecklistItemEntity[]): Promise<void> {
    await this.prisma.checklists.update({
      where: { id },
      data: {
        ItemsChecklists: {
          createMany: {
            data: items.map((item) => ({
              itemId: item.item.id,
              answer: item.answer,
              severityDegree: item.severityDegree,
              userComment: item.userComment,
            })),
          },
        },
      },
    });
  }

  async removeItems(id: number, itemsIds: number[]): Promise<void> {
    await this.prisma.checklistItems.deleteMany({
      where: {
        AND: {
          checklistId: id,
          itemId: { in: itemsIds },
        },
      },
    });
  }

  async updateItem(id: number, item: ChecklistItemEntity): Promise<void> {
    await this.prisma.checklistItems.update({
      where: { checklistId_itemId: { checklistId: id, itemId: item.item.id } },
      data: {
        answer: item.answer,
        severityDegree: item.severityDegree,
        userComment: item.userComment,
      },
    });
  }

  async derivePrinciples(checklistId: number): Promise<string> {
    const items = await this.prisma.checklistItems.findMany({
      where: { checklistId },
      include: { item: { include: { principles: true } } },
    });

    const names = new Set<string>();
    items.forEach((item) => {
      item.item.principles.forEach((p) => names.add(p.name));
    });

    return Array.from(names).join(", ");
  }

  async savePrinciples(checklistId: number, principles: string): Promise<void> {
    await this.prisma.checklists.update({
      where: { id: checklistId },
      data: { principles },
    });
  }
}

export { ChecklistPrismaRepository };
