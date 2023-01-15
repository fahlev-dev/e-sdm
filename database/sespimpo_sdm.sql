-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 11:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sespimpo_sdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `kesatuan` varchar(50) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `nrp` varchar(25) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `tmt_satker` date NOT NULL,
  `tmt_jabatan` date NOT NULL,
  `status` varchar(5) NOT NULL,
  `nama_file` varchar(100) NOT NULL DEFAULT 'avatar.png',
  `hak` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `jabatan`, `kesatuan`, `pangkat`, `nrp`, `tempat`, `tgl`, `tmt_satker`, `tmt_jabatan`, `status`, `nama_file`, `hak`) VALUES
(3, 'Admin', '-', '-', '-', '123456', '-', '2022-01-01', '2022-01-01', '2022-01-01', '', '', 'admin'),
(7, 'MUHAMMAD IQBAL IBRAHIM', 'BANUM TAUD SESPIM (OPERATOR KOMPUTER KASESPIM)', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98120458', 'Surakarta', '1998-12-13', '2019-03-04', '2019-03-22', 'Polri', '1648367267.jpg', 'user'),
(10, 'sdm1', '-', '-', '-', '123', '-', '2022-03-01', '2022-03-01', '2022-03-01', 'PNS', 'avatar.png', 'admin'),
(11, 'sdm2', '-', '-', '-', '1234', '-', '2022-03-08', '2022-03-08', '2022-03-08', 'PNS', 'avatar.png', 'admin'),
(13, 'Drs. HERRY RUDOLF NAHAK, M.Si.', 'KASESPIM LEMDIKLAT POLRI', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '68080365', 'DENPASAR', '1968-08-13', '2021-12-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(14, 'Drs. ANGESTA ROMANO YOYOL', 'WIDYAISWARA UTAMA SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '66020469', 'PADANG', '1966-02-21', '2020-11-26', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(15, 'Drs. TOMEX KORNIAWAN', 'WIDYAISWARA UTAMA SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '68070332', 'PALEMBANG', '1968-07-19', '2020-11-26', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(16, 'Drs. RUSDI HARTONO, M.Si.', 'WIDYAISWARA UTAMA SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '69040341', 'JAKARTA', '1969-04-27', '2022-01-14', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(17, 'Drs. EDDY SUMITRO TAMBUNAN, M.Si.', 'WIDYAISWARA UTAMA SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '67080352', 'MEDAN', '1967-08-27', '2022-01-14', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(18, 'YAYA RUKMAYA, S.Pd.', 'KATAUD SESPIM', 'Sespim Lemdiklat Polri', 'Pembina Tingkat I', '196911161996031004', 'BANDUNG', '1969-11-16', '1996-03-01', '2019-03-21', 'PNS', '1649926402.jpeg', 'user'),
(19, 'DANIEL TAHI MONANG SILITONGA, S.H.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. I SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '68100290', 'MEDAN', '1968-10-08', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(20, 'ROYCKE HARRY LANGIE, S.I.K., M.H.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. I SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '70110329', 'MANADO', '1970-11-24', '2021-08-10', '2021-07-26', 'Polri', 'avatar.png', 'user'),
(21, 'DEDE BUDIMAN, S.Pd., M.Si.', 'KAURMIN KORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Pembina', '196503061988031003', 'BANDUNG', '1965-03-06', '1988-03-01', '2019-05-02', 'PNS', 'avatar.png', 'user'),
(22, 'RUDI DARMOKO, S.I.K., M.Si.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. I SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '71120263', 'JAKARTA', '1971-12-07', '2021-08-10', '2021-07-26', 'Polri', 'avatar.png', 'user'),
(23, 'EDDY HARTONO, S.I.K.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. I SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '67050527', 'JAKARTA', '1967-05-30', '2002-09-01', '2021-08-25', 'Polri', 'avatar.png', 'user'),
(24, 'Drs. ACHMAD NURDA ALAMSYAH, S.H.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. I SESPIM', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '64030651', 'JAKARTA', '1964-03-12', '2022-01-27', '2022-01-24', 'Polri', 'avatar.png', 'user'),
(25, 'Drs. ANTONY MARULI TUA SIAHAAN, M.H.', 'WIDYAISWARA UTAMA SESPIM ', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '64030784', 'TOBA SAMOSIR', '1964-03-03', '2022-01-27', '2022-01-24', 'Polri', 'avatar.png', 'user'),
(26, 'R. DJUBAEDILLAH, S.H.', 'PAUR PROGAR SUBBAG REN', 'Sespim Lemdiklat Polri', 'Pembina', '196609161998031001', 'BANDUNG', '1966-09-16', '1988-03-01', '2013-04-01', 'PNS', '1649926555.jpeg', 'user'),
(27, 'Drs. OPIK TAUFIK NUGRAHA, M.Si.', 'ANJAK UTAMA BID SESPIMTI SESPIM', 'Sespim Lemdiklat Polri', 'Inspektur Jenderal Polisi', '68030221', 'SUMEDANG', '1968-03-06', '2021-04-13', '2021-04-01', 'Polri', 'avatar.png', 'user'),
(28, 'Drs. INDRO WIYONO, M.Si.', 'KASESPIMTI SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '65120812', 'MALANG', '1965-12-15', '2021-01-06', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(29, 'NASRI, S.I.K., M.H.', 'KASESPIMMEN SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '68100404', 'UJUNG PANDANG', '1968-10-05', '2020-02-17', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(30, 'Drs. HUDI SURYANTO', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '64080723', 'JAKARTA', '1964-08-03', '2021-09-20', '2021-08-25', 'Polri', 'avatar.png', 'user'),
(31, 'dr. LILIS UTAMI KARDINAH TEBLU, M.H.Kes.', 'PAUR BINKES SUBBAG SDM SETLEM', 'Sespim Lemdiklat Polri', 'Pembina', '198005232007012002', 'JAKARTA', '1980-05-23', '2007-01-01', '2015-05-19', 'PNS', 'avatar.png', 'user'),
(32, 'Drs. DARMAWAN, M.Hum.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '64090615', 'BLITAR', '1964-06-11', '2022-01-10', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(33, 'Drs. MUJIYONO,S.H.,M.Hum.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '66030432', 'SUKOHARJO', '1966-03-10', '2019-09-02', '2019-09-02', 'Polri', 'avatar.png', 'user'),
(34, 'MARDIYONO, S.I.K., M.Si.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '69030315', 'BLORA', '1969-03-21', '2020-09-23', '2020-09-01', 'Polri', 'avatar.png', 'user'),
(35, 'Dr. GOLKAR PANGARSO RAHARDJO WINARSADI, S.H., S.I.K., M.H.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '71070211', '-', '1971-07-13', '2020-09-23', '2020-09-01', 'Polri', 'avatar.png', 'user'),
(36, 'BUDI INDRA DERMAWAN, S.I.K., M.M.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '70100282', 'SEMARANG', '1970-10-14', '2020-11-26', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(37, 'SLAMET HARIYADI, S.I.K., M.H., M.M.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '69120419', 'SALATIGA', '1969-12-07', '2020-11-26', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(38, 'Drs. ATANG HERADI, M.H.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '66090431', 'BANDUNG', '1966-09-05', '2019-06-20', '2020-12-21', 'Polri', 'avatar.png', 'user'),
(39, 'Drs. SYAMSUL BAHRI', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '65080671', 'ACEH', '1965-08-09', '2016-10-05', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(40, 'YUSUF, S.I.K., M.Hum.', 'WIDYAISWARA MADYA SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '70110324', 'LAMONGAN', '1970-11-02', '2021-10-31', '2021-10-31', 'Polri', 'avatar.png', 'user'),
(41, 'Dr. ZULKIFLI, S.I.K., M.H.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '64100689', 'PALEMBANG', '1964-10-30', '2014-08-22', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(42, 'Drs. BENYAMIN, M.M.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '66050545', 'JAKARTA', '1966-05-23', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(43, 'Drs. YASDAN RIVAI, M.Hum.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '65020512', 'PALEMBANG', '1965-02-23', '2020-06-21', '2020-06-05', 'Polri', 'avatar.png', 'user'),
(44, 'ISWAHYUDI', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '66120395', 'MOJOKERTO', '1966-11-25', '2020-08-19', '2020-08-03', 'Polri', 'avatar.png', 'user'),
(45, 'Drs. AGUS DJAKA SANTOSO', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '68080358', 'NGANJUK', '1968-08-06', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(46, 'Drs. DARTO JUHARTONO, M.H.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '66120398', 'GARUT', '1966-12-29', '2020-08-11', '2020-08-03', 'Polri', 'avatar.png', 'user'),
(47, 'Drs. MAMAT SURAHMAT', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '64080826', 'PANDEGLANG', '1964-08-15', '2020-10-13', '2020-10-13', 'Polri', 'avatar.png', 'user'),
(48, 'UNTUNG WIDYATMOKO, S.I.K., M.H.', 'WIDYAISWARA KEPOLISIAN UTAMA TK. II SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '70100397', 'JAKARTA', '1970-10-27', '2017-10-30', '2021-10-31', 'Polri', 'avatar.png', 'user'),
(50, 'BAMBANG SENTOT WIDODO, S.S.T.M.K.', 'KABAG BINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67070406', 'SALATIGA', '1967-07-18', '2020-05-15', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(51, 'Drs. RAHMAT HIDAYAT', 'KABAGJARLAT SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65060738', 'CIREBON', '1965-06-02', '2020-05-11', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(52, 'BASKORO TRI PRABOWO, S.I.K., M.H.', 'KAKORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68040389', 'SEMARANG', '1968-04-10', '2020-12-26', '2020-12-21', 'Polri', 'avatar.png', 'user'),
(53, 'Drs. CHEVY ACHMAD SOPARI, M.H.', 'KABID JEMEN SESPIM', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65060741', 'CIMAHI', '1965-06-16', '2017-03-11', '2017-03-11', 'Polri', 'avatar.png', 'user'),
(54, 'Drs. GIRI PURWANTO', 'KABID STRATEGI SESPIM', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67030420', 'MEDAN', '1967-03-29', '2017-01-13', '2017-01-13', 'Polri', 'avatar.png', 'user'),
(55, 'AGUS SUSANTO, S.I.K.', 'KABID KUMDANG SESPIM', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67080474', 'JAKARTA', '1967-08-08', '2019-10-21', '2019-10-21', 'Polri', 'avatar.png', 'user'),
(56, 'Dr. R. NURHADI YUWONO, S.I.K., M.Si.', 'KABID PROFTEK SESPIM (DITUGASKAN DI KA BNNP NTT)', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', ' 67050432', 'MALANG', '1967-05-15', '2018-10-14', '2018-10-14', 'Polri', 'avatar.png', 'user'),
(57, 'MANSJUR, S.H., S.I.K.', 'KABID BINGADIK SESPIM', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '70060196', 'JAKARTA', '1970-06-04', '2022-01-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(58, 'BURHANUDDIN, S.I.K.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66060619', 'INDRAMAYU', '1966-06-21', '2019-12-06', '2019-12-06', 'Polri', 'avatar.png', 'user'),
(59, 'EDY SUSWANTO, S.I.K., S.H.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66090298', 'SEMARANG', '1966-09-01', '2022-01-13', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(60, 'Drs. MARZUKI ALI BASYAH, M.M.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68060509', 'MEDAN', '1968-06-20', '2022-01-13', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(61, 'SUBANDRIYA, S.H., M.H.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65120904', 'SLEMAN', '1965-12-08', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(62, 'Drs. JEBUL JATMOKO, M.Hum.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67040409', 'PURWOKERTO', '1967-04-19', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(63, 'Drs. SOEMARNO, M.H.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67040238', 'SURABAYA', '1967-04-22', '2020-12-15', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(64, 'Drs. HENY SULISTIYA ARIANTA', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67010345', 'BLORA', '1967-01-12', '2020-11-26', '2020-12-21', 'Polri', 'avatar.png', 'user'),
(65, 'SAEFUL ANWAR', 'PAMIN PROGAR SUBBAG REN', 'Sespim Lemdiklat Polri', 'Penata', '196610011996031001', 'BANDUNG', '1966-10-01', '1996-03-01', '2018-08-02', 'PNS', '1649926637.jpeg', 'user'),
(66, 'Drs. SUPRIYADI, M.Si.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67120435', 'DENPASAR', '1967-12-07', '2021-08-23', '2021-07-06', 'Polri', 'avatar.png', 'user'),
(67, 'YUSRAN CAHYO, S.I.K.', 'WIDYAISWARA MUDA SESPIMTI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '69090521', 'BOGOR', '1969-09-05', '2021-06-14', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(68, 'Drs. R. DJAROD PADAKOVA H. K. MADYOPUTRO', 'WIDYAISWARA KEPOLISIAN MADYA TK. I SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65050771', 'SURAKARTA', '1965-05-30', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(69, 'Drs. MARTINUS SITOMPUL, M.Si.', 'WIDYAISWARA KEPOLISIAN MADYA TK. I SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66040535', 'MEDAN', '1966-04-05', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(70, 'R. DEDEN GARNADA, S.I.K.', 'WIDYAISWARA KEPOLISIAN MADYA TK. I SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '69050449', 'TASIKMALAYA', '1969-05-07', '2019-03-14', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(71, 'Drs. RUDY MULYANTOKO', 'WIDYAISWARA KEPOLISIAN MADYA TK. I SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67060428', 'LUMAJANG', '1967-06-16', '2020-05-14', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(72, 'IMAN PRIJANTORO, S.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. I SESPIMTI', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67100384', 'SURABAYA', '1967-10-26', '2021-01-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(73, 'IRSAN, S.I.K., M.Si.', 'KABAG JARLAT SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73050608', 'MAKASSAR', '1973-05-21', '2020-09-03', '2020-08-03', 'Polri', 'avatar.png', 'user'),
(74, 'MUSLIKHUN, S.I.K.', 'KAKORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '72050493', 'PURWOREJO', '1972-05-29', '2020-09-03', '2020-08-03', 'Polri', 'avatar.png', 'user'),
(75, 'SUDRAJAD HARIWIBOWO, S.I.K., M.Si.', 'KABAG BINDIK SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '74100556', 'JAKARTA', '1974-10-01', '2022-01-10', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(76, 'UTORO SAPUTRO, S.H., S.S.T.M.K.', 'ANALIS UTAMA BAG JIANBANG', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68080361', 'MALANG', '1968-08-20', '2019-01-06', '2019-11-08', 'Polri', 'avatar.png', 'user'),
(77, 'YAYA RUHIAT HIDAYAT, S.I.K., M.H.', 'ANALIS UTAMA BAG JIANBANG', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67010440', 'SUMEDANG', '1967-01-02', '2020-10-27', '2020-10-13', 'Polri', 'avatar.png', 'user'),
(78, 'Drs. ZUBAIR RASYID ', 'ANALIS UTAMA BAG JIANBANG', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '69030486', 'BANTAENG', '1969-03-01', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(79, 'ADI AFFANDI, S.I.K.', 'ANALIS UTAMA BAG JIANBANG', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '69110336', 'MOJOKERTO', '1969-11-08', '2020-06-02', '2020-06-05', 'Polri', 'avatar.png', 'user'),
(80, 'IMAM SANTOSO', 'ANALIS UTAMA BAG JIANBANG', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67050429', 'WONOSOBO', '1967-05-06', '2020-02-27', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(81, 'Drs. DIAT CHARDY ', 'ANALIS UTAMA BAG JIANBANG', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '64040832', 'TASIKMALAYA', '1964-04-10', '2021-01-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(82, 'ANDREAS WIDIHANDOKO, S.H., M.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '70070485', 'YOGYAKARTA', '1970-07-26', '2021-12-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(83, 'Drs. SUDRAJAT', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65010568', 'BANDUNG', '1965-01-25', '2021-06-21', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(84, 'Drs. AKHMAD SHAURY', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65040833', 'SUMENEP', '1965-04-05', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(85, 'GUSDE WARDANA, S.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66100480', 'TABANAN', '1966-10-14', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(86, 'Drs. TATA SUWARTA, M.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66020467', 'SUMEDANG', '1966-02-07', '2020-06-05', '2020-06-05', 'Polri', 'avatar.png', 'user'),
(87, 'NASRI WIHARTO, S.I.K., M.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67040497', 'SURAKARTA', '1967-04-19', '2020-06-19', '2020-06-05', 'Polri', 'avatar.png', 'user'),
(88, 'AGUS FATCHULLOH, S.I.K.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68010545', 'MAGELANG', '1968-01-20', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(89, 'YUS FADILLAH, S.I.K., M.H., M.M.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66100531', 'BANDUNG', '1966-10-22', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(90, 'OMAD, S.I.K., M.Si.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68070470', 'BANDUNG', '1968-07-15', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(91, 'ANANG PUDJIJANTO, S.I.K., M.Si.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '69060422', 'MOJOKERTO', '1969-06-23', '2022-01-10', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(92, 'TARYADI, S.I.K.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '70020377', 'SUBANG', '1970-02-18', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(93, 'IVAN SETIADI, S.I.K.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '72110337', 'JAKARTA', '1972-11-30', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(94, 'ENDAY SUDRAJAT, S.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '71050418', 'SUBANG', '1971-05-11', '2013-05-30', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(95, 'RIZAL IRAWAN, S.I.K., S.H., M.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73020486', 'SUKABUMI', '1973-02-12', '2022-01-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(96, 'NUGRAH TRIHADI, S.I.K., M.H.', 'WIDYAISWARA KEPOLISIAN MADYA TK. II SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '74070433', 'CIREBON', '1974-07-31', '2020-10-27', '2020-10-13', 'Polri', 'avatar.png', 'user'),
(97, 'DWI YULISTIONO', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67070411', 'PEKALONGAN', '1967-07-26', '2017-06-02', '2017-06-02', 'Polri', 'avatar.png', 'user'),
(98, 'Drs. IWAN YUSUF CHAIRUDIN', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '64060876', 'JAKARTA', '1964-06-07', '2013-08-30', '2013-08-30', 'Polri', 'avatar.png', 'user'),
(99, 'PURNAMA, S.I.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '71060405', 'BANDUNG', '1971-06-11', '2020-01-02', '2019-12-06', 'Polri', 'avatar.png', 'user'),
(100, 'R. SUKARNO TJAHJANTO', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67080353', 'JAKARTA', '1967-08-28', '2018-10-14', '2018-10-14', 'Polri', 'avatar.png', 'user'),
(101, 'RONI BAHTIAR ARIEF', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66100482', 'GERSIK', '1966-10-25', '2019-03-14', '2019-03-14', 'Polri', 'avatar.png', 'user'),
(102, 'AGUS SETIYAWAN, S.I.K', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '70080427', 'MAGELANG', '1970-08-26', '2019-08-02', '2019-08-02', 'Polri', 'avatar.png', 'user'),
(103, 'GUNTUR HINDARSYAH,S.I.K', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '69120506', 'BANDUNG', '1969-12-13', '2019-09-02', '2019-09-02', 'Polri', 'avatar.png', 'user'),
(104, 'WAWAN SETIAWAN, S.S.T.M.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65040835', 'SUBANG', '1965-04-14', '2019-03-14', '2019-03-14', 'Polri', 'avatar.png', 'user'),
(105, 'Drs. URIP WIBOWO', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65050760', 'PULAU BUNYU', '1965-05-03', '2019-08-02', '2019-08-02', 'Polri', 'avatar.png', 'user'),
(106, 'FAUZI BAKTI MOCHJI ', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '67050524', 'MANADO', '1967-05-07', '2020-02-27', '2020-02-03', 'Polri', 'avatar.png', 'user'),
(110, 'MAHYUDI NAZRIANSYAH, S.I.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73060598', 'BANJARMASIN', '1973-06-15', '2020-02-24', '2020-02-03', 'Polri', 'avatar.png', 'user'),
(111, 'ALEX FAUZI RASAD, S.S.T.M.K., S.H.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '65090802', 'SUKABUMI', '1965-09-12', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(112, 'JOKO SUMARNO, S.I.K., M.H.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '72030444', 'KARANGANYAR', '1972-03-14', '2021-07-07', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(113, 'ABDUL MUIS, S.I.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73110408', 'BOJONEGORO', '1973-11-04', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(114, 'Dra. OLGA BIBIANA SANDAH', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66020556', 'CIMAHI', '1966-02-12', '2004-01-30', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(115, 'FAUZA BARITO, S.H.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68120537', 'PADANG PANJANG', '1968-12-16', '2016-04-28', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(116, 'EDI SUROSO, S.H., M.H.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '69040447', 'CIMAHII', '1969-04-05', '2022-01-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(117, 'SANGKAN BONAPARTE SILALAHI, S.I.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '71080526', 'JAKARTA', '1971-08-04', '2021-12-17', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(118, 'TOFIK SUKENDAR, S.I.K., M.H.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '76070935', 'BANYUMAS', '1976-07-04', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(119, 'BUDI PURWATININGSIH, S.E., M.H.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '74020573', 'SURAKARTA', '1974-02-12', '2020-06-15', '2020-06-05', 'Polri', 'avatar.png', 'user'),
(120, 'YOGA PRASETYO, S.I.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '77050674', 'JAKARTA TIMUR', '1977-05-24', '2020-06-26', '2020-08-03', 'Polri', 'avatar.png', 'user'),
(121, 'ARIEF KURNIAWAN, S.I.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73120843', 'PASURUAN', '1973-12-23', '2018-10-14', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(122, 'YOGA PRASTOWO, S.I.K., M.T.', 'WIDYAISWARA MADYA TK. III SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '74090548', 'MAGELANG', '1974-09-20', '2020-05-14', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(123, 'BAMBANG HERMANTO, S.I.K.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73080764', 'BOJONEGORO', '1973-08-02', '2018-07-23', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(124, 'CAHYO HADI PRABOWO, S.H., S.I.K., M.A.P.', 'WIDYAISWARA MUDA SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '74070767', 'JAKARTA', '1974-07-12', '2022-01-10', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(125, 'Drs. COK BAGUS ARY YUDAYASA', 'ANJAK MADYA BID. SESPIMMEN SESPIM LEMDIKLAT POLRI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '66100346', 'DENPASAR', '1966-10-22', '2020-08-24', '2020-08-03', 'Polri', 'avatar.png', 'user'),
(126, 'PAHALA HOTMAN MANGATUR PANJAITAN, S.I.K., M.Si.', 'ANJAK MADYA BID. SESPIMMEN SESPIM LEMDIKLAT POLRI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '70010196', 'ACEH', '1970-01-25', '2020-08-27', '2021-12-17', 'Polri', 'avatar.png', 'user'),
(127, 'TAUFIK ROCHMAD HIDAYAT, S.I.K.', 'ANJAK MADYA BID. SESPIMMEN SESPIM LEMDIKLAT POLRI ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68110405', 'KARANGANYAR', '1968-11-11', '2021-01-18', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(128, 'ALBERTUS EKO BUDIHARTO, S.I.K.', 'KASUBBAGSDM SETLEM', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '75050910', 'BANYUMAS', '1975-05-09', '2013-09-24', '2019-01-16', 'Polri', '1652064230.jpeg', 'user'),
(129, 'DRIHARTO, S.I.K.', 'KASUBBAGLOG SETLEM', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '78061005', 'MALANG', '1978-06-07', '2020-05-14', '2020-08-10', 'Polri', 'avatar.png', 'user'),
(130, 'H. MAX ALFRADIANTO, S.TP., S.H., M.H.', 'KASUBBAGREN SETLEM', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '70050492', 'BANDUNG', '1970-05-07', '2020-05-11', '2021-07-26', 'Polri', 'avatar.png', 'user'),
(131, 'FIRMAN AFFANDI,S.I.K.', 'KASUBBAG ANALIS BAGJIANBANG', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '76120663', 'TANJUNGPINANG', '1976-12-21', '2019-10-21', '2019-09-02', 'Polri', 'avatar.png', 'user'),
(132, 'BAMBANG KAYUN BAGUS PANJI SUGIHARTO, S.I.K., M.H.', 'KASUBBAG SKK BAGJIANBANG ', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '70050461', 'GROBOGAN', '1970-05-30', '2018-12-21', '2018-12-21', 'Polri', 'avatar.png', 'user'),
(133, 'SUBAGIO,S.T., M.M.', 'KASUBBAG SMK BAGJIANBANG', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '73060047', 'BINJAI', '1973-06-19', '2010-02-03', '2019-01-16', 'Polri', 'avatar.png', 'user'),
(134, 'SWITTANTO PRASETYO, S.I.K.', 'KASUBBAGEVADASI BAGBINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '77110842', 'SIDOARJO', '1977-11-08', '2021-07-26', '2021-07-26', 'Polri', 'avatar.png', 'user'),
(135, 'RAHMAT HERMAN, S.H.', 'KASUBBAGBIN KORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '71020308', 'BANDUNG', '1971-02-22', '2012-10-25', '2020-02-03', 'Polri', 'avatar.png', 'user'),
(136, 'DEWI KANIA SUMPENA, S.E.,M.M.', 'KASUBBID SESPIMTI BIDSTRATEGI ', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '75100893', 'BANDUNG', '1975-10-04', '2010-04-05', '2017-04-21', 'Polri', 'avatar.png', 'user'),
(137, 'DODDY DIMYATI, B.Sc, S.Ip.', 'KASUBBID SESPIMTI BIDKUMDANG ', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '65010559', 'JAKARTA', '1965-01-17', '2012-12-04', '2015-12-18', 'Polri', 'avatar.png', 'user'),
(138, 'WIDAYATI, S.E.', 'KASUBBID SESPIMMEN BIDSTRATEGI', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67050877', 'MAKASSAR', '1967-05-15', '2015-06-15', '2019-01-16', 'Polri', 'avatar.png', 'user'),
(139, 'REKO INDRO SASONGKO,S.H.', 'KASUBBID SESPIMMEN BIDBINGADIK', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '70020402', 'SURABAYA', '1970-02-14', '2019-09-09', '2019-09-09', 'Polri', 'avatar.png', 'user'),
(140, 'NURBAJA, S.I.K.', 'KASUBBID SESPIMMA BIDBINGADIK', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '73080755', 'BANDUNG', '1973-08-28', '2020-02-20', '2020-01-08', 'Polri', 'avatar.png', 'user'),
(141, 'I WAYAN ARTA ARIAWAN, S.H., S.I.K., M.H.', 'KASUBBAG EVADASI BAG BINDIK SESPIMMEN', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '79111172', 'DENPASAR', '1979-11-08', '2020-10-20', '2021-11-19', 'Polri', 'avatar.png', 'user'),
(142, 'DODY INDRA EKA PUTRA, S.I.K., M.H.', 'KASUBBAG PIMTAJAS KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '78091202', 'SIDOARJO', '1978-09-04', '2021-10-28', '2021-11-19', 'Polri', 'avatar.png', 'user'),
(143, 'WAHYU JATI WIBOWO, S.I.K., S.H., M.H.', 'KASUBBAG OPSNALLAT BAGJARLAT SESPIMMEN', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '82071338', 'SLEMAN', '1982-07-03', '2021-10-28', '2021-11-19', 'Polri', 'avatar.png', 'user'),
(144, 'RITA SUWADI, S.H., S.I.K., M.M.', 'KASUBBAG GIATJARNAT KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Komisaris Polisi', '84031651', 'SUBANG', '1984-03-21', '2021-10-28', '2021-11-19', 'Polri', 'avatar.png', 'user'),
(145, 'AWAN SURYAWANA, S.Pd.', 'PAUR FASKON SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Komisaris Polisi', '83121536', 'CIMAHI', '1983-12-28', '2017-06-14', '2019-02-22', 'Polri', 'avatar.png', 'user'),
(146, 'ENI TURYANINGSIH, S.A.P.', 'KAURKEU SESPIM', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Polisi', ' 78090143', 'KEBUMEN', '1978-09-29', '2011-01-24', '2019-02-22', 'Polri', 'avatar.png', 'user'),
(147, 'BAMBANG SUSATIO', 'PS. PAUR WATPERS SUBBAG SDM SETLEM SESPIM', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Polisi', '68010351', 'MADIUN', '1968-01-25', '2007-07-23', '2020-01-24', 'Polri', 'avatar.png', 'user'),
(148, 'CEPI ARI RAHMAN, S.Pd.', 'PS. PAUR ANGPAL SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '77070469', 'TASIKMALAYA', '1977-07-22', '1998-07-04', '2021-02-17', 'Polri', 'avatar.png', 'user'),
(149, 'DENI SUTISNA, S.A.P.', 'PS. PAUR PROVOS', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '77120370', 'BANDUNG', '1977-12-25', '1998-07-14', '2020-01-24', 'Polri', 'avatar.png', 'user'),
(150, 'MARTY FITRIANTY, S.T.K., S.I.K.', 'PAMIN SUBBAGRENDALDIK BAGBINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '93031051', 'PALEMBANG', '1993-03-24', '2021-10-11', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(151, 'ALI NURDIN', 'PAMIN SUBBAGGIATJARNAT KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '78030778', 'BANDUNG', '1978-03-17', '2007-07-09', '2018-08-02', 'Polri', 'avatar.png', 'user'),
(152, 'EKO PURWANTO', 'PAURMIN BIDSTRATEGI SESPIM', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '72100001', 'LAMPUNG', '1972-10-07', '2003-04-10', '2019-02-22', 'Polri', 'avatar.png', 'user'),
(153, 'TOPAN SETIAWAN, S.H.', 'PAMIN EVADASI BAGBINDIK SESPIMMEN', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '85080011', 'BANDUNG', '1985-08-03', '2018-10-15', '2020-01-24', 'Polri', '1653029377.jpeg', 'user'),
(154, 'FERI DARMAWAN, S.H.', 'PAMIN SUBBAG PIMTAJAS KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '84120631', 'SUKABUMI', '1984-12-12', '2018-10-15', '2019-02-22', 'Polri', 'avatar.png', 'user'),
(155, 'GUNGUN GUNAWAN, S.H.', 'KAURMIN BAGJARLAT SESPIMMEN', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', ' 85010854', 'SUMEDANG', '1985-01-01', '2018-10-15', '2019-02-22', 'Polri', 'avatar.png', 'user'),
(156, 'IRFAN DWI NUGRAHA, S.H.', 'PS. PAMIN BEKUM SUBBAGLOG SETLEM SESPIM', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '85050241', 'CIAMIS', '1985-02-22', '2018-10-15', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(157, 'DODI MARYADI, S.Pd., M.M.Pd.', 'PAMIN SUBAGMINTA KORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '79051238', 'CIAMIS', '1979-05-11', '2020-02-02', '2020-01-24', 'Polri', 'avatar.png', 'user'),
(158, 'IWAN HENDRIANA, S.Pd., M.M.Pd.', 'KAURMIN BAGJARLAT SESPIMTI', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '78110685', 'MAJALENGKA', '1978-11-30', '2020-02-02', '2020-01-24', 'Polri', 'avatar.png', 'user'),
(159, 'RIZQI DWI ARIYANTO, S.H.', 'PS. PAMIN PROVOS ', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '86090041', 'JAKARTA', '1986-09-09', '2016-11-18', '2021-02-17', 'Polri', 'avatar.png', 'user'),
(160, 'EKO WIRAWAN, S.Pd.', 'PAMA SESPIM LEMDIKLAT POLRI', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '95061224', 'BAGNKO', '1995-06-09', '2021-09-27', '2021-09-21', 'Polri', 'avatar.png', 'user'),
(161, 'RIZGA NOERWIDI, S.Sos.', 'PAURMIN BIDJEMEN SESPIM', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '81041422', 'BANDUNG', '1981-04-17', '2013-03-13', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(162, 'EKA JUANTINI', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Ajun Inspektur Polisi Satu', '72040056', 'SUBANG', '1972-04-10', '2003-12-01', '2010-11-01', 'Polri', 'avatar.png', 'user'),
(163, 'NOVI KOMARIA SARI, S.H.', 'BANUM BIDPENGSOS SESPIM', 'Sespim Lemdiklat Polri', 'Ajun Inspektur Polisi Dua', '82110009', 'PRINGSEWU', '1982-11-04', '2018-06-21', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(164, 'LILIK SIYAGA, S.H.', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '73080011', 'YOGYAKARTA', '1973-08-01', '2015-09-02', '2016-01-13', 'Polri', 'avatar.png', 'user'),
(165, 'REINALDI HAKIM NASUTION, S.H.', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '87010376', 'BANDUNG', '1987-01-19', '2015-10-19', '2017-11-10', 'Polri', 'avatar.png', 'user'),
(166, 'DADANG GUNAWAN, S.Pd., S.E.', 'BANUM URKEU SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '79080570', 'GARUT', '1979-08-05', '2000-02-02', '2020-08-07', 'Polri', 'avatar.png', 'user'),
(167, 'ENTIS', 'BANUM BAGJARLAT SESPIMTI', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '77030061', 'BANDUNG', '1977-03-26', '1966-04-15', '2017-01-06', 'Polri', 'avatar.png', 'user'),
(168, 'CUK SUTIKNO', 'BANUM PROVOS  ', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '79080645', 'PURWAKARTA', '1979-08-29', '2020-02-02', '2010-11-01', 'Polri', 'avatar.png', 'user'),
(169, 'PUPUNG SAIPULLAH', 'BANUM SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '79040817', 'KARAWANG', '1979-04-08', '1018-07-12', '2018-08-02', 'Polri', 'avatar.png', 'user'),
(170, 'BAGUS ADITIA, S.E.', 'BAMIN BID BINGADIK', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '87010991', 'JAKARTA', '1987-01-07', '2020-11-02', '2021-02-17', 'Polri', 'avatar.png', 'user'),
(171, 'DADAN OGI SUGIANTO', 'BANUM SUBBAG SDM (WI)', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Kepala', '86041932', 'SUMEDANG', '1986-04-11', '2015-12-03', '2018-08-02', 'Polri', 'avatar.png', 'user'),
(172, 'BENNY MAHARDIYANTO', 'BAMIN SUBBAG MINSIS KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Brigadir Polisi', '89110218', 'KARAWANG', '1989-11-13', '2019-06-14', '2021-02-17', 'Polri', 'avatar.png', 'user'),
(173, 'JENNITA ESTERIA RORONG', 'BANUM SUBBAG BIN KORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99010112', 'BANDUNG', '1999-01-05', '2018-03-26', '2021-12-20', 'Polri', 'avatar.png', 'user'),
(174, 'MEGA AGUSTINE', 'BANUM SUBBAG SDM (DIARAHKAN BANUM POK WI)', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '97080860', 'BANDUNG', '1997-08-22', '2018-03-26', '2020-01-24', 'Polri', 'avatar.png', 'user'),
(175, 'R. NADIA ARDIYANTI', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '97070664', 'CIMAHI', '1997-07-03', '2018-03-26', '2018-08-02', 'Polri', 'avatar.png', 'user'),
(176, 'DINI OKTAVIANI, S.Pd.', 'BANUM WATPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '96101204', 'SAMPIT', '1996-10-23', '2018-03-26', '2018-08-02', 'Polri', 'avatar.png', 'user'),
(177, 'SILVIA RAHMAWATI', 'BANUM URBINKES SUBBAGSDM SETLEM SESPIM ', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99050197', 'BANDUNG', '1999-05-23', '2018-03-26', '2020-01-24', 'Polri', 'avatar.png', 'user'),
(178, 'RIESA SEKAR ANDIRA', 'BANUM URTU SESPIMMEN', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99030241', 'BOGOR', '1999-03-30', '2018-03-26', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(179, 'FAISHAL MUHAMMAD HABIB', 'BANUM SUBBAG OPSNALLAT BAGJARLAT SESPIMTI', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99040096', 'BANDUNG', '1999-04-12', '2018-03-26', '2018-08-02', 'Polri', 'avatar.png', 'user'),
(180, 'GIFSY FERNANDA', 'BANUM SUBBAG RENDALDIK BAGBINDIK SESPIMMEN', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98100403', 'BOGOR', '1998-10-30', '2018-03-26', '2020-02-24', 'Polri', 'avatar.png', 'user'),
(181, 'MUHAMAD IQSAN SANI', 'BANUM SUBBAG EVADASI BAGBINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98040345', 'TASIKMALAYA', '1998-04-10', '2018-03-26', '2021-02-17', 'Polri', 'avatar.png', 'user'),
(182, 'MUHAMAD RIZKI YUSUP', 'BANUM SUBBAG GIATJARNAT KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99050207', 'SUBANG', '1999-05-24', '2018-03-26', '2021-02-17', 'Polri', 'avatar.png', 'user'),
(183, 'MUHAMMAD ERDYAN PRATAMA', 'BANUM SUBBAG BIN KORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99040099', 'JAKARTA', '1999-04-12', '2018-03-26', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(184, 'RIFQI MUHAMMAD IRFAN', 'BANUM YANMA SUBBAGUM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99050210', '-', '1999-05-24', '2018-03-26', '2020-07-13', 'Polri', 'avatar.png', 'user'),
(185, 'ANINDITA CHRISISTHIANI', 'BANUM FASKON SUBBAGLOG SETLEM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98010820', 'CIMAHI', '1998-01-22', '2019-03-04', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(186, 'DESI EKA PRATIWI', 'BANUM SLS BAG JIANBANG', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '97120747', 'BANDUNG', '1997-12-01', '2019-03-04', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(187, 'AGUM GUMELAR AKBARIZKI', 'BANUM ANGPAL SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '00040031', 'JOMBANG', '2000-04-04', '2019-03-04', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(188, 'DIAR LEZAR SUNGKAWA', 'BANUM URKEU SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98070732', 'SUBANG', '1998-07-27', '2019-03-04', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(189, 'FIKRI MUHAMMAD FAUZI', 'BANUM MINPERS SUBBAG SDM (OPERATOR PID)', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '97120756', 'BANDUNG', '1997-12-03', '2019-03-04', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(190, 'GERYN NURYANA RAHMANURRA', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '97110944', 'BANDUNG', '1997-11-30', '2019-03-04', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(193, 'PERIKO GUSWANDIKO', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99020260', 'BANDUNG', '1999-02-05', '2019-03-04', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(194, 'MUHAMMAD HAMZAH AL FARISI, S.Pd.', 'BANUM SUBBAG PIMTAJAS KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '97030953', 'BANDUNG', '1997-03-05', '2021-07-13', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(195, 'ELVARETTA', 'BANUM TAUD SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99110725', 'BANDUNG', '1999-11-13', '2021-07-13', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(196, 'ERLIAN ALFIANI', 'BANUM WATPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '00080544', 'CIMAHI', '2000-08-07', '2021-07-13', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(197, 'CLAREZA SUKANDAR', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '01010815', 'SURAKARTA', '2001-01-18', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(198, 'PRAGNA DIWA LUGINA', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '03040248', 'BANDUNG', '2003-04-19', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(199, 'ERWIN YANU FIRMANSYAH', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '03020114', 'BANDUNG', '2003-02-09', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(200, 'PANGO SAPU JAGAT ', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '03110012', 'BANDUNG', '2003-11-02', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(201, 'MUHAMAD ROSANA KAHPI', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '01100548', 'BANDUNG', '2001-10-10', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(202, 'TSANYA NURUL MAUDY', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '02050753', 'BANDUNG', '2002-05-30', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(203, 'M. JULIANDRY ILYASA', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '02070299', 'BANDUNG', '2002-07-04', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(204, 'TRI BUDIARTO', 'BANUM SESPIM', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '02110176', 'PURWAKARTA', '2002-11-03', '2022-01-13', '2021-12-22', 'Polri', 'avatar.png', 'user'),
(205, 'AGUS KURNIAWAN', 'BANUM MANASE SUBBAGUM', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '96081313', 'SERANG', '1996-08-29', '2018-11-28', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(206, 'DADAT TEJO KRISDANTO', 'BANUM ANGPAL SUBBAGLOG (DRIVER AMBULANCE) ', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '98040570', 'MAGETAN', '1998-04-16', '2018-11-28', '2018-12-31', 'Polri', 'avatar.png', 'user'),
(207, 'ENDY KASMARA', 'BANUM MINPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '98050657', 'MORO', '1998-05-27', '2018-11-28', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(208, 'ENGKI KRISNANDA', 'BANUM ANGPAL SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '96101285', 'TANJUNG MORAWA', '1996-10-21', '2018-11-28', '2018-12-31', 'Polri', 'avatar.png', 'user'),
(209, 'FAISAL', 'BANUM ANGPAL SUBBAGLOG ', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '96101278', 'BORA', '1996-10-13', '2018-11-28', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(210, 'FARIS FAJHARIKA YUSMAR', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '96091245', 'TAKENGON', '1996-09-26', '2018-11-28', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(211, 'I KOMANG AGUS ARI SETIAWAN', 'BANUM SUBBAGBIN KORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '97010908', 'KETUG', '1997-01-06', '2018-11-28', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(212, 'MUHAMMAD ALBONDIANO QANDIYAS', 'BANUM SKK BAGJIANBANG SESPIM', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '97020805', 'JAKARTA', '1997-02-18', '2018-11-28', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(213, 'SUGIANDY MUHAMMAD AMIN, S.E.', 'TA UR PROVOS SESPIM', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '96081305', 'TOMBOLANGO', '1996-08-18', '2018-11-28', '2021-02-17', 'Polri', 'avatar.png', 'user'),
(214, 'RATNA SETIAWATI, S.H.', 'KASEPOLWAN', 'Sepolwan Lemdiklat Polri', 'Komisaris Besar Polisi', '68040524', 'CIREBON', '1968-04-30', '2003-11-18', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(216, 'Drs. HERI SULISTIANTO', 'KASESPIMMA SESPIM LEMDIKLAT POLRI', 'Sespim Lemdiklat Polri', 'Brigadir Jenderal Polisi', '65080672', 'CIREBON', '1965-08-22', '2019-12-05', '2019-12-05', 'Polri', 'avatar.png', 'user'),
(217, 'TOMMY BAMBANG IRAWAN, SIK.,MH', 'GADIK UTAMA SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '71080519', 'CIMAHI', '1971-08-20', '2018-08-03', '2018-03-08', 'Polri', 'avatar.png', 'user'),
(218, 'JONI ISKANDAR, S.I.K', 'GADIK UTAMA SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73060596', 'JAKARTA', '1973-06-14', '2018-11-09', '2018-11-09', 'Polri', 'avatar.png', 'user'),
(219, 'PURWANTO, S.I.K.', 'GADIK UTAMA SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '72010235', 'CILACAP', '1972-01-08', '2018-11-09', '2020-02-03', 'Polri', 'avatar.png', 'user'),
(220, 'YOGI GINANJAR, S.H.', 'GADIK UTAMA SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73010680', 'BANDUNG', '1973-01-30', '2018-11-09', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(221, 'Drs. SABRI MANULLANG, M.Pd', 'KASUBBAG MINSIS KORSIS', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '69100449', 'MEDAN', '1969-10-29', '2019-12-13', '2021-02-04', 'Polri', 'avatar.png', 'user'),
(222, 'Drs. AYIK NURUL MUTAQIN', 'GADIK MADYA SESPIMMA', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '68040652', 'INDRAMAYU', '1968-04-30', '2020-11-12', '2020-11-11', 'Polri', 'avatar.png', 'user'),
(223, 'ASEP KAMALUDIN, M.M.', 'GADIK MADYA SESPIMMA', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '70070807', 'BANDUNG', '1970-07-08', '2020-12-15', '2020-12-15', 'Polri', 'avatar.png', 'user'),
(224, 'DJANIAR DALINA', 'PS. PAUR DALGAR SUBBAG REN SESPIM POLRI', 'Sespim Lemdiklat Polri', 'Penata', '196801311992122001', 'BANDUNG', '1964-12-16', '1992-12-01', '2020-08-07', 'PNS', '1649928721.jpeg', 'user'),
(225, 'WIJI HASTUTI, S.Pd.', 'PAMIN DALGAR SUBBAGREN SESPIM', 'Sespim Lemdiklat Polri', 'Penata', '197202042003122003', 'GOMBONG', '1972-02-04', '2003-12-01', '2020-08-07', 'PNS', '1649928672.jpeg', 'user'),
(227, 'RENI ANGGRAENI, S.Pd.', 'PAMIN ARSIPARIS TAUD', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I', '197504161999032003', 'SUKABUMI', '1975-04-16', '1999-03-01', '2019-02-22', 'PNS', '1649928609.jpeg', 'user'),
(228, 'ICE MAESAROH, S.E.', 'PAMIN TAUD SESPIM ', 'Sespim Lemdiklat Polri', 'Penata Muda', '198105092009122001', 'BANDUNG', '1981-05-09', '2009-12-01', '2020-03-06', 'PNS', '1649928650.jpeg', 'user'),
(229, 'TATA', 'BANUM TAUD SESPIM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I', '196708141998031003', 'BANDUNG', '1967-08-14', '2022-12-01', '2018-08-31', 'PNS', 'avatar.png', 'user'),
(230, 'SANTHI RIANAWATI, SH', 'PS. GADIK MADYA SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Polisi', '76071042', 'CIMAHI', '1976-07-17', '2021-11-23', '2021-11-22', 'Polri', 'avatar.png', 'user'),
(231, 'NICO NIAGA PATHA, S.H.', 'GADIK MUDA SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Polisi', '67050103', 'UJUNGPANDANG', '1967-05-10', '2018-03-06', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(232, 'MEYTA TOLIU, S.H', 'PS. KASUBBAG EVADASI', 'Sespim Lemdiklat Polri', 'Komisaris Polisi', '75050944', 'MANADO', '1975-05-13', '2020-12-15', '2021-04-02', 'Polri', 'avatar.png', 'user'),
(233, 'TOTO SUGIARTO, S.Pd.', 'GADIK MUDA SESPIMMA', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Polisi', '71060042', 'INDRAMAYU', '1971-06-18', '2019-02-22', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(234, 'Drs.PRINGADI SUPARDJAN', 'KAKORSIS SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68010484', 'BANDUNG', '1968-01-29', '2020-11-16', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(235, 'Drs. DADAN WISHNU WARDANA', 'KABAG JARLAT SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '68110217', 'BANDUNG', '1968-11-28', '2018-12-21', '2018-12-21', 'Polri', 'avatar.png', 'user'),
(236, 'DEDI AGUSTONO, SIK', 'KABAG BINDIK SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '73080765', 'DENPASAR', '1973-08-11', '2020-11-23', '2020-11-23', 'Polri', 'avatar.png', 'user'),
(237, 'IWAN, SE., M.M.', 'KASUBBAG RENDALDIK BAGBINDIK SESPIMMA', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '66050674', 'GARUT', '1966-05-03', '2018-09-07', '2018-09-07', 'Polri', 'avatar.png', 'user'),
(238, 'IWAN, SE., M.M.', 'KASUBBAG RENDALDIK BAGBINDIK SESPIMMA', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '66050674', 'GARUT', '1966-05-03', '2018-09-07', '2018-09-07', 'Polri', 'avatar.png', 'user'),
(239, 'BURHANUDDIN, SE', 'KASUBBAG OPSNALLAT BAGJARLAT SESPIMMA', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '76010862', 'BANDUNG', '1976-01-06', '2019-09-09', '2019-12-13', 'Polri', 'avatar.png', 'user'),
(240, 'DEDEN HEKSAPUTERA SANUSI, SIK', 'KASUBBAG PIMTAJAS KORSIS SESPIMMA ', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '79052139', 'JAMBI', '1979-05-05', '2018-10-29', '2018-10-29', 'Polri', 'avatar.png', 'user'),
(241, 'TUTIK SUSWANTI, S. KEP., M.M', 'PS. KASUBBAG RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Polisi', '80061203', 'KUDUS', '2020-06-23', '2020-07-13', '2020-07-13', 'Polri', 'avatar.png', 'user'),
(242, 'SUNU PRIHANDOYO , A.Md', 'KAUR LOG SUBBAG RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Polisi', 'AKP', 'KLUNGKUNG', '1982-05-08', '2020-12-15', '2020-12-15', 'Polri', 'avatar.png', 'user'),
(243, 'DEDI HERMAWAN, S.H.', 'GADIK MUDA SESPIMMA', 'Sespim Lemdiklat Polri', 'Komisaris Polisi', '81060686', 'MAJALAYA', '1981-06-29', '2019-02-22', '2021-06-22', 'Polri', 'avatar.png', 'user'),
(244, 'DWI MULYATI RAHAYU NINGSIH', 'KAURMIN KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata Tingkat I', '196806021990102001', 'JAKARTA', '1968-06-02', '1990-10-01', '2019-05-02', 'PNS', 'avatar.png', 'user'),
(245, 'SRI PURWANI HAYATI', 'KAURMIN BAG BINDIK SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata Tingkat I', '196804041989032004', 'BANDUNG', '1968-04-04', '1989-03-01', '2018-08-31', 'PNS', '1650292215.jpeg', 'user'),
(246, 'RIYADI, S.I.P.', 'KAURMIN BAG BINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata Tingkat I', '197011292002121002', 'MAGETAN', '1970-11-29', '2022-12-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(247, 'RASANTI PERMULAT SARI', 'KAURTU SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata Tingkat I', '196409051985122001', 'MADIUN', '1964-09-05', '1985-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(248, 'DEDI CASMEDI', 'PAUR BEKUM SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Penata Tingkat I', '196611101988031001', 'SUMEDANG', '1966-11-10', '1988-03-01', '2019-05-02', 'PNS', 'avatar.png', 'user'),
(249, 'TARMAN TARMEDI, S.Pd.', 'PS. KAURTU SETLEM', 'Sespim Lemdiklat Polri', 'Penata Tingkat I', '196704051993031005', 'LEMBANG', '1967-04-05', '1993-03-01', '2021-03-02', 'PNS', 'avatar.png', 'user'),
(250, 'NGATIMAN, S.Pd.', 'PAMIN FASKON SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Penata Tingkat I', '196709191990031003', 'PURWOREJO', '1967-09-19', '1990-03-01', '2019-02-22', 'PNS', 'avatar.png', 'user'),
(251, 'SRI PANGESTUTI', 'PS. KAURTU JIANBANG', 'Sespim Lemdiklat Polri', 'Penata', '196802121992032004', 'BANDUNG', '1968-02-12', '1992-03-01', '2019-05-02', 'PNS', 'avatar.png', 'user'),
(252, 'RADEN MUSTIKAWATI', 'PS. KAURTU SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata', '196904051993032003', 'BANDUNG', '1969-04-05', '1993-03-01', '2021-03-02', 'PNS', 'avatar.png', 'user'),
(253, 'USEP', 'PS. PAUR YANMA SUBBAGUM', 'Sespim Lemdiklat Polri', 'Penata', '196412161983031001', 'BANDUNG', '1964-12-16', '1983-03-01', '2022-04-06', 'PNS', 'avatar.png', 'user');
INSERT INTO `anggota` (`id_anggota`, `nama`, `jabatan`, `kesatuan`, `pangkat`, `nrp`, `tempat`, `tgl`, `tmt_satker`, `tmt_jabatan`, `status`, `nama_file`, `hak`) VALUES
(254, 'MOCH. JUHARIYADI', 'PS. PAUR MINPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Penata', '196812151990031003', 'BANDUNG', '1968-12-15', '1990-03-01', '2019-05-02', 'PNS', 'avatar.png', 'user'),
(255, 'JAYA NATALIS', 'PS. PAUR MANASE ', 'Sespim Lemdiklat Polri', 'Penata', '196512251993101001', 'LEMBANG', '1965-12-25', '1993-10-01', '2018-08-31', 'PNS', 'avatar.png', 'user'),
(256, 'BADRUN, S.Pd.', 'PAMIN PUSTAKA SUBBAGUM', 'Sespim Lemdiklat Polri', 'Penata', '196605111987031003', 'CIREBON', '1966-05-11', '1966-03-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(257, 'SESKOWATI', 'PAMIN YANMA SUBBAGUM ', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196802111993032001', 'LEMBANG', '1968-02-11', '1993-03-01', '2022-07-13', 'PNS', '1650302365.jpeg', 'user'),
(258, 'AEP SAEPUDIN', 'PAMIN WATPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196905231993121001', 'BANDUNG', '1969-05-23', '1993-12-01', '2019-02-22', 'PNS', 'avatar.png', 'user'),
(259, 'ENDANG SRI RAHAYU', 'PAMIN MANASE SUBBAGUM', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196902251996032001', 'BANDUNG', '1969-02-25', '1996-03-01', '2018-08-31', 'PNS', 'avatar.png', 'user'),
(260, 'SYAHRUL  AZIZ', 'PAURMIN BID PENGSOS', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196505061990101001', 'BEKASI', '1965-05-06', '1990-10-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(261, 'SUPRIYONO', 'PAMIN KEU URKEU SESPIM', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196504271986031003', 'MAGETAN', '1965-04-27', '1986-03-01', '2019-02-22', 'PNS', 'avatar.png', 'user'),
(262, 'EPI AHMAD', 'PAMIN GAJI URKEU SESPIM', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196709071993031006', 'BANDUNG', '1967-09-07', '1993-03-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(263, 'VERA TALUMEPA, A.Mkeb.', 'PAMIN URBINKES SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196806091991032003', 'JAKARTA', '1968-06-09', '1991-03-01', '2020-10-16', 'PNS', 'avatar.png', 'user'),
(264, 'MUHAMAD', 'PAURMIN BID BINGADIK', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196912221993031003', 'LEMBANG', '1969-12-22', '1993-03-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(265, 'SUMARTI', 'PAMIN SUBBAG OPSNALLAT BAGJARLAT SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196510261993032002', 'MAGETAN', '1965-10-26', '1993-03-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(266, 'HAMDAN GIRI PRANATA, S.Pd.', 'PAMIN SUBBAG OPSNALLAT BAGJARLAT SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '198611272011011002', 'BANDUNG', '1986-11-27', '2011-01-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(267, 'RUK-RUK RUKMINI, S.Pd., M.Pd.', 'PAURMIN BID PROFTEK', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '197707172002122003', 'CIAMIS', '1977-07-17', '2002-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(268, 'LILIS HOLISOH CUCU. L', 'PAMIN URTU SESPIMMEN ', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196609261987032007', 'BANDUNG', '1966-09-26', '1987-03-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(269, 'RAHMAT MULYADI, S.E.', 'PAMIN AKUNVERIF URKEU', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '197109291999031002', 'CIMAHI', '1971-09-29', '1999-03-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(270, 'TONNY KURTIS SOLIHIN', 'BAMIN PENYELIA URTU SETLEM', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196604171990101001', 'BANDUNG', '1966-04-17', '1987-03-01', '2021-02-17', 'PNS', 'avatar.png', 'user'),
(271, 'RIFA SUSILAWATI', 'PAMIN BIN KORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '197405241999032003', 'BOGOR', '1974-05-24', '1999-03-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(272, 'VIVA PRIHANTO, S.Pd.', 'PAMIN SUBBAG PIMTAJAS KORSIS SESPIMMA', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '70020108', 'KEDIRI', '1970-02-20', '2018-09-07', '2018-08-02', 'Polri', 'avatar.png', 'user'),
(273, 'NITA MARLIANA, S.E.', 'PAMIN SUBBAG MINSIS KORSIS SESPIMMA', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '79030495', 'BANDUNG', '1979-03-21', '2019-02-22', '2019-02-22', 'Polri', 'avatar.png', 'user'),
(274, 'MOCHAMAD TAUFIQ RIYADI, S.I.P., M.M.', 'PAMIN SUBBAG EVADASI BAGBINDIK SESPIMMA', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '85110430', 'SUMEDANG', '1985-11-26', '2019-03-21', '2021-07-06', 'Polri', 'avatar.png', 'user'),
(275, 'MUGIARTO, S.H.', 'PAMIN DATA URKEU SESPIMMA', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', 'IPDA', 'CIREBON', '1983-09-20', '2019-03-21', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(276, 'DARNI, S.Pd.', 'PAMIN UR LOG SUBBAG RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Satu', '70020110', 'PONOROGO', '1970-02-26', '2018-11-14', '2020-01-24', 'Polri', 'avatar.png', 'user'),
(277, 'YULIZA ELFIANA ', 'PAMIN GAJI UR KEU SESPIMMA ', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', ' 82060169', 'BATUSANGKAR', '1982-06-08', '2020-07-13', '2020-07-13', 'Polri', 'avatar.png', 'user'),
(278, 'MALAHAYATI, S.E', 'PAMIN SUBBAG OPSNALLAT BAG JARLAT', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '94121361', 'PEKANBARU', '1984-12-29', '2020-09-01', '2020-09-01', 'Polri', 'avatar.png', 'user'),
(279, 'ERNAWATI', 'PAMA SESPIMMA', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '72120026', 'CIREBON', '1972-12-03', '2018-09-07', '2020-10-21', 'Polri', 'avatar.png', 'user'),
(280, 'SUWARTA SLAMET', 'PAMIN SUBBAGREN', 'Sespim Lemdiklat Polri', 'Inspektur Polisi Dua', '68090328', 'SLEMAN', '1968-09-16', '2019-03-21', '2020-10-21', 'Polri', 'avatar.png', 'user'),
(281, 'TEGUH WIRA DHARMA', 'BANUM SUBBAG OPSNALJAR BAGJARLAT SESPIMMA', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98100359', 'SUKABUMI', '1998-10-25', '2018-09-07', '2021-07-06', 'Polri', 'avatar.png', 'user'),
(282, 'RIDWAN FAUZUL M.', 'BANUM URLOG SUBBAG RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98040479', 'SUMEDANG', '1998-04-22', '2018-09-07', '2018-09-07', 'Polri', 'avatar.png', 'user'),
(283, 'DWI HERY PRASETYO', 'BANUM SUBBAG SDM SESPIMMA', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98120247', 'SUBANG', '1998-12-16', '2018-09-07', '2018-09-07', 'Polri', 'avatar.png', 'user'),
(284, 'LUVITA AGUSTINI P.', 'BANUM URTU SESPIMMA', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98080700', 'BANDUNG', '1998-08-17', '2019-05-28', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(285, 'MUZHAFFAR CANTIKA', 'BANUM URLOG SUBBAG RENMIN RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '99070258', 'BANDUNG', '1999-07-03', '2019-05-28', '2019-05-28', 'Polri', 'avatar.png', 'user'),
(286, 'ABDILLAH NAUFAL HIDAYAT', 'BANUM SUBBAG PIMTAJAS KORSIS SESPIMMA', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Satu', '01120096', 'WATES', '2001-11-03', '2021-11-23', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(287, 'AKHMAD LUTFI', 'BANUM OPSNALLAT BAGJARLAT SESPIMMA', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '01010493', 'KULON PROGO', '2001-01-18', '2021-12-23', '2021-11-23', 'Polri', 'avatar.png', 'user'),
(288, 'AGUS SETIAWAN', 'BANUM URTU SESPIMMA', 'Sespim Lemdiklat Polri', 'Bhayangkara Dua', '96081314', 'JAKARTA', '1996-08-29', '2019-03-21', '2019-03-21', 'Polri', 'avatar.png', 'user'),
(289, 'IKA SYAFMAWATI. S.Pd', 'PS. KAURMIN BAGBINDIK', 'Sespim Lemdiklat Polri', 'Penata Tingkat I/ III-d', '196407011988032001', 'BANDUNG ', '1964-07-01', '2019-02-22', '2019-02-22', 'PNS', 'avatar.png', 'user'),
(290, 'SRI PURWANTI, S.Pd.', 'PAMIN SUBBAGRENDALDIK SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197009041998032003', 'GOMBONG', '1970-09-04', '1998-03-01', '2020-08-07', 'PNS', 'avatar.png', 'user'),
(291, 'DEDI ROHENDI, S.Pd.', 'PAMIN REPRODUKSI TAUD SESPIM', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197212131998031003', 'LEMBANG', '1972-12-13', '1988-03-01', '2021-11-23', 'PNS', 'avatar.png', 'user'),
(292, 'ARI CAHYADI, S.Kom., S.E.', 'PAMIN OPSNALJAR BAGJARLAT SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197607161999031001', 'TASIKMALAYA', '1976-07-16', '1999-03-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(293, 'NOVIANY INDRAWARDANY', 'PAMIN DATA URKEU', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '196711112007012002', 'BANDUNG', '1967-11-11', '2007-01-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(294, 'DEDI JAENUDIN, S.P.d.I', 'PS. KAUR SDM SUBBAG RENMIN ', 'Sespim Lemdiklat Polri', 'Penata Tingkat I/ III-d', '196506071987111001', 'GARUT', '1965-06-07', '2021-07-06', '2021-07-06', 'PNS', 'avatar.png', 'user'),
(295, 'ENI SAFARINI', 'KAURTU SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata Tingkat I/ III-d', '196606121990102001', 'BANDUNG', '1966-06-12', '2018-08-07', '2018-08-07', 'PNS', 'avatar.png', 'user'),
(296, 'AYI MULYANA, S.Pd.', ' PS.  KAURMIN KORSIS SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata Tingkat I/ III-d', '196908091993031001', 'BANDUNG', '1969-08-09', '2017-10-01', '2017-10-01', 'PNS', 'avatar.png', 'user'),
(297, 'BOWO SUMARTOYO, SE', 'PS. KAUR REN SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '197603212009121001', 'LAMPUNG', '1976-03-21', '2020-02-24', '2020-02-24', 'PNS', 'avatar.png', 'user'),
(298, 'BUDI SANTOSO', 'PS. KAUR UM SUBBAG RENMIN ', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '197001231993031001', 'BANDUNG', '1970-01-23', '2016-04-01', '2016-04-01', 'PNS', 'avatar.png', 'user'),
(299, 'SRI INDRAWATI', 'PS. KAUR KEU SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196606071992032005', 'INDRAMAYU', '1966-07-06', '2021-02-03', '2021-02-03', 'PNS', 'avatar.png', 'user'),
(300, 'BUDI HENDRIYANTO, SE, M.M.', 'PS. GADIK MUDA', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '197710172003121004', 'JAKARTA', '1977-10-17', '2021-11-23', '2021-11-23', 'PNS', 'avatar.png', 'user'),
(301, 'ACHMAD ROCHMAN', 'PS. KAURMIN JARLAT', 'Sespim Lemdiklat Polri', 'Penata/ III-c', '196909101990111001', 'LEMBANG', '1969-09-10', '2021-11-23', '2021-11-23', 'PNS', 'avatar.png', 'user'),
(302, 'BUDI SUTARYAT', 'PAMIN SUBBAG OPSNALLAT BAGJARLAT ', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197003191992031003', 'BANDUNG', '1970-03-19', '2018-09-07', '2018-09-07', 'PNS', 'avatar.png', 'user'),
(303, 'ROMELAN', 'PAMIN URUM SUBBAG RENMIN', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '196706251998031003', 'KEBUMEN', '1967-06-25', '2018-09-07', '2018-09-07', 'PNS', 'avatar.png', 'user'),
(304, 'ATI NURHAYATI', 'PAMIN URKEU  SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197810111999032001', 'BANDUNG', '1978-10-11', '2018-09-07', '2018-09-07', 'PNS', 'avatar.png', 'user'),
(305, 'MUFLIKHUDIN, S.E.', 'PAMIN UR SDM SUBBAG RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197508222008121001', 'PURBALINGGA', '1975-08-22', '2021-07-06', '2021-07-06', 'PNS', 'avatar.png', 'user'),
(306, 'MUHARAM, S.Pd.', 'PAMIN GIATJARNAT KORSIS SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '196804221998031001', 'BANDUNG', '1968-08-22', '2020-03-21', '2020-03-21', 'PNS', 'avatar.png', 'user'),
(307, 'DEDEH RUMNINGSIH,S.Pd.', 'PAMIN URTU SESPIMMA ', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '197006192002122002', 'BANDUNG', '1970-06-19', '2021-11-23', '2021-11-23', 'PNS', 'avatar.png', 'user'),
(308, 'NANIK KUSMINARSIH,A.Md', 'PAMIN SUBBAG RENDALDIK BAGBINDIK SESPIMMA', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '198501232009122001', 'SRAGEN', '1985-01-23', '2018-09-07', '2018-09-07', 'PNS', 'avatar.png', 'user'),
(309, 'DEDI RUSWANDI', 'BANUM URLOG SUBBAG RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197306042007011005', 'LEMBANG', '1973-06-04', '2021-12-21', '2021-12-21', 'PNS', 'avatar.png', 'user'),
(310, 'SUPARMAN', 'BANUM URKEU  SESPIMMA', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197701122002121003', 'SLEMAN', '1977-01-11', '2018-09-07', '2018-09-07', 'PNS', 'avatar.png', 'user'),
(311, 'TONI YUSANTO', 'BANUM SDM  SUBBAGA RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197206092007011001', 'BANDUNG', '1972-06-09', '2021-11-23', '2021-11-23', 'PNS', 'avatar.png', 'user'),
(312, 'ASEP RIDWAN', 'BANUM UR UM SUBBAG RENMIN SESPIMMA', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '198301142009101001', 'BANDUNG', '1983-01-14', '2020-07-13', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(313, 'DIKI RIYADI SUHENDI', 'BANUM SUBBAGREN SESPIMMA', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '198412142014121002', 'BANDUNG', '1984-12-14', '2018-09-07', '2018-09-07', 'PNS', 'avatar.png', 'user'),
(314, 'ENDAH TRISNAWATI', 'BANUM SUBBAG OPSNALJAR BAGJARLAT SESPIMMA         ', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197803192014122004', 'MAGETAN', '1978-03-19', '2021-07-06', '2021-07-06', 'PNS', 'avatar.png', 'user'),
(315, 'YANA FEBIYANTO', 'BANUM SUBBAG MINSIS KORSIS', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '198202122014121005', 'BANDUNG', '1982-02-12', '2018-09-07', '2018-09-07', 'PNS', 'avatar.png', 'user'),
(316, 'SOLEH', 'BANUM URKEU SESPIMMA', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197706292014121002', 'BANDUNG', '1977-06-29', '2019-03-21', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(318, 'SITI AISYAH', 'BANUM SDM SUBBAG RENMIN ', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '196810132014122001', 'BANDUNG ', '1968-10-13', '2020-01-24', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(320, 'MELDA YANNY, S.I.K.,M.H.', 'WAKA SEPOLWAN', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '75010080', 'PADANG PANJANG', '1975-01-06', '2021-06-01', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(321, ' AI ROKAYAH, S.H., M.M.', 'KABAG GADIK SEPOLWAN', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '64100055', 'SUMEDANG', '1964-10-19', '1984-12-03', '2018-01-20', 'Polri', 'avatar.png', 'user'),
(322, ' WIWIK PRAPTIWININGSIH, S.H.', ' GADIK/GURU MADYA SEPOLWAN', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '64040339', 'BONDOWOSO', '1964-04-27', '1999-01-09', '2016-03-16', 'Polri', 'avatar.png', 'user'),
(323, ' R. Ay. RITA TRI YULIARTI, S.H.', ' GADIK/GURU MADYA', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '64070283', 'PAMEKASAN', '1964-07-20', '1999-01-09', '2013-04-30', 'Polri', 'avatar.png', 'user'),
(324, ' KADARWATI, S.H.', ' GADIK/GURU MADYA', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '65080078', 'KENDAL', '1965-08-31', '1985-10-19', '1985-12-31', 'Polri', 'avatar.png', 'user'),
(325, ' ANIK WIDAYATI, S.H.', 'KABAG BINSIS /  GADIK/GURU MADYA', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '66040013', 'DEMAK', '1966-04-10', '1985-10-19', '2017-08-10', 'Polri', 'avatar.png', 'user'),
(326, ' SRI WAHYUNI, S.H., M.H., M.Pd.', 'PAMEN SEPOLWAN', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '71070024', 'JAKARTA', '1971-07-29', '1990-05-11', '2019-10-13', 'Polri', 'avatar.png', 'user'),
(327, ' RUSTAM EFENDI', ' GADIK/GURU MUDA', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '64080845', 'BIMA', '1964-08-22', '2003-07-24', '2018-12-13', 'Polri', 'avatar.png', 'user'),
(328, ' ROMLAH BUDI ISTIARTI, S.H., M.M.', ' PATUN', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '67090275', 'KALIJATI', '1967-09-19', '1989-12-05', '2016-03-16', 'Polri', 'avatar.png', 'user'),
(329, ' ERNITA PONGKY, S.H., M.M.', ' PATUN', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '72120024', 'POSO', '1972-12-04', '1991-04-11', '2015-09-14', 'Polri', 'avatar.png', 'user'),
(330, ' LULUK ROBIATUN, S.H., M.M.', 'KASUBBAG BINPLINSIS', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '68110134', 'YOSOWILANGUN', '1968-11-06', '1990-05-28', '2018-09-20', 'Polri', 'avatar.png', 'user'),
(331, ' KUSMI WARTI NINGSIH, S.H., M.M.', 'KASUBBAG MINSIS', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '69120059', 'BINJAI', '1969-12-11', '2006-09-26', '2015-05-14', 'Polri', 'avatar.png', 'user'),
(332, ' YOHANA NAWANGSIH, S.H., M.H.', ' KASUBBAG BINGADIK', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '71120253', 'KARANG ANYAR', '1971-12-18', '1993-05-31', '2019-12-13', 'Polri', 'avatar.png', 'user'),
(333, ' RIYANTI,S.Sos., MAP.', 'KASUBBAG EVADASI', 'Sepolwan Lemdiklat Polri', 'Komisaris Polisi', '77030007', 'JAKARTA', '1977-03-03', '1977-10-05', '2018-06-22', 'Polri', 'avatar.png', 'user'),
(334, ' KESAINA TAIME', ' PATUN', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '68050322', 'JAYAPURA', '1968-05-15', '1990-05-28', '2018-02-28', 'Polri', 'avatar.png', 'user'),
(335, ' AGUSTINA TARAKANITA, S.H.', 'KASUBBAG HANJAR', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '68080001', 'SURABAYA', '1968-08-01', '1988-10-05', '2018-12-31', 'Polri', 'avatar.png', 'user'),
(336, ' TETIK YULITA KUSUMAWATI, S.H.', 'PATUN', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '76070428', 'SURAKARTA', '1976-07-16', '2007-10-30', '2014-02-17', 'Polri', 'avatar.png', 'user'),
(337, ' EKO SUMIYANTO', 'PATUN', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '65010329', 'KEBUMEN', '1965-01-12', '2013-03-27', '2013-11-18', 'Polri', 'avatar.png', 'user'),
(338, ' ANANG TRILAKSONO', 'GADIK GURU MUDA', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '67020289', 'PASANGGARAN', '1967-02-08', '2011-11-25', '2019-10-18', 'Polri', 'avatar.png', 'user'),
(339, ' WAHYUNI POLPOKE, S.H., M.M.', 'KASUBBAG LAKJARLAT', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '74070015', 'WAHAI', '1974-07-01', '1993-05-31', '2017-05-30', 'Polri', 'avatar.png', 'user'),
(340, ' TRI ASTUTI, S.H., M.M.', 'PATUN', 'Sespim Lemdiklat Polri', 'Ajun Komisaris Polisi', '73110226', 'JAKARTA', '1973-11-28', '1995-06-28', '2018-09-20', 'Polri', 'avatar.png', 'user'),
(341, ' ANA WIDIYASTUTI, S.H., M.M.', ' GADIK/GURU MUDA', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '72120179', 'SEMARANG', '1972-12-20', '1993-05-31', '2019-10-08', 'Polri', 'avatar.png', 'user'),
(342, 'DENNY INDRIANI, S.Pd.', 'KASUBBAG RENMIN', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '71120445', 'JAKARTA', '1971-12-15', '1994-06-27', '2015-11-09', 'Polri', 'avatar.png', 'user'),
(343, ' NURNAHANI', 'PAUR SDM', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '73070565', 'REMBANG', '1973-07-01', '2017-07-12', '2019-10-18', 'Polri', 'avatar.png', 'user'),
(344, 'TITIN ARLINAH, S.H., M.M.', 'KAUR KEU', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '75010460', 'JAKARTA SELATAN', '1975-01-13', '2020-01-01', '2020-06-23', 'Polri', 'avatar.png', 'user'),
(345, ' YUNITA SARI', ' PAUR UMUM', 'Sepolwan Lemdiklat Polri', 'Ajun Komisaris Polisi', '71060116', 'MUNTOK', '1971-06-05', '2015-12-21', '2019-10-18', 'Polri', 'avatar.png', 'user'),
(346, 'Drs. TAUFIK SUPRIYADI', 'KAPUSDIKMIN', 'Pusdikmin Lemdiklat Polri', 'Komisaris Besar Polisi', '65110550', 'KAB. BOYOLALI', '1965-11-03', '2020-11-16', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(347, 'GRACE KRISNA D. RAHAKBAU, S.I.K., M.Si.', 'WAKA PUSDIKMIN', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '76110038', 'AMBON', '1976-11-10', '2021-07-26', '2021-07-26', 'Polri', 'avatar.png', 'user'),
(348, 'HENNY PURWANTI, S.I.K., M.Si.', 'KABAG DIKLAT', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '76040010', 'BANDUNG', '1976-04-17', '2020-10-20', '2020-11-01', 'Polri', 'avatar.png', 'user'),
(349, 'RACHMAT K., S.S., S.H., M.H., M.AP. ', 'KABAG GADIK', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '70020391', 'BANDUNG', '1970-02-13', '2020-04-06', '2021-06-22', 'Polri', 'avatar.png', 'user'),
(350, 'ENDANG SRIYANI, S.H., M.AP.', 'KABAG BINSIS', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '74070790', 'BANDUNG', '1974-07-10', '2008-12-02', '2021-06-22', 'Polri', 'avatar.png', 'user'),
(351, 'Drs. KASMAN HINDRIANA, M.M.Pd', 'GADIK MADYA', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67040625', 'GARUT', '1967-04-16', '2021-03-26', '2021-06-22', 'Polri', 'avatar.png', 'user'),
(352, 'Dr. HANJAYA FATAH, M.M.Pd.', 'GADIK MADYA', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '70110336', 'DENPASAR', '1970-11-06', '2009-04-01', '2020-01-21', 'Polri', 'avatar.png', 'user'),
(353, 'KUSBIANTO, S.Pd., M.H.', 'GADIK MADYA', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67050240', 'KUNINGAN', '1967-05-17', '2011-10-10', '2020-04-08', 'Polri', 'avatar.png', 'user'),
(354, 'FITRI SYOFIANI, SH, M.MPd.', 'GADIK MADYA', 'Pusdikmin Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '78091198', 'PADANG', '1978-09-06', '2010-10-07', '2016-05-04', 'Polri', 'avatar.png', 'user'),
(355, 'RAHMAT', 'PATUN BAG BINSIS', 'Pusdikmin Lemdiklat Polri', 'Komisaris Polisi', '66070045', 'SUMEDANG', '1966-07-01', '2008-01-01', '2018-09-24', 'Polri', 'avatar.png', 'user'),
(356, 'Drs. AHDIAT, M.MPd.', 'GADIK MADYA', 'Pusdikmin Lemdiklat Polri', 'Pembina Tingkat I/ IV-b', '196412121994031005', 'BANDUNG', '1964-12-12', '2007-06-19', '2012-06-29', 'PNS', 'avatar.png', 'user'),
(357, 'Dr. Dra. KRISTIANA LUSIATI, M.Si.', 'GADIK MUDA', 'Pusdikmin Lemdiklat Polri', 'Pembina Tingkat I/ IV-b', '196512262005012001', 'CILACAP', '1965-12-26', '2012-10-07', '2015-09-14', 'PNS', 'avatar.png', 'user'),
(358, 'G U S T O Y O, S.Pd., M.Pd.', 'GADIK MUDA', 'Sepolwan Lemdiklat Polri', 'Pembina/ IV-a', '196502271987031003', 'BANDUNG', '1965-02-27', '2000-01-08', '2012-04-05', 'PNS', 'avatar.png', 'user'),
(359, 'PARLINDUNGAN, S.E., A.K., M.T.', 'KASUBBAG BIN GADIK', 'Pusdikmin Lemdiklat Polri', 'Pembina/ IV-a', '197605162005011005', 'JAKARTA', '1976-05-16', '2000-01-08', '2019-04-29', 'PNS', 'avatar.png', 'user'),
(360, 'NOLIK DWI ATMONO, S.E., M.E.', 'GADIK MUDA', 'Pusdikmin Lemdiklat Polri', 'Pembina/ IV-a', '197811282008011001', 'JAKARTA', '1978-11-28', '2008-02-18', '2017-10-01', 'PNS', 'avatar.png', 'user'),
(361, 'NOER BETTY SERIANTY, S.Pd.', 'GADIK MUDA', 'Pusdikmin Lemdiklat Polri', 'Penata Tingkat I/ III-d', '196702271990032002', 'SANGGAU', '1967-02-27', '2012-04-20', '2016-04-29', 'PNS', 'avatar.png', 'user'),
(362, 'IWAN KURNIAWAN, S.E.', 'KASUBBAG EVADASI ', 'Pusdikmin Lemdiklat Polri', 'Penata Tingkat I/ III-d', '197309102003121003', 'JAKARTA', '1973-10-09', '2005-07-01', '2018-09-24', 'PNS', 'avatar.png', 'user'),
(363, 'DAVID RADISON P. PARDEDE, S.Th.', 'GADIK PERTAMA', 'Pusdikmin Lemdiklat Polri', 'Penata Tingkat I/ III-d', '197601052005011007', 'TANJUNG BALAI', '1976-05-02', '2018-01-29', '2018-01-29', 'PNS', 'avatar.png', 'user'),
(364, 'Drs. ANANTO PARDIJONO', 'GADIK PERTAMA', 'Pusdikmin Lemdiklat Polri', 'Penata Tingkat I/ III-d', '196707241994031007', 'BANDUNG', '1967-07-24', '2015-02-01', '2015-03-23', 'PNS', 'avatar.png', 'user'),
(365, 'SUSILYA. HP', 'PS. PAUR BINPLINSIS', 'Pusdikmin Lemdiklat Polri', 'Penata Tingkat I/ III-d', '196406181989032001', 'SUKABUMI', '1964-06-18', '1990-07-01', '2021-04-05', 'PNS', 'avatar.png', 'user'),
(366, 'WIDIARTI, S.Pd.', 'PAMIN URTU SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '196902072003122002', 'BANDUNG', '1969-02-07', '2003-12-01', '2019-02-22', 'PNS', 'avatar.png', 'user'),
(371, 'Drs. MARKILAT HERU PRASETYO', 'KAPUSDIK BINMAS', 'Pusdik Binmas Lemdiklat Polri', 'Komisaris Besar Polisi', '65100564', '', '1111-11-11', '2020-11-16', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(372, 'ENDRASTIAWAN SETYOWIBOWO, S.I.K., M.H.', 'WAKAPUSDIK BINMAS', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '76010511', '', '1111-11-11', '2019-09-02', '2019-09-02', 'Polri', 'avatar.png', 'user'),
(373, 'WAHYUNI SRI LESTARI, S.I.K.', 'KABAG DIKLAT', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '78020069', '', '1111-11-11', '2012-12-02', '2019-09-02', 'Polri', 'avatar.png', 'user'),
(374, 'SUDARWOTO, S.H., M.H.', 'KABAG GADIK', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '69100442', '', '1111-11-11', '2012-10-12', '2018-02-28', 'Polri', 'avatar.png', 'user'),
(375, 'TRIYONO, S.H., M.H.', 'KABAG BINSIS', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '64100202', '', '1111-11-11', '2012-10-12', '2017-08-10', 'Polri', 'avatar.png', 'user'),
(376, 'JOKO YULIARTO, S.Sos., M.A.', 'KABAG GADIK / GADIK MADYA', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '68070827', '', '1111-11-11', '2013-10-21', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(377, 'WIDIHASTUTI, S.H., M.H.', 'GADIK MADYA', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '64070281', '', '1111-11-11', '2009-08-03', '2020-12-15', 'Polri', 'avatar.png', 'user'),
(378, 'SIGIT WIDAGDO, S.I.K.', 'GADIK MADYA', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '73100626', '', '1111-11-11', '2016-11-24', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(379, 'SUNARNO, S.Sos.', 'GADIK MADYA', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '64110224', '', '1111-11-11', '2012-10-12', '2018-02-28', 'Polri', 'avatar.png', 'user'),
(380, 'ARY MURTINI, S.I.K.', 'GADIK MADYA', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '77030046', '', '1111-11-11', '2002-05-20', '2020-11-01', 'Polri', 'avatar.png', 'user'),
(381, 'ZUHRIYAH', 'PS KAUR TU', 'Pusdik Binmas Lemdiklat Polri', 'Penata/ III-c', '196504171991032004', '', '1111-11-11', '2016-10-18', '2020-07-21', 'PNS', 'avatar.png', 'user'),
(382, 'RINI PUSPADEWI, S.E.', 'PS PAUR HANJAR SUBBAG HANJAR BAG GADIK', 'Pusdik Binmas Lemdiklat Polri', 'Penata/ III-c', '196504171991032004', '', '1111-11-11', '2012-11-05', '2020-07-21', 'PNS', 'avatar.png', 'user'),
(383, 'MUHAMAD SIGIT RAHARJO, S.E.', 'PAUR MINSIS SUBBAG MINSIS BAG BINSIS', 'Pusdik Binmas Lemdiklat Polri', 'Penata/ III-c', '197701152008122001', '', '1111-11-11', '2017-08-04', '2020-07-30', 'PNS', 'avatar.png', 'user'),
(384, 'dr. DIAH AYU PRIYATININGSIH', 'PS PAMIN KES UR UM SUBBAG RENMIN', 'Pusdik Binmas Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '198108272008121001', '', '1111-11-11', '2020-02-01', '2020-02-01', 'PNS', 'avatar.png', 'user'),
(385, 'MOHAMMAD MA FUD FAUZI', 'PNS PUSDIK BINMAS', 'Pusdik Binmas Lemdiklat Polri', 'Penata Muda/ III-a', '199106172019022007', '', '1111-11-11', '2021-02-01', '2021-02-01', 'PNS', 'avatar.png', 'user'),
(386, 'PUJI ASTUTI', 'BANUM MINDIKLAT SUBBAG RENDIKLAT BAG DIKLAT', 'Pusdik Binmas Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197503292002121001', '', '1111-11-11', '2004-12-30', '2012-08-24', 'PNS', 'avatar.png', 'user'),
(387, 'NURZAYIMAH', 'BANUM SDM UR SDM SUBBAG RENMIN', 'Pusdik Binmas Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196706291992012001', '', '1111-11-11', '2005-02-07', '2015-12-03', 'PNS', 'avatar.png', 'user'),
(388, 'ROBERTUS JARWADI', 'BANUM DATA UR KEU', 'Pusdik Binmas Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196502181992012001', '', '1111-11-11', '1992-03-01', '2016-10-18', 'PNS', 'avatar.png', 'user'),
(389, 'ROHMAD', 'BANUM ALINS UR LOG SUBBAG RENMIN', 'Pusdik Binmas Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197102182006041004', '', '1111-11-11', '2010-01-12', '2017-08-04', 'PNS', 'avatar.png', 'user'),
(390, 'TARYONO', 'PS PAMIN YANMA UR UM SUBBAG RENMIN', 'Pusdik Binmas Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196711162007011003', '', '1111-11-11', '2010-01-12', '2012-10-05', 'PNS', 'avatar.png', 'user'),
(391, 'AGUS NUGROHO, S.H., S.I.K., M.H.    ', 'KADIKLAT RESERSE', 'Diklat Reserse', 'Brigadir Jenderal Polisi', '69080353', '', '1111-11-11', '2020-02-03', '2020-02-15', 'Polri', 'avatar.png', 'user'),
(392, 'AGUS SANTOSO, S.IK., M.Si', 'WAKA DIKLAT', 'Lemdiklat Polri', 'Komisaris Besar Polisi', '68080530', '', '1111-11-11', '2017-08-25', '2018-10-14', 'Polri', 'avatar.png', 'user'),
(393, '', 'KABID DIKLAT ', 'Diklat Reserse', 'Komisaris Besar Polisi', '67020409', '', '1111-11-11', '2017-10-30', '2017-11-16', 'Polri', 'avatar.png', 'user'),
(394, 'ENDANG RASIDIN', 'KABID GADIK ', 'Pusdik Binmas Lemdiklat Polri', 'Komisaris Besar Polisi', '68070559', '', '1111-11-11', '2020-10-13', '2020-10-13', 'Polri', 'avatar.png', 'user'),
(395, 'DODY PRIBADI, S.I.K., M.Si', 'KABID BINSIS ', 'Diklat Reserse', 'Komisaris Besar Polisi', '72120381', '', '1111-11-11', '2019-09-02', '2019-09-02', 'Polri', 'avatar.png', 'user'),
(396, 'TRI HARYANA, S.Si', 'KABAG RENMIN ', 'Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67110491', '', '1111-11-11', '2019-09-09', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(397, 'VENNY YULIUS, S.Sos., M.A P ', 'KASUBBID MINSIS ', 'Pusdik Binmas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '7402074', '', '1111-11-11', '2017-04-18', '2020-03-24', 'Polri', 'avatar.png', 'user'),
(398, 'IWAN DWI JUNANTO, SH., M.H', 'KASUBBID EVADASI ', 'Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '71060494', '', '1111-11-11', '2013-03-09', '2017-04-26', 'Polri', 'avatar.png', 'user'),
(399, 'SUGIYANTO, S.H', 'GADIK MADYA ', 'Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67120626', '', '1111-11-11', '2017-06-24', '2009-01-20', 'Polri', 'avatar.png', 'user'),
(400, 'I NENGAH GANTI, S.H.', '\"KASUBBID  HANJARTAKA\"', 'Diklat Reserse', 'Ajun Komisaris Besar Polisi', '66010041', '-', '1111-11-11', '2021-06-22', '2019-07-23', 'Polri', 'avatar.png', 'user'),
(401, 'AGUS SANTOSO, S.IK., M.Si', 'KADIKLAT RESERSE', 'Diklat Reserse', 'Komisaris Besar Polisi', '69080353', '', '1111-11-11', '2020-02-03', '2020-02-15', 'Polri', 'avatar.png', 'user'),
(402, 'ENDANG RASIDIN', 'KABID GADIK ', 'Diklat Reserse', 'Komisaris Besar Polisi', '68070559', '', '1111-11-11', '2020-10-13', '2020-10-13', 'Polri', 'avatar.png', 'user'),
(403, 'TRI HARYANA, S.Si', 'KABAG RENMIN ', 'Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67110491', '', '1111-11-11', '2019-09-09', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(404, 'VENNY YULIUS, S.Sos., M.A P ', 'KASUBBID MINSIS ', 'Diklat Reserse', 'Ajun Komisaris Besar Polisi', '7402074', '', '1111-11-11', '2017-04-18', '2020-03-24', 'Polri', 'avatar.png', 'user'),
(405, 'TRI HARYANA, S.Si', 'KABAG RENMIN ', 'Diklat Reserse', 'Ajun Komisaris Besar Polisi', '67110491', '', '1111-11-11', '2019-09-09', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(406, 'IWAN DWI JUNANTO, SH., M.H', 'KASUBBID EVADASI ', 'Diklat Reserse', 'Ajun Komisaris Besar Polisi', '71060494', '', '1111-11-11', '2013-03-09', '2017-04-26', 'Polri', 'avatar.png', 'user'),
(407, 'SUGIYANTO, S.H', 'GADIK MADYA ', 'Diklat Reserse', 'Ajun Komisaris Besar Polisi', '67120626', '', '1111-11-11', '2009-01-20', '2017-04-26', 'Polri', 'avatar.png', 'user'),
(408, 'drg. AHMAD SYAFIK', 'PS. KA POLIPOL', 'Lemdiklat Polri', 'Pembina/ IV-a', '197708202007101000', '', '1111-11-11', '2007-04-01', '2017-04-26', 'PNS', 'avatar.png', 'user'),
(409, 'KOKO MARDYOKO, S.T.', 'KASUBBAG REN', 'Lemdiklat Polri', 'Pembina/ IV-a', '197812142005011004', '', '1111-11-11', '2020-03-01', '2021-06-22', 'PNS', 'avatar.png', 'user'),
(410, 'drg. AHMAD SYAFIK', 'PS. KA POLIPOL', 'Diklat Reserse', 'Pembina/ IV-a', '197708202007101000', '', '1111-11-11', '2007-04-01', '2017-04-26', 'PNS', 'avatar.png', 'user'),
(411, 'KOKO MARDYOKO, S.T.', 'KASUBBAG REN', 'Diklat Reserse', 'Pembina/ IV-a', '197812142005011004', '', '1111-11-11', '2020-03-01', '2021-06-22', 'PNS', 'avatar.png', 'user'),
(412, 'NIA KURNIASIH, S.Pd., M.M.', 'PS. PAUR RENDIKLAT', 'Diklat Reserse', 'Penata Tingkat I/ III-d', '197605292008012001', '', '1111-11-11', '2008-01-01', '2017-04-26', 'PNS', 'avatar.png', 'user'),
(413, 'W A K I R I N', 'BANUM SUBBID EVADASI', 'Diklat Reserse', 'Penata Tingkat I/ III-d', '196406271985011001', '', '1111-11-11', '1986-10-01', '2020-06-23', 'PNS', 'avatar.png', 'user'),
(414, 'J U M A D I', 'PS. PAUR BIN GADIK', 'Diklat Reserse', 'Penata Tingkat I/ III-d', '196410021984011000', '', '1111-11-11', '1985-07-01', '2017-03-30', 'PNS', 'avatar.png', 'user'),
(415, 'DJOKO MUDJIANTO, S.Sos', 'BAMUN LAKDIKLAT', 'Diklat Reserse', 'Penata Tingkat I/ III-d', '197503262003121002', '', '1111-11-11', '2020-10-20', '2021-03-05', 'PNS', 'avatar.png', 'user'),
(416, 'GESIT SENO NOVIANTO, ST', 'PS. PAUR MINPERS', 'Diklat Reserse', 'Penata Tingkat I/ III-d', '198111242008011002', '', '1111-11-11', '2015-02-20', '2020-06-23', 'PNS', 'avatar.png', 'user'),
(417, 'ARIS SUPRIYANTO, SE', 'PS. PAUR BAG RENMIN', 'Diklat Reserse', 'Penata Tingkat I/ III-d', '198203152009121000', '', '1111-11-11', '2010-02-18', '2017-03-30', 'PNS', 'avatar.png', 'user'),
(418, 'M. SANDOYO, S.Kom', 'PAUR TEKNOLOGI', 'Diklat Reserse', 'Penata Tingkat I/ III-d', '197903122009121001', '', '1111-11-11', '2016-06-01', '2017-03-30', 'PNS', 'avatar.png', 'user'),
(419, 'NINING WAHYUNINGSIH', 'PS. PAMIN DOKPOL', 'Diklat Reserse', 'Penata/ III-c', '196707041987062001', '', '1111-11-11', '2020-12-21', '2021-01-05', 'PNS', 'avatar.png', 'user'),
(420, 'Drs. SUROTO, M.Si.', 'GUBERNUR AKPOL', 'Akpol Lemdiklat Polri', 'Inspektur Jenderal Polisi', '65040678', '', '1111-11-11', '2020-08-13', '2020-08-03', 'Polri', 'avatar.png', 'user'),
(421, 'DUDUNG', 'PAURMIN BID KUMDANG', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197206041998031003', 'LEMBANG', '1972-04-06', '2019-01-03', '2018-02-08', 'PNS', 'avatar.png', 'user'),
(422, 'AL ANGGAR FIDARSITO, S.E.', 'PAMIN SUBBAGMINSIS KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '198403072008121002', 'GARUT', '1984-03-07', '2008-12-01', '2019-02-22', 'PNS', 'avatar.png', 'user'),
(423, 'IROM MUHAROM, S.Kom', 'P.S. PAMIN MINPERS SUBBAG SDM ', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '197912072009121001', 'CIKONENG', '1979-12-07', '2009-12-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(424, 'UCEP NURJAMAN', 'PAMIN SUBBAG OPSNALJAR BAGJARLAT SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '198709112011011002', 'BANDUNG', '1987-09-11', '2018-01-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(425, 'YAYAT HIDAYAT. S.A.P.', 'PAMIN SUBBAG EVADASI BAGBINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '196905052002121006', 'SUBANG', '1969-05-05', '2002-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(426, 'TATANG SUARNA', 'BHAYANGKARA PELAKSANA LANJUTAN YANMA SUBBAGUM', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '196506081987031002', 'BANDUNG', '1965-06-08', '1111-11-11', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(427, 'NANA SUTARNA', 'BAMIN PELAKSANA LANJUTAN PUSTAKA SUBBAGUM', 'Sespim Lemdiklat Polri', 'Penata Muda Tingkat I/ III-b', '196808081993111002', 'BANDUNG', '1968-08-08', '1111-11-11', '2020-08-07', 'PNS', 'avatar.png', 'user'),
(428, 'WIDI ASTUTI', 'BAMIN PELAKSANA LANJUTAN URKEU SESPIM ', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '196704132002122001', 'LEMBANG', '1967-04-03', '2002-12-01', '2019-05-28', 'PNS', 'avatar.png', 'user'),
(429, 'DEDEN BAYU SAPUTRA, S.Gz.', 'BAMIN PELAKSLANJUTAN URBINKES SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '199406022019021006', 'CIREBON', '1994-06-02', '2019-02-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(430, 'RINA RESMINI', 'BANUM SUBBAG RENDALDIK BAGBINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '197204172003122001', 'BANDUNG', '1972-04-17', '2003-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(431, 'IIN KURNIASIH', 'BANUM BID STRATEGI', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '196905102003122007', 'KUNINGAN', '1969-05-10', '2003-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(432, 'ELI NURAENI', 'BANUM SUBBAG SDM (POK WI)', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '197210252002122001', 'BANDUNG', '1972-10-25', '2002-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(433, 'MIRA WAHYUNI LINGGA', 'BANUM SUBBAG SDM (YANKES)', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '198212062005012004', 'BANDA ACEH', '1982-12-06', '2005-01-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(434, 'ANANG TARYANA', 'BANUM YANMA SUBBAGUM SETLEM', 'Sespim Lemdiklat Polri', '', '197103161998031005', 'BANDUNG', '1971-03-16', '1988-03-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(435, 'MOHAMAD SUHARNO', 'BANUM YANMA SUBBAGUM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196907111998031005', 'JAKARTA', '1969-07-11', '1998-03-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(436, 'KEMAS HARYADI', 'BANUM BID PROFTEK', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197203031998031001', 'LEMBANG', '1972-03-03', '1998-03-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(437, 'OO SAEFULLAH', 'BANUM  ANGPAL SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197312012002121003', 'BANDUNG', '1973-12-01', '2002-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(438, 'RUSTANTO', 'BANUM BEKUM SUBAGLOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196803012002121003', 'BOYOLALI', '1968-03-01', '2002-12-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(439, 'ELA SUMIATI', 'BANUM SUS TAUD', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197102072002122002', 'BANDUNG', '1971-02-07', '2002-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(440, 'HARYANTO', 'BANUM ANGPAL SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197312042002121002', 'SURABAYA', '1973-12-04', '2002-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(441, 'AEP SAEPUDIN', 'BANUM REPRODUKSI TAUD', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197108012002121003', 'LEMBANG', '1971-08-01', '2002-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(442, 'SARNO', 'BANUM BEKUM SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '197905272003121004', 'BOYOLALI', '1979-05-27', '2003-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(443, 'PUJI SANTOSO', 'BANUM BINKES SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197007102005011005', 'YOGYAKARTA', '1970-07-10', '2005-01-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(444, 'DADANG', 'BANUM FASKON SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196601121998031006', 'BANDUNG', '1966-01-12', '1988-03-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(445, 'AGUS MULYA', 'BANUM BIDKUMDANG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197208162007011004', 'BANDUNG', '1972-08-16', '2007-01-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(446, 'OMAN KUSNADI', 'BANUM YANMA SUBBAGUM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197111162007011003', 'LEMBANG', '1971-11-16', '2007-01-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(447, 'IDA HAFIDAH', 'BANUM MINPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196802172007012001', 'BANDUNG', '1968-02-17', '2007-01-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(448, 'DEDI RUSWANDI', 'BANUM ANGPAL SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197306042007011005', 'LEMBANG', '1973-06-04', '2007-01-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(449, 'DIAH JUHARIAH', 'BANUM SUBBAG BINKORTA SESPIMTI', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197112102007012002', 'BANDUNG', '1971-12-10', '2007-01-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(450, 'AMAS SAMBAS', 'BANUM SUBBAG GIAT JARNAT KORSIS SESPIMMEN', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197209282007011008', 'BANDUNG', '1972-09-28', '2007-01-01', '2018-12-31', 'PNS', 'avatar.png', 'user'),
(451, 'NUR BADRUL ZAMAN', 'BANUM SUBBAG OPSNALLAT BAGJARLAT SESPIMMEN', 'Sespim Lemdiklat Polri', 'Penata Muda/ III-a', '197302062007011004', 'BATUJAJAR', '1973-02-06', '2007-01-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(452, 'ENTANG  MULYANA', 'BANUM REPRODUKSI TAUD', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197204022007011006', 'BANDUNG', '1972-04-02', '2007-01-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(453, 'IMAS KUSMIATI', 'BANUM URTU SETLEM ', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197308122007012001', 'BANDUNG', '1973-08-12', '2007-01-01', '2019-08-02', 'PNS', 'avatar.png', 'user'),
(454, 'KURNIAWAN', 'BANUM YANMA SUBBAGUM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197207012007011010', 'BANDUNG', '1972-07-01', '2007-01-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(455, 'AGUS KOSTAMAN ACHYAR, AMK', 'BANUM BINKES SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '198108192014121001', 'BANDUNG', '1981-08-19', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(456, 'DUDUNG', 'BANUM PROVOS', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196406081990031017', 'SUBANG', '1964-06-08', '1990-03-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(457, 'YETI KOMALASARI', 'BANUM URTU SESPIMTI', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197305042006042010', 'BANDUNG', '1973-05-04', '2006-04-01', '2018-08-31', 'PNS', 'avatar.png', 'user'),
(458, 'DEDI SUDAYAT', 'BANUM ANGPAL SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '196601212006041003', 'BANDUNG', '1966-01-21', '2006-04-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(459, 'EVIE HENDRAYANI', 'BANUM BID KUMDANG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197406212006042002', 'BANDUNG', '1974-06-21', '2006-04-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(460, 'TETI NURHAYATI', 'BANUM PUSTAKA SUBBAGUM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197505012007102001', 'BANDUNG', '1975-05-01', '2007-10-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(461, 'YANI ANDRIYANI', 'BANUM SUBBAG EVADASI BAGBINDIK SESPIMTI', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197608062007102001', 'BANDUNG', '1976-08-06', '2007-10-01', '2020-08-07', 'PNS', 'avatar.png', 'user'),
(462, 'SAHWA', 'BANUM TAUD SESPIM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197303062007101001', 'PALEMBANG', '1973-03-30', '2007-10-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(463, 'ACHMAD YUSUP', 'BANUM BEKUM SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197103012008101001', 'LEMBANG', '1971-03-01', '2008-10-01', '2020-08-02', 'PNS', 'avatar.png', 'user'),
(464, 'DITA HENDRA', 'BANUM BID PENGSOS ', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197310302008101001', 'LEMBANG', '1973-10-30', '2008-10-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(465, 'JAJANG SUNARDI', 'BANUM MINPERS SUBBAG SDM ', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197410292008101001', 'LEMBANG', '1974-10-29', '2008-10-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(466, 'AWI SETIYONO, S.I.K., M.Hum.', 'WAGUB AKPOL', 'Akpol Lemdiklat Polri', 'Brigadir Jenderal Polisi', '71020177', '', '1111-11-11', '2021-01-06', '2020-12-10', 'Polri', 'avatar.png', 'user'),
(467, 'NANDANG SULAEMAN', 'BANUM ANGPAL SUBBAG LOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197507122008101001', 'BANDUNG', '1975-07-12', '2008-10-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(468, 'SIGIT PAMBUDI', 'BANUM BIDSTRATEGI', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197501062008101001', 'PURWOKERTO', '1975-01-06', '2008-10-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(469, 'DODI SUHANDI', 'BANUM MINPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '198805202008121001', 'INDRAMAYU', '1988-05-20', '2008-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(470, 'JAJANG JAENUDIN', 'BANUM ANGPAL SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Pengatur Tingkat I/ II-d', '197602192009101001', 'LEMBANG', '1976-02-19', '2009-10-01', '2020-08-07', 'PNS', 'avatar.png', 'user'),
(471, 'DENNY CHAHYO WIEBOWO', 'BANUM OPSNALLAT BAGJARLAT SESPIMTI', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '197411152009121001', 'TRENGGALEK', '1974-11-15', '2009-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(472, 'INTAN PUTRI SARTIKA, A.Md.Kep.', 'BANUM BINKES SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '199208082018012001', 'BANDUNG', '1992-08-08', '2018-01-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(473, 'CUCU CUYATNA', 'BAMIN PELAKSANA PEMULA ANGPAL SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '197404092002121002', 'BANDUNG', '1974-04-09', '2002-12-01', '2011-01-12', 'PNS', 'avatar.png', 'user'),
(474, 'SITI ROHIMAH DZAKIROH, A.MkEB', 'BANUM BINKES SUBBAG SDM ', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '199410022019022008', 'BANDUNG', '1994-10-02', '2020-02-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(475, 'JAJANG MASTURI', 'BANUM YANMA SUBBAGUM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '196909182003121002', 'BANDUNG', '1969-09-18', '2003-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(476, 'UJANG BUDI SANTOSO', 'BANUM URBINKES SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197609232007011003', 'BANDUNG', '1976-09-23', '2007-01-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(477, 'DEDI SUGANDI', '198111152006041007', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '198111152006041007', 'BANDUNG', '1981-11-15', '2006-04-01', '2020-03-06', 'PNS', 'avatar.png', 'user'),
(478, 'ODAS SUPRIATNA', 'BANUM ANGPAL SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197502052007101002', 'BANDUNG', '1975-02-05', '2007-10-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(479, 'DEDY NURALAM', 'BANUM SUBBAG OPSNALJAR BAGJARLAT SESPIMMEN', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197701132014121001', 'BANDUNG', '1977-01-15', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(480, 'AEP SURYANA', 'BANUM ANGPAL SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197104162014121002', 'BANDUNG', '1971-04-16', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(481, 'BUDI SANTOSA', 'BANUM SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197510012014121005', 'BANDUNG', '1975-10-01', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(482, 'ISHAK', 'BANUM WATPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197804082014121002', 'BANDUNG', '1978-04-08', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(483, 'JUWENI', 'BANUM YANMA SUBBAGUM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197512092014121001', 'BANDUNG', '1975-12-29', '2014-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(484, 'TITI TENTREM KARTI RAHAYU', 'BANUM PROGAR SUBBAGREN', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197804062014122002', 'BANDUNG', '1978-04-06', '2014-12-01', '1978-04-06', 'PNS', 'avatar.png', 'user'),
(485, 'USEP MAULANA ROCHMAT', 'BANUM URTU BAGJIANBANG', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197704092014121004', 'BANDUNG', '1977-04-09', '2014-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(486, 'ADAR HERMAWAN', 'BANUM MINPERS SUBBAG SDM', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197905292014121001', 'BANDUNG', '1979-05-29', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(487, 'IESWARI', 'BANUM BIDJEMEN ', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197706052014122002', 'BANDUNG', '1977-06-05', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(488, 'MARWAN', 'BANUM URTU SETLEM ', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197701272014121001', 'BANDUNG', '1977-01-27', '2014-12-01', '2020-07-13', 'PNS', 'avatar.png', 'user'),
(489, 'ARIYANTO SARYONO', 'BANUM SUBBAG EVADASI BAGBINDIK SESPIMMEN', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '198109232014121002', 'BANDUNG', '1981-09-23', '2014-12-01', '2020-01-24', 'PNS', 'avatar.png', 'user'),
(490, 'GUGUN GUNAWAN', 'BANUM BEKUM SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '198205252014121002', 'BANDUNG', '1982-05-25', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(491, 'IMAN LUKMAN', 'BAMIN SUBBAG UM', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '198109082014121002', 'BANDUNG', '1981-09-08', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(492, 'SUHERMAN', 'BANUM ANGPAL SUBBAGLOG ', 'Sespim Lemdiklat Polri', 'Pengatur Muda Tingkat I/ II-b', '197105042014121004', 'BANDUNG', '1971-05-04', '2014-12-01', '2019-03-21', 'PNS', 'avatar.png', 'user'),
(493, 'SAEPUDIN', 'BANUM ANGPAL SUBBAGLOG', 'Sespim Lemdiklat Polri', 'Juru Tingkat I/ I-d', '197909112014121005', 'BANDUNG', '1979-09-11', '2014-12-01', '2018-08-02', 'PNS', 'avatar.png', 'user'),
(494, 'ENDRA DINO', 'BANUM YANMA SUBBAGUM SETLEM', 'Sespim Lemdiklat Polri', 'Juru Tingkat I/ I-d', '197205212014121003', 'BANDUNG', '1972-05-21', '2019-01-04', '1972-05-21', 'PNS', 'avatar.png', 'user'),
(495, 'FAISAL BASRI, A.Md.Ft.', 'BANUM URBINKES SUBBAGSDM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '199509132020121001', 'BANDUNG', '1995-09-19', '2020-12-01', '1111-11-11', 'PNS', 'avatar.png', 'user'),
(496, 'RAHAYU  WIDYASTUTI, A.Md. Kes.', 'BANUM URBINKES SUBBAGSDM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '199509132020121001', 'BANDUNG', '1995-09-13', '2020-12-01', '1111-11-11', 'PNS', 'avatar.png', 'user'),
(497, 'ROSI MUSTIKA RACHAYU, A.Md. Ak. ', 'BANUM URBINKES SUBBAGSDM SETLEM', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '199305172020122005', 'CIANJUR', '1995-09-13', '2020-12-01', '1111-11-11', 'PNS', 'avatar.png', 'user'),
(498, 'IMANISA FADILLA. A.Md. Gz.', 'BANUM URBINKES SUBBAGSDM SETLEM (AHLI GIZI)', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '199802082020122001', 'BANDUNG', '1998-02-08', '2020-12-01', '1111-11-11', 'PNS', 'avatar.png', 'user'),
(499, 'JATUK SRI WULANDARI, A.Md. Kep.', 'BANUM URBINKES SUBBAGSDM SETLEM (PERAWAT UMUM)', 'Sespim Lemdiklat Polri', 'Pengatur/ II-c', '198501252020122001', 'SERANG', '1985-01-25', '2020-12-01', '1111-11-11', 'PNS', 'avatar.png', 'user'),
(510, 'SETIADI, SH, MH', 'ANJAK UTAMA BIDANG AKPOL', 'Akpol Lemdiklat Polri', 'Brigadir Jenderal Polisi', '64050864', '', '1111-11-11', '2019-11-08', '2019-10-21', 'Polri', 'avatar.png', 'user'),
(511, 'Drs. HARI NARTANTO', 'ANJAK UTAMA BIDANG AKPOL', 'Akpol Lemdiklat Polri', 'Brigadir Jenderal Polisi', '65030629', '', '1111-11-11', '2021-06-11', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(512, 'Drs. DADIK SOESETYO SOELISTIJONO', 'DIR AKADEMIK', 'Akpol Lemdiklat Polri', 'Komisaris Besar Polisi', '66080562', '', '1111-11-11', '2019-12-13', '2019-12-05', 'Polri', 'avatar.png', 'user');
INSERT INTO `anggota` (`id_anggota`, `nama`, `jabatan`, `kesatuan`, `pangkat`, `nrp`, `tempat`, `tgl`, `tmt_satker`, `tmt_jabatan`, `status`, `nama_file`, `hak`) VALUES
(513, 'AJUK WIBOWO, S.I.K.', 'DIR BINTARLAT', 'Akpol Lemdiklat Polri', 'Komisaris Besar Polisi', '70070367', '', '1111-11-11', '2021-06-17', '2021-06-01', 'Polri', 'avatar.png', 'user'),
(514, 'RADEN ZULPAHRI, S.H.', 'KABAG BINLAT', 'Akpol Lemdiklat Polri', 'Komisaris Besar Polisi', '66020466', '', '1111-11-11', '2020-03-24', '2020-03-03', 'Polri', 'avatar.png', 'user'),
(515, 'EKO WALUYO, SH', 'KABAG HUMAS', 'Akpol Lemdiklat Polri', 'Komisaris Besar Polisi', '65110555', '', '1111-11-11', '2018-06-25', '2018-06-07', 'Polri', 'avatar.png', 'user'),
(516, 'ERY SUSANTO, S.H., M.H.', 'KABAGBINDIK', 'Akpol Lemdiklat Polri', 'Komisaris Besar Polisi', '67040403', 'a', '1111-11-11', '2018-11-29', '2018-10-28', 'Polri', 'avatar.png', 'user'),
(517, 'ANAK AGUNG MADE SUDANA, S.H., S.I.K.', 'KABAG JARLAT', 'Akpol Lemdiklat Polri', 'Komisaris Besar Polisi', '66060668', '', '1111-11-11', '2021-01-06', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(518, 'WALUYA, S.I.K.', 'KAPUSDIKSABHARA LEMDIKLAT POLRI', 'Pusdik Sabhara Lemdiklat Polri', 'Komisaris Besar Polisi', '71100499', '', '1111-11-11', '2019-06-20', '2020-05-01', 'Polri', 'avatar.png', 'user'),
(519, 'WIWIEK DWI ERAWATI, S.H., M.H.', 'WAKAPUSDIK SABHARA LEMDIKLAT POLRI', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '69060616', '', '1111-11-11', '2007-06-29', '2021-06-28', 'Polri', 'avatar.png', 'user'),
(520, 'DRS. IGN TOTOK MUJI SANTOSO, S.E., M.Si.', 'KABAG BINSIS PUSDIK SABHARA LEMDIKLAT', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67030501', '', '1111-11-11', '2020-02-05', '2021-06-22', 'Polri', 'avatar.png', 'user'),
(521, 'AGUS ARIF SUGIONO, S.H.', 'KABAGDIKLAT PUSDIK SABHARA LEMDIKLAT', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '70121133', '', '1111-11-11', '2010-03-01', '2019-12-13', 'Polri', 'avatar.png', 'user'),
(522, 'IWAN IRAWAN', '', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '73060619', '', '1111-11-11', '2008-02-01', '2020-04-08', 'Polri', 'avatar.png', 'user'),
(523, 'DWIDJO SUSANTO', 'GADIK MADYA PUSDIK SABHARA LEMDIKLAT POLRI', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67090531', '', '1111-11-11', '2005-09-01', '2021-07-16', 'Polri', 'avatar.png', 'user'),
(524, 'ERWIN HENDRI SUJARWADI, S.E.', 'GADIK MADYA PUSDIK SABHARA LEMDIKLAT POLRI', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '74100770', '', '1111-11-11', '2007-12-17', '2021-07-16', 'Polri', 'avatar.png', 'user'),
(525, 'SUTIKNO', 'GADIK MADYA PUSDIK SABHARA LEMDIKLAT POLRI', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '70040697', '', '1111-11-11', '2021-05-04', '2021-07-16', 'Polri', 'avatar.png', 'user'),
(526, 'DRA. MARIA SOETJIATI', 'GADIK MADYA PUSDIK SABHARA LEMDIKLAT POLRI', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67030633', '', '1111-11-11', '2018-12-01', '2021-07-16', 'Polri', 'avatar.png', 'user'),
(527, 'YOHANES KURNIAWAN SIMAMORA, S.H.', 'PAMEN PUSDIK SABHARA LEMDIKLAT', 'Pusdik Sabhara Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '73060612', '', '1111-11-11', '2020-08-10', '2020-08-10', 'Polri', 'avatar.png', 'user'),
(528, 'MARDIAZ KUSIN DWIHANANTO, S.I.K, M.Hum ', 'Kasetukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Brigadir Jenderal Polisi', '71120264', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(529, 'TONY HARSONO, S.I.K., M.Si', '67120527', 'Setukpa Lemdiklat Polri', 'Komisaris Besar Polisi', '67120527', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(530, 'Drs. IGNATIUS AGUNG PRASETYOKO, S.H., M.H.', 'Kabag Bimsis Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '69010183', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(531, 'Drs. H. DARMANTO, S.Pd., M.M.', 'Kabag Diklat Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Komisaris Besar Polisi', '67040495', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(532, 'Drs. PRIYO MUJIHAD', 'Kabag Bin Gadik Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Komisaris Besar Polisi', '66010403', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(533, 'Drs. DUKIANTA', 'Kabid Jemen Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Komisaris Besar Polisi', '65080666', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(534, 'Drs. R. DEDI PERMADI ', 'Kabid Kum Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Komisaris Besar Polisi', '64120923', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(535, 'MUHAMMAD HELMI, S.IK', 'Kabid Proftek Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Komisaris Besar Polisi', '74080676', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(536, 'SATRIA RIZKIANO, S.IK, M.Si, M.M.', 'Kabid Pengsos Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Komisaris Besar Polisi', '73030686', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(537, 'dr. MUCH SOFWAN, Sp.OT (K)', 'Ka Rumkit Setukpa Lemdiklat Polri', 'Setukpa Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '73110619', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(538, 'HERI SULESMONO, S.IK.', 'KAPUSDIK BRIMOB', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Besar Polisi', '70012129', '', '1111-11-11', '2020-11-16', '2020-11-16', 'Polri', 'avatar.png', 'user'),
(539, 'DODIK AKHIRIANTO, S.Pd.', 'KABAG DIKLAT', 'Pusdik Brimob Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '75070936', 'a', '1111-11-11', '2017-08-31', '2018-02-28', 'Polri', 'avatar.png', 'user'),
(540, 'RB. FIRMAN HIDAYAT, S.P. M.M', 'PS. KABAG GADIK', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Polisi', '69020342', '', '1111-11-11', '1991-11-04', '2018-09-07', 'Polri', 'avatar.png', 'user'),
(541, 'AGUS SATRIYO, S.E.M.M', 'KASUBBAG RENMIN', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Polisi', '66020050', '', '1111-11-11', '2003-06-01', '2016-03-16', 'Polri', 'avatar.png', 'user'),
(542, 'SUDIRMAN, S.sos.', 'PATUN MUDA', 'Lemdiklat Polri', 'Komisaris Polisi', '66030669', '', '1111-11-11', '1990-11-05', '2019-05-17', 'Polri', 'avatar.png', 'user'),
(543, 'SUDIRMAN, S.sos.', 'PATUN MUDA', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Polisi', '66030669', '', '1111-11-11', '1990-11-05', '2019-05-17', 'Polri', 'avatar.png', 'user'),
(544, 'SRI HERYONO', 'GADIK MUDA', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Polisi', '67030165', '', '1111-11-11', '2013-12-01', '2016-03-16', 'Polri', 'avatar.png', 'user'),
(545, 'dr. TASRIF', 'PS. KARUMKIT BHY PUSDIK BM', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Polisi', '76081051', '', '1111-11-11', '2019-09-09', '2019-12-13', 'Polri', 'avatar.png', 'user'),
(546, 'SUBAGIO, S.H.', 'GADIK MUDA', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Polisi', '70110262', '', '1111-11-11', '2021-08-20', '2021-08-20', 'Polri', 'avatar.png', 'user'),
(547, 'WINARTO, S.E. M.M.', 'KASUBBAG RENDIKLAT', 'Pusdik Brimob Lemdiklat Polri', 'Komisaris Polisi', '66020514', '', '1111-11-11', '2005-10-21', '2020-12-07', 'Polri', 'avatar.png', 'user'),
(548, 'DANI AFFANDI, S.E.', 'KASUBBAG BANG HANJAR', 'Lemdiklat Polri', 'Komisaris Polisi', '76050349', '', '1111-11-11', '2016-11-14', '2017-03-31', 'Polri', 'avatar.png', 'user'),
(549, 'SUNAR, S.H.', 'PS. PATUN', 'Pusdik Brimob Lemdiklat Polri', 'Ajun Komisaris Polisi', '67030288', '', '1111-11-11', '2005-10-21', '2020-08-28', 'Polri', 'avatar.png', 'user'),
(550, 'DJONI HENDRA, S.H.', 'KAPUSDIK LANTAS', 'Pusdik Lantas Lemdiklat Polri', 'Komisaris Besar Polisi', '67060624', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(551, 'THOMAS ADI KURNIAWAN, S.IK', 'WAKA PUSDIK LANTAS', 'Pusdik Lantas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '74040418', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(552, 'Dra. TH.IDA TOETY ROSEMIYATI', 'KABAG GADIK', 'Pusdik Lantas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67030017', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(553, 'LUTHFI, S.IK', 'KABAG DIKLAT', 'Pusdik Lantas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '76080290', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(554, 'Drs.JAN PIETER SIAHAAN, S.H.', 'GADIK MADYA', 'Pusdik Lantas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '68080687', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(555, 'IYOS ROSIDAH, S.H	', 'GADIK MADYA ', 'Pusdik Lantas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '66080004', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(556, 'NI WAYAN SUDIARTI', 'PATUN BAG BINSIS', 'Pusdik Lantas Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '64050295', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(557, 'FARIED RACHMAN, S.E.', 'PATUN BAG BINSIS', 'Pusdik Lantas Lemdiklat Polri', 'Komisaris Polisi', '74050760', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(558, 'DHANI HERNANDO, S.I.K., M.H.', '', 'Sebasa Lemdiklat Polri', 'Komisaris Besar Polisi', '71080339', '', '1111-11-11', '1111-11-11', '2019-03-14', 'Polri', 'avatar.png', 'user'),
(559, 'SRI POEDJIATI, S.H.', 'WAKA SEBASA', 'Sebasa Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '72110553', '', '1111-11-11', '1111-11-11', '2008-07-01', 'Polri', 'avatar.png', 'user'),
(560, 'PRIYO SUSILO, S.Pd., M.Pd', '', 'Sebasa Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', 'AKBP	72090593', '', '1111-11-11', '1111-11-11', '2020-12-15', 'Polri', 'avatar.png', 'user'),
(561, 'H.R. ANOM KALISNO, S.H.', 'KASUBBAG BINPLINSIS BAG BINSIS', 'Pusdik Lantas Lemdiklat Polri', 'Komisaris Polisi', '67120106', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(562, 'DEWI MULYATI,  AMK   ', 'KASUBBAG LAKJARLAT BAG DIKLAT', 'Pusdik Lantas Lemdiklat Polri', 'Komisaris Polisi', '76081017', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(563, 'M. A. TRIZA, SIP', 'KABAG DIKLAT', 'Sebasa Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '72060530', '', '1111-11-11', '1111-11-11', '2020-08-07', 'Polri', 'avatar.png', 'user'),
(564, 'JANTER S. MANALU, S.E., M.H.', 'KABAG BINSIS', 'Sebasa Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '74090826', '', '1111-11-11', '1111-11-11', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(565, 'IMAS RUKMINI, SH, M.M', 'KASUBBAGMINSIS BAGBINSIS', 'Sebasa Lemdiklat Polri', 'Komisaris Polisi', '68110084', 'TASIKMALAYA', '1968-11-04', '1111-11-11', '2019-07-31', 'Polri', 'avatar.png', 'user'),
(566, 'SIGIT JATMIKO, S.Pd.', 'KASUBBAG BINPLINSIS BAG BINSIS', 'Sebasa Lemdiklat Polri', 'Komisaris Polisi', '74070198', 'MALANG', '1972-05-18', '1111-11-11', '2020-04-06', 'Polri', 'avatar.png', 'user'),
(567, 'HERMANTO,S.Pd, M.Pd', 'P.S. PATUN BAG BINSIS', 'Sebasa Lemdiklat Polri', 'Ajun Komisaris Polisi', '65120014', 'SLEMAN', '1965-12-25', '1111-11-11', '2021-06-22', 'Polri', 'avatar.png', 'user'),
(568, 'DEDE RUNANTO', 'PAUR REN SUBBAGRENMIN', 'Lemdiklat Polri', 'Ajun Komisaris Polisi', '74060389', 'JAKARTA', '1974-06-26', '1111-11-11', '2015-02-01', 'Polri', 'avatar.png', 'user'),
(569, 'MUJI SUHARNA, S.H.', 'PAURUM SUBBAGRENMIN', 'Sebasa Lemdiklat Polri', 'Ajun Komisaris Polisi', '67050579', 'BANTUL', '1967-05-10', '1111-11-11', '2015-06-22', 'Polri', 'avatar.png', 'user'),
(570, 'SITI RONIYAH, M.Pd', 'SARJANA JEMEN DIK', 'Sebasa Lemdiklat Polri', 'Ajun Komisaris Polisi', '78020251', 'KABUPATEN BLITAR', '1978-02-05', '1111-11-11', '2021-03-04', 'Polri', 'avatar.png', 'user'),
(571, 'GUNTUR AGUNG SUPONO, S.I.K,M.Si', 'KAPUSDIK INTELIJEN', 'Pusdik Intel Lemdiklat Polri', 'Komisaris Besar Polisi', '74020326', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(572, 'ADI NUGRAHA, S.I.K', 'WAKA PUSDIK INTELIJEN', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '75120900', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(573, 'SETIABUDI ,S.I.K', 'KABAG DIKLAT', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '68020526', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(574, 'DIDIK AINUR ROFIQ, S.T', 'KABAG BINSIS', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67040397', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(575, 'DONI RUSWONO, S.I.K', 'KABAG GADIK', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '76051004 ', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(576, 'Dra. HENNY GAZTIANA .P, M.M', 'GADIK MADYA', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67020515', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(577, 'PARSONO, S.T', 'GADIK MADYA', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '67050353', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(578, 'KOENTJORO SIWIADJI, S.IP', 'GADIK MADYA', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '69020422', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(579, 'I GEDE  PUTRA MULIAWAN,S.IP, M.Si, M.M.', 'GADIK MADYA', 'Pusdik Intel Lemdiklat Polri', 'Ajun Komisaris Besar Polisi', '66010116', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(580, 'TANTO HARTANTO, A.Md', 'KASUBBAG LAKDIKLAT BAG DIKLAT', 'Pusdik Intel Lemdiklat Polri', 'Komisaris Polisi', '67070558', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(581, 'Drs. YAZID FANANI, M.Si.', 'KETUA STIK LEMDIKLAT POLRI', 'STIK Lemdiklat Polri', 'Inspektur Jenderal Polisi', '65040682', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(582, 'Drs. IMRAN YUNUS, M.H.', 'WAKET BID MINWA STIK ', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '65090732', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(583, 'Drs. M. NAUFAL YAHYA, M.Sc.(Eng) ', 'WAKET BID KERMADIANMAS', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '66070355', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(584, 'Dr. BAKHARUDDIN M. SYAH, SH, SIK, M.Si ', 'DIRPROGRAM PASCASARJANA STIK', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '68120581', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(585, 'Drs. SOFYAN NUGROHO, S.H., M.Si., M.H.', 'WAKET BID PPITK STIK', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '69030313', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(586, 'Dr. ASEP ADI SAPUTRA, SH., SIK, MH, Msi. ', 'WAKET BID AKADEMIK STIK', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '71050415', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(587, 'Dr. I G. K. BUDHI H., S.I.K., SH., M.Hum ', 'DIRPROGRAM SARJANA STIK ', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '71070472', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(588, 'Drs. BAMBANG WIJI PUJOHADI, M.M.', 'KABAG JIANPOLMAS BID PPITK', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '64050734', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(589, 'NUGROHO SLAMET WIBOWO, S.I.K., M.Si.', 'ANJAK UTAMA ROJIANBANG (BKO)', 'STIK Lemdiklat Polri', 'Brigadir Jenderal Polisi', '69110231', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(590, 'Drs. CHAIRUL FARIZAL ', 'KABAGJIANMINPOL BID PPITK STIK', 'STIK Lemdiklat Polri', 'Komisaris Besar Polisi', '64090536', '', '1111-11-11', '1111-11-11', '1111-11-11', 'Polri', 'avatar.png', 'user'),
(592, 'ASEP TAUFIK, S.I.K.', 'SESLEM SESPIM', 'Sespim Lemdiklat Polri', 'Komisaris Besar Polisi', '71020299', 'KARAWANG', '1971-02-24', '2021-12-27', '2021-12-17', 'Polri', 'KBP Asep Taufik.jpeg', 'user'),
(594, 'Ferry Mulyanto', 'Banum Seksi I', 'Lemdiklat Polri', 'Brigadir Polisi Dua', '68445641', 'Bandung', '1990-10-10', '2020-10-10', '2045-10-10', '', 'download.png', 'user'),
(595, 'Ferry Mulyanto', 'Banum Seksi I', 'Lemdiklat Polri', 'Jenderal Polisi', '68445641', 'Bandung', '1975-12-12', '1995-11-10', '1995-11-10', '', 'newplot.png', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id` int(11) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `kat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id`, `pangkat`, `kat`) VALUES
(1, 'Jenderal Polisi', 'Polri'),
(2, 'Komisaris Jenderal Polisi', 'Polri'),
(3, 'Inspektur Jenderal Polisi', 'Polri'),
(4, 'Brigadir Jenderal Polisi', 'Polri'),
(5, 'Komisaris Besar Polisi', 'Polri'),
(6, 'Ajun Komisaris Besar Polisi', 'Polri'),
(7, 'Komisaris Polisi', 'Polri'),
(8, 'Ajun Komisaris Polisi', 'Polri'),
(9, 'Inspektur Polisi Satu', 'Polri'),
(10, 'Inspektur Polisi Dua', 'Polri'),
(11, 'Ajun Inspektur Polisi Satu', 'Polri'),
(12, 'Ajun Inspektur Polisi Dua', 'Polri'),
(13, 'Brigadir Polisi Kepala', 'Polri'),
(14, 'Brigadir Polisi', 'Polri'),
(15, 'Brigadir Polisi Satu', 'Polri'),
(16, 'Brigadir Polisi Dua', 'Polri'),
(17, 'Ajun Brigadir Polisi', 'Polri'),
(18, 'Ajun Brigadir Polisi Satu', 'Polri'),
(19, 'Ajun Brigadir Polisi Dua', 'Polri'),
(20, 'Bhayangkara Kepala', 'Polri'),
(21, 'Bhayangkara Satu', 'Polri'),
(22, 'Bhayangkara Dua', 'Polri'),
(23, 'Pembina Utama/ IV-e', 'PNS'),
(24, 'Pembina Utama Madya/ IV-d', 'PNS'),
(25, 'Pembina Utama Muda/ IV-c', 'PNS'),
(26, 'Pembina Tingkat I/ IV-b', 'PNS'),
(27, 'Pembina/ IV-a', 'PNS'),
(28, 'Penata Tingkat I/ III-d', 'PNS'),
(29, 'Penata/ III-c', 'PNS'),
(30, 'Penata Muda Tingkat I/ III-b', 'PNS'),
(31, 'Penata Muda/ III-a', 'PNS'),
(32, 'Pengatur Tingkat I/ II-d', 'PNS'),
(33, 'Pengatur/ II-c', 'PNS'),
(34, 'Pengatur Muda Tingkat I/ II-b', 'PNS'),
(35, 'Pengatur Muda/ II-a', 'PNS'),
(36, 'Juru Tingkat I/ I-d', 'PNS'),
(37, 'Juru/ I-c', 'PNS'),
(38, 'Juru Muda Tingkat I/ I-b', 'PNS'),
(39, 'Juru Muda/ I-a', 'PNS');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_dikbang`
--

CREATE TABLE `riwayat_dikbang` (
  `id` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `dikbang` varchar(50) NOT NULL,
  `tmt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_dikbang`
--

INSERT INTO `riwayat_dikbang` (`id`, `id_anggota`, `dikbang`, `tmt`) VALUES
(1, 7, 'Komputer', '2023-04-06'),
(2, 128, 'DIKJUR LAN PA LIDIK KRIMINAL', '2014-06-09'),
(3, 128, 'DIKBANGSPES PAMA BHABINKAMTIBMAS', '1993-12-12'),
(4, 128, 'KIBI XXXIX', '1999-01-01'),
(5, 214, 'SESPIMEN', '1111-11-11'),
(6, 391, 'SESPIM I ', '2008-11-11'),
(7, 391, 'SESPIMTI', '2016-11-11'),
(8, 391, 'PA SERSE UM', '1993-11-11'),
(9, 391, 'POLICE ADMIN JEPANG', '2002-11-11'),
(10, 391, 'SCI II JEPANG', '2004-11-11'),
(11, 391, 'LDC BANGKOK', '2004-11-11'),
(12, 391, 'NDC TAIWAN ', '2004-11-11'),
(13, 391, 'SUSJAB KAPOLRES I ', '2010-11-11'),
(14, 391, 'ASSESMENT I', '2010-11-11'),
(15, 391, 'ASSESSMENT DIRESKRIM', '2014-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_dikpol`
--

CREATE TABLE `riwayat_dikpol` (
  `id` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tingkat` varchar(50) NOT NULL,
  `tmt` date NOT NULL,
  `peringkat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_dikpol`
--

INSERT INTO `riwayat_dikpol` (`id`, `id_anggota`, `tingkat`, `tmt`, `peringkat`) VALUES
(5, 7, 'SPN Polda Jabar', '2019-08-04', '187'),
(6, 128, 'AKABRI', '1997-11-11', '-'),
(7, 128, 'PTIK', '2009-11-11', '-'),
(8, 214, 'SEPA', '1991-09-18', '-'),
(9, 371, 'AKABRI B', '1988-11-11', '-'),
(10, 371, 'PTIK', '1999-11-11', '-'),
(11, 391, 'AKABRI ', '1991-11-11', '-'),
(12, 13, 'AKABRI ', '1990-11-11', '1'),
(13, 13, 'PTIK', '1997-11-11', '-'),
(14, 13, 'SESPIM', '2005-11-11', '-'),
(15, 13, 'SESPIMTI', '2013-11-11', '-');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_dikum`
--

CREATE TABLE `riwayat_dikum` (
  `id` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tingkat` varchar(50) NOT NULL,
  `institusi` varchar(50) NOT NULL,
  `tmt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_dikum`
--

INSERT INTO `riwayat_dikum` (`id`, `id_anggota`, `tingkat`, `institusi`, `tmt`) VALUES
(1, 7, 'SD', 'SDN Kalasan 1', '2006-01-01'),
(2, 7, 'SMP', 'SMPN 1 Cisarua', '2012-02-02'),
(3, 7, 'SMA', 'SMKN 2 Cimahi', '2015-03-03'),
(4, 128, 'SD', '-', '1987-11-11'),
(5, 128, 'SMP', '-', '1990-11-11'),
(6, 128, 'SMA', '-', '1993-11-11'),
(7, 13, 'SD', '-', '0081-11-11'),
(8, 13, 'SMP', '-', '1984-11-11'),
(9, 13, 'SMA', '-', '1987-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jabatan`
--

CREATE TABLE `riwayat_jabatan` (
  `id` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `kesatuan` varchar(100) NOT NULL,
  `tmt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_jabatan`
--

INSERT INTO `riwayat_jabatan` (`id`, `id_anggota`, `jabatan`, `kesatuan`, `tmt`) VALUES
(1, 3, 'Banum Taud', 'Sespim Lemdiklat Polri', '2019-06-20'),
(2, 7, 'Banum Taud', 'Sespim Lemdiklat Polri', '2019-06-20'),
(3, 3, '-', '-', '2022-04-06'),
(4, 128, 'PAMA POLDA TIMTIM POLDA NTT', 'POLDA NTT', '1988-07-15'),
(5, 128, 'KASAT SERSE POLRES ERMERA TIMTIM POLDA NTT', 'POLDA NTT', '1999-01-11'),
(6, 128, 'KABAG OPS POLRESTA GORONTALO POLDA GORONTALO', 'POLDA GORONTALO', '2007-06-05'),
(7, 128, 'KASUBDIT INFOKRIM POLDA GORONTALO', 'POLDA GORONTALO', '2008-05-08'),
(8, 128, 'KANIT III SAT OPS II DIT RESKRIM POLDA JABAR', 'POLDA JABAR', '2009-03-05'),
(9, 128, 'KANIT SUBDIT 3 DITRESKRIMUM POLDA JABAR', 'POLDA JABAR', '2009-03-05'),
(10, 128, 'KASUBBAG RESKRIM BAG OPS POLWIL BOGOR POLDA JABAR', 'POLDA JABAR', '2009-12-23'),
(11, 128, 'KANIT II SUBDIT II DIT RESKRIM SUS POLDA JABAR', 'POLDA JABAR', '2011-02-04'),
(12, 128, 'KASAT SERSE POLRESTA BANDUNG BARAT POLDA JABAR', 'POLDA JABAR', '2011-10-07'),
(13, 128, 'KAURMIN BAGBINDIK SESPIMMEN SESPIM LEMDIKLAT POLRI', 'SESPIM LEMDIKLAT POLRI', '2014-03-30'),
(14, 128, 'KASUBBAGSDM SETLEM SESPIM LEMDIKLAT POLRI (IIIA1)', 'SESPIM LEMDIKLAT POLRI', '2019-01-16'),
(15, 346, 'KAPUSDIKMIN', 'PUSDIKMIN', '2020-11-16'),
(16, 214, 'KASEPOLWAN', 'SEPOLWAN', '2020-11-16'),
(17, 371, 'KAPUSDIK BINMAS', 'PUSDIK BINMAS', '2020-11-16'),
(18, 391, 'KADIKLAT RESERSE', 'DIKLAT RESERSE', '2020-02-15'),
(19, 420, 'GUBERNUR AKPOL', 'AKPOL', '2020-08-03'),
(20, 13, 'KANITIDIK SATRESKRIM POLRES METRO BEKASI ', 'POLRES METRO BEKASI POLDA METRO JAYA', '1992-10-14'),
(21, 13, 'PENUGASAN KE BOSNIA POLRI ', 'MABES POLRI', '1998-01-01'),
(22, 13, 'UNIT II SAT IDIK RANMOR DIT SERSEUM KORSERSE POLRI', 'KORSERSE POLRI ', '1999-04-01'),
(23, 13, 'KAPOLSEK METRO KEMAYORAN POLRES METRO JAKPUS', 'POLDA METRO JAYA ', '2000-12-18'),
(24, 13, 'KASAT SERSE POLRES METRO JAKBAR', ' POLDA METRO JAYA ', '2001-09-11'),
(25, 13, 'KANIT I SAT II/FISMONDEP DIT RESKRIMSUS METRO JAYA', 'POLDA METRO JAYA ', '2004-03-02'),
(26, 13, 'WAKA KPPP TANJUNG PRIOK POLDA METRO JAYA ', 'POLDA METRO JAYA ', '2004-05-27'),
(27, 13, 'PAMEN POLDA METRO JAYA (DLM RANGKA DIK SESPIM) ', 'POLDA METRO JAYA', '2005-03-01'),
(28, 13, 'PAMEN BARESKRIM POLRI ', 'BARESKRIM POLRI ', '2005-10-20'),
(29, 13, ' PENYIDIK MADYA UNIT V DIT V/TIPITER BARESKRIM ', 'BARESKRIM POLRI ', '2005-11-30'),
(30, 13, 'KASUBDEN INVESTIGASI DENSUS 88/ANTITEROR BARESKRIM', 'BARESKRIM POLRI ', '2009-12-29'),
(31, 13, 'DIRRESKRIMUM POLDA METRO JAYA ', 'POLDA METRO JAYA ', '2010-09-29'),
(32, 13, 'KAROOPS POLDA SULTENG', 'POLDA SULTENG', '2014-05-02'),
(33, 13, 'PAMEN DENSUS 88 AT (PENUGASAN PD BNPT) ', 'DENSUS 88 AT POLRI ', '2016-05-27'),
(34, 13, 'PATI DENSUS 88 AT POLRI ', 'DENSUS 88 AT POLRI', '2016-06-27'),
(35, 13, 'DIRTIPIDUM BARESKRIM POLRI', 'BARESKRIM POLRI', '2017-01-04'),
(36, 13, 'KAPOLDA PAPUA BARAT', 'POLDA PAPUA BARAT', '2019-04-26'),
(37, 13, 'ASOPS KAPOLRI', 'SOPS POLRI', '2019-12-05'),
(38, 13, 'KAPOLDA KALTIM', 'POLDA KALTIM', '2020-08-03'),
(39, 13, 'KASESPIM LEMDIKLAT POLRI', 'SESPIM LEMDIKLAT POLRI', '2021-12-17'),
(40, 335, 'Banum Seksi I', 'SESPIM POLRI', '2045-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pangkat`
--

CREATE TABLE `riwayat_pangkat` (
  `id` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `tmt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_pangkat`
--

INSERT INTO `riwayat_pangkat` (`id`, `id_anggota`, `pangkat`, `tmt`) VALUES
(5, 7, 'Bripda', '2019-03-04'),
(6, 7, 'Briptu', '2024-06-01'),
(8, 3, '-', '2022-04-06'),
(9, 128, 'IPDA', '1997-12-18'),
(10, 128, 'IPTU', '2001-01-01'),
(11, 128, 'AKP', '2004-01-01'),
(12, 128, 'KOMPOL', '2009-07-01'),
(13, 128, 'AKBP', '2019-01-01'),
(14, 346, 'INSPEKTUR POLISI DUA', '1989-07-22'),
(15, 214, 'INSPEKTUR POLISI DUA', '1991-09-18'),
(16, 371, 'INSPEKTUR POLISI DUA', '1988-11-11'),
(17, 391, 'INSPEKTUR POLISI DUA', '1991-11-11'),
(18, 13, 'IRJEN POL', '2019-12-26'),
(19, 13, 'INSPEKTUR POLISI DUA', '1990-06-29'),
(20, 13, 'INSPEKTUR POLISI SATU', '1993-10-01'),
(21, 13, 'AJUN KOMISARIS POLISI', '1997-04-01'),
(22, 13, 'KOMISARIS POLISI', '2002-01-01'),
(23, 13, 'AJUN KOMISARIS BESAR POLISI', '2006-01-01'),
(24, 13, 'KOMISARIS BESAR POLISI', '2010-01-01'),
(25, 13, 'BRIGADIR JENDERAL POLISI', '2016-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `syarat_pangkat`
--

CREATE TABLE `syarat_pangkat` (
  `id` int(11) NOT NULL,
  `anggota_id` int(11) DEFAULT NULL,
  `rh` varchar(100) DEFAULT NULL,
  `smk` varchar(100) DEFAULT NULL,
  `skep_pertama` varchar(100) DEFAULT NULL,
  `skep_terakhir` varchar(100) DEFAULT NULL,
  `skep_gaji_t` varchar(100) DEFAULT NULL,
  `ijazah_dikpolri` varchar(100) DEFAULT NULL,
  `ijazah_dikum_t` varchar(100) DEFAULT NULL,
  `ijazah_dikjur` varchar(100) DEFAULT NULL,
  `skhp` varchar(100) DEFAULT NULL,
  `sket_lulus_beladiri` varchar(100) DEFAULT NULL,
  `skep_perwira` varchar(100) DEFAULT NULL,
  `skep_jabatan` varchar(100) DEFAULT NULL,
  `sprinlak_jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syarat_pangkat`
--

INSERT INTO `syarat_pangkat` (`id`, `anggota_id`, `rh`, `smk`, `skep_pertama`, `skep_terakhir`, `skep_gaji_t`, `ijazah_dikpolri`, `ijazah_dikum_t`, `ijazah_dikjur`, `skhp`, `sket_lulus_beladiri`, `skep_perwira`, `skep_jabatan`, `sprinlak_jabatan`) VALUES
(1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_dikbang`
--
ALTER TABLE `riwayat_dikbang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `riwayat_dikpol`
--
ALTER TABLE `riwayat_dikpol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `riwayat_dikum`
--
ALTER TABLE `riwayat_dikum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `syarat_pangkat`
--
ALTER TABLE `syarat_pangkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_id` (`anggota_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT for table `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `riwayat_dikbang`
--
ALTER TABLE `riwayat_dikbang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `riwayat_dikpol`
--
ALTER TABLE `riwayat_dikpol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `riwayat_dikum`
--
ALTER TABLE `riwayat_dikum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `syarat_pangkat`
--
ALTER TABLE `syarat_pangkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `riwayat_dikbang`
--
ALTER TABLE `riwayat_dikbang`
  ADD CONSTRAINT `riwayat_dikbang_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);

--
-- Constraints for table `riwayat_dikpol`
--
ALTER TABLE `riwayat_dikpol`
  ADD CONSTRAINT `riwayat_dikpol_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);

--
-- Constraints for table `riwayat_dikum`
--
ALTER TABLE `riwayat_dikum`
  ADD CONSTRAINT `riwayat_dikum_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);

--
-- Constraints for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD CONSTRAINT `riwayat_jabatan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);

--
-- Constraints for table `riwayat_pangkat`
--
ALTER TABLE `riwayat_pangkat`
  ADD CONSTRAINT `riwayat_pangkat_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);

--
-- Constraints for table `syarat_pangkat`
--
ALTER TABLE `syarat_pangkat`
  ADD CONSTRAINT `syarat_pangkat_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id_anggota`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
