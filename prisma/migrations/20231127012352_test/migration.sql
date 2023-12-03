-- CreateTable
CREATE TABLE "df_regional" (
    "regional_id" BIGINT NOT NULL,
    "regional" TEXT,

    CONSTRAINT "df_regional_pkey" PRIMARY KEY ("regional_id")
);

-- CreateTable
CREATE TABLE "df_agama" (
    "agama_id" BIGINT NOT NULL,
    "agama" TEXT,

    CONSTRAINT "df_agama_pkey" PRIMARY KEY ("agama_id")
);

-- CreateTable
CREATE TABLE "df_bagian" (
    "bagian_id" BIGINT NOT NULL,
    "bagian" TEXT,
    "status_bagian" TEXT,

    CONSTRAINT "df_bagian_pkey" PRIMARY KEY ("bagian_id")
);

-- CreateTable
CREATE TABLE "df_jabatan" (
    "jabatan_id" BIGINT NOT NULL,
    "jabatan" TEXT,

    CONSTRAINT "df_jabatan_pkey" PRIMARY KEY ("jabatan_id")
);

-- CreateTable
CREATE TABLE "df_kantor" (
    "nopend" TEXT NOT NULL,
    "nama_kantor" TEXT,
    "kode_level" BIGINT,
    "singkatan_kelas_kantor" TEXT,
    "jenis_relasi" TEXT,
    "status_aktif" TEXT,
    "kprk" TEXT,
    "kcu" TEXT,
    "kelas_kantor_id" BIGINT,
    "regional_id" BIGINT,

    CONSTRAINT "df_kantor_pkey" PRIMARY KEY ("nopend")
);

-- CreateTable
CREATE TABLE "df_kategori_durasi" (
    "kategori_durasi_id" BIGINT NOT NULL,
    "kategori_durasi" TEXT,

    CONSTRAINT "df_kategori_durasi_pkey" PRIMARY KEY ("kategori_durasi_id")
);

-- CreateTable
CREATE TABLE "df_kelas_kantor" (
    "kelas_kantor_id" BIGINT NOT NULL,
    "kelas_kantor" TEXT,

    CONSTRAINT "df_kelas_kantor_pkey" PRIMARY KEY ("kelas_kantor_id")
);

-- CreateTable
CREATE TABLE "df_mutasi" (
    "mutasi_id" BIGINT NOT NULL,
    "nippos" BIGINT,
    "noskep" TEXT,
    "tgl_skep" TIMESTAMP(6),
    "tmt" TIMESTAMP(6),
    "tj" TEXT,
    "jenis_mutasi" TEXT,
    "tgl_brgkt" TIMESTAMP(6),
    "tgl_aktif" TIMESTAMP(6),
    "status" BIGINT,
    "userid" TEXT,
    "tgl_insert" TEXT,
    "keterangan" TEXT,
    "level_jabatan" TEXT,
    "uid_insert" TEXT,
    "wkt_update" TEXT,
    "uid_update" TEXT,
    "rumpun" BIGINT,
    "tgl_sk" TIMESTAMP(6),
    "nomor_sk" TEXT,
    "tmt_sk" TIMESTAMP(6),
    "rank" BIGINT,
    "nopend_asal" TEXT,
    "nopend_tujuan" TEXT,
    "next_tmt" TIMESTAMP(6),
    "tmt_jabatan" TIMESTAMP(6),
    "tmt_bagian" TIMESTAMP(6),
    "durasi_jabatan" DOUBLE PRECISION,
    "masa_kerja_jabatan" TEXT,
    "durasi_bagian" DOUBLE PRECISION,
    "masa_kerja_bagian" TEXT,
    "posisi_id" BIGINT,
    "agama_id" BIGINT,
    "status_nikah_id" BIGINT,
    "status_pegawai_id" BIGINT,
    "status_kerja_id" BIGINT,
    "bagian_id" BIGINT,
    "jabatan_id" BIGINT,
    "kategori_durasi_jabatan_id" BIGINT,
    "kategori_durasi_bagian_id" BIGINT,

    CONSTRAINT "df_mutasi_pkey" PRIMARY KEY ("mutasi_id")
);

-- CreateTable
CREATE TABLE "df_posisi" (
    "posisi_id" BIGINT NOT NULL,
    "posisi" TEXT,

    CONSTRAINT "df_posisi_pkey" PRIMARY KEY ("posisi_id")
);

