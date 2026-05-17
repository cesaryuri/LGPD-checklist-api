import { PrismaClient } from "@prisma/client";
import { AuthJWTRepository } from "../auth";
import { ChecklistPrismaRepository } from "./checklist";
import { ItemPrismaRepository } from "./item";
import { SystemPrismaRepository } from "./system";
import { UserPrismaRepository } from "./user";
import { AuthRepositoryInterface } from "../../../../domain/usecase/repository/auth";
import { ChecklistRepositoryInterface } from "../../../../domain/usecase/repository/checklist";
import { ItemRepositoryInterface } from "../../../../domain/usecase/repository/item";
import { SystemRepositoryInterface } from "../../../../domain/usecase/repository/system";
import { UserRepositoryInterface } from "../../../../domain/usecase/repository/user";
import { RepositoryFactory } from "../../../../domain/factory/repositoryFactory";
import { PrinciplePrismaRepository } from "./principle";
import { PrincipleRepositoryInterface } from "../../../../domain/usecase/repository/principle";

export class PrismaRepositoryFactory implements RepositoryFactory {
  constructor(private prisma: PrismaClient) {}

  makeUserRepository(): UserRepositoryInterface {
    return new UserPrismaRepository(this.prisma);
  }

  makeSystemRepository(): SystemRepositoryInterface {
    return new SystemPrismaRepository(this.prisma);
  }

  makeChecklistRepository(): ChecklistRepositoryInterface {
    return new ChecklistPrismaRepository(this.prisma);
  }

  makeItemRepository(): ItemRepositoryInterface {
    return new ItemPrismaRepository(this.prisma);
  }

  makePrincipleRepository(): PrincipleRepositoryInterface {
    return new PrinciplePrismaRepository(this.prisma);
  }

  makeAuthRepository(): AuthRepositoryInterface {
    return new AuthJWTRepository();
  }
}
