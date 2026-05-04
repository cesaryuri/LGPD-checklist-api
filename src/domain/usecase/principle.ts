import { PrincipleRepositoryInterface } from "./repository/principle";
import { PrincipleEntity } from "../entity/principle";
import { BaseResponse } from "./ucio/common";
import {
  INTERNAL_SERVER_ERROR_MESSAGE,
  newInternalServerError,
  TAG_INTERNAL_SERVER_ERROR,
} from "../entity/error";

type ListPrinciplesUseCaseResponse = BaseResponse & {
  principles: PrincipleEntity[];
};

export class ListPrinciplesUseCase {
  private principleRepository: PrincipleRepositoryInterface;

  constructor(principleRepository: PrincipleRepositoryInterface) {
    this.principleRepository = principleRepository;
  }

  async execute(): Promise<ListPrinciplesUseCaseResponse> {
    try {
      const principles = await this.principleRepository.list();
      return { principles, error: null };
    } catch (error) {
      console.log(`${TAG_INTERNAL_SERVER_ERROR} ${error}`);
      return {
        principles: null,
        error: newInternalServerError(INTERNAL_SERVER_ERROR_MESSAGE),
      };
    }
  }
}