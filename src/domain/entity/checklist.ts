import { ChecklistItemEntity } from "./checklistItem";

class ChecklistEntity {
  public id: number;
  public userId: number;
  public systemId: number;
  public checklistItems?: ChecklistItemEntity[];
  public deviceType?: string;
  public principles?: string;
  public createdAt?: Date;
  public updatedAt?: Date;

  constructor(
    id: number,
    userId: number,
    systemId: number,
    checklistItems?: ChecklistItemEntity[],
    principles?: string,
    deviceType?: string,
    createdAt?: Date,
    updatedAt?: Date,
  ) {
    this.id = id;
    this.userId = userId;
    this.systemId = systemId;
    this.checklistItems = checklistItems;
    this.principles = principles;
    this.deviceType = deviceType;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }
}

export { ChecklistEntity };
