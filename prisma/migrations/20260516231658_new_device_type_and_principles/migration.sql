/*
  Warnings:

  - You are about to drop the column `is_mandatory` on the `items` table. All the data in the column will be lost.
  - You are about to drop the column `principle_id` on the `items` table. All the data in the column will be lost.
  - You are about to drop the `_checklist_devices` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_checklist_principles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_item_devices` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `devices` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `device_type` to the `checklists` table without a default value. This is not possible if the table is not empty.
  - Added the required column `device_type` to the `items` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "DeviceType" AS ENUM ('Sensor', 'Wearable', 'Implantavel');

-- DropForeignKey
ALTER TABLE "_checklist_devices" DROP CONSTRAINT "_checklist_devices_A_fkey";

-- DropForeignKey
ALTER TABLE "_checklist_devices" DROP CONSTRAINT "_checklist_devices_B_fkey";

-- DropForeignKey
ALTER TABLE "_checklist_principles" DROP CONSTRAINT "_checklist_principles_A_fkey";

-- DropForeignKey
ALTER TABLE "_checklist_principles" DROP CONSTRAINT "_checklist_principles_B_fkey";

-- DropForeignKey
ALTER TABLE "_item_devices" DROP CONSTRAINT "_item_devices_A_fkey";

-- DropForeignKey
ALTER TABLE "_item_devices" DROP CONSTRAINT "_item_devices_B_fkey";

-- DropForeignKey
ALTER TABLE "items" DROP CONSTRAINT "items_principle_id_fkey";

-- AlterTable
ALTER TABLE "checklists" ADD COLUMN     "device_type" "DeviceType" NOT NULL;

-- AlterTable
ALTER TABLE "items" DROP COLUMN "is_mandatory",
DROP COLUMN "principle_id",
ADD COLUMN     "device_type" "DeviceType" NOT NULL;

-- DropTable
DROP TABLE "_checklist_devices";

-- DropTable
DROP TABLE "_checklist_principles";

-- DropTable
DROP TABLE "_item_devices";

-- DropTable
DROP TABLE "devices";

-- CreateTable
CREATE TABLE "_item_principles" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_item_principles_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_item_principles_B_index" ON "_item_principles"("B");

-- AddForeignKey
ALTER TABLE "_item_principles" ADD CONSTRAINT "_item_principles_A_fkey" FOREIGN KEY ("A") REFERENCES "items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_item_principles" ADD CONSTRAINT "_item_principles_B_fkey" FOREIGN KEY ("B") REFERENCES "principles"("id") ON DELETE CASCADE ON UPDATE CASCADE;
