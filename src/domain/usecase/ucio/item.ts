import { DeviceEntity } from "../../entity/device";
import { ItemEntity } from "../../entity/item";
import { PrincipleEntity } from "../../entity/principle";
import { BaseResponse } from "./common";

export type CreateItemUseCaseRequest = {
  code: string;
  itemDesc: string;
  recommendations: string;
  principleId: number;
  devicesIds: number[];
};

export type ListItemsUseCaseRequest = {
  principles: PrincipleEntity["id"][];
  devices: DeviceEntity["id"][];
};

export type ListItemsUseCaseResponse = BaseResponse & {
  items: ItemEntity[];
};
