-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2017 at 05:24 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skp_online_alpha`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_airbersih`
--

CREATE TABLE `tbl_airbersih` (
  `id_airbersih` int(11) NOT NULL,
  `sumber_air` varchar(255) NOT NULL,
  `pengolahan_air` varchar(255) NOT NULL,
  `volume_air` varchar(255) NOT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alurproses`
--

CREATE TABLE `tbl_alurproses` (
  `idtbl_alurproses` int(11) NOT NULL,
  `nama_alurproses` text NOT NULL,
  `name_alurproses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_asales`
--

CREATE TABLE `tbl_asales` (
  `idtbl_asales` int(11) NOT NULL,
  `sendiri_asales` varchar(45) DEFAULT NULL,
  `pembelian_asales` varchar(45) DEFAULT NULL,
  `pembelianjumlah_asales` varchar(45) DEFAULT NULL,
  `bentuk_asales` varchar(50) DEFAULT NULL,
  `penggunaan_asales` varchar(100) DEFAULT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bahanbaku`
--

CREATE TABLE `tbl_bahanbaku` (
  `idtbl_bahanbaku` int(11) NOT NULL,
  `asal_bahanbaku` varchar(45) DEFAULT NULL,
  `jenis_bahanbaku` varchar(45) DEFAULT NULL,
  `bentuk_bahanbaku` varchar(45) DEFAULT NULL,
  `kategori_bahanbaku` varchar(45) DEFAULT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dinas`
--

CREATE TABLE `tbl_dinas` (
  `idtbl_dinas` int(11) NOT NULL,
  `nama_dinas` varchar(255) NOT NULL,
  `jabatan_dinas` varchar(255) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_dinas`
--

INSERT INTO `tbl_dinas` (`idtbl_dinas`, `nama_dinas`, `jabatan_dinas`, `provinsi_id`, `user_id`) VALUES
(1, 'Ir. Nilanto Perbowo, M.Sc', 'Direktorat Jendral', 0, 2),
(2, 'Artati Widiarti', 'Direktur', 0, 3),
(3, 'KKP', 'KKP', 0, 4),
(5, '-', '-', 1, 5),
(6, '-', '-', 2, 6),
(7, '-', '-', 3, 7),
(8, '-', '-', 4, 8),
(9, '-', '-', 7, 9),
(10, '-', '-', 9, 10),
(11, '-', '-', 8, 11),
(12, '-', '-', 10, 12),
(13, '-', '-', 6, 13),
(14, '-', '-', 5, 14),
(15, '-', '-', 13, 15),
(16, '-', '-', 12, 16),
(17, '-', '-', 14, 17),
(18, '-', '-', 15, 18),
(19, '', '-', 16, 19),
(20, '-', '-', 11, 20),
(21, '-', '-', 17, 21),
(22, '-', '-', 18, 22),
(23, '-', '-', 19, 23),
(24, '-', '-', 20, 24),
(25, '-', '-', 21, 25),
(26, '-', '-', 22, 26),
(27, '-', '-', 23, 27),
(28, '-', '-', 24, 28),
(29, '-', '-', 29, 29),
(30, '-', '-', 28, 30),
(31, '-', '-', 26, 31),
(32, '-', '-', 27, 32),
(33, '-', '-', 25, 33),
(34, '-', '-', 30, 34),
(35, '-', '-', 31, 35),
(36, '-', '-', 32, 36),
(37, '-', '-', 33, 37),
(38, '-', '-', 34, 38);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file_example`
--

CREATE TABLE `tbl_file_example` (
  `id_file_example` int(11) NOT NULL,
  `file_url` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_target` varchar(50) NOT NULL,
  `kategori_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_infolain`
--

CREATE TABLE `tbl_infolain` (
  `idtbl_infolain` int(11) NOT NULL,
  `bahanpenolong_infolain` varchar(45) DEFAULT 'Tidak ada',
  `bahankimia_infolain` varchar(255) DEFAULT 'Tidak ada',
  `bahanlain_infolain` varchar(255) DEFAULT 'Tidak ada',
  `kemasaninner_infolain` varchar(45) DEFAULT 'Tidak ada',
  `kemasanmaster_infolain` varchar(45) DEFAULT 'Tidak ada',
  `lainnya_infolain` varchar(255) DEFAULT 'Tidak ada' COMMENT '	',
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `idtbl_karyawan` int(11) NOT NULL,
  `admasinglk_karyawan` int(11) DEFAULT NULL,
  `admasingpr_karyawan` int(11) DEFAULT NULL,
  `admtetaplk_karyawan` int(11) DEFAULT NULL,
  `admtetappr_karyawan` int(11) DEFAULT NULL,
  `admharilk_karyawan` int(11) DEFAULT NULL,
  `admharipr_karyawan` int(11) DEFAULT NULL,
  `olahasinglk_karyawan` int(11) DEFAULT NULL,
  `olahasingpr_karyawan` int(11) DEFAULT NULL,
  `olahtetaplk_karyawan` int(11) DEFAULT NULL,
  `olahtetappr_karyawan` int(11) DEFAULT NULL,
  `olahharilk_karyawan` int(11) DEFAULT NULL,
  `olahharipr_karyawan` int(11) DEFAULT NULL,
  `harikerja_karyawan` int(11) DEFAULT NULL,
  `shift_karyawan` int(10) DEFAULT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kunjungan`
--

CREATE TABLE `tbl_kunjungan` (
  `idtbl_kunjungan` int(11) NOT NULL,
  `tgl_kunjungan` date DEFAULT NULL,
  `pic_kunjungan` varchar(255) DEFAULT NULL,
  `uker_kunjungan` varchar(50) DEFAULT NULL,
  `temuan_kunjungan` text NOT NULL,
  `perbaikan_kunjungan` text NOT NULL,
  `survey_kunjungan` text NOT NULL,
  `rekomendasi_kunjungan` varchar(255) NOT NULL,
  `status_kunjungan` varchar(50) NOT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemasaran`
--

CREATE TABLE `tbl_pemasaran` (
  `idtbl_pemasaran` int(11) NOT NULL,
  `tujuan_pemasaran` varchar(45) DEFAULT NULL,
  `jenis_pemasaran` varchar(20) DEFAULT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penanggungjawab`
--

CREATE TABLE `tbl_penanggungjawab` (
  `idtbl_penanggungjawab` int(11) NOT NULL,
  `upinama_penanggungjawab` varchar(255) DEFAULT 'Tidak ada',
  `upipendidikan_penanggungjawab` varchar(45) DEFAULT 'Tidak ada',
  `upipelatihan_penanggungjawab` varchar(45) DEFAULT 'Tidak ada',
  `produksinama_penanggungjawab` varchar(255) DEFAULT 'Tidak ada',
  `produksipendidikan_penanggungjawab` varchar(45) DEFAULT 'Tidak ada',
  `produksipelatihan_penanggungjawab` varchar(45) DEFAULT 'Tidak ada',
  `mutunama_penanggungjawab` varchar(255) DEFAULT 'Tidak ada',
  `mutupendidikan_penanggungjawab` varchar(45) DEFAULT 'Tidak ada',
  `mutupelatihan_penanggungjawab` varchar(45) DEFAULT 'Tidak ada',
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `idtbl_produk` int(11) NOT NULL,
  `kategori_produk` varchar(100) NOT NULL,
  `namaind_produk` varchar(45) DEFAULT NULL,
  `namaen_produk` varchar(45) DEFAULT NULL,
  `status_produk` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(2) NOT NULL,
  `nama_provinsi` varchar(26) DEFAULT NULL,
  `kode_provinsi` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_upi`
--

CREATE TABLE `tbl_register_upi` (
  `idtbl_upi` int(11) NOT NULL,
  `nama_upi` varchar(50) DEFAULT NULL,
  `pemilik_upi` varchar(50) DEFAULT NULL,
  `alamat_upi` varchar(100) DEFAULT NULL,
  `kodepos_upi` int(11) DEFAULT NULL,
  `entitas_upi` enum('PT','CV','UD','Koperasi','Lainnya') DEFAULT NULL,
  `provinsi_upi` int(11) NOT NULL,
  `kabupaten_upi` varchar(45) DEFAULT NULL,
  `kecamatan_upi` varchar(45) DEFAULT NULL,
  `desa_upi` varchar(45) DEFAULT NULL,
  `email_upi` varchar(60) DEFAULT NULL,
  `kontak_upi` varchar(20) NOT NULL,
  `kontakperson_upi` varchar(20) NOT NULL,
  `penanggungjawab_upi` varchar(255) NOT NULL,
  `omzet_upi` varchar(10) DEFAULT NULL,
  `tahunmulai_upi` int(11) DEFAULT NULL,
  `nosiup_upi` varchar(45) DEFAULT NULL,
  `noiup_upi` varchar(45) DEFAULT NULL,
  `noakta_upi` varchar(45) DEFAULT NULL,
  `nonpwp_upi` varchar(45) DEFAULT NULL,
  `filesiup_upi` text NOT NULL,
  `fileiup_upi` text NOT NULL,
  `fileakta_upi` text NOT NULL,
  `alamat_pabrik` text NOT NULL,
  `registration_status` varchar(45) DEFAULT NULL,
  `registration_date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rejected`
--

CREATE TABLE `tbl_rejected` (
  `id_rejected` int(11) NOT NULL,
  `alasan` text,
  `revisi` text,
  `upi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sarpras`
--

CREATE TABLE `tbl_sarpras` (
  `idtbl_sarpras` int(11) NOT NULL,
  `nama_sarpras` varchar(45) DEFAULT NULL,
  `value_sarpras` varchar(45) DEFAULT '0',
  `kuantitas_sarpras` varchar(45) DEFAULT '0',
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skp`
--

CREATE TABLE `tbl_skp` (
  `idtbl_skp` int(11) NOT NULL,
  `filegmpssop_skp` varchar(255) DEFAULT NULL,
  `filesp_skp` varchar(255) DEFAULT NULL,
  `permohonan_skp` enum('Baru','Perpanjang') DEFAULT NULL,
  `produk_id` int(11) NOT NULL,
  `realisasiproduksi_skp` varchar(45) DEFAULT NULL,
  `upi_id` int(11) NOT NULL,
  `status_skp` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skp_log`
--

CREATE TABLE `tbl_skp_log` (
  `id_skp_log` int(11) NOT NULL,
  `skp_id` int(11) NOT NULL,
  `status_log` varchar(50) NOT NULL,
  `date_log` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skp_terbit`
--

CREATE TABLE `tbl_skp_terbit` (
  `idtbl_skp_terbit` int(11) NOT NULL,
  `tglmulai_skp_terbit` date DEFAULT NULL,
  `tglkadaluarsa_skp_terbit` date DEFAULT NULL,
  `noseri_skp_terbit` varchar(255) DEFAULT NULL,
  `no_skp_terbit` varchar(255) DEFAULT NULL,
  `file_skp_terbit` text NOT NULL,
  `skp_id` int(11) DEFAULT NULL,
  `alurproses_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sni`
--

CREATE TABLE `tbl_sni` (
  `idtbl_sni` int(11) NOT NULL,
  `nama_sni` varchar(45) DEFAULT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tandatangan`
--

CREATE TABLE `tbl_tandatangan` (
  `idtbl_tandatangan` int(11) NOT NULL,
  `status_tandatangan` varchar(255) NOT NULL,
  `tgl_tandatangan` date NOT NULL,
  `skp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upi`
--

CREATE TABLE `tbl_upi` (
  `idtbl_upi` int(11) NOT NULL,
  `nama_upi` varchar(50) DEFAULT NULL,
  `pemilik_upi` varchar(50) DEFAULT NULL,
  `alamat_upi` varchar(100) DEFAULT NULL,
  `kodepos_upi` int(11) DEFAULT NULL,
  `entitas_upi` enum('PT','CV','UD','Koperasi','Lainnya') DEFAULT NULL,
  `provinsi_upi` int(2) NOT NULL,
  `kabupaten_upi` varchar(45) DEFAULT NULL,
  `kecamatan_upi` varchar(45) DEFAULT NULL,
  `desa_upi` varchar(45) DEFAULT NULL,
  `email_upi` varchar(60) DEFAULT NULL,
  `omzet_upi` varchar(10) DEFAULT NULL,
  `tahunmulai_upi` int(11) DEFAULT NULL,
  `nosiup_upi` varchar(45) DEFAULT NULL,
  `noiup_upi` varchar(45) DEFAULT NULL,
  `noakta_upi` varchar(45) DEFAULT NULL,
  `nonpwp_upi` varchar(45) DEFAULT NULL,
  `filesiup_upi` text,
  `fileiup_upi` text,
  `fileakta_upi` text,
  `kontak_upi` varchar(255) NOT NULL,
  `kontakperson_upi` varchar(20) NOT NULL,
  `penanggungjawab_upi` varchar(255) NOT NULL,
  `jenis_upi` varchar(100) NOT NULL,
  `skala_upi` varchar(100) NOT NULL,
  `alamat_pabrik` text NOT NULL,
  `registration_date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` text,
  `email` varchar(255) DEFAULT NULL,
  `login_status` enum('0','1') DEFAULT NULL,
  `login_token` text,
  `validation_code` text,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `email`, `login_status`, `login_token`, `validation_code`, `level`) VALUES
(1, 'SuperAdmin', '$2y$10$cH.d3c4qNg.kG//Bfix4zuYy7g/M9/GJcAa29RqzrRwMklT1tw14K', 'admin@markodevs.com', '1', NULL, NULL, 'admin'),
(2, 'userdirjen', '$2y$10$WxwyBC7nzg5WkwLheyvs0uB3ePNyyP6f56IeqPaDiOF1hLxkJN7yy', 'userdirjen@kkp.go.id', '1', NULL, NULL, 'pejabat-dirjen'),
(3, 'userdirektur', '$2y$10$q//kXqraHN/W8Mg.w3bjpOGsbp9F1nIR.VCj/l8wjao74ZIqXoPCO', 'userdirektur@kkp.go.id', '1', NULL, NULL, 'pejabat-direktur'),
(4, 'userkp', '$2y$10$LrhzfD0EH5bZDz.ejvWmD.FczZTDPyo8aJ8D19UQRVOvyRq7PJ4h2', 'dodim@kkp.go.id', '1', NULL, NULL, 'kp'),
(5, 'adaceh', '$2y$10$d3ci4dEiTe8pw78nEaaf1u3mv54Ar6fp4J/Tqxt1aqL7UNTHZOvb6', '-', '1', NULL, NULL, 'dinas'),
(6, 'adsumut', '$2y$10$v5HsJGlLQ/1Y3uoIfRCTEef9bupn1ZZVTIICy4Z33.NwwbrpGRE4O', '-', '1', NULL, NULL, 'dinas'),
(7, 'adsumbar', '$2y$10$7x7EhRgN30VQgaMnGYFBKuJkQLT8FYSO9nysncQpXZDnelTM5GI7y', '-', '1', NULL, NULL, 'dinas'),
(8, 'adriau', '$2y$10$bNAyNkziC3VgYbgy0oF/UuzCBslxQrdd6w9G8o7sFFtak69Z8B2L.', '-', '1', NULL, NULL, 'dinas'),
(9, 'adjambi', '$2y$10$4MjbvvT9wOr5S.d6l.C33uOA60JikOy40iPASa2pz4kL/VlwSxUNe', '-', '1', NULL, NULL, 'dinas'),
(10, 'adsumsel', '$2y$10$Vm70hX2azBF9cLZB2UUY8.GNnq1Npwc3x0mGh4lr1SeyRACRK.3U2', '-', '1', NULL, NULL, 'dinas'),
(11, 'adbengkulu', '$2y$10$q7NmHyQPYbensip/LLxATeclkIABh7tAXBVEltlTiqpFdmzPOZ0Zy', '-', '1', NULL, NULL, 'dinas'),
(12, 'adlampung', '$2y$10$Fm3Lae4wBL7PLd1.kSSJYesDsQs2osgORskSTgBnzR6/.z2.nPjDu', '-', '1', NULL, NULL, 'dinas'),
(13, 'adbabel', '$2y$10$bG2LF0XfAa7MTjycWzxXn.G68WTkxwOx9MxF.wcLop0hDp.2HTq3K', '-', '1', NULL, NULL, 'dinas'),
(14, 'adkepri', '$2y$10$6Iw3f/57JwoStXi2sw7qwOJlO.9AaaWBHb9S9ZNnEM5Mud2DindFq', '-', '1', NULL, NULL, 'dinas'),
(15, 'adjabar', '$2y$10$OJXO7xXR0Au3FYBDbnsZquP6/xhDKZ7BE6XyznORw5lpDzM0n2/j.', '-', '1', NULL, NULL, 'dinas'),
(16, 'addki', '$2y$10$f/6q./aX/a4mC5jYobCT4OMk5COmdDXf3a6Cs3n1yajyYO7JZzS52', '-', '1', NULL, NULL, 'dinas'),
(17, 'adjateng', '$2y$10$uWEEDfj2Oev67uINPCHhRuv/TRsLsbXAWEhalW3ngJPT6JgsZeg8.', '-', '1', NULL, NULL, 'dinas'),
(18, 'addiy', '$2y$10$UeUoEUV3S3uBCT2E4KSWReVFYb5Yj4gIwqaJQWwve1uU3pjOHS4AO', '-', '1', NULL, NULL, 'dinas'),
(19, 'binamutujatim', '$2y$10$1pBEh963L9FkJblTU0je8u4R1R4Uug70G7e42CjBtppMLfxvBkDf6', 'binamutujatim@gmail.com', '1', NULL, NULL, 'dinas'),
(20, 'adbanten', '$2y$10$yey0LE8N2Jd4nezrshGuoOoXayTF8OwswIdlFkp4q3PDN9FS5R1PW', '-', '1', NULL, NULL, 'dinas'),
(21, 'adbali', '$2y$10$SVQKT7nMEb5z/TJBbYwSM.RbA3rpY47WPyqUJJHUEk7mNbDXkstZG', '-', '1', NULL, NULL, 'dinas'),
(22, 'adntb', '$2y$10$usFpdLYSMl6XfWZk0zsO3eLV/rT2WW5DbhSi..58TCcK/l120iFjS', '-', '1', NULL, NULL, 'dinas'),
(23, 'adntt', '$2y$10$F7Asm38tuF9c5nr3VJqxoeZWznwKvjKeGKET9DNP3cjBR/J7qOOx2', '-', '1', NULL, NULL, 'dinas'),
(24, 'adkalbar', '$2y$10$HEkP.kipgi0SbIZrkwn75uQwxJ8SYcG76kNf5vkFiM07uarW99t7y', '-', '1', NULL, NULL, 'dinas'),
(25, 'adkalteng', '$2y$10$yRLdwp/3mSliiR0RedxBte1ffPNwfC..Skpsbojc.YehWsnZl.IBK', '-', '1', NULL, NULL, 'dinas'),
(26, 'adkalsel', '$2y$10$Fi2jk5x2gjrS3AbEnnIF7urjpagvHMYLSOQnv8zV5CZhq7UUZtlre', '-', '1', NULL, NULL, 'dinas'),
(27, 'adkaltim', '$2y$10$n1VJUfvlLe302zxOe0EIWOnqUY.IoC.53JYrYmqghHHs.OUUSXulu', '-', '1', NULL, NULL, 'dinas'),
(28, 'adkaltara', '$2y$10$HzBpUpURNhTJCULD//b64.htxEIE/bcgxg/hCAAm5i23cld8mTD5G', '-', '1', NULL, NULL, 'dinas'),
(29, 'adminsulut', '$2y$10$Z4gDPjTKDHCPhAq2K4Ymcuz2ijkh2no18jflKN48WZJdgASHGFpjm', 'sulutdkp@gmail.com', '1', NULL, NULL, 'dinas'),
(30, 'adsulteng', '$2y$10$8MrStx/eMhvP9E4pFOd.iOMDD3bTzfLqqdGoRdmMIzzXOkKMQEiZW', '-', '1', NULL, NULL, 'dinas'),
(31, 'adsulsel', '$2y$10$ROO5LpbgKmeSuIQPk1cFE.FhFbB7JEZsUhocX.FoHjeSwhflSZ266', '-', '1', NULL, NULL, 'dinas'),
(32, 'adsultra', '$2y$10$2v/EcbwEoGQB79YDS83dp.5NbH1.5ZWD6DRWjbhgI/jPfgCDmic42', 'skponlinesultra@yahoo.com', '1', NULL, NULL, 'dinas'),
(33, 'adgorontalo', '$2y$10$oxFDFgavcw.7/wCZQ0mtB.avtP5fwfmy8mONqJRNIG7Zp/WIdSfPm', '-', '1', NULL, NULL, 'dinas'),
(34, 'adsulbar', '$2y$10$bVUFCLguTu2j8R8g7Cx2ZuqEDebabLSeIsfzygyQo0kABN.JGosOm', '-', '1', NULL, NULL, 'dinas'),
(35, 'admaluku', '$2y$10$K1shAgUmq4NJMSGCqeq0uu0K293e.pcHf6AcG/bhR4qr/du.3XIE.', 'jessietimi79@gmail.com', '1', NULL, NULL, 'dinas'),
(36, 'admalut', '$2y$10$n6VKefzBoBfOnMseq0/PM.3BP6GMxBEwLAoPJSjL/B1FdVN5Q2kkW', '-', '1', NULL, NULL, 'dinas'),
(37, 'adpapbar', '$2y$10$N11sAjlbCK.heh7hYoXzYu1jXCoup8.Ngy1jeYKmcGVutpSRHloTi', '-', '1', NULL, NULL, 'dinas'),
(38, 'adpapua', '$2y$10$DJRSEOerlfFGT6xjdVoatux8q5uz4jRWjGRoTncTdC80WdE/bYPbS', '-', '1', NULL, NULL, 'dinas'),
(39, 'ayudyah', '$2y$10$wu1QMWiktWHZtCIDlin7KO0up4.dQhSrKd/X3MyTpkLxjNtWfbQsm', 'purnamaabd@gmail.com', '0', NULL, NULL, 'upi'),
(40, 'tutorial1', '$2y$10$nwzlV0B1yc9R3czKTFEaaeuLj9U0d60lVyI6X0BFm.jruZrEROf.K', 'standardisasi.ph@gmail.com', '0', NULL, NULL, 'upi'),
(41, 'skpbanten', '$2y$10$sBTyLI8YkYxuaU35pSF.NOWypKNJZ91mAM0ntczq6vHwDs2CQwI8y', 'egisasdasd@gmail.com', '0', NULL, NULL, 'upi'),
(42, 'skpbanten1', '$2y$10$8v1r9B/NDPHsiIx9g8nRZe.SW/DM1v97EBgU8cs9nboz39Eq4vR9a', 'skpbanten1@gmail.com', '0', NULL, NULL, 'upi'),
(43, 'ptvesselfreshfishindomakmur', '$2y$10$ICj.9BojLvwEGfurq9RMteTefKIgodz1gpxuZHl8zeGqS47ei5.Lq', 'procurement@vesselfreshfish.com', '1', NULL, NULL, 'upi'),
(44, 'wirontono', '$2y$10$rrI7D1ISt/.xJIWt/VGPJO6lOxmOP8vuMrcpIz329LOnvrfdHV38e', 'yfirmansyah19@gmail.com', '1', NULL, NULL, 'upi'),
(45, 'ivi.bkipm', '$2y$10$W2Kk1LTMIFaDGVKnbCNhd.DrSon2LE9msCi4b7ZfJFku.XxsffsF.', 'ivi.bkipm@gmail.com', '0', NULL, NULL, 'upi'),
(46, 'mpm', '$2y$10$ZPvjw.h9ZCBmWqnHTsg8kuj1AN/.hWRJNzoxLZs1oDJD9dlMXEEou', 'malukuprima@yahoo.com', '1', NULL, NULL, 'upi'),
(47, 'grahais', '$2y$10$LcqQdd5maFCxFduP97AtbO4sU3ejviGbHRI14iAmtLezz/DSyM7Gi', 'djoko.soesilo@grahais.com', '1', NULL, NULL, 'upi'),
(48, 'mae', '$2y$10$q07/s.nVkx4v8uQeSwhWguThTUJWN/LMNyjdG5x.rck1UCFdqPFW2', 'mae_yizreel@yahoo.com', '1', NULL, NULL, 'upi'),
(49, 'lionwings', '$2y$10$cbwHLft0ruV2U.jg9qjl7u/gLmuze7nkmMJ5lmQ4s5DSEQuVxUtDi', 'asep@lionwings.com', '1', NULL, NULL, 'upi'),
(50, 'test', '$2y$10$k9UibQ1QaKTOwi486XCbRODucAFAlFV4L9pBw4Stnw97yhLBO3DRm', 'farisbaha@ymail.com', '0', NULL, NULL, 'upi'),
(51, 'alviatrimandiri', '$2y$10$NUUxxtam7Fl5cGPxkCJeIuqrqKoVGA5EBS5xyhemqR9sx.q2U94my', 'dila@alviatm.com', '1', NULL, NULL, 'upi'),
(52, 'karuniamitramakmur', '$2y$10$ajUteNtbvQLoF.NRjATVuOMrjdpNfzVbuUecks4Ruvh3lpI2l/4Iy', 'kmmfishery@gmail.com', '1', NULL, NULL, 'upi'),
(53, 'nuansagunautama', '$2y$10$Q2fIlravD90nFdfk8QVCOuFfzYJyQBb6.h.iYXKG8sAN1bWC6ZLhK', 'nuansagunautama@gmail.com', '1', NULL, NULL, 'upi'),
(54, 'sinargraha', '$2y$10$jydmco952aqFg9ppf0PXVOQOpi3jPwGKZF1.SrDfVeGHZ.ec0McGK', 'boysampotan@gmail.com', '1', NULL, NULL, 'upi'),
(55, 'karindo_ksp', '$2y$10$CS6xywY9tWfctHZFuFzaOOspvD9Hh8X9PdMpLZna66V3/H.c7n1.e', 'karindo_ksp@yahoo.com', '1', NULL, NULL, 'upi'),
(56, 'tunamaluku', '$2y$10$zWTVTiA4vsy12UVwokcwROwKEOqvYMFB.rMZe3SF.eONtwRL5Ibeq', 'tuna_maluku@yahoo.com', '1', NULL, NULL, 'upi'),
(57, 'perumperindo', '$2y$10$jQWSgcOdw6JmQPmFvfy0j.P6/FajSpDKgwItRfWSxomK8fN02vppe', 'perumperindocoldstorage@gmail.com', '1', NULL, NULL, 'upi'),
(58, 'amira_lucue@rocketmail.com', '$2y$10$RkxRg1UahWoTaUI9vMmFNO8zB1Wqyhvt1aM3A3rnH71AfUIseXeYC', 'amira_lucue@rocketmail.com', '1', NULL, NULL, 'upi'),
(59, 'indrahariyoko', '$2y$10$UOdFJaw7DIRDWNJY8GHNLutoU3ZTOe0.VGVTDTAimpPUR8oCJPlgG', 'indrahariyoko05@gmail.com', '1', NULL, NULL, 'upi'),
(60, 'indoguna2016', '$2y$10$Tsb5zw0HmIUzYbqj.mXBsescRVoD9m7fhnp6MKkxmsR2.8w7/xT.S', 'import@indoguna.co.id', '1', NULL, NULL, 'upi'),
(61, 'yu.shen168', '$2y$10$xsqQs5fUfCDJfJ2o0fvCuuPMv.Sqvrv2CSohq9ShXPHU//tyqaALa', 'yu.shen168@yahoo.com', '1', NULL, NULL, 'upi'),
(62, 'ba_goldenbali', '$2y$10$2Nz0kSKXPYpvaTwb5bW8S.vQiQuU27v2w7PuALsPEye2XAz6zhmy6', 'qcgoldentuna@hotmail.com', '1', NULL, NULL, 'upi'),
(63, 'makrodevs', '$2y$10$78bvJI3muaEI0FlTRpNtf.htukJCiOFTnu9zoJ4oIKEqJxzYhlseG', 'ghi.fai@gmail.com', '0', NULL, NULL, 'upi'),
(64, 'pramaditha', '$2y$10$tNi/Fkrg6BBg8YwErACCP./NqPodJOm4hKr9V8WEXLpv1S4VvRGfq', 'skpbanten@gmail.com', '1', NULL, NULL, 'upi'),
(65, 'suryabaru', '$2y$10$g7w4YjqxhU0VV3mDeSe0J.1MphxbHmDVCZNoTSgwnKNDna6CQA8j6', 'suryabaru.mb@gmail.com', '1', NULL, NULL, 'upi'),
(66, 'menaramas', '$2y$10$x3zpC9SY3Cl/oJLgW2l2U.8PfQHBOKQ7nRhTPRGJRjmMQWrvaEpYm', 'widdyarti6@gmail.com', '1', NULL, NULL, 'upi'),
(67, 'kalfish', '$2y$10$YYE4fIB1ChFgX7Frp5e8F.JAhDPeSRohIgb3NNFi8urwige/6dMJ2', 'edo.kalfish@gmail.com', '1', NULL, NULL, 'upi'),
(68, 'hands477', '$2y$10$VTvDeBN1WWVao61EkrSjwO0IBTOIsRgBZ6XtD7FpjvbMx5hUDnUDO', 'wakhit.h@gmail.com', '1', NULL, NULL, 'upi'),
(69, 'ptebimas', '$2y$10$PjongJ8qE57Jr6DAHyJ8w.1Ibw4bhJ6ejA/HGE35oGA2ojZxv6zx2', 'ptebimas@gmail.com', '1', NULL, NULL, 'upi'),
(70, 'wbbjm', '$2y$10$AX8SEO28N93yBt.YEOolteDMBjHAQWpbqUD/7IoZVASFuoLcv4wFO', 'tikanh90@gmail.com', '1', NULL, NULL, 'upi'),
(71, 'yusiseafood', '$2y$10$euApEMGK8d7zXYzHLBUieu1Az4hK0bEt/f5.viiu70V7lbvDhlQpy', 'yusiseafood@gmail.com', '1', NULL, NULL, 'upi'),
(72, 'karyamandiricitramina', '$2y$10$1i7Pro3rQ5iCsc33mMiT/O3mNN80IfdmvD5UlDKujqyNAEaQFqBp2', 'qc.kmcgroup@gmail.com', '1', NULL, NULL, 'upi'),
(73, 'kmcindonesia', '$2y$10$vAX7rW1BXS22/rfqUvGKpePMSXUI3gmbcLN5xWAhdD8pihviiPpeW', 'qc.kmcgroup@gmail.com', '1', NULL, NULL, 'upi'),
(74, 'baliomega', '$2y$10$ow858SlW0DUQ6DJTcLr05ugpmLl6Kdwn/ugtyF0Ta3DL0ShdVbVqK', 'baliomega@yahoo.co.id', '1', NULL, NULL, 'upi'),
(75, 'primatara', '$2y$10$dSPYeK20p9ANiQ2VTxAWn.Uv.NGtkWoexzKLtIwhU.qX3OKRE79t2', 'tjipin@yahoo.com', '1', NULL, NULL, 'upi'),
(76, 'jaringan', '$2y$10$GGIK6SNnzx9VX/XxfrFJiuTHrruccCKy39i.H24u56SNxYEaC3Ibu', 'pt.jaringan@gmail.com', '1', NULL, NULL, 'upi'),
(77, 'cahayabahari', '$2y$10$vf1oPT6noYG9TRxjgBbxv.5HfAWOy3puj7hh1dyjevEsezGhjEqHq', 'cahaya.b.jakarta@gmail.com', '1', NULL, NULL, 'upi'),
(78, 'pulau mas bali', '$2y$10$BnaF24xI1iVhPpdZQovGRugZRmz5AZ96jD1Edn9p.rOJW5T/Cn.FO', 'plmbali@yahoo.com', '1', NULL, NULL, 'upi'),
(79, 'sumberjayabl', '$2y$10$I2I9GcIb8V2YTRgbry7ef.0eJyAvKXENPY48qSBGjAO.jf8oOGE0O', 'sumberjaya.b.l@gmail.com', '1', NULL, NULL, 'upi'),
(80, 'lautanbaharisejahtera', '$2y$10$VVzcFn7VVk/VrPZuzzMyOOzXfvJUzNa4ukDB/puGa7IF8M2MCveeC', 'kumediim@gmail.com', '1', NULL, NULL, 'upi'),
(81, 'widjajaputratjoek', '$2y$10$wWSY3HWwxm8Xfm/dJkge2uk0TTGMmToJHLfwGlceBE54FmHaMssdO', 'ratnatw33@gmail.com', '1', NULL, NULL, 'upi'),
(82, 'bandar', '$2y$10$VKzl4AbFpKll8dyi7HOKQ.LpeJYK6pJBIjLjDtltwLwtHfGb5xYv.', 'eksporbandar@gmail.com', '0', NULL, NULL, 'upi'),
(83, 'kohyamabali', '$2y$10$3gWqSOW.wSlDqhOukSE5Nu.RlqrNZKpE0GUWs60/tDmtUNh9NkxyO', 'kohyamabali@yahoo.com', '0', NULL, NULL, 'upi'),
(84, 'sinarbahari', '$2y$10$2F78mJ/TiTeNwqNYVzyvxOUQuNHhqLkQJPEP3fL6CE2Ld2Yw3.8sm', 'yudhianto_agus@yahoo.com', '1', NULL, NULL, 'upi'),
(85, 'mukida', '$2y$10$/o2YHlA2yrIhDu703QYyheNZctFrn6naayS.CtGlfUIGwWY1Tyx12', 'aimfish@hotmail.com', '1', NULL, NULL, 'upi'),
(86, 'sumina,pt', '$2y$10$CEjx/ZOHsceeL5dN7.RrY.OOSaYt9X03XTJBXACRnKg1/3czQib7q', 'suminapabrik@yahoo.com', '1', NULL, NULL, 'upi'),
(87, 'kohyamabali2016', '$2y$10$K0jyZosAIkObsigAJe0HjeVidwlwDS7UfHWKwS3YRxJ2D2eRibAYm', 'kohyamabali@yahoo.com', '1', NULL, NULL, 'upi'),
(88, 'bandar ', '$2y$10$LgTBu3wyClLDqOKyda3TXeWJ6LE6Bk1AIb9lPpcgPe/yHndVFq7tK', 'fighters_byu@yahoo.com', '1', NULL, NULL, 'upi'),
(89, 'testbali', '$2y$10$Ragyj5Lk1YXBXP42g1oiE.ioSV3z/Gx2ykhBtRJrPczekkiqc.GOm', 'p2hp_dkpbali@yahoo.com', '1', NULL, NULL, 'upi'),
(90, 'hasni', '$2y$10$wW7mhL9T0jRGcNEJnkj4ZurZeXB1rXNzVhGqRxF5Qwb9r1I0Kpbsy', 'hasni@awindointernational.com', '1', NULL, NULL, 'upi'),
(91, 'PT.ESL', '$2y$10$DQqpPqVyndlTPUMrxhbz8ej.ZhS1D1Eg9QWXvzT43Hz0VYTrdLdma', 'etmieco.ema@gmail.com', '1', NULL, NULL, 'upi'),
(92, 'pt.mjs', '$2y$10$hHitKn0kGUmkZ3HE77cWH.XwvCTqUs3GI7y42wMq.tQQ7HiTZ1xGy', 'permata.qc@gmail.com', '1', NULL, NULL, 'upi'),
(93, 'mjs', '$2y$10$Kh.0Yd.HFA.R8hNv.ejdrOQ6j2v9DBhLxZS1GvDU8o2/Gcwlu7SY2', 'sokidinpurnoto@gmail.com', '1', NULL, NULL, 'upi'),
(94, 'import@indoguna.co.id', '$2y$10$D68aHlEyAXvYqsOoVFAWJuE5Xk6JPtlYXKnnAZdej0OCs0h8zHADG', 'import@indoguna.co.id', '1', NULL, NULL, 'upi'),
(95, 'sss', '$2y$10$NUKNny1/zZ2AOM0A3m/85.77YQoYwkacJAqoYN5fCIcYAcPTQEAWe', 'kartika.qc@gmail.com', '1', NULL, NULL, 'upi'),
(96, 'cnfc_maritim', '$2y$10$LxM1pe4e1chLMvrXlWe2QeK6b4Fzkko8/seo/fKVrGsT6d9RfsXze', 'cnfc.maritim@yahoo.com', '1', NULL, NULL, 'upi'),
(97, 'hasilmelimpah168@yahoo.co.id', '$2y$10$VDic6Q8kD9ZI6Bx4/5uiLe0YGHzyzMtWeN4kYIshqFdp0qD92um3q', 'hasilmelimpah168@yahoo.co.id', '1', NULL, NULL, 'upi'),
(98, 'kastono', '$2y$10$d5PYDJyoaS5nL4tmwUl9FOwUXYmMioB9oMw.WDMqMcgjueSBB5o8a', 'andre_ronaldo2000@yahoo.com', '1', NULL, NULL, 'upi'),
(99, 'sarisegarlaut', '$2y$10$rakvA3WxBmdNzk9XcUkLiOQR1DW08tgjOTCb.ypu0e0t9E82uWkRa', 'sslilab103@gmail.com', '0', NULL, NULL, 'upi'),
(100, 'cahayakaryaindah', '$2y$10$ZnrF4N9CCfWABl4n67qa4uUXF5sUjZ4UWgHj0sbRqnT/.cYBLpb4a', 'sys@cvcahaya.com', '1', NULL, NULL, 'upi'),
(101, 'suryacemerlangabadi', '$2y$10$IjKb753MTOT1FzbBVYeMDeBupG.xd0igfFC9.tWo6WqH8wHspdSQG', 'sys@cvsurya.com', '1', NULL, NULL, 'upi'),
(102, 'halimsaktipratama', '$2y$10$xt4SkW4wXpJjpRTTV1V6S.BK8v8jI.2fOpF2e7McNY7MckFiJycq2', 'import@halim-sakti.com', '1', NULL, NULL, 'upi'),
(103, 'lautpanenraya', '$2y$10$ssy0f/B5/XR2PKn4Zi6td.US9./X5hQuwRuD7LutXElZRBRlQpp/C', 'lautpanenraya@gmail.com', '1', NULL, NULL, 'upi'),
(104, 'zeezpremiumbrand.pt@gmail.com', '$2y$10$C3qqY4Ez2ih.GrUa4mM.qeTwNpp8IgknvfjZOtwFTTQJSiaSYWsPu', 'zeezpremiumbrand.pt@gmail.com', '1', NULL, NULL, 'upi'),
(105, 'fajarbarusentosa', '$2y$10$OMH2GnaHZzpvYJs77dvTg.9/cGfGvmkpKznztThtl5w7sVADBYEie', 'fabarsen.jkt@gmail.com', '1', NULL, NULL, 'upi'),
(106, 'anugrahmasa', '$2y$10$v65JR1PM9jkfBG84.Ng4vOO8cP5Mk.PGn4.MjqSvrpmpf99UmSB1a', 'anugrahmasa@gmail.com', '1', NULL, NULL, 'upi'),
(107, 'seafermartjayaraya', '$2y$10$e4MCpRNSOEo2qqwKvDZs2./Zb5J2Vxol4VQB61F.h0te8hSFlgycq', 'lgl2@seaferlumina.co.id', '1', NULL, NULL, 'upi'),
(108, 'wayan', '$2y$10$qf6ZoS1EsG7QlyeNpNlGtuV/H6r4JdZ715ZBd2hxdnXu2VCFblHdG', 'yansulastri@yahoo.com', '0', NULL, NULL, 'upi'),
(109, 'yantimalaccccc', '$2y$10$oBocCgxL.zX2HFxtvksAoeaKaATrmeytllWe5k81YPaIPwI9Y0VlO', 'andrianistin@gmail.com', '1', NULL, NULL, 'upi'),
(110, 'yantimalaccccc', '$2y$10$0N8CxZaL5hQromqvGXnZ0eIfiWtpIWNLbTFUJL2t4szRiTle1hs5O', 'andrianistin@gmail.com', '1', NULL, NULL, 'upi'),
(111, 'yantimalaccccc', '$2y$10$C4nHno5vD6xOPkIqffu2NOGVhD6Udkyr.oRHweQG5V8iwhtU6Myla', 'andrianistin@gmail.com', '1', NULL, NULL, 'upi'),
(112, 'yantimalaccccc', '$2y$10$A.b1I0qL7tyI9phPh2JXSudPjDkYE7TcxbZJl5O7ZItkuThFiTZme', 'andrianistin@gmail.com', '1', NULL, NULL, 'upi'),
(113, 'yantimalaccccc', '$2y$10$JtTnPbcmesUNWKvFl0SMZOXX7ZRI8CZSmDfEyzHydwORbonBm1aFu', 'andrianistin@gmail.com', '0', NULL, NULL, 'upi'),
(114, 'yantimalaccccc', '$2y$10$8Z6QXSx8KF/BHy.xkzhKHOcLJSc7NYYfj.FhxM8dgDd9z82YquKC2', 'andrianistin@gmail.com', '0', NULL, NULL, 'upi'),
(115, 'yantimalaccccc', '$2y$10$WR1uePOj70uGu2YLFe1hFufkkDt.iQi/zRkNQmqhxSiu0fmGTCAMC', 'andrianistin@gmail.com', '0', NULL, NULL, 'upi'),
(116, 'yantimalaccccc', '$2y$10$o2lFk.Vb93/U/0MxaSmXhuaXDuDz.nR4S6rWnRLGXUu4VfwmagXL6', 'andrianistin@gmail.com', '0', NULL, NULL, 'upi'),
(117, 'yantimalaccccc', '$2y$10$Ti9JCQYuHEIeYAlMhnZRP.3AJ.RzSpi7Ln5/kmUyYHPyKOYP6eVWG', 'andrianistin@gmail.com', '0', NULL, NULL, 'upi'),
(118, 'yantimalaccccc', '$2y$10$jCJh/8LILUy2sQkbD6sDUO/rp.2vskDgs9xK4AYS1v2qUI8TGVHX2', 'andrianistin@gmail.com', '0', NULL, NULL, 'upi'),
(119, 'yantimalaccccc', '$2y$10$lq9VVz61O3.j4Mug1MHqeuTqGDMy9rhzGk2.PadXQovIdNfusj9OO', 'andria_nis_tin@gmail.com', '0', NULL, NULL, 'upi'),
(120, 'yantimala', '$2y$10$mkaq9pjlFRQ16SAIqhC2r./tZq2sNlN2XJ4ZNLVrtBcA6B9F8EUem', 'andrianistin@gmail.com', '0', NULL, NULL, 'upi'),
(121, 'Hani', '$2y$10$y5a1GDje8jVKYxth0WMbB.66xj2B1Wrwe5BwK0vhWsJ5So9grz1BS', 'lihaniani@yahoo.co.id', '1', NULL, NULL, 'upi'),
(122, 'Hani', '$2y$10$y5a1GDje8jVKYxth0WMbB.66xj2B1Wrwe5BwK0vhWsJ5So9grz1BS', 'lihaniani@yahoo.co.id', '1', NULL, NULL, 'upi'),
(123, 'anis', '$2y$10$VV4/5i4OhFeSnLbczsNh0e0vZ1X1eYj60kvE5Z1gkKSvmUx9IY64u', 'andre_krn@yahoo.com', '1', NULL, NULL, 'upi'),
(124, 'pt.lautbiru', '$2y$10$mzuUnMObjm0lD0Tx4Ll2Yu8RM9NDlPtTp6kK/yZlV8VcS2FI0SyGa', 'lautbirupt@gmail.com', '1', NULL, NULL, 'upi'),
(125, 'wakwaw212', '$2y$10$doAQ7kgJE0m4EmYl9Cipu.TMDd3WCSwXkmkHfDS04NLswU3SYOpR.', 'msufangat@gmail.com', '1', NULL, NULL, 'upi'),
(126, 'muji@pttuna.com', '$2y$10$ZRFqN06jvRNNUJ9cS61Se.MgtSD7ecGgylQXnHoOricIA.Meecj.6', 'moliloli09@gmail.com', '1', NULL, NULL, 'upi'),
(127, 'jono', '$2y$10$5wzfQ7UAWmb3.LfYhNfDbeQTjmZpQHwY17vQrEmY9qrtgoA3R02wC', 'jono.kakap@yahoo.com', '1', NULL, NULL, 'upi'),
(128, 'anzindo', '$2y$10$sJiu.P5rP4S.k/.Uo4vAieBuUAD55OoyZNV8hQ7oxnRcZoc2M//Xe', 'subhan@anzindo.com', '1', NULL, NULL, 'upi'),
(129, 'artamina', '$2y$10$ZpH4z4l3kHRzu8sn0Xxuy.dezfVq22iwrX/3Wh0mHFaSLh3OLAlY2', 'qualitycontrol@artamina.com', '1', NULL, NULL, 'upi'),
(130, 'wahyu.sugiyarto@megasetia.com', '$2y$10$HNsw.hhj9penUhG9tCoj9.isNfPBiy0N/LEXouyDjhrXjUSD36swK', 'wahyu.sugiyarto@megasetia.com', '1', NULL, NULL, 'upi'),
(131, 'chipsy03', '$2y$10$KAhyiI8Mx1M99DarWyBYRuGEkh5WDwIwJwLtkF7y7y46xKhQGbBQm', 'dewiisabella341@gmail.com', '1', NULL, NULL, 'upi'),
(132, 'artaminajaya', '$2y$10$BfC6iiXkYZukotqnUr4NSudlrVIRCvYQQT9Rx5/LiP6BWKgA0kQIG', 'waldymayani@gmail.com', '1', NULL, NULL, 'upi'),
(133, 'stephan', '$2y$10$ZiNkVloSOM9JTrYhAwFDseK6Lszi340D/v8zFqQj/skIGeyPQ1fq2', 'bchidt10@gmail.xom', '0', NULL, NULL, 'upi'),
(134, 'hendy', '$2y$10$UcvoEEULRBMJH6FabrUvvuB6vKbaInGqdVYm2j47h0gBAZEx1yAcS', 'hendy.bpi@gmail.com', '1', NULL, NULL, 'upi'),
(135, 'bintangnurcahyo', '$2y$10$ItHD9.X6SVLe1zJ0KqwV4eFQpKBuvcwJUF6apccijzObMdkQD4HdK', 'bintang.nurcahyo@diamond.co.id', '1', NULL, NULL, 'upi'),
(136, 'importgovernment', '$2y$10$Tdt9Jox214zChxjopSadX.94OvuBRneX3/MXtX8AWh3WyxGhoq08W', 'import.government@diamond.co.id', '1', NULL, NULL, 'upi'),
(137, 'amc123', '$2y$10$3nnOZFALnihQcwHQMUIdlOc8bpZdC.uDhUVaHIZBWHc7RvExfw5O6', 'info@agungmulia-chem.com', '1', NULL, NULL, 'upi'),
(138, 'kartikadewirika', '$2y$10$lLEaYgGWjNyVSvoRNerJl.4spIqGfIlKeSixclIt.sYtQVJYXhCJa', 'kartikadewirika@gmail.com', '0', NULL, NULL, 'upi'),
(139, 'estikatatatiara', '$2y$10$lQg35k5eU9a2mwrWykOFF.H1EYc077P/jUl9QYjmJfX.HP3MDJXR2', 'carita.estika@yahoo.com', '1', NULL, NULL, 'upi'),
(140, 'skpindoboga', '$2y$10$NDPG3mnqZ5qcO/..0xK34OapEMc8AAkcAKg5RHide/zLgCOEdIVFK', 'ccl3@indoboga.com', '1', NULL, NULL, 'upi'),
(141, 'bmuskp', '$2y$10$qgiYR2BzZ7oaN3IYOr5BnulRoyMfsHRyS/bpMqW5Y1Td/J.d2Yzjq', 'baliminautama@gmail.com', '1', NULL, NULL, 'upi'),
(142, 'dwijayaanugrah', '$2y$10$iLjTsJwrQGChncyO0WhI.OsIYsNfJ8I6wmlTO0Ke62a1eqE6PRrky', 'dja.gto.2016@gmail.com', '1', NULL, NULL, 'upi'),
(143, 'sinarponuladeheto', '$2y$10$gp30Om4XbBl/PLHwmz3x7uoKY6iiaStASluujS5.E8/MWZq3vKDRS', 'spd.gtlo@gmail.com', '1', NULL, NULL, 'upi'),
(144, 'novelicafood', '$2y$10$IAXyQhxDyI2MS62ZNjOiNeeo/qPQqIev.YR/YKNYbpoJxsaXV7UvO', 'novelicafood@yahoo.com', '1', NULL, NULL, 'upi'),
(145, 'nihonnovelicafood', '$2y$10$sE.kfqvSI/sULq.qFJicleThCT/3LVZ6BrKKf43YODBFK1EavuT7O', 'nihonnovelicafood@gmail.com', '0', NULL, NULL, 'upi'),
(146, 'mbiseafood', '$2y$10$lnGL7Ipy7GkgzkthPYV0eusRSJMSy2jlpCgFBsetEK3DRMhFvWk2.', 'admin@mbi-seafood.com', '1', NULL, NULL, 'upi'),
(147, 'Dwijayaanugrah', '$2y$10$5IxZWfx9HqR1DNknV7.Pk.oQG7XB49t.AhlvZleaCrXchZbI4VfXS', 'dja.gorontalo2016@gmail.com', '1', NULL, NULL, 'upi'),
(148, 'pt.lmj', '$2y$10$fllLiCToLSDyGoe/y3EwyexUGMrThvUWDNEACcROj3oa81RUcu.Ga', 'duta.lautanmutiara@gmail.com', '1', NULL, NULL, 'upi'),
(149, 'pt.pib', '$2y$10$npjiCibOBgEIXi7.Gh9y2OYwFj/gTq18L/rruPk2i4VW0Ix283juu', 'hc@lautanmutiara.com', '1', NULL, NULL, 'upi'),
(150, 'lihani', '$2y$10$girJQ7hcMbUzN6VejMAHp.Nk4WN.4.WbNgM1sNwYNDPkqMOnBzL1e', 'luthfihany@gmail.com', '1', NULL, NULL, 'upi'),
(151, 'PT.MITRANIAN ANUGRAHA SAMUDRA INDO', '$2y$10$ZI1rycBSZeTpNFyfAthNvu3myOXVGn13xr75ppRlhXXRdtulIqXae', 'ania1120@yahoo.com', '1', NULL, NULL, 'upi'),
(152, 'fotsbjm', '$2y$10$4l6Yq52EoOjqa22GlidxMuLWr5P.O1eo0uLNjdPKiT/s8orWjWmfy', 'administrasiumum.pelaihari@freshontime.com', '1', NULL, NULL, 'upi'),
(153, 'fotspelaihari', '$2y$10$yZcr5mD/Yok9Ip2pqSoWIOa5t1oAc9GoLL8Lco0ksVx.Fou7hml/2', 'qc.pelaihari@freshontime.com', '1', NULL, NULL, 'upi'),
(154, 'indoagri', '$2y$10$CoYZd3KsmyF0anUQb6PdYeb9wVOhfehpl7zUCfDcB4hzAoBEB9Ct.', 'agri_lestari@yahoo.com', '1', NULL, NULL, 'upi'),
(155, 'indoagri', '$2y$10$CoYZd3KsmyF0anUQb6PdYeb9wVOhfehpl7zUCfDcB4hzAoBEB9Ct.', 'agri_lestari@yahoo.com', '1', NULL, NULL, 'upi'),
(156, 'sumberjayabumilestari', '$2y$10$Uaj0tM/S8/.FVsCPS/IXlu6Zk9prublztTnNwIrBf4e/4M.LeNNgO', 'sumberjayabl@gmail.com', '1', NULL, NULL, 'upi'),
(157, 'lautanpurnama', '$2y$10$nHvMmuc20QFxlbznbP915uHiOREw6crUy23ERpq4jQE3JWsGj92Pm', 'lim_ratnasari@yahoo.co.id', '1', NULL, NULL, 'upi'),
(158, 'delisarinusantara', '$2y$10$jr8wteVPpXSNaBL9f98rP.gopE2goln1vMn3OK7Lrmx.2jClPmNNy', 'delisaridsn@gmail.com', '1', NULL, NULL, 'upi'),
(159, 'permataningrat', '$2y$10$pEgX4cryFq5mmOl6ON4oXO84Th4Z./OruXnTCG9MZ08z13ffZNlBq', 'nurul.permataningrat@gmail.com', '1', NULL, NULL, 'upi'),
(160, 'baliocean', '$2y$10$dkCuGCTJCfox2xIdJ6IjcO8PdTGjarZDrC2Qn3NiYO/PJNWTdfb4O', 'baliocean@ymail.com', '0', NULL, NULL, 'upi'),
(161, 'adityapradewo', '$2y$10$too3BZByfUdYr.Kpy5uZO.TU.Xvh13r2noC1Ir2uJUJLWTpE.Qa5G', 'vincentsiusditya@gmail.com', '1', NULL, NULL, 'upi'),
(162, 'adityapradewo89', '$2y$10$glsmbdmE7vCaFIISTHrNa.infrWYi31Vk3ddbRCdRcojMx0fdNp0S', 'vincentsiusaditya@gmail.com', '1', NULL, NULL, 'upi'),
(163, 'makmurjaya', '$2y$10$rmzEmbii9opKweTrz.j6bOg8sTTTefXQLqN6eTXwwnuUb8QnReg0a', 'ukmmakmurjaya@gmail.com', '1', NULL, NULL, 'upi'),
(164, 'udmbs', '$2y$10$51Ke4nbHhYg72sJB0dVRf.rDjnewqQWQQggPAFKNF08zYrUdC5GlS', 'theoigusty99@gmail.com', '1', NULL, NULL, 'upi'),
(165, 'koperasiperikananminajaya', '$2y$10$e8TGntdmWor/MD8R180Q.u9mT6Mao5anntZqH75miVEvPJQ/0GVIa', 'kopperikanan.minajay@gmail.com', '1', NULL, NULL, 'upi'),
(166, 'ptwli', '$2y$10$exzHOHOSU0ncOnThVjR1U.j3Vd9BdpOMqF0r/JPf7OFqk6zxe/422', 'suryana.darmo64@gmail.com', '1', NULL, NULL, 'upi'),
(167, 'intimassurya', '$2y$10$IQS3nGoMszpwkUCLq/D/COfsQ9n7lc7nJoKPRZNADGvDde2k8mN5K', 'intimassuryae1@gmail.com', '1', NULL, NULL, 'upi'),
(168, 'pths', '$2y$10$H6Z50DIfg9CfaL5JD/6.6OwQ4mUxwRwr6nxs8V/AmGEoLGtaPIBzq', 'isnawati.myura@gmail.com', '1', NULL, NULL, 'upi'),
(169, 'pths', '$2y$10$fhoykLTW87CthaaPgPEUt.sJds6A0Trvn9puUnlOZt5MO0DBIUyai', 'isnawati.myura@gmail.com', '0', NULL, NULL, 'upi'),
(170, 'ptcla', '$2y$10$PNoSlYXIFkU8blqTx2RsWuWoSYgMU1gTA5GtwSOS8efbjvTKResMS', 'fa_ambon@kmlseafood.com', '1', NULL, NULL, 'upi'),
(171, 'allanariston', '$2y$10$ycjEbN7lyXghoaSxd/eJsOycbLdtg50AbmL8ChFiv2j.nx8Er29MO', 'nurkexpress@ymail.com', '1', NULL, NULL, 'upi'),
(172, 'indomaguro', '$2y$10$A/rMdQ7I139FE3EzzRWQNe00fSpdv6OEteaUxm2j8P0baNYJm2nLy', 'qc@indomaguro.co.id', '1', NULL, NULL, 'upi'),
(173, 'spi', '$2y$10$DCTGxxpvRAUUcW710XN2c.CzeipZIF5FUkL4BRphqMjPQYgV.D0hq', 'halim@coldwarehouse.co.id', '1', NULL, NULL, 'upi'),
(174, 'rpi', '$2y$10$v6hsyuFxaCUavEY2fqG.teK4H7D.sCqzOnsl7Y1FMRlopa/55l1HO', 'nopia@coldwarehouse.co.id', '1', NULL, NULL, 'upi'),
(175, 'ptsssentosa', '$2y$10$sQv02Zx6A2wRFq0fjzjiQu524HSMa0RdGGLTintbaAR7/gKLN438O', 'ptsssentosa@yahoo.com', '1', NULL, NULL, 'upi'),
(176, 'ptlmsentosa', '$2y$10$PHfAvGtVKWHIZbQcXRbDP.UktDt9jFRpK7Y.qT97.wGaQkXxIIYIq', 'ptlmsentosa@yahoo.com', '1', NULL, NULL, 'upi'),
(177, 'cvabs', '$2y$10$KRl2fARTjEau5JJkFV8xUOk0G.WdIgNsh3QzdTkaiQrH3BEnXm8/u', 'andifais.af@gmail.com', '1', NULL, NULL, 'upi'),
(178, 'pt.balitunasegar', '$2y$10$bpBFFj/gtDsfL/prKcRwcelhKgqP2m6A7fLXNWzuYH9AHrTe1b25K', 'ptbts_whole@yahoo.com', '0', NULL, NULL, 'upi'),
(179, 'budiharihugroho', '$2y$10$5QjBL/SVca0Ck9iQamKIqeoCYKBR.U5uDeGOzwrSR/vP2PH7w406q', 'gmcpkdi@gmail.com', '1', NULL, NULL, 'upi'),
(180, 'nanitrobos', '$2y$10$rpR2F8gOu66ruPyKXo3q5.BTftY46onjecu1zcvltRgY02oWnbt/W', 'nanhy.trobos@gmail.com', '1', NULL, NULL, 'upi'),
(181, 'baharipm', '$2y$10$KrRzfDrZcElVMdgBOezJz.gSiCWQwRQtrFyl/kv0eC9CuLBFoHtpa', 'bahariprimamanunggal@gmail.com', '1', NULL, NULL, 'upi'),
(182, 'yupindo', '$2y$10$VzP.yb9yWKV0MyhfC2FHwOOThg9h1LmHSheg9.r903d2JpS5ffrIG', 'registrasi@yupindo.com', '1', NULL, NULL, 'upi'),
(183, 'indopertiwibahari', '$2y$10$caP14OYz9jV6LDRKVAUCwONE.th5N46sa4vPh7aQEtY7DMLl7DtuO', 'indopertiwibahari@gmail.com', '1', NULL, NULL, 'upi'),
(184, 'indohamafish', '$2y$10$K4pE6Zn6cQlQNcHoBcesyu7L87..q3r2JHiGm5O4FaZCt4bpkIzNu', 'indohamafish@hotmail.com', '0', NULL, NULL, 'upi'),
(185, 'indohamafish', '$2y$10$skqIj9bE1j.W/pQZGH.yC.RwZKbf7Zr1R9lS9qxsXIamo.Ap7eLBC', 'indohamafish@hotmail.com', '1', NULL, NULL, 'upi'),
(186, 'akfibali', '$2y$10$GzgRMCv1.iIY7uz6PGmFHuU4MJJCD5qfQ2nOft8/vEelro6Kq/SvG', 'ervin@akfigroup.com', '1', NULL, NULL, 'upi'),
(187, 'siti@pttuna.com', '$2y$10$uMT60tgArz6ebz37jo50vuL2Gn4JWqCDTzcID0iVYvSLhqITSgntK', 'siti@pttuna.com', '1', NULL, NULL, 'upi'),
(188, 'cvcsktala', '$2y$10$vlK6nlV4OqKxe.PHygxywugI3aPAFpmAIlA3DmEmTx62fYjgSPei2', 'lastolst9@gmail.com', '1', NULL, NULL, 'upi'),
(189, 'tonorobert', '$2y$10$ZSdmD8/2jcYDWj6qGws/FuouOP2wkZgdBFuhWSbiHAJG//.YpqgW2', 'tonorobert@gmail.com', '1', NULL, NULL, 'upi'),
(190, 'qmsfots', '$2y$10$eGoSlph/tymXFp.v3iRJWesHNm5YioPi3Yy0mV/6JX2IN1oancZzK', 'qms.fots@gmail.com', '1', NULL, NULL, 'upi'),
(191, 'asverson', '$2y$10$.4fdvBnJCrMGwY.xROwSSuxrFERtz3xmy/pr63blfI7j2IxcFsHYK', 'zwattimanela@yahoo.com', '1', NULL, NULL, 'upi'),
(192, 'SAMUDERA', '$2y$10$KbSfwqEWEp47YAWCuaFZtOuW0tPqQYGpKquR.KXGIrnKRMkFOmN.G', 'samudera123456@yahoo.com', '1', NULL, NULL, 'upi'),
(193, 'awindo', '$2y$10$4FLEzW8kSnQVK6pE/xY7puHt5cvR1wDwEI8JaFPddwFKT5rHbsdDa', 'fitri@awindointernational.com', '1', NULL, NULL, 'upi'),
(194, 'eramandiri', '$2y$10$GEASrUzOP7V6MC6Lbea5i.EmhVEgxulPVoOsYI6ZqmIXk/r2/oIUi', 'alkhalifi0110@gmail.com', '1', NULL, NULL, 'upi'),
(195, 'jk_era', '$2y$10$/P2yqtZNeRlsZ0L0JuGYzewpB56pMG/S76t.oAMYAZZovf5qiQ1kW', 'marlina@indonesiaseafood.net', '1', NULL, NULL, 'upi'),
(196, 'usahajaya_ps', '$2y$10$ULk.lEjJbs9HMi1OXN3aHuHGsh56yPMPj2KrZJvPYvaoVOmNMPhEe', 'usahajaya_ps@yahoo.com', '1', NULL, NULL, 'upi'),
(197, 'ptmjw01', '$2y$10$WH36G6SlBg5lyoBtEJYw6OT7vcyqBF6SdOpI2eJkvvsp5zeGd9RMO', 'ptmjw01@gmail.com', '1', NULL, NULL, 'upi'),
(198, 'dharmas_123', '$2y$10$gTIxSdpu.hW5JmmUnalMGuj2cbhRDfZo7jjfSWY4XCGUtNVwsV0hu', 'dharmas1@cbn.net.id', '1', NULL, NULL, 'upi'),
(199, 'kelola_456', '$2y$10$cZSEpI6eu6OYIdfX3kXoluUUHGAc.w4WiJ/1JfjznsSVHPNISygc6', 'marni.qc@gmail.com', '1', NULL, NULL, 'upi'),
(200, 'anugerahmina', '$2y$10$5E.g5UUTf4ivTDP0gU6pr./Bc9T7nR9MChSBaIFr.fFcm.Bf9qxwu', 'taufan.alamjaya@gmail.com', '1', NULL, NULL, 'upi'),
(201, 'nab', '$2y$10$3a6vVe1KOFGWHa4Xs599S.RnDUdbcV4ywRy8jdI/Usc0KTKaSkWSa', 'amin@nab-fish.com', '1', NULL, NULL, 'upi'),
(202, 'crabjakarta', '$2y$10$9ok6ANFvMXwF.37lMT7Sm.xycj23OoErClRjaHY0i8WABuDmsyTwm', 'nurdiansyah@kmlseafood.com', '1', NULL, NULL, 'upi'),
(203, 'mukidifebruari', '$2y$10$8FLsb7413xVVq5NetRbOfeKR9h4UaN3Md1PjfIHGC8m2yzeLoaNeW', 'aimfish24@gmail.com', '1', NULL, NULL, 'upi'),
(204, 'andikah', '$2y$10$HrywZvqty2kj7KICwNOtKO8gzqEkEvfjGP2/Xc65Hso77eii5LXNm', 'muhammad.fadly.r1985@gmail.com', '1', NULL, NULL, 'upi'),
(205, 'xinhaiyuan', '$2y$10$j1SHWm4rfrhD.nY14.T1kuQXumRAUKFYgCgK5agr7ETINv5p.dWze', 'xinhaiyuan.indofishery@gmail.com', '1', NULL, NULL, 'upi'),
(206, 'pulaumas', '$2y$10$b31YF60vvUSFrsTvh00UpO9IAODfSkUYIJyr5q4TzTP5I.aFP7rxq', 'wiwinarni85@gmail.com', '1', NULL, NULL, 'upi'),
(207, 'indobogajayamakmur', '$2y$10$m6VUU0VuHxakq8HoNp8X9uq4Qi1BTsa0pXRZTwEXdM9eA1jc5V94a', 'qc1@indoboga.com', '1', NULL, NULL, 'upi'),
(208, 'ptmbs', '$2y$10$50jsj7mjl6aiX1MEQsDpfePcLVhAb9AiqPns789B5z.tETuhKCodq', 'linggo878@gmail.com', '0', NULL, NULL, 'upi'),
(209, 'ptmbs', '$2y$10$4M5.sJ6vjLKmCwysoZjt6.ULem9lpTIQl7fxJIe4fHuT7sVO993SO', 'linggo878@gmail.com', '1', NULL, NULL, 'upi'),
(210, 'pt.gumindo', '$2y$10$u2J8T33q4jJcXMiMekYSRuvzUVh8NgD7hMvKn1SyknSliO57pO.4m', 'suyatno@indogum.com', '1', NULL, NULL, 'upi'),
(211, 'satyatrinadi', '$2y$10$DTd0EBf4G5YJquBLPs.3CeUG.HLZ6qmp93IlSzlb3NbcTIs2aWUEW', 'nandazulfahmi4@gmail.com', '1', NULL, NULL, 'upi'),
(212, 'komira', '$2y$10$/JkacpQNWOon75iAecAZn.2uwQuBkz4bxBRWl30xKTl.o.PndGyQW', 'ANDISYAMSUALAM75@GMAIL.COM', '1', NULL, NULL, 'upi'),
(213, 'eries', '$2y$10$No6uTk7nuYtJU0jnVg6GIOHISMYu09sCXG4pyD9/2OuuVJHqTjnBi', 'eries.superpoly@gmail.com', '1', NULL, NULL, 'upi'),
(214, 'khomfoods', '$2y$10$3XY8XZ7bU6Z3smsIqmmMjOi37pqmM6lVBz89WRrtme3uPnhx1hORW', 'qa@khomfoods.com', '1', NULL, NULL, 'upi'),
(215, 'tedepekrill2017', '$2y$10$QCKtosSLH.RbgN3eT8AKu.nIvL90CwPIb2DLxfEYT.2irUFVLRvUu', 'yafetip@gmail.com', '1', NULL, NULL, 'upi'),
(216, 'indopertiwisejahtera', '$2y$10$hdSwSJ21u.b/SZ3dDZTvhOXxB3ID2dDTYJRgM.jLaBzmVSR0I9./G', 'indopertiwisejahtera@gmail.com', '1', NULL, NULL, 'upi'),
(217, 'pljjkt', '$2y$10$q0CjzfWpsvY6H.Ck6rEBc.B9DjbrC8QclacXXbwPDpOr/xeu.RhAS', 'pialalautjakarta@gmail.com', '1', NULL, NULL, 'upi'),
(218, 'trijayaalam', '$2y$10$XBC62j7ry3mNboM5hlzZRu.IoyXh57i3rU8hz40rAc7d.BJHQWvIW', 'trijayaalam@yahoo.com', '1', NULL, NULL, 'upi'),
(219, 'babeloke1', '$2y$10$lJ/0brr46ktDb64FwVbPNeAzXQr0HSK7pFKYfpDcktQMcsisKq/IO', 'babel.p2hp@yahoo.com', '1', NULL, NULL, 'upi'),
(220, 'babeloke2', '$2y$10$ZHD6VUVrPwiw/kScIOUPieLL42B9y9noZ67YgmlhPLgsw.0N/FRHi', 'rahmat.natawijaya@gmail.com', '1', NULL, NULL, 'upi'),
(221, 'ptmasuya', '$2y$10$PVjpSxNXTSWcnx2QstwKze5JAyWN/SzwomIIOMJUHwxaK8Zln5sP.', 'imporadmin3@masuyagraha.com', '1', NULL, NULL, 'upi'),
(222, 'indosejahtera', '$2y$10$6DPVj1deP7X2P88lFpSo2.TWyGIulJ6NfZgl7.jACgHBBy2eI4jQK', 'yati08288@gmail.com', '1', NULL, NULL, 'upi'),
(223, 'oceanica', '$2y$10$YVl8RUeshaRjT0tbJkquRe6JvYvJlgSNNnZOTkudPUVYNZgFLlXjG', 'qa.oceanica@gmail.com', '1', NULL, NULL, 'upi');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_skp_kunjungan`
--
CREATE TABLE `view_skp_kunjungan` (
`idtbl_skp` int(11)
,`filegmpssop_skp` varchar(255)
,`filesp_skp` varchar(255)
,`permohonan_skp` enum('Baru','Perpanjang')
,`produk_id` int(11)
,`realisasiproduksi_skp` varchar(45)
,`upi_id` int(11)
,`status_skp` varchar(45)
,`idtbl_produk` int(11)
,`kategori_produk` varchar(100)
,`namaind_produk` varchar(45)
,`namaen_produk` varchar(45)
,`status_produk` int(11)
,`id_user` int(11)
,`username` varchar(255)
,`password` text
,`email` varchar(255)
,`login_status` enum('0','1')
,`login_token` text
,`validation_code` text
,`level` varchar(255)
,`idtbl_upi` int(11)
,`nama_upi` varchar(50)
,`pemilik_upi` varchar(50)
,`alamat_upi` varchar(100)
,`kodepos_upi` int(11)
,`entitas_upi` enum('PT','CV','UD','Koperasi','Lainnya')
,`provinsi_upi` int(2)
,`kabupaten_upi` varchar(45)
,`kecamatan_upi` varchar(45)
,`desa_upi` varchar(45)
,`email_upi` varchar(60)
,`omzet_upi` varchar(10)
,`tahunmulai_upi` int(11)
,`nosiup_upi` varchar(45)
,`noiup_upi` varchar(45)
,`noakta_upi` varchar(45)
,`nonpwp_upi` varchar(45)
,`filesiup_upi` text
,`fileiup_upi` text
,`fileakta_upi` text
,`kontak_upi` varchar(255)
,`kontakperson_upi` varchar(20)
,`penanggungjawab_upi` varchar(255)
,`jenis_upi` varchar(100)
,`skala_upi` varchar(100)
,`alamat_pabrik` text
,`registration_date` date
,`user_id` int(11)
,`id_provinsi` int(2)
,`nama_provinsi` varchar(26)
,`kode_provinsi` varchar(2)
,`idtbl_kunjungan` int(11)
,`tgl_kunjungan` date
,`pic_kunjungan` varchar(255)
,`uker_kunjungan` varchar(50)
,`temuan_kunjungan` text
,`perbaikan_kunjungan` text
,`survey_kunjungan` text
,`rekomendasi_kunjungan` varchar(255)
,`status_kunjungan` varchar(50)
,`skp_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_skp_terbit`
--
CREATE TABLE `view_skp_terbit` (
`idtbl_skp_terbit` int(11)
,`tglmulai_skp_terbit` date
,`tglkadaluarsa_skp_terbit` date
,`noseri_skp_terbit` varchar(255)
,`no_skp_terbit` varchar(255)
,`file_skp_terbit` text
,`skp_id` int(11)
,`alurproses_id` int(11)
,`idtbl_alurproses` int(11)
,`nama_alurproses` text
,`name_alurproses` text
,`idtbl_skp` int(11)
,`filegmpssop_skp` varchar(255)
,`filesp_skp` varchar(255)
,`permohonan_skp` enum('Baru','Perpanjang')
,`produk_id` int(11)
,`realisasiproduksi_skp` varchar(45)
,`upi_id` int(11)
,`status_skp` varchar(45)
,`idtbl_produk` int(11)
,`kategori_produk` varchar(100)
,`namaind_produk` varchar(45)
,`namaen_produk` varchar(45)
,`status_produk` int(11)
,`id_user` int(11)
,`username` varchar(255)
,`password` text
,`email` varchar(255)
,`login_status` enum('0','1')
,`login_token` text
,`validation_code` text
,`level` varchar(255)
,`idtbl_upi` int(11)
,`nama_upi` varchar(50)
,`pemilik_upi` varchar(50)
,`alamat_upi` varchar(100)
,`kodepos_upi` int(11)
,`entitas_upi` enum('PT','CV','UD','Koperasi','Lainnya')
,`provinsi_upi` int(2)
,`kabupaten_upi` varchar(45)
,`kecamatan_upi` varchar(45)
,`desa_upi` varchar(45)
,`email_upi` varchar(60)
,`omzet_upi` varchar(10)
,`tahunmulai_upi` int(11)
,`nosiup_upi` varchar(45)
,`noiup_upi` varchar(45)
,`noakta_upi` varchar(45)
,`nonpwp_upi` varchar(45)
,`filesiup_upi` text
,`fileiup_upi` text
,`fileakta_upi` text
,`kontak_upi` varchar(255)
,`kontakperson_upi` varchar(20)
,`penanggungjawab_upi` varchar(255)
,`jenis_upi` varchar(100)
,`skala_upi` varchar(100)
,`alamat_pabrik` text
,`registration_date` date
,`user_id` int(11)
,`id_provinsi` int(2)
,`nama_provinsi` varchar(26)
,`kode_provinsi` varchar(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_upi_produk_skp`
--
CREATE TABLE `view_upi_produk_skp` (
`idtbl_skp` int(11)
,`filegmpssop_skp` varchar(255)
,`filesp_skp` varchar(255)
,`permohonan_skp` enum('Baru','Perpanjang')
,`produk_id` int(11)
,`realisasiproduksi_skp` varchar(45)
,`upi_id` int(11)
,`status_skp` varchar(45)
,`idtbl_produk` int(11)
,`kategori_produk` varchar(100)
,`namaind_produk` varchar(45)
,`namaen_produk` varchar(45)
,`status_produk` int(11)
,`id_user` int(11)
,`username` varchar(255)
,`password` text
,`email` varchar(255)
,`login_status` enum('0','1')
,`login_token` text
,`validation_code` text
,`level` varchar(255)
,`idtbl_upi` int(11)
,`nama_upi` varchar(50)
,`pemilik_upi` varchar(50)
,`alamat_upi` varchar(100)
,`kodepos_upi` int(11)
,`entitas_upi` enum('PT','CV','UD','Koperasi','Lainnya')
,`provinsi_upi` int(2)
,`kabupaten_upi` varchar(45)
,`kecamatan_upi` varchar(45)
,`desa_upi` varchar(45)
,`email_upi` varchar(60)
,`omzet_upi` varchar(10)
,`tahunmulai_upi` int(11)
,`nosiup_upi` varchar(45)
,`noiup_upi` varchar(45)
,`noakta_upi` varchar(45)
,`nonpwp_upi` varchar(45)
,`filesiup_upi` text
,`fileiup_upi` text
,`fileakta_upi` text
,`kontak_upi` varchar(255)
,`kontakperson_upi` varchar(20)
,`penanggungjawab_upi` varchar(255)
,`jenis_upi` varchar(100)
,`skala_upi` varchar(100)
,`alamat_pabrik` text
,`registration_date` date
,`user_id` int(11)
,`id_provinsi` int(2)
,`nama_provinsi` varchar(26)
,`kode_provinsi` varchar(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_dinas_provinsi`
--
CREATE TABLE `view_user_dinas_provinsi` (
`id_user` int(11)
,`username` varchar(255)
,`password` text
,`email` varchar(255)
,`login_status` enum('0','1')
,`login_token` text
,`validation_code` text
,`level` varchar(255)
,`idtbl_dinas` int(11)
,`nama_dinas` varchar(255)
,`jabatan_dinas` varchar(255)
,`provinsi_id` int(11)
,`user_id` int(11)
,`id_provinsi` int(2)
,`nama_provinsi` varchar(26)
,`kode_provinsi` varchar(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_kp`
--
CREATE TABLE `view_user_kp` (
`id_user` int(11)
,`username` varchar(255)
,`password` text
,`email` varchar(255)
,`login_status` enum('0','1')
,`login_token` text
,`validation_code` text
,`level` varchar(255)
,`idtbl_dinas` int(11)
,`nama_dinas` varchar(255)
,`jabatan_dinas` varchar(255)
,`provinsi_id` int(11)
,`user_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_register_upi`
--
CREATE TABLE `view_user_register_upi` (
`id_user` int(11)
,`username` varchar(255)
,`password` text
,`email` varchar(255)
,`login_status` enum('0','1')
,`login_token` text
,`validation_code` text
,`level` varchar(255)
,`idtbl_upi` int(11)
,`nama_upi` varchar(50)
,`pemilik_upi` varchar(50)
,`alamat_upi` varchar(100)
,`kodepos_upi` int(11)
,`entitas_upi` enum('PT','CV','UD','Koperasi','Lainnya')
,`provinsi_upi` int(11)
,`kabupaten_upi` varchar(45)
,`kecamatan_upi` varchar(45)
,`desa_upi` varchar(45)
,`email_upi` varchar(60)
,`kontak_upi` varchar(20)
,`kontakperson_upi` varchar(20)
,`penanggungjawab_upi` varchar(255)
,`omzet_upi` varchar(10)
,`tahunmulai_upi` int(11)
,`nosiup_upi` varchar(45)
,`noiup_upi` varchar(45)
,`noakta_upi` varchar(45)
,`nonpwp_upi` varchar(45)
,`filesiup_upi` text
,`fileiup_upi` text
,`fileakta_upi` text
,`alamat_pabrik` text
,`registration_status` varchar(45)
,`registration_date` date
,`user_id` int(11)
,`id_provinsi` int(2)
,`nama_provinsi` varchar(26)
,`kode_provinsi` varchar(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_upi_provinsi`
--
CREATE TABLE `view_user_upi_provinsi` (
`id_user` int(11)
,`username` varchar(255)
,`password` text
,`email` varchar(255)
,`login_status` enum('0','1')
,`login_token` text
,`validation_code` text
,`level` varchar(255)
,`idtbl_upi` int(11)
,`nama_upi` varchar(50)
,`pemilik_upi` varchar(50)
,`alamat_upi` varchar(100)
,`kodepos_upi` int(11)
,`entitas_upi` enum('PT','CV','UD','Koperasi','Lainnya')
,`provinsi_upi` int(2)
,`kabupaten_upi` varchar(45)
,`kecamatan_upi` varchar(45)
,`desa_upi` varchar(45)
,`email_upi` varchar(60)
,`omzet_upi` varchar(10)
,`tahunmulai_upi` int(11)
,`nosiup_upi` varchar(45)
,`noiup_upi` varchar(45)
,`noakta_upi` varchar(45)
,`nonpwp_upi` varchar(45)
,`filesiup_upi` text
,`fileiup_upi` text
,`fileakta_upi` text
,`kontak_upi` varchar(255)
,`kontakperson_upi` varchar(20)
,`penanggungjawab_upi` varchar(255)
,`jenis_upi` varchar(100)
,`skala_upi` varchar(100)
,`alamat_pabrik` text
,`registration_date` date
,`user_id` int(11)
,`id_provinsi` int(2)
,`nama_provinsi` varchar(26)
,`kode_provinsi` varchar(2)
);

-- --------------------------------------------------------

--
-- Structure for view `view_skp_kunjungan`
--
DROP TABLE IF EXISTS `view_skp_kunjungan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_skp_kunjungan`  AS  select `ups`.`idtbl_skp` AS `idtbl_skp`,`ups`.`filegmpssop_skp` AS `filegmpssop_skp`,`ups`.`filesp_skp` AS `filesp_skp`,`ups`.`permohonan_skp` AS `permohonan_skp`,`ups`.`produk_id` AS `produk_id`,`ups`.`realisasiproduksi_skp` AS `realisasiproduksi_skp`,`ups`.`upi_id` AS `upi_id`,`ups`.`status_skp` AS `status_skp`,`ups`.`idtbl_produk` AS `idtbl_produk`,`ups`.`kategori_produk` AS `kategori_produk`,`ups`.`namaind_produk` AS `namaind_produk`,`ups`.`namaen_produk` AS `namaen_produk`,`ups`.`status_produk` AS `status_produk`,`ups`.`id_user` AS `id_user`,`ups`.`username` AS `username`,`ups`.`password` AS `password`,`ups`.`email` AS `email`,`ups`.`login_status` AS `login_status`,`ups`.`login_token` AS `login_token`,`ups`.`validation_code` AS `validation_code`,`ups`.`level` AS `level`,`ups`.`idtbl_upi` AS `idtbl_upi`,`ups`.`nama_upi` AS `nama_upi`,`ups`.`pemilik_upi` AS `pemilik_upi`,`ups`.`alamat_upi` AS `alamat_upi`,`ups`.`kodepos_upi` AS `kodepos_upi`,`ups`.`entitas_upi` AS `entitas_upi`,`ups`.`provinsi_upi` AS `provinsi_upi`,`ups`.`kabupaten_upi` AS `kabupaten_upi`,`ups`.`kecamatan_upi` AS `kecamatan_upi`,`ups`.`desa_upi` AS `desa_upi`,`ups`.`email_upi` AS `email_upi`,`ups`.`omzet_upi` AS `omzet_upi`,`ups`.`tahunmulai_upi` AS `tahunmulai_upi`,`ups`.`nosiup_upi` AS `nosiup_upi`,`ups`.`noiup_upi` AS `noiup_upi`,`ups`.`noakta_upi` AS `noakta_upi`,`ups`.`nonpwp_upi` AS `nonpwp_upi`,`ups`.`filesiup_upi` AS `filesiup_upi`,`ups`.`fileiup_upi` AS `fileiup_upi`,`ups`.`fileakta_upi` AS `fileakta_upi`,`ups`.`kontak_upi` AS `kontak_upi`,`ups`.`kontakperson_upi` AS `kontakperson_upi`,`ups`.`penanggungjawab_upi` AS `penanggungjawab_upi`,`ups`.`jenis_upi` AS `jenis_upi`,`ups`.`skala_upi` AS `skala_upi`,`ups`.`alamat_pabrik` AS `alamat_pabrik`,`ups`.`registration_date` AS `registration_date`,`ups`.`user_id` AS `user_id`,`ups`.`id_provinsi` AS `id_provinsi`,`ups`.`nama_provinsi` AS `nama_provinsi`,`ups`.`kode_provinsi` AS `kode_provinsi`,`k`.`idtbl_kunjungan` AS `idtbl_kunjungan`,`k`.`tgl_kunjungan` AS `tgl_kunjungan`,`k`.`pic_kunjungan` AS `pic_kunjungan`,`k`.`uker_kunjungan` AS `uker_kunjungan`,`k`.`temuan_kunjungan` AS `temuan_kunjungan`,`k`.`perbaikan_kunjungan` AS `perbaikan_kunjungan`,`k`.`survey_kunjungan` AS `survey_kunjungan`,`k`.`rekomendasi_kunjungan` AS `rekomendasi_kunjungan`,`k`.`status_kunjungan` AS `status_kunjungan`,`k`.`skp_id` AS `skp_id` from (`view_upi_produk_skp` `ups` join `tbl_kunjungan` `k`) where (`ups`.`idtbl_skp` = `k`.`skp_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_skp_terbit`
--
DROP TABLE IF EXISTS `view_skp_terbit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_skp_terbit`  AS  select `skpt`.`idtbl_skp_terbit` AS `idtbl_skp_terbit`,`skpt`.`tglmulai_skp_terbit` AS `tglmulai_skp_terbit`,`skpt`.`tglkadaluarsa_skp_terbit` AS `tglkadaluarsa_skp_terbit`,`skpt`.`noseri_skp_terbit` AS `noseri_skp_terbit`,`skpt`.`no_skp_terbit` AS `no_skp_terbit`,`skpt`.`file_skp_terbit` AS `file_skp_terbit`,`skpt`.`skp_id` AS `skp_id`,`skpt`.`alurproses_id` AS `alurproses_id`,`ap`.`idtbl_alurproses` AS `idtbl_alurproses`,`ap`.`nama_alurproses` AS `nama_alurproses`,`ap`.`name_alurproses` AS `name_alurproses`,`ups`.`idtbl_skp` AS `idtbl_skp`,`ups`.`filegmpssop_skp` AS `filegmpssop_skp`,`ups`.`filesp_skp` AS `filesp_skp`,`ups`.`permohonan_skp` AS `permohonan_skp`,`ups`.`produk_id` AS `produk_id`,`ups`.`realisasiproduksi_skp` AS `realisasiproduksi_skp`,`ups`.`upi_id` AS `upi_id`,`ups`.`status_skp` AS `status_skp`,`ups`.`idtbl_produk` AS `idtbl_produk`,`ups`.`kategori_produk` AS `kategori_produk`,`ups`.`namaind_produk` AS `namaind_produk`,`ups`.`namaen_produk` AS `namaen_produk`,`ups`.`status_produk` AS `status_produk`,`ups`.`id_user` AS `id_user`,`ups`.`username` AS `username`,`ups`.`password` AS `password`,`ups`.`email` AS `email`,`ups`.`login_status` AS `login_status`,`ups`.`login_token` AS `login_token`,`ups`.`validation_code` AS `validation_code`,`ups`.`level` AS `level`,`ups`.`idtbl_upi` AS `idtbl_upi`,`ups`.`nama_upi` AS `nama_upi`,`ups`.`pemilik_upi` AS `pemilik_upi`,`ups`.`alamat_upi` AS `alamat_upi`,`ups`.`kodepos_upi` AS `kodepos_upi`,`ups`.`entitas_upi` AS `entitas_upi`,`ups`.`provinsi_upi` AS `provinsi_upi`,`ups`.`kabupaten_upi` AS `kabupaten_upi`,`ups`.`kecamatan_upi` AS `kecamatan_upi`,`ups`.`desa_upi` AS `desa_upi`,`ups`.`email_upi` AS `email_upi`,`ups`.`omzet_upi` AS `omzet_upi`,`ups`.`tahunmulai_upi` AS `tahunmulai_upi`,`ups`.`nosiup_upi` AS `nosiup_upi`,`ups`.`noiup_upi` AS `noiup_upi`,`ups`.`noakta_upi` AS `noakta_upi`,`ups`.`nonpwp_upi` AS `nonpwp_upi`,`ups`.`filesiup_upi` AS `filesiup_upi`,`ups`.`fileiup_upi` AS `fileiup_upi`,`ups`.`fileakta_upi` AS `fileakta_upi`,`ups`.`kontak_upi` AS `kontak_upi`,`ups`.`kontakperson_upi` AS `kontakperson_upi`,`ups`.`penanggungjawab_upi` AS `penanggungjawab_upi`,`ups`.`jenis_upi` AS `jenis_upi`,`ups`.`skala_upi` AS `skala_upi`,`ups`.`alamat_pabrik` AS `alamat_pabrik`,`ups`.`registration_date` AS `registration_date`,`ups`.`user_id` AS `user_id`,`ups`.`id_provinsi` AS `id_provinsi`,`ups`.`nama_provinsi` AS `nama_provinsi`,`ups`.`kode_provinsi` AS `kode_provinsi` from ((`tbl_skp_terbit` `skpt` join `tbl_alurproses` `ap`) join `view_upi_produk_skp` `ups`) where ((`skpt`.`skp_id` = `ups`.`idtbl_skp`) and (`ap`.`idtbl_alurproses` = `skpt`.`alurproses_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_upi_produk_skp`
--
DROP TABLE IF EXISTS `view_upi_produk_skp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_upi_produk_skp`  AS  select `skp`.`idtbl_skp` AS `idtbl_skp`,`skp`.`filegmpssop_skp` AS `filegmpssop_skp`,`skp`.`filesp_skp` AS `filesp_skp`,`skp`.`permohonan_skp` AS `permohonan_skp`,`skp`.`produk_id` AS `produk_id`,`skp`.`realisasiproduksi_skp` AS `realisasiproduksi_skp`,`skp`.`upi_id` AS `upi_id`,`skp`.`status_skp` AS `status_skp`,`pr`.`idtbl_produk` AS `idtbl_produk`,`pr`.`kategori_produk` AS `kategori_produk`,`pr`.`namaind_produk` AS `namaind_produk`,`pr`.`namaen_produk` AS `namaen_produk`,`pr`.`status_produk` AS `status_produk`,`uup`.`id_user` AS `id_user`,`uup`.`username` AS `username`,`uup`.`password` AS `password`,`uup`.`email` AS `email`,`uup`.`login_status` AS `login_status`,`uup`.`login_token` AS `login_token`,`uup`.`validation_code` AS `validation_code`,`uup`.`level` AS `level`,`uup`.`idtbl_upi` AS `idtbl_upi`,`uup`.`nama_upi` AS `nama_upi`,`uup`.`pemilik_upi` AS `pemilik_upi`,`uup`.`alamat_upi` AS `alamat_upi`,`uup`.`kodepos_upi` AS `kodepos_upi`,`uup`.`entitas_upi` AS `entitas_upi`,`uup`.`provinsi_upi` AS `provinsi_upi`,`uup`.`kabupaten_upi` AS `kabupaten_upi`,`uup`.`kecamatan_upi` AS `kecamatan_upi`,`uup`.`desa_upi` AS `desa_upi`,`uup`.`email_upi` AS `email_upi`,`uup`.`omzet_upi` AS `omzet_upi`,`uup`.`tahunmulai_upi` AS `tahunmulai_upi`,`uup`.`nosiup_upi` AS `nosiup_upi`,`uup`.`noiup_upi` AS `noiup_upi`,`uup`.`noakta_upi` AS `noakta_upi`,`uup`.`nonpwp_upi` AS `nonpwp_upi`,`uup`.`filesiup_upi` AS `filesiup_upi`,`uup`.`fileiup_upi` AS `fileiup_upi`,`uup`.`fileakta_upi` AS `fileakta_upi`,`uup`.`kontak_upi` AS `kontak_upi`,`uup`.`kontakperson_upi` AS `kontakperson_upi`,`uup`.`penanggungjawab_upi` AS `penanggungjawab_upi`,`uup`.`jenis_upi` AS `jenis_upi`,`uup`.`skala_upi` AS `skala_upi`,`uup`.`alamat_pabrik` AS `alamat_pabrik`,`uup`.`registration_date` AS `registration_date`,`uup`.`user_id` AS `user_id`,`uup`.`id_provinsi` AS `id_provinsi`,`uup`.`nama_provinsi` AS `nama_provinsi`,`uup`.`kode_provinsi` AS `kode_provinsi` from ((`tbl_skp` `skp` join `tbl_produk` `pr`) join `view_user_upi_provinsi` `uup`) where ((`pr`.`idtbl_produk` = `skp`.`produk_id`) and (`skp`.`upi_id` = `uup`.`idtbl_upi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_dinas_provinsi`
--
DROP TABLE IF EXISTS `view_user_dinas_provinsi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_dinas_provinsi`  AS  select `us`.`id_user` AS `id_user`,`us`.`username` AS `username`,`us`.`password` AS `password`,`us`.`email` AS `email`,`us`.`login_status` AS `login_status`,`us`.`login_token` AS `login_token`,`us`.`validation_code` AS `validation_code`,`us`.`level` AS `level`,`d`.`idtbl_dinas` AS `idtbl_dinas`,`d`.`nama_dinas` AS `nama_dinas`,`d`.`jabatan_dinas` AS `jabatan_dinas`,`d`.`provinsi_id` AS `provinsi_id`,`d`.`user_id` AS `user_id`,`p`.`id_provinsi` AS `id_provinsi`,`p`.`nama_provinsi` AS `nama_provinsi`,`p`.`kode_provinsi` AS `kode_provinsi` from ((`tbl_user` `us` join `tbl_dinas` `d`) join `tbl_provinsi` `p`) where ((`us`.`id_user` = `d`.`user_id`) and (`d`.`provinsi_id` = `p`.`id_provinsi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_kp`
--
DROP TABLE IF EXISTS `view_user_kp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_kp`  AS  select `us`.`id_user` AS `id_user`,`us`.`username` AS `username`,`us`.`password` AS `password`,`us`.`email` AS `email`,`us`.`login_status` AS `login_status`,`us`.`login_token` AS `login_token`,`us`.`validation_code` AS `validation_code`,`us`.`level` AS `level`,`d`.`idtbl_dinas` AS `idtbl_dinas`,`d`.`nama_dinas` AS `nama_dinas`,`d`.`jabatan_dinas` AS `jabatan_dinas`,`d`.`provinsi_id` AS `provinsi_id`,`d`.`user_id` AS `user_id` from (`tbl_user` `us` join `tbl_dinas` `d`) where ((`us`.`id_user` = `d`.`user_id`) and (`us`.`level` <> 'upi') and (`us`.`level` <> 'dinas')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_register_upi`
--
DROP TABLE IF EXISTS `view_user_register_upi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_register_upi`  AS  select `us`.`id_user` AS `id_user`,`us`.`username` AS `username`,`us`.`password` AS `password`,`us`.`email` AS `email`,`us`.`login_status` AS `login_status`,`us`.`login_token` AS `login_token`,`us`.`validation_code` AS `validation_code`,`us`.`level` AS `level`,`up`.`idtbl_upi` AS `idtbl_upi`,`up`.`nama_upi` AS `nama_upi`,`up`.`pemilik_upi` AS `pemilik_upi`,`up`.`alamat_upi` AS `alamat_upi`,`up`.`kodepos_upi` AS `kodepos_upi`,`up`.`entitas_upi` AS `entitas_upi`,`up`.`provinsi_upi` AS `provinsi_upi`,`up`.`kabupaten_upi` AS `kabupaten_upi`,`up`.`kecamatan_upi` AS `kecamatan_upi`,`up`.`desa_upi` AS `desa_upi`,`up`.`email_upi` AS `email_upi`,`up`.`kontak_upi` AS `kontak_upi`,`up`.`kontakperson_upi` AS `kontakperson_upi`,`up`.`penanggungjawab_upi` AS `penanggungjawab_upi`,`up`.`omzet_upi` AS `omzet_upi`,`up`.`tahunmulai_upi` AS `tahunmulai_upi`,`up`.`nosiup_upi` AS `nosiup_upi`,`up`.`noiup_upi` AS `noiup_upi`,`up`.`noakta_upi` AS `noakta_upi`,`up`.`nonpwp_upi` AS `nonpwp_upi`,`up`.`filesiup_upi` AS `filesiup_upi`,`up`.`fileiup_upi` AS `fileiup_upi`,`up`.`fileakta_upi` AS `fileakta_upi`,`up`.`alamat_pabrik` AS `alamat_pabrik`,`up`.`registration_status` AS `registration_status`,`up`.`registration_date` AS `registration_date`,`up`.`user_id` AS `user_id`,`p`.`id_provinsi` AS `id_provinsi`,`p`.`nama_provinsi` AS `nama_provinsi`,`p`.`kode_provinsi` AS `kode_provinsi` from ((`tbl_user` `us` join `tbl_register_upi` `up`) join `tbl_provinsi` `p`) where ((`us`.`id_user` = `up`.`user_id`) and (`up`.`provinsi_upi` = `p`.`id_provinsi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_upi_provinsi`
--
DROP TABLE IF EXISTS `view_user_upi_provinsi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_upi_provinsi`  AS  select `us`.`id_user` AS `id_user`,`us`.`username` AS `username`,`us`.`password` AS `password`,`us`.`email` AS `email`,`us`.`login_status` AS `login_status`,`us`.`login_token` AS `login_token`,`us`.`validation_code` AS `validation_code`,`us`.`level` AS `level`,`up`.`idtbl_upi` AS `idtbl_upi`,`up`.`nama_upi` AS `nama_upi`,`up`.`pemilik_upi` AS `pemilik_upi`,`up`.`alamat_upi` AS `alamat_upi`,`up`.`kodepos_upi` AS `kodepos_upi`,`up`.`entitas_upi` AS `entitas_upi`,`up`.`provinsi_upi` AS `provinsi_upi`,`up`.`kabupaten_upi` AS `kabupaten_upi`,`up`.`kecamatan_upi` AS `kecamatan_upi`,`up`.`desa_upi` AS `desa_upi`,`up`.`email_upi` AS `email_upi`,`up`.`omzet_upi` AS `omzet_upi`,`up`.`tahunmulai_upi` AS `tahunmulai_upi`,`up`.`nosiup_upi` AS `nosiup_upi`,`up`.`noiup_upi` AS `noiup_upi`,`up`.`noakta_upi` AS `noakta_upi`,`up`.`nonpwp_upi` AS `nonpwp_upi`,`up`.`filesiup_upi` AS `filesiup_upi`,`up`.`fileiup_upi` AS `fileiup_upi`,`up`.`fileakta_upi` AS `fileakta_upi`,`up`.`kontak_upi` AS `kontak_upi`,`up`.`kontakperson_upi` AS `kontakperson_upi`,`up`.`penanggungjawab_upi` AS `penanggungjawab_upi`,`up`.`jenis_upi` AS `jenis_upi`,`up`.`skala_upi` AS `skala_upi`,`up`.`alamat_pabrik` AS `alamat_pabrik`,`up`.`registration_date` AS `registration_date`,`up`.`user_id` AS `user_id`,`p`.`id_provinsi` AS `id_provinsi`,`p`.`nama_provinsi` AS `nama_provinsi`,`p`.`kode_provinsi` AS `kode_provinsi` from ((`tbl_user` `us` join `tbl_upi` `up`) join `tbl_provinsi` `p`) where ((`us`.`id_user` = `up`.`user_id`) and (`up`.`provinsi_upi` = `p`.`id_provinsi`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_airbersih`
--
ALTER TABLE `tbl_airbersih`
  ADD PRIMARY KEY (`id_airbersih`);

--
-- Indexes for table `tbl_alurproses`
--
ALTER TABLE `tbl_alurproses`
  ADD PRIMARY KEY (`idtbl_alurproses`);

--
-- Indexes for table `tbl_asales`
--
ALTER TABLE `tbl_asales`
  ADD PRIMARY KEY (`idtbl_asales`),
  ADD KEY `fk_tbl_asales_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_bahanbaku`
--
ALTER TABLE `tbl_bahanbaku`
  ADD PRIMARY KEY (`idtbl_bahanbaku`),
  ADD KEY `fk_tbl_bahanbaku_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_dinas`
--
ALTER TABLE `tbl_dinas`
  ADD PRIMARY KEY (`idtbl_dinas`);

--
-- Indexes for table `tbl_file_example`
--
ALTER TABLE `tbl_file_example`
  ADD PRIMARY KEY (`id_file_example`);

--
-- Indexes for table `tbl_infolain`
--
ALTER TABLE `tbl_infolain`
  ADD PRIMARY KEY (`idtbl_infolain`),
  ADD KEY `fk_tbl_infolain_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`idtbl_karyawan`),
  ADD KEY `fk_tbl_karyawan_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_kunjungan`
--
ALTER TABLE `tbl_kunjungan`
  ADD PRIMARY KEY (`idtbl_kunjungan`),
  ADD KEY `fk_tbl_kunjungan_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_pemasaran`
--
ALTER TABLE `tbl_pemasaran`
  ADD PRIMARY KEY (`idtbl_pemasaran`),
  ADD KEY `fk_tbl_pemasaran_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_penanggungjawab`
--
ALTER TABLE `tbl_penanggungjawab`
  ADD PRIMARY KEY (`idtbl_penanggungjawab`),
  ADD KEY `fk_tbl_penanggungjawab_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`idtbl_produk`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `tbl_register_upi`
--
ALTER TABLE `tbl_register_upi`
  ADD PRIMARY KEY (`idtbl_upi`);

--
-- Indexes for table `tbl_rejected`
--
ALTER TABLE `tbl_rejected`
  ADD PRIMARY KEY (`id_rejected`),
  ADD KEY `fk_tbl_rejected_tbl_register_upi1_idx` (`upi_id`);

--
-- Indexes for table `tbl_sarpras`
--
ALTER TABLE `tbl_sarpras`
  ADD PRIMARY KEY (`idtbl_sarpras`),
  ADD KEY `fk_tbl_sarpras_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_skp`
--
ALTER TABLE `tbl_skp`
  ADD PRIMARY KEY (`idtbl_skp`),
  ADD KEY `fk_tbl_skp_tbl_produk_idx` (`produk_id`),
  ADD KEY `fk_tbl_skp_tbl_upi1_idx` (`upi_id`);

--
-- Indexes for table `tbl_skp_log`
--
ALTER TABLE `tbl_skp_log`
  ADD PRIMARY KEY (`id_skp_log`);

--
-- Indexes for table `tbl_skp_terbit`
--
ALTER TABLE `tbl_skp_terbit`
  ADD PRIMARY KEY (`idtbl_skp_terbit`);

--
-- Indexes for table `tbl_sni`
--
ALTER TABLE `tbl_sni`
  ADD PRIMARY KEY (`idtbl_sni`),
  ADD KEY `fk_tbl_sni_tbl_skp1_idx` (`skp_id`);

--
-- Indexes for table `tbl_tandatangan`
--
ALTER TABLE `tbl_tandatangan`
  ADD PRIMARY KEY (`idtbl_tandatangan`);

--
-- Indexes for table `tbl_upi`
--
ALTER TABLE `tbl_upi`
  ADD PRIMARY KEY (`idtbl_upi`),
  ADD KEY `fk_tbl_upi_tbl_user1_idx` (`user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_airbersih`
--
ALTER TABLE `tbl_airbersih`
  MODIFY `id_airbersih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `tbl_alurproses`
--
ALTER TABLE `tbl_alurproses`
  MODIFY `idtbl_alurproses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_asales`
--
ALTER TABLE `tbl_asales`
  MODIFY `idtbl_asales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `tbl_bahanbaku`
--
ALTER TABLE `tbl_bahanbaku`
  MODIFY `idtbl_bahanbaku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1361;
--
-- AUTO_INCREMENT for table `tbl_dinas`
--
ALTER TABLE `tbl_dinas`
  MODIFY `idtbl_dinas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tbl_file_example`
--
ALTER TABLE `tbl_file_example`
  MODIFY `id_file_example` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_infolain`
--
ALTER TABLE `tbl_infolain`
  MODIFY `idtbl_infolain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `idtbl_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `tbl_kunjungan`
--
ALTER TABLE `tbl_kunjungan`
  MODIFY `idtbl_kunjungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT for table `tbl_pemasaran`
--
ALTER TABLE `tbl_pemasaran`
  MODIFY `idtbl_pemasaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1259;
--
-- AUTO_INCREMENT for table `tbl_penanggungjawab`
--
ALTER TABLE `tbl_penanggungjawab`
  MODIFY `idtbl_penanggungjawab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `idtbl_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;
--
-- AUTO_INCREMENT for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tbl_register_upi`
--
ALTER TABLE `tbl_register_upi`
  MODIFY `idtbl_upi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
--
-- AUTO_INCREMENT for table `tbl_rejected`
--
ALTER TABLE `tbl_rejected`
  MODIFY `id_rejected` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_sarpras`
--
ALTER TABLE `tbl_sarpras`
  MODIFY `idtbl_sarpras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4004;
--
-- AUTO_INCREMENT for table `tbl_skp`
--
ALTER TABLE `tbl_skp`
  MODIFY `idtbl_skp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `tbl_skp_log`
--
ALTER TABLE `tbl_skp_log`
  MODIFY `id_skp_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1894;
--
-- AUTO_INCREMENT for table `tbl_skp_terbit`
--
ALTER TABLE `tbl_skp_terbit`
  MODIFY `idtbl_skp_terbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `tbl_sni`
--
ALTER TABLE `tbl_sni`
  MODIFY `idtbl_sni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT for table `tbl_tandatangan`
--
ALTER TABLE `tbl_tandatangan`
  MODIFY `idtbl_tandatangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `tbl_upi`
--
ALTER TABLE `tbl_upi`
  MODIFY `idtbl_upi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
