import { ChecklistEntity } from "../../entity/checklist";
import { ChecklistItemEntity } from "../../entity/checklistItem";

import {
  CreateChecklistUseCaseRequest,
  DeleteChecklistUseCaseRequest,
  ListChecklistsBySystemIdUseCaseRequest,
  ListChecklistsByUserIdUseCaseRequest,
  UpdateChecklistUseCaseRequest,
} from "../ucio/checklist";

interface ChecklistRepositoryInterface {
  // apenas para testes
  items?: ChecklistEntity[];

  createChecklist(req: CreateChecklistUseCaseRequest): Promise<ChecklistEntity>;
  getChecklist(id: number): Promise<ChecklistEntity>;
  deleteChecklist(req: DeleteChecklistUseCaseRequest): Promise<void>;
  updateChecklist(req: UpdateChecklistUseCaseRequest): Promise<void>;
  listChecklistsByUserId(
    req: ListChecklistsByUserIdUseCaseRequest,
  ): Promise<ChecklistEntity[]>;
  listChecklistsBySystemId(
    req: ListChecklistsBySystemIdUseCaseRequest,
  ): Promise<ChecklistEntity[]>;

  // items
  getItems(id: number): Promise<ChecklistItemEntity[]>;
  insertItems(id: number, items: ChecklistItemEntity[]): Promise<void>;
  removeItems(id: number, itemsIds: number[]): Promise<void>;
  updateItem(id: number, item: ChecklistItemEntity): Promise<void>;

  runInTransaction<T>(fn: (repo: this) => Promise<T>): Promise<T>;
}

export { ChecklistRepositoryInterface };