-- CreateTable
CREATE TABLE "df_sdm" (
    "nippos" BIGINT NOT NULL,
    "nama" TEXT,
    "tgl_lahir" TIMESTAMP(6),
    "tempat_lahir" TEXT,
    "total_grade" BIGINT,
    "kode_jiwa" BIGINT,
    "jenis_kelamin" TEXT,
    "tgl_meninggal" TIMESTAMP(6),
    "tgl_disumpah" TIMESTAMP(6),
    "tgl_kerja" TIMESTAMP(6),
    "tgl_berhenti" TIMESTAMP(6),
    "golongan_darah" TEXT,
    "alamat" TEXT,
    "kota" TEXT,
    "kodepos" TEXT,
    "telp" TEXT,
    "no_urut" DOUBLE PRECISION,
    "status" DOUBLE PRECISION,
    "pass" TEXT,
    "npwp" TEXT,
    "userid" TEXT,
    "status_transfer" BIGINT,
    "masih_hidup" TEXT,
    "sudah_berhenti" TEXT,
    "usia" BIGINT,

    CONSTRAINT "df_sdm_pkey" PRIMARY KEY ("nippos")
);

-- CreateTable
CREATE TABLE "df_status_kerja" (
    "status_kerja_id" BIGINT NOT NULL,
    "status_kerja" TEXT,

    CONSTRAINT "df_status_kerja_pkey" PRIMARY KEY ("status_kerja_id")
);

-- CreateTable
CREATE TABLE "df_status_nikah" (
    "status_nikah_id" BIGINT NOT NULL,
    "status_nikah" TEXT,

    CONSTRAINT "df_status_nikah_pkey" PRIMARY KEY ("status_nikah_id")
);

-- CreateTable
CREATE TABLE "df_status_pegawai" (
    "status_pegawai_id" BIGINT NOT NULL,
    "status_pegawai" TEXT,

    CONSTRAINT "df_status_pegawai_pkey" PRIMARY KEY ("status_pegawai_id")
);

-- AddForeignKey
ALTER TABLE "df_kantor" ADD CONSTRAINT "df_kantor_kcu_fkey" FOREIGN KEY ("kcu") REFERENCES "df_kantor"("nopend") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_kantor" ADD CONSTRAINT "df_kantor_kelas_kantor_id_fkey" FOREIGN KEY ("kelas_kantor_id") REFERENCES "df_kelas_kantor"("kelas_kantor_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_kantor" ADD CONSTRAINT "df_kantor_kprk_fkey" FOREIGN KEY ("kprk") REFERENCES "df_kantor"("nopend") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_kantor" ADD CONSTRAINT "df_kantor_regional_id_fkey" FOREIGN KEY ("regional_id") REFERENCES "df_regional"("regional_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_agama_id_fkey" FOREIGN KEY ("agama_id") REFERENCES "df_agama"("agama_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_bagian_id_fkey" FOREIGN KEY ("bagian_id") REFERENCES "df_bagian"("bagian_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_jabatan_id_fkey" FOREIGN KEY ("jabatan_id") REFERENCES "df_jabatan"("jabatan_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_bagian_id_fkey" FOREIGN KEY ("kategori_durasi_bagian_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_kategori_durasi_jabatan_id_fkey" FOREIGN KEY ("kategori_durasi_jabatan_id") REFERENCES "df_kategori_durasi"("kategori_durasi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_nippos_fkey" FOREIGN KEY ("nippos") REFERENCES "df_sdm"("nippos") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_nopend_asal_fkey" FOREIGN KEY ("nopend_asal") REFERENCES "df_kantor"("nopend") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_nopend_tujuan_fkey" FOREIGN KEY ("nopend_tujuan") REFERENCES "df_kantor"("nopend") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_posisi_id_fkey" FOREIGN KEY ("posisi_id") REFERENCES "df_posisi"("posisi_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_status_kerja_id_fkey" FOREIGN KEY ("status_kerja_id") REFERENCES "df_status_kerja"("status_kerja_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_status_nikah_id_fkey" FOREIGN KEY ("status_nikah_id") REFERENCES "df_status_nikah"("status_nikah_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "df_mutasi" ADD CONSTRAINT "df_mutasi_status_pegawai_id_fkey" FOREIGN KEY ("status_pegawai_id") REFERENCES "df_status_pegawai"("status_pegawai_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
