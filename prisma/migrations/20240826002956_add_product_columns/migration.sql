/*
  Warnings:

  - You are about to drop the column `prize` on the `Product` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[slug]` on the table `Product` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `slug` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "prize",
ADD COLUMN     "price" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
ADD COLUMN     "sizes" TEXT[],
ADD COLUMN     "slug" TEXT NOT NULL,
ALTER COLUMN "description" DROP NOT NULL,
ALTER COLUMN "stock" SET DEFAULT 0;

-- CreateIndex
CREATE UNIQUE INDEX "Product_slug_key" ON "Product"("slug");
