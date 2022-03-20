-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Mar 2022 pada 15.02
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_spk`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pci`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pci` (
`kelas` varchar(5)
,`kelas_prediksi` varchar(5)
,`count_of` bigint(22)
,`count_all` bigint(22)
,`val` decimal(25,4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `px`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `px` (
`kelas` varchar(14)
,`atribut` varchar(6)
,`count_of` bigint(22)
,`count_all` bigint(22)
,`val` decimal(25,4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pxci`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pxci` (
`kelas` varchar(14)
,`atribut` varchar(6)
,`kelas_prediksi` varchar(5)
,`count_of` bigint(22)
,`count_all` bigint(22)
,`val` decimal(25,4)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `training`
--

CREATE TABLE `training` (
  `id` int(11) NOT NULL,
  `usia` varchar(100) NOT NULL,
  `jkel` varchar(100) NOT NULL,
  `banyak_kencing` varchar(100) NOT NULL,
  `turun_bb` varchar(100) NOT NULL,
  `luka_sukar` varchar(100) NOT NULL,
  `kesemutan` varchar(100) NOT NULL,
  `lemas` varchar(100) NOT NULL,
  `kulit_gatal` varchar(100) NOT NULL,
  `keturunan` varchar(100) NOT NULL,
  `hasil` varchar(100) NOT NULL,
  `waktu_insert` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `training`
--

INSERT INTO `training` (`id`, `usia`, `jkel`, `banyak_kencing`, `turun_bb`, `luka_sukar`, `kesemutan`, `lemas`, `kulit_gatal`, `keturunan`, `hasil`, `waktu_insert`) VALUES
(1, '20-40', 'wanita', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(2, '40-50', 'wanita', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(3, '20-40', 'pria', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(4, '50-60', 'wanita', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(5, '40-50', 'pria', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(6, '20-40', 'pria', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'tidak', '2021-07-20 23:30:23'),
(7, '50-60', 'wanita', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(8, '50-60', 'pria', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(9, '20-40', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(10, '50-60', 'pria', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(11, '40-50', 'pria', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(12, '50-60', 'wanita', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(13, '40-50', 'wanita', 'tidak', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(14, '50-60', 'wanita', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(15, '20-40', 'pria', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(16, '40-50', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(17, '20-40', 'pria', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(18, '40-50', 'wanita', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(19, '50-60', 'pria', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(20, '20-40', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(21, '40-50', 'wanita', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(22, '40-50', 'pria', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(23, '40-50', 'wanita', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(24, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(25, '40-50', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(26, '50-60', 'pria', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(27, '40-50', 'pria', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(28, '20-40', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(29, '20-40', 'wanita', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(30, '40-50', 'pria', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'ya', '2021-07-20 23:30:23'),
(31, '40-50', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(32, '20-40', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(33, '40-50', 'wanita', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(34, '20-40', 'pria', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(35, '40-50', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(36, '50-60', 'pria', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(37, '40-50', 'pria', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(38, '20-40', 'wanita', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(39, '20-40', 'wanita', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(40, '50-60', 'wanita', 'tidak', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(41, '40-50', 'pria', 'ya', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'ya', '2021-07-20 23:30:23'),
(42, '20-40', 'pria', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(43, '40-50', 'wanita', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(44, '20-40', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(45, '50-60', 'wanita', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(46, '40-50', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(47, '20-40', 'wanita', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(48, '50-60', 'pria', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(49, '40-50', 'pria', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(50, '50-60', 'wanita', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(51, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(52, '40-50', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(53, '50-60', 'wanita', 'tidak', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(54, '50-60', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(55, '20-40', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(56, '20-40', 'pria', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(57, '50-60', 'pria', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(58, '40-50', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(59, '50-60', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(60, '20-40', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(61, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(62, '20-40', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(63, '40-50', 'pria', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(64, '50-60', 'pria', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(65, '20-40', 'wanita', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(66, '40-50', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(67, '40-50', 'pria', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(68, '20-40', 'pria', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(69, '40-50', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(70, '20-40', 'wanita', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(71, '50-60', 'wanita', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(72, '40-50', 'pria', 'tidak', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(73, '40-50', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(74, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(75, '20-40', 'wanita', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(76, '40-50', 'pria', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(77, '50-60', 'wanita', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(78, '50-60', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(79, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(80, '20-40', 'wanita', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(81, '50-60', 'pria', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(82, '40-50', 'pria', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', '2021-07-20 23:30:23'),
(83, '50-60', 'pria', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(84, '20-40', 'wanita', 'ya', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(85, '50-60', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(86, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(87, '40-50', 'wanita', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(88, '40-50', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(89, '50-60', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(90, '40-50', 'pria', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(91, '40-50', 'wanita', 'tidak', 'ya', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'ya', '2021-07-20 23:30:23'),
(92, '50-60', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(93, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(94, '40-50', 'pria', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(95, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(96, '50-60', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(97, '20-40', 'pria', 'tidak', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', '2021-07-20 23:30:23'),
(98, '50-60', 'pria', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23'),
(99, '40-50', 'wanita', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', '2021-07-20 23:30:23'),
(100, '50-60', 'wanita', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'ya', 'ya', '2021-07-20 23:30:23');

-- --------------------------------------------------------

--
-- Struktur untuk view `pci`
--
DROP TABLE IF EXISTS `pci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pci`  AS  select 'hasil' AS `kelas`,'ya' AS `kelas_prediksi`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 1 AS `count_of`,(select count(`training`.`id`) from `training`) + 2 AS `count_all`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `val` union select 'hasil' AS `hasil`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 1 AS `((select count(id) from training WHERE hasil = 'tidak')+1)`,(select count(`training`.`id`) from `training`) + 2 AS `((select count(id) from training)+2)`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `px`
--
DROP TABLE IF EXISTS `px`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `px`  AS  select 'usia' AS `kelas`,'20-40' AS `atribut`,(select count(`training`.`id`) from `training` where `training`.`usia` = '20-40') + 1 AS `count_of`,(select count(`training`.`id`) from `training`) + 3 AS `count_all`,((select count(`training`.`id`) from `training` where `training`.`usia` = '20-40') + 1) / ((select count(`training`.`id`) from `training`) + 3) AS `val` union select 'usia' AS `usia`,'40-50' AS `40-50`,(select count(`training`.`id`) from `training` where `training`.`usia` = '40-50') + 1 AS `(select count(id) from training where usia = '40-50')+1`,(select count(`training`.`id`) from `training`) + 3 AS `(select count(id) from training)+3`,((select count(`training`.`id`) from `training` where `training`.`usia` = '40-50') + 1) / ((select count(`training`.`id`) from `training`) + 3) AS `Name_exp_5` union select 'usia' AS `usia`,'50-60' AS `50-60`,(select count(`training`.`id`) from `training` where `training`.`usia` = '50-60') + 1 AS `(select count(id) from training where usia = '50-60')+1`,(select count(`training`.`id`) from `training`) + 3 AS `(select count(id) from training)+3`,((select count(`training`.`id`) from `training` where `training`.`usia` = '50-60') + 1) / ((select count(`training`.`id`) from `training`) + 3) AS `Name_exp_5` union select 'jkel' AS `jkel`,'pria' AS `pria`,(select count(`training`.`id`) from `training` where `training`.`jkel` = 'pria') + 1 AS `(select count(id) from training where jkel = 'pria')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`jkel` = 'pria') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'jkel' AS `jkel`,'wanita' AS `wanita`,(select count(`training`.`id`) from `training` where `training`.`jkel` = 'wanita') + 1 AS `(select count(id) from training where jkel = 'wanita')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`jkel` = 'wanita') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'banyak_kencing' AS `banyak_kencing`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`banyak_kencing` = 'ya') + 1 AS `(select count(id) from training where banyak_kencing = 'ya')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`banyak_kencing` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'banyak_kencing' AS `banyak_kencing`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`banyak_kencing` = 'tidak') + 1 AS `Name_exp_3`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`banyak_kencing` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'turun_bb' AS `turun_bb`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`turun_bb` = 'ya') + 1 AS `(select count(id) from training where turun_bb= 'ya')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`turun_bb` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'turun_bb' AS `turun_bb`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`turun_bb` = 'tidak') + 1 AS `(select count(id) from training where turun_bb= 'tidak')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`turun_bb` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'luka_sukar' AS `luka_sukar`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`luka_sukar` = 'ya') + 1 AS `(select count(id) from training where luka_sukar= 'ya')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`luka_sukar` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'luka_sukar' AS `luka_sukar`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`luka_sukar` = 'tidak') + 1 AS `(select count(id) from training where luka_sukar= 'tidak')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`luka_sukar` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'kesemutan' AS `kesemutan`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`kesemutan` = 'ya') + 1 AS `(select count(id) from training where kesemutan= 'ya')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`kesemutan` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'kesemutan' AS `kesemutan`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`kesemutan` = 'tidak') + 1 AS `(select count(id) from training where kesemutan= 'tidak')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`kesemutan` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'lemas' AS `lemas`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`lemas` = 'ya') + 1 AS `(select count(id) from training where lemas= 'ya')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`lemas` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'lemas' AS `lemas`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`lemas` = 'tidak') + 1 AS `(select count(id) from training where lemas= 'tidak')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`lemas` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'kulit_gatal' AS `kulit_gatal`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`kulit_gatal` = 'ya') + 1 AS `(select count(id) from training where kulit_gatal= 'ya')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`kulit_gatal` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'kulit_gatal' AS `kulit_gatal`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`kulit_gatal` = 'tidak') + 1 AS `(select count(id) from training where kulit_gatal= 'tidak')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`kulit_gatal` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'keturunan' AS `keturunan`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`keturunan` = 'ya') + 1 AS `(select count(id) from training where keturunan= 'ya')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`keturunan` = 'ya') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` union select 'keturunan' AS `keturunan`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`keturunan` = 'tidak') + 1 AS `(select count(id) from training where keturunan= 'tidak')+1`,(select count(`training`.`id`) from `training`) + 2 AS `(select count(id) from training)+2`,((select count(`training`.`id`) from `training` where `training`.`keturunan` = 'tidak') + 1) / ((select count(`training`.`id`) from `training`) + 2) AS `Name_exp_5` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pxci`
--
DROP TABLE IF EXISTS `pxci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pxci`  AS  select 'usia' AS `kelas`,'20-40' AS `atribut`,'ya' AS `kelas_prediksi`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`usia` = '20-40') + 1 AS `count_of`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 3 AS `count_all`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`usia` = '20-40') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 3) AS `val` union select 'usia' AS `usia`,'20-40' AS `20-40`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`usia` = '20-40') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 3 AS `(select count(id) from training where hasil = 'tidak')+3`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`usia` = '20-40') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 3) AS `Name_exp_6` union select 'usia' AS `usia`,'40-50' AS `40-50`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`usia` = '40-50') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 3 AS `(select count(id) from training where hasil = 'ya')+3`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`usia` = '40-50') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 3) AS `Name_exp_6` union select 'usia' AS `usia`,'40-50' AS `40-50`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`usia` = '40-50') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 3 AS `(select count(id) from training where hasil = 'tidak')+3`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`usia` = '40-50') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 3) AS `Name_exp_6` union select 'usia' AS `usia`,'50-60' AS `50-60`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`usia` = '50-60') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 3 AS `(select count(id) from training where hasil = 'ya')+3`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`usia` = '50-60') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 3) AS `Name_exp_6` union select 'usia' AS `usia`,'50-60' AS `50-60`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`usia` = '50-60') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 3 AS `(select count(id) from training where hasil = 'tidak')+3`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`usia` = '50-60') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 3) AS `Name_exp_6` union select 'jkel' AS `jkel`,'wanita' AS `wanita`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`jkel` = 'wanita') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`jkel` = 'wanita') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'jkel' AS `jkel`,'wanita' AS `wanita`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`jkel` = 'wanita') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`jkel` = 'wanita') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'jkel' AS `jkel`,'pria' AS `pria`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`jkel` = 'pria') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`jkel` = 'pria') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'jkel' AS `jkel`,'pria' AS `pria`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`jkel` = 'pria') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`jkel` = 'pria') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'banyak_kencing' AS `banyak_kencing`,'ya' AS `ya`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`banyak_kencing` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`banyak_kencing` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'banyak_kencing' AS `banyak_kencing`,'ya' AS `ya`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`banyak_kencing` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`banyak_kencing` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'banyak_kencing' AS `banyak_kencing`,'tidak' AS `tidak`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`banyak_kencing` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`banyak_kencing` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'banyak_kencing' AS `banyak_kencing`,'tidak' AS `tidak`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`banyak_kencing` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`banyak_kencing` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'turun_bb' AS `turun_bb`,'ya' AS `ya`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`turun_bb` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`turun_bb` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'turun_bb' AS `turun_bb`,'ya' AS `ya`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`turun_bb` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`turun_bb` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'turun_bb' AS `turun_bb`,'tidak' AS `tidak`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`turun_bb` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`turun_bb` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'turun_bb' AS `turun_bb`,'tidak' AS `tidak`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`turun_bb` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`turun_bb` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'luka_sukar' AS `luka_sukar`,'ya' AS `ya`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`luka_sukar` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`luka_sukar` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'luka_sukar' AS `luka_sukar`,'ya' AS `ya`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`luka_sukar` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`luka_sukar` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'luka_sukar' AS `luka_sukar`,'tidak' AS `tidak`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`luka_sukar` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`luka_sukar` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'luka_sukar' AS `luka_sukar`,'tidak' AS `tidak`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`luka_sukar` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`luka_sukar` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'kesemutan' AS `kesemutan`,'ya' AS `ya`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kesemutan` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kesemutan` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'kesemutan' AS `kesemutan`,'ya' AS `ya`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kesemutan` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kesemutan` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'kesemutan' AS `kesemutan`,'tidak' AS `tidak`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kesemutan` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kesemutan` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'kesemutan' AS `kesemutan`,'tidak' AS `tidak`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kesemutan` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kesemutan` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'lemas' AS `lemas`,'ya' AS `ya`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`lemas` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`lemas` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'lemas' AS `lemas`,'ya' AS `ya`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`lemas` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`lemas` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'lemas' AS `lemas`,'tidak' AS `tidak`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`lemas` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`lemas` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'lemas' AS `lemas`,'tidak' AS `tidak`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`lemas` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`lemas` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'kulit_gatal' AS `kulit_gatal`,'ya' AS `ya`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kulit_gatal` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kulit_gatal` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'kulit_gatal' AS `kulit_gatal`,'ya' AS `ya`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kulit_gatal` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kulit_gatal` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'kulit_gatal' AS `kulit_gatal`,'tidak' AS `tidak`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kulit_gatal` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`kulit_gatal` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'kulit_gatal' AS `kulit_gatal`,'tidak' AS `tidak`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kulit_gatal` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`kulit_gatal` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'keturunan' AS `keturunan`,'ya' AS `ya`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`keturunan` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`keturunan` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'keturunan' AS `keturunan`,'ya' AS `ya`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`keturunan` = 'ya') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`keturunan` = 'ya') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` union select 'keturunan' AS `keturunan`,'tidak' AS `tidak`,'ya' AS `ya`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`keturunan` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2 AS `(select count(id) from training where hasil = 'ya')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya' and `training`.`keturunan` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'ya') + 2) AS `Name_exp_6` union select 'keturunan' AS `keturunan`,'tidak' AS `tidak`,'tidak' AS `tidak`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`keturunan` = 'tidak') + 1 AS `Name_exp_4`,(select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2 AS `(select count(id) from training where hasil = 'tidak')+2`,((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak' and `training`.`keturunan` = 'tidak') + 1) / ((select count(`training`.`id`) from `training` where `training`.`hasil` = 'tidak') + 2) AS `Name_exp_6` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `training`
--
ALTER TABLE `training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
