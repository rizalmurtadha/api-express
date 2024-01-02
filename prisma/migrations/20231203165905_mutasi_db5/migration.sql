/*
  Warnings:

  - The primary key for the `df_agama` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `agama` on the `df_agama` table. All the data in the column will be lost.
  - You are about to drop the column `agama_id` on the `df_agama` table. All the data in the column will be lost.
  - The primary key for the `df_bagian` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `bagian` on the `df_bagian` table. All the data in the column will be lost.
  - You are about to drop the column `bagian_id` on the `df_bagian` table. All the data in the column will be lost.
  - You are about to drop the column `status_bagian` on the `df_bagian` table. All the data in the column will be lost.
  - The primary key for the `df_jabatan` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `jabatan_id` on the `df_jabatan` table. All the data in the column will be lost.
  - You are about to drop the column `KCU` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `Unit Kerja` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `jenis_relasi` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `kelas_kantor_id` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `kode_level` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `nama_kantor` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `regional_id` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `singkatan_kelas_kantor` on the `df_kantor` table. All the data in the column will be lost.
  - You are about to drop the column `status_aktif` on the `df_kantor` table. All the data in the column will be lost.
  - The primary key for the `df_mutasi` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `bagian_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_bagian` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_bagian_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_bagian_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_bagian_unitkerja_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_jabatan` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_jabatan_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_jabatan_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `durasi_jabatan_unitkerja_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `jabatan_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `jenis_mutasi_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_bagian_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_bagian_sebelumnya_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_bagian_unitkerja_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_bagian_unitkerja_sebelumnya_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_jabatan_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_jabatan_sebelumnya_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_jabatan_unitkerja_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_jabatan_unitkerja_sebelumnya_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `level_jabatan` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_bagian` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_bagian_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_bagian_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_bagian_unitkerja_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_jabatan` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_jabatan_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_jabatan_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `masakerja_jabatan_unitkerja_sebelumnya` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `mutasi_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `next_tmt` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `nomor_sk` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `nopend_asal` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `nopend_tujuan` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `posisi_id` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `rank_bagian` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `rank_bagian_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `rank_jabatan` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `rank_jabatan_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_aktif` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_brgkt` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_insert` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_sk` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_skep` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `tmt_bagian_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `tmt_jabatan_unitkerja` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `uid_insert` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `uid_update` on the `df_mutasi` table. All the data in the column will be lost.
  - You are about to drop the column `wkt_update` on the `df_mutasi` table. All the data in the column will be lost.
  - The primary key for the `df_posisi` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `posisi_id` on the `df_posisi` table. All the data in the column will be lost.
  - The primary key for the `df_regional` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `regional_id` on the `df_regional` table. All the data in the column will be lost.
  - You are about to drop the column `agama_id` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `golongan_darah` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `jenis_kelamin` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `kategori_durasi_masakerja_id` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `kodepos` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `masa_kerja` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `masih_hidup` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `no_urut` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `status_kerja_id` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `status_nikah_id` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `status_pegawai_id` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `status_transfer` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `sudah_berhenti` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `suskel` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `tempat_lahir` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_berhenti` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_disumpah` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_kerja` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_lahir` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `tgl_meninggal` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to drop the column `total_grade` on the `df_sdm` table. All the data in the column will be lost.
  - You are about to alter the column `status` on the `df_sdm` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `BigInt`.
  - You are about to drop the `df_jenis_mutasi` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `df_kategori_durasi` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `df_kelas_kantor` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `df_status_kerja` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `df_status_nikah` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `df_status_pegawai` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `kodagm` to the `df_agama` table without a default value. This is not possible if the table is not empty.
  - Added the required column `kodebagian` to the `df_bagian` table without a default value. This is not possible if the table is not empty.
  - Made the column `jabatan` on table `df_jabatan` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `idx` to the `df_mutasi` table without a default value. This is not possible if the table is not empty.
  - Added the required column `posisi` to the `df_posisi` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idwilayah` to the `df_regional` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "df_kantor" DROP CONSTRAINT "df_kantor_kelas_kantor_id_fkey";

-- DropForeignKey
ALTER TABLE "df_kantor" DROP CONSTRAINT "df_kantor_regional_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_bagian_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_jabatan_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_jenis_mutasi_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_bagian_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_bagian_sebelumnya_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_bagian_unitkerja_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_bagian_unitkerja_sebelumnya_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_jabatan_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_jabatan_sebelumnya_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_jabatan_unitkerja_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_kategori_durasi_jabatan_unitkerja_sebelumnya_id_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_nopend_asal_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_nopend_tujuan_fkey";

-- DropForeignKey
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_posisi_id_fkey";

-- DropForeignKey
ALTER TABLE "df_sdm" DROP CONSTRAINT "df_sdm_agama_id_fkey";

-- DropForeignKey
ALTER TABLE "df_sdm" DROP CONSTRAINT "df_sdm_kategori_durasi_masakerja_id_fkey";

-- DropForeignKey
ALTER TABLE "df_sdm" DROP CONSTRAINT "df_sdm_status_kerja_id_fkey";

-- DropForeignKey
ALTER TABLE "df_sdm" DROP CONSTRAINT "df_sdm_status_nikah_id_fkey";

-- DropForeignKey
ALTER TABLE "df_sdm" DROP CONSTRAINT "df_sdm_status_pegawai_id_fkey";

-- AlterTable
ALTER TABLE "df_agama" DROP CONSTRAINT "df_agama_pkey",
DROP COLUMN "agama",
DROP COLUMN "agama_id",
ADD COLUMN     "deskripsi" TEXT,
ADD COLUMN     "kodagm" BIGINT NOT NULL,
ADD CONSTRAINT "df_agama_pkey" PRIMARY KEY ("kodagm");

-- AlterTable
ALTER TABLE "df_bagian" DROP CONSTRAINT "df_bagian_pkey",
DROP COLUMN "bagian",
DROP COLUMN "bagian_id",
DROP COLUMN "status_bagian",
ADD COLUMN     "grupbag" TEXT,
ADD COLUMN     "kodebagian" TEXT NOT NULL,
ADD COLUMN     "namabagian" TEXT,
ADD COLUMN     "statusaktif" TEXT,
ADD CONSTRAINT "df_bagian_pkey" PRIMARY KEY ("kodebagian");

-- AlterTable
ALTER TABLE "df_jabatan" DROP CONSTRAINT "df_jabatan_pkey",
DROP COLUMN "jabatan_id",
ADD COLUMN     "descjabatan" TEXT,
ALTER COLUMN "jabatan" SET NOT NULL,
ADD CONSTRAINT "df_jabatan_pkey" PRIMARY KEY ("jabatan");

-- AlterTable
ALTER TABLE "df_kantor" DROP COLUMN "KCU",
DROP COLUMN "Unit Kerja",
DROP COLUMN "jenis_relasi",
DROP COLUMN "kelas_kantor_id",
DROP COLUMN "kode_level",
DROP COLUMN "nama_kantor",
DROP COLUMN "regional_id",
DROP COLUMN "singkatan_kelas_kantor",
DROP COLUMN "status_aktif",
ADD COLUMN     "idjenisrelasi" BIGINT,
ADD COLUMN     "idkelaskantor" BIGINT,
ADD COLUMN     "idwilayah" BIGINT,
ADD COLUMN     "kdlevel" BIGINT,
ADD COLUMN     "namaktr" TEXT,
ADD COLUMN     "statusaktif" TEXT,
ADD COLUMN     "waktu_update" TEXT;

-- AlterTable
ALTER TABLE "df_mutasi" DROP CONSTRAINT "df_mutasi_pkey",
DROP COLUMN "bagian_id",
DROP COLUMN "durasi_bagian",
DROP COLUMN "durasi_bagian_sebelumnya",
DROP COLUMN "durasi_bagian_unitkerja",
DROP COLUMN "durasi_bagian_unitkerja_sebelumnya",
DROP COLUMN "durasi_jabatan",
DROP COLUMN "durasi_jabatan_sebelumnya",
DROP COLUMN "durasi_jabatan_unitkerja",
DROP COLUMN "durasi_jabatan_unitkerja_sebelumnya",
DROP COLUMN "jabatan_id",
DROP COLUMN "jenis_mutasi_id",
DROP COLUMN "kategori_durasi_bagian_id",
DROP COLUMN "kategori_durasi_bagian_sebelumnya_id",
DROP COLUMN "kategori_durasi_bagian_unitkerja_id",
DROP COLUMN "kategori_durasi_bagian_unitkerja_sebelumnya_id",
DROP COLUMN "kategori_durasi_jabatan_id",
DROP COLUMN "kategori_durasi_jabatan_sebelumnya_id",
DROP COLUMN "kategori_durasi_jabatan_unitkerja_id",
DROP COLUMN "kategori_durasi_jabatan_unitkerja_sebelumnya_id",
DROP COLUMN "level_jabatan",
DROP COLUMN "masakerja_bagian",
DROP COLUMN "masakerja_bagian_sebelumnya",
DROP COLUMN "masakerja_bagian_unitkerja",
DROP COLUMN "masakerja_bagian_unitkerja_sebelumnya",
DROP COLUMN "masakerja_jabatan",
DROP COLUMN "masakerja_jabatan_sebelumnya",
DROP COLUMN "masakerja_jabatan_unitkerja",
DROP COLUMN "masakerja_jabatan_unitkerja_sebelumnya",
DROP COLUMN "mutasi_id",
DROP COLUMN "next_tmt",
DROP COLUMN "nomor_sk",
DROP COLUMN "nopend_asal",
DROP COLUMN "nopend_tujuan",
DROP COLUMN "posisi_id",
DROP COLUMN "rank_bagian",
DROP COLUMN "rank_bagian_unitkerja",
DROP COLUMN "rank_jabatan",
DROP COLUMN "rank_jabatan_unitkerja",
DROP COLUMN "tgl_aktif",
DROP COLUMN "tgl_brgkt",
DROP COLUMN "tgl_insert",
DROP COLUMN "tgl_sk",
DROP COLUMN "tgl_skep",
DROP COLUMN "tmt_bagian_unitkerja",
DROP COLUMN "tmt_jabatan_unitkerja",
DROP COLUMN "uid_insert",
DROP COLUMN "uid_update",
DROP COLUMN "wkt_update",
ADD COLUMN     "bagiansebelumnya" TEXT,
ADD COLUMN     "bagianunitkerjasebelumnya" TEXT,
ADD COLUMN     "durasibagian" DOUBLE PRECISION,
ADD COLUMN     "durasibagiansebelumnya" DOUBLE PRECISION,
ADD COLUMN     "durasibagianunitkerja" DOUBLE PRECISION,
ADD COLUMN     "durasibagianunitkerjasebelumnya" DOUBLE PRECISION,
ADD COLUMN     "durasijabatan" DOUBLE PRECISION,
ADD COLUMN     "durasijabatansebelumnya" DOUBLE PRECISION,
ADD COLUMN     "durasijabatanunitkerja" DOUBLE PRECISION,
ADD COLUMN     "durasijabatanunitkerjasebelumnya" DOUBLE PRECISION,
ADD COLUMN     "idx" BIGINT NOT NULL,
ADD COLUMN     "jabatan" TEXT,
ADD COLUMN     "jabatansebelumnya" TEXT,
ADD COLUMN     "jabatanunitkerjasebelumnya" TEXT,
ADD COLUMN     "jenismutasiid" BIGINT,
ADD COLUMN     "kategoridurasibagian" TEXT,
ADD COLUMN     "kategoridurasibagiansebelumnya" TEXT,
ADD COLUMN     "kategoridurasibagianunitkerja" TEXT,
ADD COLUMN     "kategoridurasibagianunitkerjasebelumnya" TEXT,
ADD COLUMN     "kategoridurasijabatan" TEXT,
ADD COLUMN     "kategoridurasijabatansebelumnya" TEXT,
ADD COLUMN     "kategoridurasijabatanunitkerja" TEXT,
ADD COLUMN     "kategoridurasijabatanunitkerjasebelumnya" TEXT,
ADD COLUMN     "kodebagian" TEXT,
ADD COLUMN     "leveljabatan" TEXT,
ADD COLUMN     "masakerjabagian" TEXT,
ADD COLUMN     "masakerjabagiansebelumnya" TEXT,
ADD COLUMN     "masakerjabagianunitkerja" TEXT,
ADD COLUMN     "masakerjabagianunitkerjasebelumnya" TEXT,
ADD COLUMN     "masakerjajabatan" TEXT,
ADD COLUMN     "masakerjajabatansebelumnya" TEXT,
ADD COLUMN     "masakerjajabatanunitkerja" TEXT,
ADD COLUMN     "masakerjajabatanunitkerjasebelumnya" TEXT,
ADD COLUMN     "nomorsk" TEXT,
ADD COLUMN     "nopendasal" TEXT,
ADD COLUMN     "nopendtujuan" TEXT,
ADD COLUMN     "posisi" BIGINT,
ADD COLUMN     "tglaktif" TIMESTAMP(6),
ADD COLUMN     "tglbrkt" TIMESTAMP(6),
ADD COLUMN     "tglinsert" TIMESTAMP(6),
ADD COLUMN     "tglsk" TIMESTAMP(6),
ADD COLUMN     "tglskep" TIMESTAMP(6),
ADD COLUMN     "tmt_bagiansebelumnya" TIMESTAMP(6),
ADD COLUMN     "tmt_bagianunitkerja" TIMESTAMP(6),
ADD COLUMN     "tmt_bagianunitkerjasebelumnya" TIMESTAMP(6),
ADD COLUMN     "tmt_jabatansebelumnya" TIMESTAMP(6),
ADD COLUMN     "tmt_jabatanunitkerja" TIMESTAMP(6),
ADD COLUMN     "tmt_jabatanunitkerjasebelumnya" TIMESTAMP(6),
ADD COLUMN     "uidinsert" TEXT,
ADD COLUMN     "uidupdate" TEXT,
ADD COLUMN     "unitkerjabagiansebelumnya" TEXT,
ADD COLUMN     "unitkerjajabatansebelumnya" TEXT,
ADD COLUMN     "wktupdate" TIMESTAMP(6),
ALTER COLUMN "status" SET DATA TYPE TEXT,
ALTER COLUMN "rumpun" SET DATA TYPE TEXT,
ALTER COLUMN "rank" SET DATA TYPE DOUBLE PRECISION,
ADD CONSTRAINT "df_mutasi_pkey" PRIMARY KEY ("idx");

-- AlterTable
ALTER TABLE "df_posisi" DROP CONSTRAINT "df_posisi_pkey",
DROP COLUMN "posisi_id",
ADD COLUMN     "deskripsi" TEXT,
DROP COLUMN "posisi",
ADD COLUMN     "posisi" BIGINT NOT NULL,
ADD CONSTRAINT "df_posisi_pkey" PRIMARY KEY ("posisi");

-- AlterTable
ALTER TABLE "df_regional" DROP CONSTRAINT "df_regional_pkey",
DROP COLUMN "regional_id",
ADD COLUMN     "divre" BIGINT,
ADD COLUMN     "idwilayah" BIGINT NOT NULL,
ADD CONSTRAINT "df_regional_pkey" PRIMARY KEY ("idwilayah");

-- AlterTable
ALTER TABLE "df_sdm" DROP COLUMN "agama_id",
DROP COLUMN "golongan_darah",
DROP COLUMN "jenis_kelamin",
DROP COLUMN "kategori_durasi_masakerja_id",
DROP COLUMN "kodepos",
DROP COLUMN "masa_kerja",
DROP COLUMN "masih_hidup",
DROP COLUMN "no_urut",
DROP COLUMN "status_kerja_id",
DROP COLUMN "status_nikah_id",
DROP COLUMN "status_pegawai_id",
DROP COLUMN "status_transfer",
DROP COLUMN "sudah_berhenti",
DROP COLUMN "suskel",
DROP COLUMN "tempat_lahir",
DROP COLUMN "tgl_berhenti",
DROP COLUMN "tgl_disumpah",
DROP COLUMN "tgl_kerja",
DROP COLUMN "tgl_lahir",
DROP COLUMN "tgl_meninggal",
DROP COLUMN "total_grade",
ADD COLUMN     "durasimasakerja" DOUBLE PRECISION,
ADD COLUMN     "goldarah" TEXT,
ADD COLUMN     "jnskel" TEXT,
ADD COLUMN     "kategoridurasimasakerja" TEXT,
ADD COLUMN     "kdjiwa" BIGINT,
ADD COLUMN     "kdpos" BIGINT,
ADD COLUMN     "kodagm" BIGINT,
ADD COLUMN     "masakerja" TEXT,
ADD COLUMN     "nourut" BIGINT,
ADD COLUMN     "statuskerja" TEXT,
ADD COLUMN     "statusnikah" TEXT,
ADD COLUMN     "statuspegawai" BIGINT,
ADD COLUMN     "statustransfer" BIGINT,
ADD COLUMN     "tempatlahir" TEXT,
ADD COLUMN     "tglberhenti" TIMESTAMP(6),
ADD COLUMN     "tgldisumpah" TIMESTAMP(6),
ADD COLUMN     "tglkerja" TIMESTAMP(6),
ADD COLUMN     "tgllahir" TIMESTAMP(6),
ADD COLUMN     "tglmeninggal" TIMESTAMP(6),
ADD COLUMN     "totalgrade" BIGINT,
ALTER COLUMN "status" SET DATA TYPE BIGINT;

-- DropTable
DROP TABLE "df_jenis_mutasi";

-- DropTable
DROP TABLE "df_kategori_durasi";

-- DropTable
DROP TABLE "df_kelas_kantor";

-- DropTable
DROP TABLE "df_status_kerja";

-- DropTable
DROP TABLE "df_status_nikah";

-- DropTable
DROP TABLE "df_status_pegawai";

-- CreateTable
CREATE TABLE "df_jenismutasi" (
    "idjenismutasi" BIGINT NOT NULL,
    "jenismutasi" TEXT,

    CONSTRAINT "df_jenismutasi_pkey" PRIMARY KEY ("idjenismutasi")
);

-- CreateTable
CREATE TABLE "df_jenisrelasi" (
    "idjenisrelasi" BIGINT NOT NULL,
    "jenisrelasi" TEXT,

    CONSTRAINT "df_jenisrelasi_pkey" PRIMARY KEY ("idjenisrelasi")
);

-- CreateTable
CREATE TABLE "df_kelaskantor" (
    "idkelaskantor" BIGINT NOT NULL,
    "deskripsikelaskantor" TEXT,
    "singkatankelaskantor" TEXT,

    CONSTRAINT "df_kelaskantor_pkey" PRIMARY KEY ("idkelaskantor")
);

-- CreateTable
CREATE TABLE "df_statuskerja" (
    "statuskerja" TEXT NOT NULL,
    "deskripsi" TEXT,
    "konstanta" DOUBLE PRECISION,
    "status" TEXT,

    CONSTRAINT "df_statuskerja_pkey" PRIMARY KEY ("statuskerja")
);

-- CreateTable
CREATE TABLE "df_statusnikah" (
    "statusnikah" TEXT NOT NULL,
    "deskripsi" TEXT,

    CONSTRAINT "df_statusnikah_pkey" PRIMARY KEY ("statusnikah")
);

-- CreateTable
CREATE TABLE "df_statuspegawai" (
    "statuspegawai" BIGINT NOT NULL,
    "deskripsi" TEXT,

    CONSTRAINT "df_statuspegawai_pkey" PRIMARY KEY ("statuspegawai")
);

-- AddForeignKey
ALTER TABLE "df_kantor" ADD CONSTRAINT "df_kantor_idjenisrelasi_fkey" FOREIGN KEY ("idjenisrelasi") REFERENCES "df_jenisrelasi"("idjenisrelasi") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_kantor" ADD CONSTRAINT "df_kantor_idkelaskantor_fkey" FOREIGN KEY ("idkelaskantor") REFERENCES "df_kelaskantor"("idkelaskantor") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_kantor" ADD CONSTRAINT "df_kantor_idwilayah_fkey" FOREIGN KEY ("idwilayah") REFERENCES "df_regional"("idwilayah") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_jabatan_fkey" FOREIGN KEY ("jabatan") REFERENCES "df_jabatan"("jabatan") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_jenismutasiid_fkey" FOREIGN KEY ("jenismutasiid") REFERENCES "df_jenismutasi"("idjenismutasi") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kodebagian_fkey" FOREIGN KEY ("kodebagian") REFERENCES "df_bagian"("kodebagian") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_nopendasal_fkey" FOREIGN KEY ("nopendasal") REFERENCES "df_kantor"("nopend") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_nopendtujuan_fkey" FOREIGN KEY ("nopendtujuan") REFERENCES "df_kantor"("nopend") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_posisi_fkey" FOREIGN KEY ("posisi") REFERENCES "df_posisi"("posisi") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_kodagm_fkey" FOREIGN KEY ("kodagm") REFERENCES "df_agama"("kodagm") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_statuskerja_fkey" FOREIGN KEY ("statuskerja") REFERENCES "df_statuskerja"("statuskerja") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_statusnikah_fkey" FOREIGN KEY ("statusnikah") REFERENCES "df_statusnikah"("statusnikah") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_sdm" ADD CONSTRAINT "df_sdm_statuspegawai_fkey" FOREIGN KEY ("statuspegawai") REFERENCES "df_statuspegawai"("statuspegawai") ON DELETE NO ACTION ON UPDATE NO ACTION;
