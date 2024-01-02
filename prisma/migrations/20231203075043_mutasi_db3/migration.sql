/*
  Warnings:

  - You are about to drop the column `agama_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `jenis_mutasi` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masa_kerja_bagian` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masa_kerja_jabatan` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `status_kerja_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `status_nikah_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `status_pegawai_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kode_jiwa` on the `df_sdm` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_agama_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_status_kerja_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_status_nikah_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_status_pegawai_id_fkey";

-- AlterTable
ALTER TABLE "df_kantor" ADD COLUMN     "KCU" TEXT,
ADD COLUMN     "Unit Kerja" TEXT;

-- AlterTable
ALTER TABLE "df_mutasi" DROP COLUMN "agama_id",
DROP COLUMN "jenis_mutasi",
DROP COLUMN "masa_kerja_bagian",
DROP COLUMN "masa_kerja_jabatan",
DROP COLUMN "status_kerja_id",
DROP COLUMN "status_nikah_id",
DROP COLUMN "status_pegawai_id",
ADD COLUMN     "durasi_bagian_sebelumnya" DOUBLE PRECISION,
ADD COLUMN     "durasi_bagian_unitkerja" DOUBLE PRECISION,
ADD COLUMN     "durasi_bagian_unitkerja_sebelumnya" DOUBLE PRECISION,
ADD COLUMN     "durasi_jabatan_sebelumnya" DOUBLE PRECISION,
ADD COLUMN     "durasi_jabatan_unitkerja" DOUBLE PRECISION,
ADD COLUMN     "durasi_jabatan_unitkerja_sebelumnya" DOUBLE PRECISION,
ADD COLUMN     "jenis_mutasi_id" BIGINT,
ADD COLUMN     "kategori_durasi_bagian_sebelumnya_id" BIGINT,
ADD COLUMN     "kategori_durasi_bagian_unitkerja_id" BIGINT,
ADD COLUMN     "kategori_durasi_bagian_unitkerja_sebelumnya_id" BIGINT,
ADD COLUMN     "kategori_durasi_jabatan_sebelumnya_id" BIGINT,
ADD COLUMN     "kategori_durasi_jabatan_unitkerja_id" BIGINT,
ADD COLUMN     "kategori_durasi_jabatan_unitkerja_sebelumnya_id" BIGINT,
ADD COLUMN     "masakerja_bagian" TEXT,
ADD COLUMN     "masakerja_bagian_sebelumnya" TEXT,
ADD COLUMN     "masakerja_bagian_unitkerja" TEXT,
ADD COLUMN     "masakerja_bagian_unitkerja_sebelumnya" TEXT,
ADD COLUMN     "masakerja_jabatan" TEXT,
ADD COLUMN     "masakerja_jabatan_sebelumnya" TEXT,
ADD COLUMN     "masakerja_jabatan_unitkerja" TEXT,
ADD COLUMN     "masakerja_jabatan_unitkerja_sebelumnya" TEXT,
ADD COLUMN     "rank_bagian" BIGINT,
ADD COLUMN     "rank_bagian_unitkerja" BIGINT,
ADD COLUMN     "rank_jabatan" BIGINT,
ADD COLUMN     "rank_jabatan_unitkerja" BIGINT,
ADD COLUMN     "tmt_bagian_unitkerja" TIMESTAMP(6),
ADD COLUMN     "tmt_jabatan_unitkerja" TIMESTAMP(6);

-- AlterTable
ALTER TABLE "df_sdm" DROP COLUMN "kode_jiwa",
ADD COLUMN     "agama_id" BIGINT,
ADD COLUMN     "kategori_durasi_masakerja_id" BIGINT,
ADD COLUMN     "masa_kerja" TEXT,
ADD COLUMN     "status_kerja_id" BIGINT,
ADD COLUMN     "status_nikah_id" BIGINT,
ADD COLUMN     "status_pegawai_id" BIGINT,
ADD COLUMN     "suskel" BIGINT;

-- CreateTable
CREATE TABLE "df_jenis_mutasi" (
    "jenis_mutasi_id" BIGINT NOT NULL,
    "jenis_mutasi" TEXT,

    CONSTRAINT "df_jenis_mutasi_pkey" PRIMARY KEY ("jenis_mutasi_id")
);

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_jenis_mutasi_id_fkey" FOREIGN KEY ("jenis_mutasi_id") REFERENCES "df_jenis_mutasi"("jenis_mutasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_bagian_sebelumnya_id_fkey" FOREIGN KEY ("kategori_durasi_bagian_sebelumnya_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_bagian_unitkerja_id_fkey" FOREIGN KEY ("kategori_durasi_bagian_unitkerja_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_bagian_unitkerja_sebelumnya_id_fkey" FOREIGN KEY ("kategori_durasi_bagian_unitkerja_sebelumnya_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_jabatan_sebelumnya_id_fkey" FOREIGN KEY ("kategori_durasi_jabatan_sebelumnya_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_jabatan_unitkerja_id_fkey" FOREIGN KEY ("kategori_durasi_jabatan_unitkerja_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_jabatan_unitkerja_sebelumnya_id_fkey" FOREIGN KEY ("kategori_durasi_jabatan_unitkerja_sebelumnya_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_agama_id_fkey" FOREIGN KEY ("agama_id") REFERENCES "df_agama"("agama_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_kategori_durasi_masakerja_id_fkey" FOREIGN KEY ("kategori_durasi_masakerja_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_status_kerja_id_fkey" FOREIGN KEY ("status_kerja_id") REFERENCES "df_status_kerja"("status_kerja_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_status_nikah_id_fkey" FOREIGN KEY ("status_nikah_id") REFERENCES "df_status_nikah"("status_nikah_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_status_pegawai_id_fkey" FOREIGN KEY ("status_pegawai_id") REFERENCES "df_status_pegawai"("status_pegawai_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
