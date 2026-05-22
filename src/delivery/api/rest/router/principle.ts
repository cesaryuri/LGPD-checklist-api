import { RepositoryFactory } from "../../../../domain/factory/repositoryFactory";
import { ListPrinciplesController } from "../controller/principle";
import { CustomRouter } from "./customRouter";

export class PrincipleRouter extends CustomRouter {
  constructor(factory: RepositoryFactory) {
    super();
    const list = new ListPrinciplesController(factory);
    this.router.get("/principles", list.execute.bind(list));
  }
}