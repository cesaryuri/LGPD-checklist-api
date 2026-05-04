import { ChecklistItemEntity } from "./checklistItem";
import { DeviceEntity } from "./device";
import { PrincipleEntity } from "./principle"; 

class ChecklistEntity {
  public id: number;
  public userId: number;
  public systemId: number;
  public checklistItems?: ChecklistItemEntity[];
  public principles?: PrincipleEntity[];
  public devices?: DeviceEntity[];
  public createdAt?: Date;
  public updatedAt?: Date;

  constructor(
    id: number,
    userId: number,
    systemId: number,
    checklistItems?: ChecklistItemEntity[],
    principles?: PrincipleEntity[],
    devices?: DeviceEntity[],
    createdAt?: Date,
    updatedAt?: Date,
  ) {
    this.id = id;
    this.userId = userId;
    this.systemId = systemId;
    this.checklistItems = checklistItems;
    this.principles = principles;
    this.devices = devices;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }
}

export { ChecklistEntity };
