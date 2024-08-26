-- CreateTable
CREATE TABLE "Product" (
    "id" SERIAL NOT NULL,
    "title" VARCHAR(30) NOT NULL,
    "description" TEXT NOT NULL,
    "type" VARCHAR(30) NOT NULL,
    "stock" INTEGER NOT NULL,
    "prize" DOUBLE PRECISION NOT NULL,
    "gender" VARCHAR(10) NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);
