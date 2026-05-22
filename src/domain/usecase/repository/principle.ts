import { PrincipleEntity } from "../../entity/principle";

export interface PrincipleRepositoryInterface {
  items?: PrincipleEntity[];
  create(data: { name: string }): Promise<PrincipleEntity>;
  existByIds(ids: number[]): Promise<number[]>;
  list(): Promise<PrincipleEntity[]>;
}