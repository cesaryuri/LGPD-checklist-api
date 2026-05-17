import { DeviceEntity } from "./device";
import { PrincipleEntity } from "./principle";

export class ItemEntity {
  public id: number;
  public code: string;
  public itemDesc: string;
  public recommendations: string;
  public principleId: number;
  public principle?: PrincipleEntity;
  public devices?: DeviceEntity[];

  constructor(
    id: number,
    code: string,
    itemDesc: string,
    recommendations: string,
    principleId: number,
    principle?: PrincipleEntity,
    devices?: DeviceEntity[],
  ) {
    this.id = id;
    this.code = code;
    this.itemDesc = itemDesc;
    this.recommendations = recommendations;
    this.principleId = principleId;
    this.principle = principle;
    this.devices = devices;
  }
}
