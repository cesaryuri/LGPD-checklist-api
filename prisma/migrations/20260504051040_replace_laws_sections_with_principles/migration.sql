/*
  Warnings:

  - You are about to drop the column `section_id` on the `items` table. All the data in the column will be lost.
  - You are about to drop the `_checklist_laws` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_item_laws` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `laws` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `sections` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `principle_id` to the `items` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_checklist_laws" DROP CONSTRAINT "_checklist_laws_A_fkey";

-- DropForeignKey
ALTER TABLE "_checklist_laws" DROP CONSTRAINT "_checklist_laws_B_fkey";

-- DropForeignKey
ALTER TABLE "_item_laws" DROP CONSTRAINT "_item_laws_A_fkey";

-- DropForeignKey
ALTER TABLE "_item_laws" DROP CONSTRAINT "_item_laws_B_fkey";

-- DropForeignKey
ALTER TABLE "items" DROP CONSTRAINT "items_section_id_fkey";

-- AlterTable
ALTER TABLE "_checklist_devices" ADD CONSTRAINT "_checklist_devices_AB_pkey" PRIMARY KEY ("A", "B");

-- DropIndex
DROP INDEX "_checklist_devices_AB_unique";

-- AlterTable
ALTER TABLE "_item_devices" ADD CONSTRAINT "_item_devices_AB_pkey" PRIMARY KEY ("A", "B");

-- DropIndex
DROP INDEX "_item_devices_AB_unique";

-- AlterTable
ALTER TABLE "items" DROP COLUMN "section_id",
ADD COLUMN     "principle_id" INTEGER NOT NULL;

-- DropTable
DROP TABLE "_checklist_laws";

-- DropTable
DROP TABLE "_item_laws";

-- DropTable
DROP TABLE "laws";

-- DropTable
DROP TABLE "sections";

-- CreateTable
CREATE TABLE "principles" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "principles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_checklist_principles" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_checklist_principles_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_checklist_principles_B_index" ON "_checklist_principles"("B");

-- AddForeignKey
ALTER TABLE "items" ADD CONSTRAINT "items_principle_id_fkey" FOREIGN KEY ("principle_id") REFERENCES "principles"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_checklist_principles" ADD CONSTRAINT "_checklist_principles_A_fkey" FOREIGN KEY ("A") REFERENCES "checklists"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_checklist_principles" ADD CONSTRAINT "_checklist_principles_B_fkey" FOREIGN KEY ("B") REFERENCES "principles"("id") ON DELETE CASCADE ON UPDATE CASCADE;
