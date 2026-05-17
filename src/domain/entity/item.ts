import { PrincipleEntity } from "./principle";

export class ItemEntity {
  public id: number;
  public code: string;
  public itemDesc: string;
  public recommendations: string;
  public deviceType: string;
  public principles?: PrincipleEntity[];

  constructor(
    id: number,
    code: string,
    itemDesc: string,
    recommendations: string,
    deviceType: string,
    principles?: PrincipleEntity[],
  ) {
    this.id = id;
    this.code = code;
    this.itemDesc = itemDesc;
    this.recommendations = recommendations;
    this.deviceType = deviceType;
    this.principles = principles;
  }
}
