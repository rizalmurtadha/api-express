/*
  Warnings:

  - The primary key for the `df_user` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `df_user` table. All the data in the column will be lost.
  - Added the required column `username` to the `df_user` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "df_user" DROP CONSTRAINT "df_user_pkey",
DROP COLUMN "id",
DROP COLUMN "username",
ADD COLUMN     "username" BIGINT NOT NULL,
ADD CONSTRAINT "df_user_pkey" PRIMARY KEY ("username");
