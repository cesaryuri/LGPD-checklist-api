import { ItemEntity } from "../../entity/item";
import { BaseResponse } from "./common";

export type CreateItemUseCaseRequest = {
  code: string;
  itemDesc: string;
  recommendations: string;
  deviceType: string;
};

export type ListItemsUseCaseRequest = {
  deviceType: string;
};

export type ListItemsUseCaseResponse = BaseResponse & {
  items: ItemEntity[];
};
