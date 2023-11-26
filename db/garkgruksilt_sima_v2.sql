-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2023 at 05:22 AM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garkgruksilt_sima_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsipdokumen`
--

CREATE TABLE `arsipdokumen` (
  `id_dokumen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `arsipgambar`
--

CREATE TABLE `arsipgambar` (
  `id_gambar` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `arsipnota`
--

CREATE TABLE `arsipnota` (
  `id_nota` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_vendor` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `foto_nota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `asal_barang`
--

CREATE TABLE `asal_barang` (
  `id_asal_barang` int(11) NOT NULL,
  `kode_asal_barang` varchar(2) NOT NULL,
  `nama_asal_barang` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `asal_barang`
--

INSERT INTO `asal_barang` (`id_asal_barang`, `kode_asal_barang`, `nama_asal_barang`) VALUES
(1, '01', 'Yayasan'),
(2, '02', 'Perguruan Tinggi'),
(3, '03', 'Lainnya'),
(4, '04', 'Hibah PHPPTS'),
(5, '05', 'Donatur'),
(6, '06', 'Alumni');

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id` int(11) NOT NULL,
  `kode_brg` varchar(255) DEFAULT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `serial number` varchar(255) DEFAULT NULL,
  `merek` varchar(255) NOT NULL,
  `asal_brg` varchar(255) NOT NULL,
  `thn_perolehan` varchar(255) NOT NULL,
  `tgl_perolehan` date NOT NULL,
  `hrg_perolehan` varchar(255) NOT NULL,
  `keadaan_brg` varchar(255) NOT NULL,
  `peruntukan` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `jenis_brg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id`, `kode_brg`, `nama_brg`, `serial number`, `merek`, `asal_brg`, `thn_perolehan`, `tgl_perolehan`, `hrg_perolehan`, `keadaan_brg`, `peruntukan`, `ket`, `jenis_brg`) VALUES
(3, NULL, 'mouse', NULL, 'rexus', 'Yayasan', '2023', '2023-03-29', '100000', '100', 'bak', 'baik', 'elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_brg`) VALUES
(5, 'Staples'),
(9, 'Laptop'),
(21, 'AC'),
(30, 'mouse'),
(32, 'Keyboard'),
(33, 'Isi Staples'),
(34, 'HVS'),
(35, 'Meja'),
(36, 'Kursi'),
(37, 'Kyoto Air Mail Tali K.310'),
(38, 'Kyoto Air Mail Tali K.312'),
(39, 'Merpati Mini (Isi 100)'),
(40, 'Merpati No.104 (Isi 100)'),
(41, 'Merpati No.90 (Isi 100'),
(42, 'Papperline Mini (isi 100)'),
(43, 'Papperline No.104 (isi 100)'),
(44, 'Papperline No.90 (Isi 100)'),
(45, 'Tricom 1/2 Folio (isi 100)'),
(46, 'Tricom A4 (isi 100)'),
(47, 'Tricom Folio (isi 100)'),
(48, 'Tricom Kabinet (isi 100)'),
(49, 'Tricom Map (Isi 100)'),
(50, 'Tricom Super Kabinet (Isi 100)'),
(51, 'Tricom Super Map (isi 100)'),
(52, 'Bolpenku Ulir'),
(53, 'Faster C-6'),
(54, 'Faster C-600'),
(55, 'Joyko 4 Warna Quaco 3'),
(56, 'Kenko 4 Warna'),
(57, 'Kenko Easy Gel'),
(58, 'Kenko Gel ke-200'),
(59, 'Kenko King Jeller li ke-100'),
(60, 'Kenko T-Gel ke-303'),
(61, 'Pillot Ball Liner'),
(62, 'Pillot Bptp'),
(63, 'Snowman Bp-7'),
(64, 'Snowman V5'),
(65, 'Snowman V7'),
(66, 'Standar Ae-7'),
(67, 'Standart B\'Gel'),
(68, 'Standart B\'Live'),
(69, 'Standart St-009 Ceramic Ball'),
(70, 'Standart Tecnogrip Ekstra Fine'),
(71, 'Tizo Gel Ink Pen Tg30901-D'),
(72, 'Tizo Gel Liner'),
(73, 'X-Data Pen M-1 (Lilin)'),
(74, 'Zebra Sarasa'),
(75, 'Kenko No. 105 (Isi 12)'),
(76, 'Kenko No. 107 (Isi 12)'),
(77, 'Kenko No. 111 (Isi 12)'),
(78, 'Kenko No. 155 (Isi 12)'),
(79, 'Kenko No. 200 (Isi12)'),
(80, 'Kenko No. 260 (Isi 12)'),
(81, 'Kenko No. 280 (Isi 6)'),
(82, 'Box file Plastik'),
(83, 'Booknote A5 50 Lbr'),
(84, 'Buku Kwitansi '),
(85, 'Gelatik Kembar Buku Batik Ekspedisi 100 Lbr'),
(86, 'Gelatik Kembar Buku Batik Ekspedisi 200 Lbr'),
(87, 'Gelatik Kembar Buku Batik Ekspedisi 50 Lbr'),
(88, 'Gelatik Kembar Buku Batik Folio 100 Lbr'),
(89, 'Gelatik Kembar Buku Batik Folio 200 Lbr'),
(90, 'Gelatik Kembar Buku Batik Folio 300 Lbr'),
(91, 'Gelatik Kembar Buku Batik Folio 50 Lbr'),
(92, 'Gelatik Kembar Buku Batik Kwarto 100 Lbr'),
(93, 'Gelatik Kembar Buku Batik Kwarto 200 Lbr'),
(94, 'Gelatik Kembar Buku Batik Kwarto 50 Lbr'),
(95, 'Gelatik Kembar Buku Batik Oktavo 200 Lbr'),
(96, 'Gelatik Kembar Buku Batik Oktavo 100 Lbr'),
(97, 'Isolasi'),
(98, 'Isolasi / Cellotape 1 x 72 Daimaru'),
(99, 'Isolasi / Cellotape 1/2 X 72 Daimaru'),
(100, 'Isolasi Double Tape 1\"'),
(101, 'Isolasi Double Tape 1/2\"'),
(102, 'Isolasi Double Tape 2\"'),
(103, 'Lakban Bening 2\" Daimaru'),
(104, 'Lakban Coklat 2\" Daimaru'),
(105, 'Lakban Hitam'),
(106, 'Lakban Hitam / Cloth Tape 1\" Daimaru'),
(107, 'Lakban Hitam / Cloth Tape 1,5\" Daimaru'),
(108, 'Lakban Hitam / Cloth Tape 2\" Daimaru'),
(109, 'Lakban Kertas / Masking Tape 1\" Daimaru'),
(110, 'Lakban Kertas / Masking Tape 2\" Daimaru'),
(111, 'Tipe Ex Kenko ke-01'),
(112, 'Tipex Roll Kenko Ct310Sl'),
(113, 'Tipex Roll Kenko Ct906'),
(114, 'Gunindo Cutter Besar A18'),
(115, 'Gunindo Cutter kecil Sc 9 A'),
(116, 'Kenko A 300'),
(117, 'Kenko isi Cutter A 300'),
(118, 'Kenko isi Cutter L 150'),
(119, 'Kenko L 500'),
(120, 'Gunindo Gunting Mm'),
(121, 'Gunindo Gunting Ss'),
(122, 'Kenko Gunting  Kecil Sc 828 N'),
(123, 'Kenko Gunting Tanggung sc-838 N'),
(124, 'Kenko Gunting Besar Sc-848 N'),
(125, 'Karbon Folio'),
(126, 'Kertas Bc'),
(127, 'Kertas Buram'),
(128, 'Kertas Continous Form Hi Print 2 Ply:3'),
(129, 'Kertas Continous Form Papperline 1 Ply:2'),
(130, 'Kertas Continous Form Papperline 3 Ply'),
(131, 'Kertas Continous Form Papperline Cf K3 W Prs'),
(132, 'Kertas Continuous Form Papperline Cf K1 Prs'),
(133, 'Kertas Continuous Form Papperline Cf K3 W'),
(134, 'Kertas Hvs A3 70 Gr'),
(135, 'Kertas Hvs A3 75 Gr'),
(136, 'Kertas Hvs A3 80 Gr'),
(137, 'Kertas Hvs A4 70 Gr'),
(138, 'Kertas Hvs A4 75 Gr'),
(139, 'Kertas Hvs A4 80 gr'),
(140, 'Kertas Hvs F4 60 Gr'),
(141, 'Kertas Hvs F4 70 Gr'),
(142, 'Kertas Hvs F4 75 Gr'),
(143, 'Kertas Hvs F4 80 Gr'),
(144, 'Kertas Hvs F5 '),
(145, 'Kertas Hvs warna F4 70 Gr warna'),
(146, 'Kertas Manila'),
(147, 'Kertas payung'),
(148, 'Kertas Photo Eprint A4 180gsm, isi 20lbr'),
(149, 'Kertas Photo Eprint A4 200gsm, isi 20lbr'),
(150, 'Kertas Photo Eprint A4 230gsm, isi 20lbr'),
(151, 'Kertas Photo Eprint A4 260gsm Silky, isi20lbr'),
(152, 'Kertas Photo Stiker'),
(153, 'Kertas Termarol 70 Mm'),
(154, 'Kertas Termarol 80 Mm'),
(155, 'Kertas Thermal 57X40'),
(156, 'Thermarol Thermal paper Roll 110x30000'),
(157, 'Kertas label Golden Cock'),
(158, 'Kertas Label Champion'),
(159, 'Lem Kertas Povinal'),
(160, 'Lem Cair Joyko 35 ml'),
(161, 'Lem cair Kenko 50 ml'),
(162, 'Lem Stick Kenko 8 gr'),
(163, 'Lem Stick Kenko 15 gr'),
(164, 'Lem Stick Kenko 25 gr'),
(165, 'Lem  Povinal Kecil 22 ml'),
(166, 'Stopmap Kertas'),
(167, 'Snelhecter Plastik Bening'),
(168, 'Stopmap Clear Holder'),
(169, 'Snelhecter Kertas'),
(170, 'Snelhecter Plastik / Business File'),
(171, 'Map Plastik / Clip File'),
(172, 'Map Gantung'),
(173, 'Map Sleting'),
(174, 'Spring File'),
(175, 'Map Zipper'),
(176, 'Map Batik'),
(177, 'Map Batik Kain'),
(178, 'Pp Pocket'),
(179, 'Order Bantex F4'),
(180, 'Odner Bindex F4'),
(181, 'Odner Forte F4'),
(182, 'Bantex Plastic Poket'),
(183, 'Gungyu Odner 401'),
(184, 'Kenko Trigonal No.3'),
(185, 'Kenko Paperclips No.5'),
(186, 'Kenko Paperclips No.1'),
(187, 'Serutan Pensil Joyko B-72'),
(188, 'Serutan Pensil Joyko B-23'),
(189, 'Butterfly Penggaris Plastik 30 Cm'),
(190, 'Kenko Penggaris Besi 30 Cm'),
(191, 'Penghapus Whiteboard Gunindo'),
(192, 'Penghapus Steadler B-40'),
(193, 'Penghapus Pensil Staedler'),
(194, 'Penghapus Whiteboard Enter'),
(195, 'Pensil 2B'),
(196, 'Pensil Biasa'),
(197, 'Pensil Warna'),
(198, 'Joyko Punch No. 40 XI'),
(199, 'Joyko Punch No. 30 XI'),
(200, 'Kenko Punch No. 30 XI'),
(201, 'Kenko Punch No. 40 XI'),
(202, 'Kenko Punch No.85'),
(203, 'Pita Ketik'),
(204, 'Snowman White Board Bg-12'),
(205, 'Snowman Permanent G-12'),
(206, 'Snowman Kecil Satuan'),
(207, 'Snowman Kecil 12 Warna Pw-12A'),
(208, 'Snowman Isi Tinta Spidol Permanent'),
(209, 'Snowman Isi Tinta Spidol White Board'),
(210, 'Snowman White Paint Marker Kecil Efwp-12'),
(211, 'Snowman White Paint Marker Besar Wp-12'),
(212, 'Snowman Gold Paint Marker Kecil Efgp-12'),
(213, 'Snowman Gold Paint Marker Besar Gp-12'),
(214, 'Snowman Silver Paint Marker Kecil Efsp-12'),
(215, 'Snowman Silver Paint Marker Besar Sp-12'),
(216, 'Joyko Bak Stampel No.0'),
(217, 'Kenko Bak Stampel No.1'),
(218, 'Joyko Bak Stampel No.2'),
(219, 'Hero Ungu'),
(220, 'Kenko Hd-10'),
(221, 'Kenko Hd-50'),
(222, 'Kenko Stapler 10D'),
(223, 'Kenko Stapler Mini Hd - 10S'),
(224, 'Kangaro Stapler Hs 10Y'),
(225, 'Kangaro isi Staples No.10'),
(226, 'Kangaro isi Staples No. 3 (24/6)'),
(227, 'Max isi Staples No. 10'),
(228, 'Max isi Staples No. 3 (24/6)'),
(229, 'Great Wall No. 10'),
(230, 'Great Wall No. 3'),
(231, 'Big Sticky Note Kecil 5 Warna Sn 7651 5W'),
(232, 'Tinta Stempel'),
(233, 'Tinta Epson T664 Black'),
(234, 'Tinta Epson T664 Cyan'),
(235, 'Tinta Epson T664 Magenta'),
(236, 'Tinta Epson T664 Yellow'),
(237, 'Tinta Epson T003 Black'),
(238, 'Tinta Epson T003 Cyan'),
(239, 'Tinta Epson T003 Magenta'),
(240, 'Tinta Epson T003 Yellow'),
(241, 'Tinta E Print For Canon 100Ml Black'),
(242, 'Tinta E Print For Canon 100Ml Cyan'),
(243, 'Tinta E Print For Canon 100Ml Magenta'),
(244, 'Tinta E Print For Canon 100Ml Yellow'),
(245, 'Tinta E Print For Canon 200Ml Black'),
(246, 'Tinta E Print For Canon 200Ml Cyan'),
(247, 'Tinta E Print For Canon 200Ml Magenta'),
(248, 'Tinta E Print For Canon 200Ml Yellow'),
(249, 'Tinta E Print For Epson 100Ml Black'),
(250, 'Tinta E Print For Epson 100Ml Cyan'),
(251, 'Tinta E Print For Epson 100Ml Magenta'),
(252, 'Tinta E Print For Epson 100Ml Yellow'),
(253, 'Zenith Isi Tinta Stampel'),
(254, 'Pyramid Isi Tinta Stampel'),
(255, 'SSD (Solid state drive)'),
(256, 'Webcam'),
(257, 'Prosessor Intel Core i5'),
(258, 'Memory (RAM)'),
(259, 'ARD Lift'),
(260, 'Genset'),
(261, 'Jasa Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `barang_satuan`
--

CREATE TABLE `barang_satuan` (
  `id` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `barang_satuan`
--

INSERT INTO `barang_satuan` (`id`, `satuan`) VALUES
(1, 'Pcs'),
(2, 'Buah'),
(3, 'Lbr'),
(4, 'Pak'),
(5, 'Kotak'),
(6, 'Roll'),
(7, 'Tube'),
(8, 'Dus'),
(9, 'Rim'),
(10, 'Botol'),
(11, 'Unit'),
(12, 'Set');

-- --------------------------------------------------------

--
-- Table structure for table `barang_temp`
--

CREATE TABLE `barang_temp` (
  `id_tmp` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `minggu` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id_golongan` int(11) NOT NULL,
  `kode_gol` varchar(10) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_golongan`, `kode_gol`, `keterangan`) VALUES
(1, '1', 'Golongan Persedian'),
(2, '2', 'Golongan Tanah'),
(3, '3', 'Golongan Peralatan dan Mesin'),
(4, '4', 'Golongan Gedung dan Bangunan'),
(5, '6', 'Golongan Aset Tetap Lainnya'),
(6, '7', 'Golongan Aset Tak Terwujud'),
(7, '8', 'Golongan Lainnya'),
(8, '5', 'Golongan Jaringan');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_divisi` varchar(255) NOT NULL,
  `nama_ketua` varchar(255) NOT NULL,
  `nik` varchar(28) NOT NULL,
  `ttd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_divisi`, `nama_ketua`, `nik`, `ttd`) VALUES
(1, 'Bagian Aset dan Kerumahtanggaan', 'Bugi Nugroho, S.Kom', '', 'IMG_20230603_113844.jpg'),
(2, 'Unit Pengadaan Barang', 'Bagus Adhi Kusuma, S.T., M.Eng', '', 'white1.jpg'),
(3, 'Direktorat Keuangan, Kepegawaian dan Aset', 'Catur Winarsih, S.Kom, M.M', '', 'white.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis_barang` int(11) NOT NULL,
  `jenis_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis_barang`, `jenis_barang`) VALUES
(1, 'Alat Rumah Tangga'),
(2, 'Alat Musik'),
(3, 'AC'),
(4, 'Alat Olahraga'),
(5, 'Almari Besi'),
(6, 'Almari Kaca'),
(7, 'Almari Kayu'),
(8, 'Almari Plastik'),
(9, 'Bangunan'),
(10, 'Buku Perpustakaan'),
(11, 'Genset'),
(12, 'Kendaraan Roda 2'),
(13, 'Kendaraan Roda 4'),
(14, 'Komputer'),
(15, 'Kulkas'),
(16, 'Kursi Besi'),
(17, 'Kursi Plastik'),
(18, 'Kursi Putar'),
(19, 'Laptop'),
(20, 'LCD Proyektor'),
(21, 'Meja Besi'),
(22, 'Meja Kayu'),
(23, 'Meja Komputer'),
(24, 'Mimbar'),
(25, 'Modem'),
(26, 'Monitor'),
(27, 'Multitester'),
(28, 'Papan Pengumuman'),
(29, 'PC All In One'),
(30, 'Printer'),
(31, 'Rak Besi'),
(32, 'Rak Kayu'),
(33, 'Router'),
(34, 'Scanner'),
(35, 'Server'),
(36, 'Speaker'),
(37, 'Stabiliser'),
(38, 'Switch'),
(39, 'Tanah'),
(40, 'Telepon'),
(41, 'TV'),
(42, 'UPS'),
(43, 'Vacuum Cleaner'),
(44, 'Wifi'),
(45, 'Sofa'),
(46, 'Dispenser'),
(47, 'Pigura'),
(48, 'Alat Tulis Kantor'),
(49, 'Amplifier'),
(50, 'Microphone'),
(51, 'Jam Dinding'),
(52, 'CPU'),
(53, 'Mouse'),
(54, 'Keyboard'),
(55, 'Video Spliter'),
(56, 'Televisi'),
(57, 'Video Swit'),
(58, 'Pot'),
(59, 'Backdrop'),
(60, 'Perlengkapan Ibadah'),
(61, 'Kursi Kayu'),
(62, 'Meja Kaca'),
(63, 'Hub'),
(64, 'Papan Tulis'),
(65, 'Spliter'),
(66, 'Barcode'),
(67, 'Osciloscop'),
(68, 'Arduino'),
(69, 'Mikrokontroler'),
(70, 'Alat Listrik'),
(71, 'USB'),
(72, 'Headset'),
(73, 'Dipan'),
(74, 'Simbul Negara'),
(75, 'Camera'),
(76, 'pen touch table'),
(77, 'recorder zoom'),
(78, 'AR'),
(79, 'tripod'),
(80, 'lensa'),
(81, 'audio'),
(82, 'VR Glass'),
(83, 'led strobe'),
(84, 'led flash'),
(85, 'slider camera'),
(86, 'sound card'),
(87, 'tas'),
(88, 'Battery camera'),
(89, 'Tas camera'),
(90, 'hardisk server'),
(91, 'LED Kotak'),
(92, 'Pengeras suara'),
(93, 'dvr'),
(94, 'Alat komunikasi'),
(95, 'Alat kebersihan'),
(96, 'Layar'),
(97, 'Alat waktu'),
(98, 'Alat Pemanas'),
(99, 'Pendingin Ruang'),
(103, 'makanan');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `id` int(11) NOT NULL,
  `golongan_id` int(11) NOT NULL,
  `kode_klas` varchar(10) NOT NULL,
  `keterangan_klas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`id`, `golongan_id`, `kode_klas`, `keterangan_klas`) VALUES
(1, 1, '01', 'Barang Pakai Habis'),
(2, 1, '02', 'Barang Tak Habis Pakai'),
(3, 1, '03', 'Barang Bekas di Pakai'),
(4, 2, '01', 'Tanah Untuk Bangunan Gedung Perdagangan'),
(5, 2, '02', 'Tanah Untuk Bangunan Tempat Kerja'),
(6, 2, '03', 'Tanah Untuk Bangunan Tempat Ibadah'),
(7, 2, '04', 'Tanah Untuk Lapangan dan Taman'),
(8, 3, '01', 'Alat Angkut'),
(9, 3, '02', 'Alat Bengkel dan Alat Ukur'),
(10, 3, '03', 'Alat Kantor dan RumahTangga'),
(11, 3, '04', 'Alat Laboratorium'),
(12, 3, '05', 'Alat Komputer'),
(13, 3, '06', 'Alat Studio, Komunikasi dan Pemancar'),
(14, 3, '07', 'Alat Kedokteran dan Kesehatan'),
(15, 4, '01', 'Bangunan Gedung');

-- --------------------------------------------------------

--
-- Table structure for table `lantai`
--

CREATE TABLE `lantai` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `lantai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lantai`
--

INSERT INTO `lantai` (`id`, `kode`, `lantai`) VALUES
(1, '1', '1'),
(2, '2', '2'),
(3, '3', '3'),
(4, '4', '4'),
(5, '5', '5'),
(6, '6', '6'),
(7, '7', '7');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `nama_menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `role_id`, `nama_menu`) VALUES
(1, 1, 'admin'),
(2, 2, 'divisi'),
(3, 3, 'upb'),
(4, 1, 'user'),
(5, 2, 'user'),
(6, 3, 'user'),
(7, 1, 'pengajuan'),
(8, 1, 'export'),
(9, 3, 'export'),
(10, 2, 'pengajuaan'),
(11, 3, 'pengajuan');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `total` varchar(255) DEFAULT NULL,
  `minggu` int(11) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `realisasi` varchar(255) DEFAULT NULL,
  `waktu_pengajuan` date DEFAULT NULL,
  `waktu_validasi` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'proses',
  `validasi` varchar(255) NOT NULL DEFAULT 'belum diterima',
  `keterangan` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `id_vendor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `barang_id`, `user_id`, `harga`, `jumlah`, `satuan`, `total`, `minggu`, `divisi`, `realisasi`, `waktu_pengajuan`, `waktu_validasi`, `status`, `validasi`, `keterangan`, `deskripsi`, `id_vendor`) VALUES
(142, 256, 1, '200000', '1', 'Buah', '200000', 3, 'Bagian Aset dan Kerumahtanggaan', '', '2023-06-20', NULL, 'proses', 'belum diterima', NULL, 'Merek SPC', NULL),
(143, 255, 1, '300000', '2', 'Buah', '600000', 3, 'Bagian Aset dan Kerumahtanggaan', NULL, '2023-06-20', NULL, 'proses', 'belum diterima', NULL, '', NULL),
(144, 258, 1, '500000', '1', 'Buah', '500000', 3, 'Bagian Aset dan Kerumahtanggaan', NULL, '2023-06-20', NULL, 'proses', 'belum diterima', NULL, '8 GB DDR 3', NULL),
(145, 257, 1, '1500000', '1', 'Buah', '1500000', 3, 'Bagian Aset dan Kerumahtanggaan', NULL, '2023-06-20', NULL, 'proses', 'belum diterima', NULL, 'Intel Core I5', NULL),
(149, 255, 15, '300000', '1', 'Unit', '300000', 3, 'Bagian-Aset-dan-Kerumahtanggan', '1', '2023-06-20', '2023-06-21', 'Disetujui keuangan', 'belum diterima', NULL, '256', 3),
(150, 256, 15, '200000', '1', 'Unit', '200000', 3, 'Bagian-Aset-dan-Kerumahtanggan', '1', '2023-06-20', '2023-06-21', 'Disetujui keuangan', 'belum diterima', NULL, 'SPC', 6),
(151, 257, 15, '1500000', '1', 'Unit', '1500000', 3, 'Bagian-Aset-dan-Kerumahtanggan', '1', '2023-06-20', '2023-06-21', 'Disetujui keuangan', 'belum diterima', NULL, 'Intel i5 Soket 1155', 7),
(152, 258, 15, '140900', '1', 'Unit', '140900', 3, 'Bagian-Aset-dan-Kerumahtanggan', '1', '2023-06-20', '2023-06-21', 'Disetujui keuangan', 'belum diterima', NULL, '8 GB DDR 3', 8),
(153, 255, 15, '300000', '1', 'Unit', '300000', 3, 'Bagian-Aset-dan-Kerumahtanggan', '1', '2023-06-20', '2023-06-21', 'Disetujui keuangan', 'belum diterima', NULL, '256', 0),
(154, 259, 15, '25000000', '1', 'Unit', '25000000', 3, 'Bagian-Aset-dan-Kerumahtanggan', '1', '2023-06-21', NULL, 'Diusulkan keuangan', 'belum diterima', NULL, '', NULL),
(155, 261, 15, '3774000', '2', 'Unit', '7548000', 3, 'Bagian-Aset-dan-Kerumahtanggan', '2', '2023-06-21', NULL, 'Diusulkan keuangan', 'belum diterima', NULL, 'Jasa Maintenance Lift Gd. Utara utk 2 bulan Juli-Agustus', NULL),
(156, 260, 15, '1277909700', '1', 'Unit', '1277909700', 3, 'Bagian-Aset-dan-Kerumahtanggan', '1', '2023-06-21', NULL, 'Diusulkan keuangan', 'belum diterima', NULL, '2 unit Genset untuk Gedung Utama dan Gedung Satu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subklasifikasi`
--

CREATE TABLE `subklasifikasi` (
  `id` int(11) NOT NULL,
  `id_klasifikasi` int(11) NOT NULL,
  `kode_subklasifikasi` varchar(10) NOT NULL,
  `keterangan_subklas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subklasifikasi`
--

INSERT INTO `subklasifikasi` (`id`, `id_klasifikasi`, `kode_subklasifikasi`, `keterangan_subklas`) VALUES
(1, 1, '01', 'Bahan Bangunan dan Konstruksi'),
(2, 1, '02', 'Bahan Bakar dan Pelumas'),
(3, 1, '03', 'Suku Cadang'),
(4, 1, '04', 'Alat Tulis Kantor'),
(5, 1, '05', 'Bahan Komputer'),
(6, 1, '06', 'Perabot Kantor'),
(7, 1, '07', 'Alat Listrik'),
(8, 2, '01', 'Komponen Peralatan'),
(9, 2, '02', 'Pipa'),
(10, 2, '03', 'Rambu-Rambu Lalu Lintas'),
(11, 3, '01', 'Komponen Bekas'),
(12, 3, '02', 'Pipa Bekas'),
(13, 4, '01', 'Tanah Bangunan Pertokoan/Rumah Toko/ Koperasi'),
(14, 4, '02', 'Tanah Bangunan Garasi/ Pool'),
(15, 4, '03', 'Tanah Bangunan Gudang'),
(16, 5, '01', 'Tanah Bangunan Kantor'),
(17, 5, '02', 'Tanah Bangunan Pos Jaga'),
(18, 5, '03', 'Tanah Bangunan Gedung Perpustakaan'),
(19, 6, '01', 'Tanah untuk Bangunan Masjid'),
(20, 6, '02', 'Tanah untuk Bangunan Mushola'),
(21, 7, '01', 'Tanah Untuk Lapangan Olah Raga'),
(22, 7, '02', 'Tanah Untuk Lapangan Parkir'),
(23, 7, '03', 'Tanah Untuk Taman'),
(24, 8, '01', 'Mobil'),
(25, 8, '02', 'Sepeda Motor'),
(26, 9, '01', 'Bor Listrik'),
(27, 9, '02', 'Gerindra Listrik'),
(28, 9, '03', 'Las Listrik'),
(29, 9, '04', 'Tanggem'),
(30, 9, '05', 'Palu'),
(31, 9, '06', 'Tang'),
(32, 9, '07', 'Gergaji'),
(33, 9, '08', 'Meteran'),
(34, 9, '09', 'Obeng'),
(35, 9, '10', 'Kunci'),
(36, 10, '01', 'Kursi Besi/Metal'),
(37, 10, '02', 'kursi Putar'),
(38, 10, '03', 'Meja Besi'),
(39, 10, '04', 'Meja Kayu'),
(40, 10, '05', 'Meja Komputer'),
(41, 10, '06', 'Almari Besi/Metal'),
(42, 10, '07', 'Almari Kayu'),
(43, 10, '08', 'Almari Kaca'),
(44, 10, '09', 'Rak Besi'),
(45, 10, '10', 'Rak Kayu'),
(46, 10, '11', 'Papan Tulis'),
(47, 10, '12', 'Papan Informasi'),
(48, 10, '13', 'Backdrop'),
(49, 10, '14', 'Gantungan'),
(50, 10, '15', 'Tempat Bendera'),
(51, 10, '16', 'Tiang Bendera'),
(52, 10, '17', 'Pigura'),
(53, 10, '18', 'Tempat Sampah'),
(54, 10, '19', 'APAR'),
(55, 10, '20', 'Air Conditioning (AC)'),
(56, 10, '21', 'Kipas Angin'),
(57, 10, '22', 'Televisi'),
(58, 10, '23', 'Pot'),
(59, 11, '01', 'Avometer'),
(60, 11, '02', 'Osciloscop'),
(61, 11, '03', 'Tang Ampere'),
(62, 11, '04', 'Barcode'),
(63, 12, '01', 'Personal Komputer (PC)'),
(64, 12, '02', 'Server'),
(65, 12, '03', 'Laptop'),
(66, 12, '04', 'Monitor'),
(67, 12, '05', 'Hardisk Eksternal'),
(68, 12, '06', 'Stabilizer'),
(69, 12, '07', 'Printer'),
(70, 12, '08', 'Hub'),
(71, 12, '09', 'Headphone'),
(72, 12, '10', 'Webcam'),
(73, 12, '11', 'Speaker'),
(74, 12, '12', 'Amplifier'),
(75, 12, '13', 'DVD Player'),
(76, 12, '14', 'LCD Proyektor'),
(77, 12, '15', 'DVD SCTV'),
(78, 12, '16', 'CCTV'),
(79, 12, '17', 'Mesin Fotocopy'),
(80, 12, '18', 'Barcode'),
(81, 12, '19', 'Modem'),
(82, 12, '20', 'UPS'),
(83, 12, '21', 'USB'),
(84, 12, '22', 'Spliter '),
(85, 13, '01', 'Audio Mixer'),
(86, 13, '02', 'Equalizer'),
(87, 13, '03', 'Bass processor'),
(88, 13, '04', 'Compressor'),
(89, 13, '05', 'Crossover'),
(90, 13, '06', 'Power Amplifier'),
(91, 13, '07', 'Box Sound System'),
(92, 13, '08', 'Stabilizer'),
(93, 13, '09', 'Speaker treebel'),
(94, 13, '10', 'Speaker Bass'),
(95, 13, '11', 'Michrophone'),
(96, 13, '12', 'Sound card'),
(97, 13, '13', 'Microphone condesor'),
(99, 13, '15', 'Stand Mic Arm Suspensi'),
(101, 13, '17', 'Tripod'),
(102, 13, '18', 'Mesin Pemancar Radio'),
(103, 13, '19', 'Mesin Pemancar Televisi'),
(104, 13, '20', 'Pesawat Telephone'),
(105, 13, '21', 'Faximile'),
(106, 13, '22', 'Radio'),
(107, 13, '23', 'Televisi'),
(108, 13, '24', 'Camera Digital'),
(109, 14, '01', 'Thermogun'),
(110, 14, '02', 'Genose C19'),
(111, 15, '01', 'Bangunan Gedung Tempat Kerja'),
(112, 15, '02', 'Bangunan Gedung Pertokoan'),
(113, 15, '03', 'Bangunan Gedung Untuk Pos Jaga'),
(114, 15, '04', 'Bangunan Gedung Untuk Tempat Ibadah'),
(115, 10, '24', 'Sofa'),
(116, 10, '25', 'Dispenser'),
(117, 10, '26', 'Jam Dinding'),
(118, 12, '23', 'Video Swit'),
(119, 12, '24', 'Mouse'),
(120, 12, '25', 'Keyboard'),
(121, 12, '26', 'Video Spliter'),
(122, 12, '27', 'Switch hub'),
(123, 10, '27', 'Scanner'),
(124, 2, '04', 'Perlengkapan Olahraga'),
(125, 2, '05', 'Perlengkapan Ibadah'),
(126, 10, '28', 'Kursi Kayu'),
(127, 10, '29', 'Meja Kaca'),
(128, 11, '05', 'Arduino'),
(129, 2, '06', 'Alat Musik'),
(130, 10, '30', 'Dipan'),
(131, 13, '25', 'AR'),
(132, 13, '26', 'Lensa'),
(133, 13, '27', 'Tripod'),
(134, 13, '28', 'VR'),
(135, 13, '29', 'Slider'),
(136, 13, '30', 'LED Flash'),
(137, 13, '31', 'LED Strobe'),
(138, 13, '32', 'Audio Home Theater'),
(139, 13, '33', 'Pen Touch Table'),
(140, 13, '34', 'Battery camera'),
(141, 13, '35', 'recorder'),
(142, 13, '36', 'Tas Camera'),
(143, 13, '37', 'Tas alat'),
(144, 12, '28', 'Hardisk server'),
(145, 13, '38', 'LED Kotak'),
(146, 2, '07', 'Alat kebersihan'),
(147, 13, '39', 'DVR'),
(148, 13, '40', 'Layar LCD'),
(149, 10, '31', 'Fan');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(11) NOT NULL,
  `kode_surat` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `kode_surat`, `tanggal_surat`) VALUES
(1, '001/PR/AMIKOMPWT/UPB/VII/2023', '2023-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `suratkeluar`
--

CREATE TABLE `suratkeluar` (
  `id_suratkeluar` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tujuan_pengiriman` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `suratmasuk`
--

CREATE TABLE `suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `surat_ba`
--

CREATE TABLE `surat_ba` (
  `id_surat` int(11) NOT NULL,
  `kode_surat` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_po`
--

CREATE TABLE `surat_po` (
  `id_surat` int(11) NOT NULL,
  `kode_surat` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `surat_po`
--

INSERT INTO `surat_po` (`id_surat`, `kode_surat`, `tanggal_surat`) VALUES
(1, '001/PO/AMIKOMPWT/UPB/VII/2023', '2023-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bangunan`
--

CREATE TABLE `tbl_bangunan` (
  `id_bangunan` int(11) NOT NULL,
  `id_lahan` int(11) DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `tanggal_pembukuan` varchar(30) DEFAULT NULL,
  `kode_bangunan` varchar(100) DEFAULT NULL,
  `nama_bangunan` varchar(200) DEFAULT NULL,
  `luas_bangunan` varchar(100) DEFAULT NULL,
  `id_asal_barang` int(11) DEFAULT NULL,
  `tahun_perolehan` varchar(4) DEFAULT NULL,
  `tanggal_perolehan` varchar(30) DEFAULT NULL,
  `harga_perolehan` varchar(100) DEFAULT NULL,
  `kapasitas_internet` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `foto_bangunan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_bangunan`
--

INSERT INTO `tbl_bangunan` (`id_bangunan`, `id_lahan`, `kode_barang`, `tanggal_pembukuan`, `kode_bangunan`, `nama_bangunan`, `luas_bangunan`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `harga_perolehan`, `kapasitas_internet`, `keterangan`, `foto_bangunan`) VALUES
(13, 13, '2.02.01/01.2013', '', '1', 'Gedung 1', '4590', 1, '2013', '', '', '', '', ''),
(14, 16, '2.02.01/01.2022', '', '2', 'Gedung Utama', '4918', 1, '2022', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `id_ruangan` int(11) DEFAULT NULL,
  `id_subklasifikasi` int(11) DEFAULT NULL,
  `kode_lokasi` varchar(100) DEFAULT NULL,
  `kode_barang` varchar(100) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `satuan_barang` varchar(128) DEFAULT NULL,
  `spesifikasi_teknis` text DEFAULT NULL,
  `serial_number` varchar(200) DEFAULT NULL,
  `model_number` varchar(200) DEFAULT NULL,
  `id_asal_barang` int(11) DEFAULT NULL,
  `tahun_perolehan` varchar(4) DEFAULT NULL,
  `tanggal_perolehan` varchar(20) DEFAULT NULL,
  `harga_perolehan` varchar(100) DEFAULT NULL,
  `keadaan_barang` varchar(10) DEFAULT NULL,
  `peruntukan` varchar(200) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `id_jenis_barang` int(11) DEFAULT NULL,
  `foto_barang` varchar(100) DEFAULT NULL,
  `cetak` varchar(128) NOT NULL DEFAULT 'belum tercetak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `id_ruangan`, `id_subklasifikasi`, `kode_lokasi`, `kode_barang`, `nama_barang`, `jumlah_barang`, `satuan_barang`, `spesifikasi_teknis`, `serial_number`, `model_number`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `harga_perolehan`, `keadaan_barang`, `peruntukan`, `keterangan`, `id_jenis_barang`, `foto_barang`, `cetak`) VALUES
(16, 23, 39, '1.001', '3.03.04/01.2010', 'Meja Dekan', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(17, 23, 39, '1.001', '3.03.04/01.2010', 'Meja Karyawan B “SBF', 5, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(18, 23, 39, '1.001', '3.03.04/01.2010', 'Meja Karyawan C “SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(19, 23, 40, '1.001', '3.03.05/01.2010', 'Meja computer “SBF', 5, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 23, '', 'belum tercetak'),
(20, 23, 42, '1.001', '3.03.07/01.2010', 'Almari Bufet A “SBF', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(21, 23, 42, '1.001', '3.03.07/01.2010', 'Almari geser B “SBF', 4, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(22, 23, 37, '1.001', '3.03.02/01.2010', 'Kursi Dekan', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(23, 24, 39, '1.002', '3.03.04/01.2010', 'Meja Karyawan tipe A \"SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(24, 24, 39, '1.002', '3.03.04/01.2010', 'Meja Karyawan tipe B \"SBF', 7, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(25, 25, 36, '1.003', '3.03.01/01.2010', 'Kursi kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(26, 24, 39, '1.002', '3.03.04/01.2010', 'Meja Printer tipe C \"SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(27, 25, 36, '1.003', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(28, 25, 39, '1.003', '3.03.04/01.2010', 'Meja Dosen \"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(29, 24, 39, '1.002', '3.03.04/01.2010', 'Meja Kecil \"Bikin Sendiri ', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(30, 24, 115, '1.002', '3.03.24/01.2010', 'Sofa Tipe B \"SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(32, 23, 37, '1.001', '3.03.02/01.2010', 'Kursi Wakil Dekan', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(33, 24, 42, '1.002', '3.03.07/01.2010', 'Almari geser tipe B \"SBF', 4, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(34, 23, 37, '1.001', '3.03.02/01.2010', 'Kursi Putar karyawan tipe B, Chitose', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(35, 24, 43, '1.002', '3.03.08/01.2010', 'Almari kaca \"SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(36, 23, 36, '1.001', '3.03.01/01.2010', 'Kursi biru “Futura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 17, '', 'belum tercetak'),
(37, 23, 36, '1.001', '3.03.01/01.2010', 'Kursi biru –S “Chitose', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 17, '', 'belum tercetak'),
(38, 24, 42, '1.002', '3.03.07/01.2010', 'Almari loker tipe B \"SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(39, 23, 36, '1.001', '3.03.01/01.2010', 'Kursi lipat biasa “Chitose', 5, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(40, 23, 115, '1.001', '3.03.24/01.2010', 'Kursi sofa Tipe A “SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(41, 24, 37, '1.002', '3.03.02/01.2010', 'Kursi putar karyawan tipe A \"Chitose', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(42, 24, 37, '1.002', '3.03.02/01.2010', 'Kursi putar karyawan tipe B \"Chitose', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(43, 24, 36, '1.002', '3.03.01/01.2010', 'Kursi biru S ', 7, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(44, 23, 5, '1.001', '1.01.05/01.2010', 'CPU intel Core 2 duo E4600', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'Sudah tercetak'),
(45, 24, 36, '1.002', '3.03.01/01.2010', 'Kursi biru \"Futura ', 8, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(46, 24, 5, '1.002', '1.01.05/01.2010', 'CPU intel core 2 duo', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'Sudah tercetak'),
(47, 23, 5, '1.001', '1.01.05/01.2010', 'CPU Pentium dual core', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(48, 23, 5, '1.001', '1.01.05/01.2010', 'CPU intel core Tm i3 4150', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(49, 24, 5, '1.002', '1.01.05/01.2010', 'CPU intel Pentium dual E2700', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'Sudah tercetak'),
(50, 23, 66, '1.001', '3.05.04/01.2010', 'Monitor 19” Asus', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(51, 23, 66, '1.001', '3.05.04/01.2010', 'Monitor 14” Acer', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(52, 24, 66, '1.002', '3.05.04/01.2010', 'Monitor 19\"Dell', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(53, 23, 66, '1.001', '3.05.04/01.2010', 'Monitor 14” Inforce', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(54, 24, 66, '1.002', '3.05.04/01.2010', 'Monitor 14\"Acer', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(55, 23, 66, '1.001', '3.05.04/01.2010', 'Monitor 14” GTC', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(56, 24, 66, '1.002', '3.05.04/01.2010', 'Monitor 14\"View Sonic', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(57, 24, 69, '1.002', '3.05.07/01.2010', 'Printer EPSON type L 3110', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(58, 24, 104, '1.002', '3.06.20/01.2010', 'Pesawat Telephone -Panasonic KX-T2371MX', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(59, 24, 55, '1.002', '3.03.20/01.2010', 'Air Conditioning 2 Pk Panasonic', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(61, 24, 116, '1.002', '3.03.25/01.2010', 'Dispenser “Miyako', 1, 'Unit', '', '', '', 1, '2010', '', '-1', 'Baik', '', '', 1, '', 'belum tercetak'),
(62, 24, 52, '1.002', '3.03.17/01.2010', 'Pigura besar Struktur Organisasi', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(63, 23, 66, '1.001', '3.05.04/01.2010', 'Monitor 14”LG', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(64, 24, 52, '1.002', '3.03.17/01.2010', 'Pigura Foto 10R', 10, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(65, 23, 104, '1.001', '3.06.20/01.2010', 'Pesawat Telephone –Panasonic KX-T2371MX', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(66, 24, 53, '1.002', '3.03.18/01.2010', 'Tempat Sampah', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(67, 23, 116, '1.001', '3.03.25/01.2010', 'Dispenser “Miyako', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(68, 23, 55, '1.001', '3.03.20/01.2010', 'Air Conditioning 2 Pk “Panasonic', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(69, 23, 53, '1.001', '3.03.18/01.2010', 'Tempat sampah “lionstar', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(70, 23, 117, '1.001', '3.03.26/01.2010', 'Jam dinding “standart', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(71, 25, 4, '1.003', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(72, 25, 4, '1.003', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(73, 25, 117, '1.003', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(74, 25, 55, '1.003', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(75, 25, 85, '1.003', '3.06.01/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(76, 25, 73, '1.003', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(77, 25, 95, '1.003', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(78, 25, 76, '1.003', '3.05.14/01.2010', 'LCD Proyektor ‘Epson EB-X-300', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(79, 25, 5, '1.003', '1.01.05/01.2010', 'CPU Intel core 2 Duo', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(80, 25, 66, '1.003', '3.05.04/01.2010', 'Monitor LG 19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(81, 25, 119, '1.003', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(82, 25, 120, '1.003', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(83, 25, 73, '1.003', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(84, 25, 118, '1.003', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(85, 25, 121, '1.003', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(86, 25, 52, '1.003', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(87, 26, 36, '1.004', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(88, 26, 36, '1.004', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(89, 26, 39, '1.004', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(90, 26, 4, '1.004', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(91, 26, 4, '1.004', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(92, 26, 117, '1.004', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(93, 26, 55, '1.004', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(94, 26, 74, '1.004', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(95, 26, 73, '1.004', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(96, 26, 95, '1.004', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(97, 26, 76, '1.004', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(98, 26, 5, '1.004', '1.01.05/01.2010', 'CPU Intel core 2 Duo', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(99, 26, 66, '1.004', '3.05.04/01.2010', 'Monitor LG 19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(100, 26, 119, '1.004', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(101, 26, 120, '1.004', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(102, 26, 73, '1.004', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(103, 26, 118, '1.004', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(104, 26, 121, '1.004', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(105, 26, 52, '1.004', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(106, 27, 36, '1.005', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(107, 27, 36, '1.005', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(108, 27, 39, '1.005', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(109, 27, 4, '1.005', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(110, 27, 4, '1.005', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(111, 27, 117, '1.005', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(112, 27, 55, '1.005', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(113, 27, 74, '1.005', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(114, 27, 73, '1.005', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(115, 27, 76, '1.005', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB280XGA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(116, 27, 5, '1.005', '1.01.05/01.2010', 'CPU Intel core 2 Duo', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(117, 27, 66, '1.005', '3.05.04/01.2010', 'Monitor LG 19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(118, 27, 119, '1.005', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(119, 27, 120, '1.005', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(120, 27, 73, '1.005', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(121, 27, 118, '1.005', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(122, 27, 121, '1.005', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(123, 27, 52, '1.005', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(124, 28, 36, '1.006', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(125, 28, 36, '1.006', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(126, 28, 39, '1.006', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(127, 28, 4, '1.006', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(128, 28, 4, '1.006', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(129, 28, 117, '1.006', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(130, 28, 55, '1.006', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(131, 28, 74, '1.006', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(132, 28, 73, '1.006', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(133, 28, 95, '1.006', '3.06.11/01.2010', 'Mic “TOA- ZM260', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(134, 28, 76, '1.006', '3.05.14/01.2010', 'LCD Proyektor ‘Epson EB-X-300', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(135, 28, 5, '1.006', '1.01.05/01.2010', 'CPU Core duo E7500', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(136, 28, 66, '1.006', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(137, 28, 119, '1.006', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(138, 28, 120, '1.006', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(139, 28, 118, '1.006', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(140, 28, 121, '1.006', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(141, 28, 52, '1.006', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(142, 29, 36, '1.007', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(143, 29, 36, '1.007', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(144, 29, 39, '1.007', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(145, 29, 4, '1.007', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(146, 29, 4, '1.007', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(147, 29, 117, '1.007', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(148, 29, 55, '1.007', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(149, 29, 74, '1.007', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(150, 29, 73, '1.007', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(151, 29, 95, '1.007', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(152, 29, 76, '1.007', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(153, 29, 5, '1.007', '1.01.05/01.2010', 'CPU Intel core 2 Duo', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(154, 29, 66, '1.007', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(155, 29, 119, '1.007', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(156, 50, 39, '1.027', '3.03.04/01.2010', 'Meja Karyawan \"Olimpic', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(157, 29, 120, '1.007', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(158, 50, 36, '1.027', '3.03.01/01.2010', 'Kursi Biru \"Futura', 17, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(159, 29, 73, '1.007', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(160, 29, 118, '1.007', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(161, 50, 36, '1.027', '3.03.01/01.2010', 'Kursi Biasa \"Chitose', 21, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(162, 29, 121, '1.007', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(163, 29, 52, '1.007', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(164, 50, 57, '1.027', '3.03.22/01.2010', 'Televisi 55 inc \"SAMSUNG', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 56, '', 'belum tercetak'),
(165, 50, 55, '1.027', '3.03.20/01.2010', 'Air Conditioning 1,5 pk \"Panasonic', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(166, 50, 117, '1.027', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(167, 50, 53, '1.027', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(168, 30, 36, '1.008', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(169, 30, 36, '1.008', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(170, 30, 39, '1.008', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(171, 30, 4, '1.008', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(172, 30, 4, '1.008', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(173, 30, 117, '1.008', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(174, 30, 55, '1.008', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(175, 30, 74, '1.008', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(176, 30, 73, '1.008', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(177, 30, 95, '1.008', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(178, 30, 76, '1.008', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(179, 30, 5, '1.008', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(180, 30, 66, '1.008', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(181, 30, 119, '1.008', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(182, 30, 120, '1.008', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(183, 30, 73, '1.008', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(184, 51, 39, '1.028', '3.03.04/01.2010', 'Meja Karyawan \"Olimpic', 3, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 22, NULL, 'belum tercetak'),
(185, 30, 118, '1.008', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(186, 30, 121, '1.008', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(187, 30, 52, '1.008', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(188, 31, 36, '1.009', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(189, 31, 36, '1.009', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(190, 31, 39, '1.009', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(191, 31, 4, '1.009', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(192, 31, 4, '1.009', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(193, 31, 117, '1.009', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(194, 31, 55, '1.009', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(195, 51, 36, '1.028', '3.03.01/01.2010', 'Kursi Biru \"Futura', 17, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 16, NULL, 'belum tercetak'),
(196, 31, 74, '1.009', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(197, 31, 73, '1.009', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(198, 31, 95, '1.009', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(199, 31, 76, '1.009', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(200, 31, 5, '1.009', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(201, 31, 66, '1.009', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(202, 51, 36, '1.028', '3.03.01/01.2010', 'Kursi Biasa \"Chitose', 21, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 16, NULL, 'belum tercetak'),
(203, 31, 119, '1.009', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(204, 31, 120, '1.009', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(205, 31, 73, '1.009', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(206, 31, 118, '1.009', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(207, 31, 121, '1.009', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(208, 31, 52, '1.009', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(209, 51, 57, '1.028', '3.03.22/01.2010', 'Televisi 55 inc \"SAMSUNG', 1, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 56, NULL, 'belum tercetak'),
(210, 32, 36, '1.010', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(211, 32, 36, '1.010', '3.03.01/01.2010', 'Kursi Dosen ', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(212, 32, 39, '1.010', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(213, 32, 4, '1.010', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(214, 51, 55, '1.028', '3.03.20/01.2010', 'Air Conditioning 1,5 pk \"Panasonic', 1, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 3, NULL, 'belum tercetak'),
(215, 32, 4, '1.010', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(216, 32, 117, '1.010', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(217, 51, 117, '1.028', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(218, 32, 55, '1.010', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(219, 32, 74, '1.010', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(220, 51, 53, '1.028', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 1, NULL, 'belum tercetak'),
(221, 32, 73, '1.010', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(222, 32, 95, '1.010', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(223, 32, 76, '1.010', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(224, 32, 5, '1.010', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(225, 32, 66, '1.010', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(226, 32, 119, '1.010', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(227, 32, 120, '1.010', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(228, 32, 73, '1.010', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(229, 52, 39, '1.029', '3.03.04/01.2010', 'Meja Karyawan \"Olimpic', 3, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 22, NULL, 'belum tercetak'),
(230, 52, 36, '1.029', '3.03.01/01.2010', 'Kursi Biru \"Futura', 17, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 16, NULL, 'belum tercetak'),
(231, 52, 36, '1.029', '3.03.01/01.2010', 'Kursi Biasa \"Chitose', 21, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 16, NULL, 'belum tercetak'),
(232, 32, 118, '1.010', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(233, 52, 57, '1.029', '3.03.22/01.2010', 'Televisi 55 inc \"SAMSUNG', 1, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 56, NULL, 'belum tercetak'),
(234, 52, 55, '1.029', '3.03.20/01.2010', 'Air Conditioning 1,5 pk \"Panasonic', 1, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 3, NULL, 'belum tercetak'),
(235, 52, 117, '1.029', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(236, 32, 121, '1.010', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(237, 52, 53, '1.029', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 1, NULL, 'belum tercetak'),
(238, 32, 52, '1.010', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(246, 33, 36, '1.011', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(247, 33, 36, '1.011', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(248, 33, 39, '1.011', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(249, 33, 4, '1.011', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(250, 33, 4, '1.011', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(251, 33, 117, '1.011', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(252, 33, 55, '1.011', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(253, 33, 74, '1.011', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(254, 33, 73, '1.011', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(255, 33, 95, '1.011', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(256, 33, 76, '1.011', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(257, 33, 5, '1.011', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(258, 54, 39, '1.031', '3.03.04/01.2010', 'Meja Karyawan \"Olimpic', 4, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 22, NULL, 'belum tercetak'),
(259, 33, 66, '1.011', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(260, 54, 36, '1.031', '3.03.01/01.2010', 'Kursi Biasa \"Chitose', 10, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 16, NULL, 'belum tercetak'),
(261, 33, 119, '1.011', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(262, 33, 120, '1.011', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(263, 33, 73, '1.011', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(264, 33, 118, '1.011', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(265, 33, 121, '1.011', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(266, 33, 52, '1.011', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(267, 34, 36, '1.012', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(268, 34, 36, '1.012', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(269, 34, 39, '1.012', '3.03.04/01.2010', 'Meja Dosen\"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(270, 34, 4, '1.012', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(271, 54, 55, '1.031', '3.03.20/01.2010', 'Air Conditioning 1,5 pk \"Panasonic', 1, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 3, NULL, 'belum tercetak'),
(272, 34, 4, '1.012', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(273, 54, 117, '1.031', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(274, 54, 117, '1.031', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(275, 34, 117, '1.012', '3.03.26/01.2010', 'Jam dinding  “Standart”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(276, 54, 53, '1.031', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 1, NULL, 'belum tercetak'),
(277, 34, 55, '1.012', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(278, 34, 74, '1.012', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(279, 34, 73, '1.012', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(280, 34, 95, '1.012', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(281, 34, 76, '1.012', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(282, 34, 5, '1.012', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(283, 34, 66, '1.012', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(284, 34, 119, '1.012', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(285, 34, 120, '1.012', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(286, 34, 73, '1.012', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(287, 34, 118, '1.012', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(288, 34, 121, '1.012', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(289, 34, 52, '1.012', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(290, 54, 5, '1.031', '1.01.05/01.2010', 'CPU Core i3', 2, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 52, NULL, 'belum tercetak'),
(291, 54, 69, '1.031', '3.05.07/01.2010', 'Printer Canon', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 30, NULL, 'belum tercetak'),
(292, 35, 36, '1.013', '3.03.01/01.2010', 'Kursi kuliah “Chitose”', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(293, 35, 36, '1.013', '3.03.01/01.2010', 'Kursi Dosen “Futura”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(294, 35, 39, '1.013', '3.03.04/01.2010', 'Meja Dosen \"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(295, 35, 4, '1.013', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(296, 35, 4, '1.013', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(297, 35, 117, '1.013', '3.03.26/01.2010', 'Jam Dinding \"Standart\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(298, 35, 55, '1.013', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(299, 35, 74, '1.013', '3.05.12/01.2010', 'Amplifier \"TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(300, 35, 73, '1.013', '3.05.11/01.2010', 'Speaker \"TOA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(301, 55, 39, '1.032', '3.03.04/01.2010', 'Meja Karyawan tipe B “SBF', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(302, 55, 43, '1.032', '3.03.08/01.2010', 'Almari Kaca Sedang “SBF', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(303, 55, 42, '1.032', '3.03.07/01.2010', 'Almari geser sedang “SBF', 4, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(304, 55, 37, '1.032', '3.03.02/01.2010', 'Kursi putar karyawan tipe A Chitose', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(305, 55, 37, '1.032', '3.03.02/01.2010', 'Kursi Putar karyawan tipe B, Chitose', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(306, 55, 36, '1.032', '3.03.01/01.2010', 'Kursi biru “Futura', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(307, 55, 41, '1.032', '3.03.06/01.2010', 'Almari Brankas', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 5, '', 'belum tercetak'),
(308, 55, 55, '1.032', '3.03.20/01.2010', 'Air conditioning 1 pk “LG', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(309, 55, 104, '1.032', '3.06.20/01.2010', 'Pesawat Telephone –Panasonic KX-T2371MX', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(310, 55, 5, '1.032', '1.01.05/01.2010', 'CPU Pentium dual E2200', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(311, 55, 5, '1.032', '1.01.05/01.2010', 'CPU Core TM i3 4150', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(312, 35, 95, '1.013', '3.06.11/01.2010', 'Mic \"TOA- ZM270 ', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(313, 35, 76, '1.013', '3.05.14/01.2010', 'LCD Proyektor \'Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(314, 55, 66, '1.032', '3.05.04/01.2010', 'Monitor 14” Acer', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(315, 55, 66, '1.032', '3.05.04/01.2010', 'Monitor 14” View Sonic', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(316, 35, 5, '1.013', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(317, 55, 69, '1.032', '3.05.07/01.2010', 'Printer Cannon Pixma MP258', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(318, 35, 66, '1.013', '3.05.04/01.2010', 'Monitor LG\"19\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(319, 35, 119, '1.013', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(320, 55, 122, '1.032', '3.05.27/01.2010', 'Switch Hub TPLink 4 port', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(321, 35, 120, '1.013', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(322, 55, 53, '1.032', '3.03.18/01.2010', 'Tempat sampah “lionstar', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(323, 35, 73, '1.013', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(324, 35, 118, '1.013', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(325, 56, 39, '1.033', '3.03.04/01.2010', 'Meja Karyawan tipe B “SBF', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(326, 56, 39, '1.033', '3.03.04/01.2010', 'Meja printer kecil “SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(327, 56, 42, '1.033', '3.03.07/01.2010', 'Almari geser sedang “SBF', 5, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(328, 56, 42, '1.033', '3.03.07/01.2010', 'Almari Loker tutup “SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(329, 35, 121, '1.013', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(330, 35, 52, '1.013', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(331, 56, 37, '1.033', '3.03.02/01.2010', 'Kursi putar karyawan tipe A Chitose', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(332, 56, 36, '1.033', '3.03.01/01.2010', 'Kursi biru “Futura', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(334, 36, 36, '1.014', '3.03.01/01.2010', 'Kursi kuliah “Chitose”', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(335, 56, 115, '1.033', '3.03.24/01.2010', 'Sofa besar “SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(336, 36, 36, '1.014', '3.03.01/01.2010', 'Kursi Dosen “Futura”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(337, 56, 40, '1.033', '3.03.05/01.2010', 'Meja computer kecil ', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 23, '', 'belum tercetak'),
(338, 36, 39, '1.014', '3.03.04/01.2010', 'Meja Dosen \"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(339, 56, 5, '1.033', '1.01.05/01.2010', 'CPU core i3 2120', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(340, 36, 4, '1.014', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(341, 56, 5, '1.033', '1.01.05/01.2010', 'CPU intel pentium G630', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(342, 36, 4, '1.014', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(343, 56, 66, '1.033', '3.05.04/01.2010', 'Monitor 19 “ Asus Mandiri', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(344, 36, 117, '1.014', '3.03.26/01.2010', 'Jam Dinding \"Standart\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(345, 56, 66, '1.033', '3.05.04/01.2010', 'Monitor 19 “ Asus', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(346, 36, 55, '1.014', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(347, 56, 69, '1.033', '3.05.07/01.2010', 'Printer Cannon Pixma MP 237', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(348, 36, 74, '1.014', '3.05.12/01.2010', 'Amplifier \"TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(349, 36, 73, '1.014', '3.05.11/01.2010', 'Speaker \"TOA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(350, 56, 69, '1.033', '3.05.07/01.2010', 'Printer Zebra ZXP Series 3', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(351, 36, 95, '1.014', '3.06.11/01.2010', 'Mic \"TOA- ZM270 ', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(352, 36, 76, '1.014', '3.05.14/01.2010', 'LCD Proyektor \'Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(353, 36, 5, '1.014', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(354, 36, 66, '1.014', '3.05.04/01.2010', 'Monitor LG', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(355, 36, 119, '1.014', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(356, 36, 120, '1.014', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(357, 36, 73, '1.014', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(358, 36, 118, '1.014', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(359, 36, 121, '1.014', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak');
INSERT INTO `tbl_barang` (`id_barang`, `id_ruangan`, `id_subklasifikasi`, `kode_lokasi`, `kode_barang`, `nama_barang`, `jumlah_barang`, `satuan_barang`, `spesifikasi_teknis`, `serial_number`, `model_number`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `harga_perolehan`, `keadaan_barang`, `peruntukan`, `keterangan`, `id_jenis_barang`, `foto_barang`, `cetak`) VALUES
(360, 36, 52, '1.014', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(361, 56, 123, '1.033', '3.03.27/01.2010', 'Scanner Scamsnap 51300 i', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 34, '', 'belum tercetak'),
(362, 56, 122, '1.033', '3.05.27/01.2010', 'Switch Hub TPLink 4 port', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(363, 56, 104, '1.033', '3.06.20/01.2010', 'Pesawat Telephone –Panasonic KX-T2371MX', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(364, 56, 116, '1.033', '3.03.25/01.2010', 'Dispenser “miyako', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 46, '', 'belum tercetak'),
(365, 56, 55, '1.033', '3.03.20/01.2010', 'Air conditioning 1 pk Panasonic', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(366, 56, 104, '1.033', '3.06.20/01.2010', 'Pesawat Telephone –Panasonic KX-T2371MX', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(367, 56, 47, '1.033', '3.03.12/01.2010', 'Papan Agenda', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 28, '', 'belum tercetak'),
(368, 56, 58, '1.033', '3.03.23/01.2010', 'Pot Kayu', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 58, '', 'belum tercetak'),
(369, 56, 53, '1.033', '3.03.18/01.2010', 'Tempat sampah “lionstar', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(370, 57, 39, '1.034', '3.03.04/01.2010', 'Meja Karyawan tipe B “SBF', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(371, 57, 42, '1.034', '3.03.07/01.2010', ' Almari geser sedang “SBF', 5, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(372, 57, 42, '1.034', '3.03.07/01.2010', 'Almari Loker tutup “SBF', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(373, 57, 36, '1.034', '3.03.01/01.2010', 'Kursi biru “Futura', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(374, 57, 5, '1.034', '1.01.05/01.2010', 'CPU Core i3', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(375, 58, 48, '1.035', '3.03.13/01.2010', 'Bacdrop Pintu masuk Broadcasting “SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 59, '', 'belum tercetak'),
(376, 58, 43, '1.035', '3.03.08/01.2010', 'Almari kaca sedang “SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(377, 58, 42, '1.035', '3.03.07/01.2010', 'Almari Tempat sepatu “SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(378, 58, 115, '1.035', '3.03.24/01.2010', 'Kursi sofa tipe C “SBF', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(379, 58, 39, '1.035', '3.03.04/01.2010', 'Meja Custumer “AMPU TV “SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(380, 58, 36, '1.035', '3.03.01/01.2010', 'Kursi biru “Futura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(381, 58, 36, '1.035', '3.03.01/01.2010', 'Kursi biasa “Chitose', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(382, 58, 104, '1.035', '3.06.20/01.2010', 'Pesawat Telephone –Panasonic KX-T2371MX', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(383, 58, 53, '1.035', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(384, 60, 42, '1.037', '3.03.07/01.2010', 'Almari Kayu', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(385, 60, 53, '1.037', '3.03.18/01.2010', 'Tempat Sampah', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(386, 61, 42, '1.038', '3.03.07/01.2010', 'Almari Kayu', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(387, 61, 53, '1.038', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(388, 62, 42, '1.039', '3.03.07/01.2010', 'Almari Kayu', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(389, 62, 53, '1.039', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(390, 63, 74, '1.040', '3.05.12/01.2010', 'Amplifier TOA ZA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(391, 63, 95, '1.040', '3.06.11/01.2010', 'MicrophoneTOA ZM', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(392, 63, 73, '1.040', '3.05.11/01.2010', 'Speaker TOA ZS', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(393, 63, 125, '1.040', '1.02.05/01.2010', 'Perlengkapan Ibadah', 10, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 60, '', 'belum tercetak'),
(394, 64, 39, '1.041', '3.03.04/01.2010', 'Meja', 5, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(395, 64, 126, '1.041', '3.03.28/01.2010', 'Kursi', 10, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 61, '', 'belum tercetak'),
(396, 37, 36, '1.015', '3.03.01/01.2010', 'Kursi Kuliah \"Chitose\"', 40, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(397, 37, 36, '1.015', '3.03.01/01.2010', 'Kursi Dosen \"Futura\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(398, 37, 38, '1.015', '3.03.03/01.2010', 'Meja Dosen \"Olimpic\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(399, 37, 4, '1.015', '1.01.04/01.2010', 'White Board', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(400, 37, 4, '1.015', '1.01.04/01.2010', 'Penghapus', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 48, '', 'belum tercetak'),
(401, 37, 117, '1.015', '3.03.26/01.2010', 'Jam Dinding \"Standart\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(402, 37, 55, '1.015', '3.03.20/01.2010', 'AC “Panasonic”, cap. 2 PK', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(403, 37, 74, '1.015', '3.05.12/01.2010', 'Amplifier “TOA- ZA230', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(404, 37, 73, '1.015', '3.05.11/01.2010', 'Speaker “TOA”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(405, 37, 95, '1.015', '3.06.11/01.2010', 'Mic “TOA- ZM270', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(406, 37, 76, '1.015', '3.05.14/01.2010', 'LCD Proyektor ‘Panasonic PT-LB1VEA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(407, 37, 5, '1.015', '1.01.05/01.2010', 'CPU Intel core i3 2120', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(408, 37, 66, '1.015', '3.05.04/01.2010', 'Monitor LG \"19”', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(409, 37, 119, '1.015', '3.05.24/01.2010', 'Mouse', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(410, 37, 120, '1.015', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(411, 37, 73, '1.015', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(412, 37, 118, '1.015', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(413, 37, 121, '1.015', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(414, 37, 52, '1.015', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(415, 38, 63, '1.016', '3.05.01/01.2010', 'PC Intel Core I3-2120/DDR3 4GB/hdd 250 Gb', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 29, '', 'belum tercetak'),
(416, 38, 66, '1.016', '3.05.04/01.2010', 'Monitor Dell \"19”', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(417, 38, 76, '1.016', '3.05.14/01.2010', 'LCD EPSON EB-X-300', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(418, 38, 36, '1.016', '3.03.01/01.2010', 'Kursi lipat Chitose', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(419, 38, 36, '1.016', '3.03.01/01.2010', 'Kursi  Dosen Futura', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(420, 38, 127, '1.016', '3.03.29/01.2010', 'Meja Lab Kaca', 30, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 62, '', 'belum tercetak'),
(421, 38, 39, '1.016', '3.03.04/01.2010', 'Meja dosen', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(422, 38, 55, '1.016', '3.03.20/01.2010', 'AC Panasonic 2 PK', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(423, 38, 74, '1.016', '3.05.12/01.2010', 'AmplifierTOA ZA 230W', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(424, 38, 95, '1.016', '3.06.11/01.2010', 'Mic TOA ZM 260', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(425, 38, 73, '1.016', '3.05.11/01.2010', 'Speaker TOA ZS 102C', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(426, 38, 122, '1.016', '3.05.27/01.2010', 'Swich D-Link DGS-1016C, Gigabyte 16 ', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(427, 38, 122, '1.016', '3.05.27/01.2010', 'Hub Tp-Link TL-SG 1024D, Gigabyte 24 ', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 63, '', 'belum tercetak'),
(428, 38, 42, '1.016', '3.03.07/01.2010', 'Almari Rak “kayu\"   tempat tas', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(429, 38, 46, '1.016', '3.03.11/01.2010', 'Papan Tulis', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(430, 38, 73, '1.016', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(431, 38, 118, '1.016', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(432, 38, 121, '1.016', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(433, 38, 52, '1.016', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(434, 39, 63, '1.017', '3.05.01/01.2010', 'PC Build Up Lenovo Inter core i5', 35, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 29, '', 'belum tercetak'),
(435, 39, 66, '1.017', '3.05.04/01.2010', 'Lcd Monitor Lenovo \"21,5 \"', 25, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(436, 39, 5, '1.017', '1.01.05/01.2010', 'CPU inter core i3-2120/ddr3 8GB/250Gb', 6, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(437, 39, 66, '1.017', '3.05.04/01.2010', 'Lcd Monitor DELL 19,5 inch', 6, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(438, 39, 76, '1.017', '3.05.14/01.2010', 'Lcd Projector\"Epson\" EB-X-300', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(439, 39, 36, '1.017', '3.03.01/01.2010', 'Kursi lipat Chitose', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(440, 39, 36, '1.017', '3.03.01/01.2010', 'Kursi Biru Futura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(441, 39, 127, '1.017', '3.03.29/01.2010', 'Meja Lab kaca “jogja\"', 30, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 62, '', 'belum tercetak'),
(442, 39, 55, '1.017', '3.03.20/01.2010', 'AC 2 PK Panasonic', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(443, 39, 55, '1.017', '3.03.20/01.2010', 'AC 1 PK LG', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(444, 39, 74, '1.017', '3.05.12/01.2010', 'Amplifier TOA ZA 230 W', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(445, 39, 95, '1.017', '3.06.11/01.2010', 'MicrophoneTOA ZM 260 ', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(446, 39, 73, '1.017', '3.05.11/01.2010', 'Speaker TOA ZS 102 C', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(447, 39, 122, '1.017', '3.05.27/01.2010', 'Switch / Hub 16 port', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(448, 39, 122, '1.017', '3.05.27/01.2010', 'Switch / Hub 24', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(449, 39, 122, '1.017', '3.05.27/01.2010', 'Switch / Hub 24 ', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(450, 39, 42, '1.017', '3.03.07/01.2010', 'Almari Rak “kayu\" bikin tempat tas', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(451, 39, 84, '1.017', '3.05.22/01.2010', 'Spliter  MT-VIKI (9MT-3502)', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 65, '', 'belum tercetak'),
(452, 39, 117, '1.017', '3.03.26/01.2010', 'Jam Dinding ‘Standart\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(453, 39, 46, '1.017', '3.03.11/01.2010', 'Papan Tulis', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(454, 40, 63, '1.018', '3.05.01/01.2010', 'PC core i5 9400/DDR4 8GB 250gb Geforce1650', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(455, 40, 66, '1.018', '3.05.04/01.2010', 'Lcd Monitor Dell 19 Inch', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(456, 40, 76, '1.018', '3.05.14/01.2010', 'Lcd Proyektor  Epson EB X300', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(457, 40, 117, '1.018', '3.03.26/01.2010', 'Jam Dinding \"Standart\"', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(458, 40, 45, '1.018', '3.03.10/01.2010', 'Lemari Rak kayu tempat tas bikinan', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 32, '', 'belum tercetak'),
(459, 40, 39, '1.018', '3.03.04/01.2010', 'Meja Siswa  ', 30, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(460, 40, 39, '1.018', '3.03.04/01.2010', 'Meja Dosen Olympic', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(461, 40, 36, '1.018', '3.03.01/01.2010', 'Kursi lipat Chitose', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(462, 40, 36, '1.018', '3.03.01/01.2010', 'Kursi biru dosen FUTURA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(463, 40, 55, '1.018', '3.03.20/01.2010', 'AC  Panasonic 2 pk', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(464, 40, 84, '1.018', '3.05.22/01.2010', 'Spliter ATEN', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 65, '', 'belum tercetak'),
(465, 40, 46, '1.018', '3.03.11/01.2010', 'Papan Tulis', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(466, 40, 74, '1.018', '3.05.12/01.2010', 'Amplifier TOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(467, 40, 95, '1.018', '3.06.11/01.2010', 'MicTOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(468, 40, 73, '1.018', '3.05.11/01.2010', 'Sound  TOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(469, 40, 122, '1.018', '3.05.27/01.2010', 'Switch Hub Tp-Link 24 port /1000', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(470, 40, 122, '1.018', '3.05.27/01.2010', 'Switch Hub Tp Link 16 port /1000', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(471, 41, 63, '1.019', '3.05.01/01.2010', 'PC HP intel core i3/DDR3 4GB/Hdd 1Tb', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(472, 41, 66, '1.019', '3.05.04/01.2010', 'Lcd Monitor HP 21.6 inch', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(473, 41, 76, '1.019', '3.05.14/01.2010', 'LCD Proyektor Epson', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(474, 41, 36, '1.019', '3.03.01/01.2010', 'Kursi Bundar SINYA', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(475, 41, 36, '1.019', '3.03.01/01.2010', 'Kursi Dosen biru FUTURA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(476, 41, 127, '1.019', '3.03.29/01.2010', 'Meja Kaca Lab ', 30, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 62, '', 'belum tercetak'),
(477, 41, 39, '1.019', '3.03.04/01.2010', 'Meja Kayu Dosen SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(478, 41, 55, '1.019', '3.03.20/01.2010', 'AC 2 PK Panasonic', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(479, 41, 74, '1.019', '3.05.12/01.2010', 'Amplifier TOA ZA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(480, 41, 95, '1.019', '3.06.11/01.2010', 'MicrophoneTOA  ZM', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(481, 41, 73, '1.019', '3.05.11/01.2010', 'Speaker TOA ZS', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(482, 41, 122, '1.019', '3.05.27/01.2010', 'Switch/Hub     16 Port DLINK', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(483, 41, 122, '1.019', '3.05.27/01.2010', 'Switch/Hub     24 Port  DLINK', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(484, 41, 122, '1.019', '3.05.27/01.2010', 'Switch/Hub       8 Port DLINK', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(485, 41, 42, '1.019', '3.03.07/01.2010', 'Almari Rak Kayu tempat tas', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(486, 41, 46, '1.019', '3.03.11/01.2010', 'Papan Tulis', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(487, 65, 21, '1.042', '2.04.01/01.2010', 'Lapangan', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 39, '', 'belum tercetak'),
(488, 65, 124, '1.042', '1.02.04/01.2010', 'Perlengkapan Olahraga', 10, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 4, '', 'belum tercetak'),
(489, 42, 63, '1.020', '3.05.01/01.2010', 'PC Intel Core I3-2120/DDR3 4GB/hdd 250 Gb', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'Sudah tercetak'),
(490, 42, 66, '1.020', '3.05.04/01.2010', 'Monitor Dell 19”', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(491, 42, 76, '1.020', '3.05.14/01.2010', 'LCD EPSON EB-X-300', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(492, 42, 36, '1.020', '3.03.01/01.2010', 'Kursi lipat Chitose', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(493, 42, 36, '1.020', '3.03.01/01.2010', 'Kursi  Dosen Futura', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(494, 42, 127, '1.020', '3.03.29/01.2010', 'Meja Lab Kaca', 30, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 62, '', 'belum tercetak'),
(495, 42, 39, '1.020', '3.03.04/01.2010', 'Meja dosen', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(496, 42, 55, '1.020', '3.03.20/01.2010', 'AC Panasonic 2 PK', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(497, 42, 74, '1.020', '3.05.12/01.2010', 'AmplifierTOA ZA 230W', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(498, 42, 95, '1.020', '3.06.11/01.2010', 'Mic TOA ZM 260', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(499, 42, 122, '1.020', '3.05.27/01.2010', 'Swich D-Link DGS-1016C, Gigabyte 16', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(500, 42, 122, '1.020', '3.05.27/01.2010', 'Hub Tp-Link TL-SG 1024D, Gigabyte 24', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 63, '', 'belum tercetak'),
(501, 42, 42, '1.020', '3.03.07/01.2010', 'Almari Rak “kayu tempat tas', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(502, 42, 46, '1.020', '3.03.11/01.2010', 'Papan Tulis', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(503, 42, 73, '1.020', '3.05.11/01.2010', 'Speaker bescit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(504, 42, 118, '1.020', '3.05.23/01.2010', 'Video Swit', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 57, '', 'belum tercetak'),
(505, 42, 121, '1.020', '3.05.26/01.2010', 'Video Spliter', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(506, 42, 52, '1.020', '3.03.17/01.2010', 'Pigura', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(507, 42, 73, '1.020', '3.05.11/01.2010', 'SpeakerTOA ZS 102C', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(508, 59, 48, '1.036', '3.03.13/01.2010', 'Backdrop Perpustakaan\"SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 59, '', 'belum tercetak'),
(509, 59, 39, '1.036', '3.03.04/01.2010', 'Meja Perpustakaan A \"SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(510, 59, 39, '1.036', '3.03.04/01.2010', 'Meja karyawan tipe C \"SBF', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(511, 43, 63, '1.021', '3.05.01/01.2010', 'PC Build Up Lenovo Inter core i5', 35, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(512, 43, 66, '1.021', '3.05.04/01.2010', 'Lcd Monitor Lenovo 21,5 “', 35, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(513, 59, 45, '1.036', '3.03.10/01.2010', 'Rak buku besar \"SBF', 19, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 32, '', 'belum tercetak'),
(514, 43, 5, '1.021', '1.01.05/01.2010', 'CPU inter core i3-2120/ddr3 8GB/250Gb', 6, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(515, 43, 66, '1.021', '3.05.04/01.2010', 'Lcd Monitor DELL 19,5 inch', 6, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(516, 43, 76, '1.021', '3.05.14/01.2010', 'Lcd Projector\"Epson\" EB-X-300', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(517, 43, 36, '1.021', '3.03.01/01.2010', 'Kursi Lipat Chitose', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(518, 59, 45, '1.036', '3.03.10/01.2010', 'Rak buku sedang \"SBF', 4, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 32, '', 'belum tercetak'),
(519, 59, 45, '1.036', '3.03.10/01.2010', 'Rak tempt Koran \"Bikin', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 32, '', 'belum tercetak'),
(520, 43, 36, '1.021', '3.03.01/01.2010', 'Kursi Biru Futura', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(521, 59, 42, '1.036', '3.03.07/01.2010', 'Almari Loker tipe A', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(522, 43, 127, '1.021', '3.03.29/01.2010', 'Meja Lab kaca “jogja', 30, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 62, '', 'belum tercetak'),
(523, 43, 55, '1.021', '3.03.20/01.2010', 'AC 2 PK Panasonic', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(524, 59, 39, '1.036', '3.03.04/01.2010', 'Meja anjungan \"SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(525, 43, 55, '1.021', '3.03.20/01.2010', 'AC 1 Pk LG', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(526, 59, 126, '1.036', '3.03.28/01.2010', 'Kursi bangku 4 \"SBF', 12, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 61, '', 'belum tercetak'),
(527, 43, 74, '1.021', '3.05.12/01.2010', 'Amplifier TOA ZA 230 W', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(528, 59, 40, '1.036', '3.03.05/01.2010', 'Meja computer limas \"SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 23, '', 'belum tercetak'),
(529, 43, 95, '1.021', '3.06.11/01.2010', 'MicrophoneTOA ZM 260', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(530, 59, 43, '1.036', '3.03.08/01.2010', 'Almari kaca reklame \"SBF', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(531, 43, 73, '1.021', '3.05.11/01.2010', 'Speaker TOA ZS 102 C', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(532, 43, 122, '1.021', '3.05.27/01.2010', 'Switch / Hub 16 port', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(533, 59, 47, '1.036', '3.03.12/01.2010', 'Papan informasi kart \"SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', ' Baik', '', '', 28, '', 'belum tercetak'),
(534, 43, 122, '1.021', '3.05.27/01.2010', 'Switch / Hub 24', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(535, 59, 37, '1.036', '3.03.02/01.2010', 'Kursi putar karyawan B Chitose', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(536, 43, 122, '1.021', '3.05.27/01.2010', 'Switch / Hub 24', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(537, 43, 42, '1.021', '3.03.07/01.2010', 'Almari Rak “kayu bikin tempat tas', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(538, 59, 37, '1.036', '3.03.02/01.2010', 'Kursi putar Karywan tipe C Chitose', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(539, 43, 84, '1.021', '3.05.22/01.2010', 'Spliter MT-VIKI (9MT-3502)', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 65, '', 'belum tercetak'),
(540, 43, 117, '1.021', '3.03.26/01.2010', 'Jam Dinding ‘Standart', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(541, 59, 115, '1.036', '3.03.24/01.2010', 'Sofa tipe B \"SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(542, 43, 46, '1.021', '3.03.11/01.2010', 'Papan Tulis', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(543, 59, 36, '1.036', '3.03.01/01.2010', 'Kursi karyawan karyawanbesar \"President', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(544, 59, 36, '1.036', '3.03.01/01.2010', 'Kursi biru S \"Chitose', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(545, 59, 36, '1.036', '3.03.01/01.2010', 'Kursi biru \"Futura', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(546, 59, 36, '1.036', '3.03.01/01.2010', 'Kursi besi kotak', 10, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(547, 59, 5, '1.036', '1.01.05/01.2010', 'CPU core i3 3240', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(548, 59, 5, '1.036', '1.01.05/01.2010', 'CPU intel core 2 duo', 4, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(549, 44, 63, '1.022', '3.05.01/01.2010', 'PC core i5 9400/DDR4 8GB 250gb Geforce1650', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(550, 59, 5, '1.036', '1.01.05/01.2010', 'CPU intel dual core', 7, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(551, 44, 66, '1.022', '3.05.04/01.2010', 'Lcd Monitor Dell 19 Inch', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(553, 44, 76, '1.022', '3.05.14/01.2010', 'Lcd Proyektor Epson EB X300', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(554, 59, 5, '1.036', '1.01.05/01.2010', 'CPU intel Pentium G2030', 4, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 52, '', 'belum tercetak'),
(555, 44, 117, '1.022', '3.03.26/01.2010', 'Jam Dinding standart', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(556, 44, 42, '1.022', '3.03.07/01.2010', 'Lemari Rak kayu tempat tas bikinan', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(557, 59, 66, '1.036', '3.05.04/01.2010', 'Monitor 14\" LG', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(558, 44, 39, '1.022', '3.03.04/01.2010', 'Meja Siswa', 30, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(559, 44, 39, '1.022', '3.03.04/01.2010', 'Meja Dosen Olympic', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(560, 59, 66, '1.036', '3.05.04/01.2010', 'Monitor 14\" Acer', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(561, 44, 36, '1.022', '3.03.01/01.2010', 'Kursi lipat Chitose', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(562, 59, 66, '1.036', '3.05.04/01.2010', 'Monitor 15 \" Dell', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(563, 44, 36, '1.022', '3.03.01/01.2010', 'Kursi biru dosen FUTURA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(564, 44, 55, '1.022', '3.03.20/01.2010', 'AC Panasonic 2 pk', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(565, 59, 66, '1.036', '3.05.04/01.2010', 'Monitor 14\" GTC', 4, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(566, 44, 84, '1.022', '3.05.22/01.2010', 'Spliter ATEN', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 65, '', 'belum tercetak'),
(567, 59, 66, '1.036', '3.05.04/01.2010', 'Monitor 17\" Dell', 9, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(568, 44, 46, '1.022', '3.03.11/01.2010', 'Papan Tulis', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(569, 59, 69, '1.036', '3.05.07/01.2010', 'Printer Cannon iP 2770', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(570, 44, 74, '1.022', '3.05.12/01.2010', 'Amplifier TOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(571, 44, 95, '1.022', '3.06.11/01.2010', 'MicTOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(572, 59, 69, '1.036', '3.05.07/01.2010', 'Printer Canon MP 145', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(573, 44, 73, '1.022', '3.05.11/01.2010', 'Sound TOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(574, 59, 69, '1.036', '3.05.07/01.2010', 'Printer Epson L120', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(575, 44, 122, '1.022', '3.05.27/01.2010', 'Switch Hub Tp-Link 24 port /1000', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(576, 44, 122, '1.022', '3.05.27/01.2010', 'Switch Hub Tp Link 16 port /1000', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(577, 59, 62, '1.036', '3.04.04/01.2010', 'Barcode', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 66, '', 'belum tercetak'),
(578, 59, 55, '1.036', '3.03.20/01.2010', 'Air Conditioning 2 Pk LG', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(579, 59, 55, '1.036', '3.03.20/01.2010', 'Air Conditioning 1,5 Tosba', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(580, 59, 55, '1.036', '3.03.20/01.2010', 'Air Conditioning 1,5 Panasonic', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(581, 59, 104, '1.036', '3.06.20/01.2010', 'Pesawat Telephone -Panasonic KX- T2371MX', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(582, 59, 53, '1.036', '3.03.18/01.2010', 'Tempt sampah', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(583, 47, 76, '1.024', '3.05.14/01.2010', 'LCD Proyektor ACER', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(584, 45, 5, '1.023', '1.01.05/01.2010', 'PC HP intel core i3/DDR3 4GB/Hdd 1Tb', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(585, 47, 74, '1.024', '3.05.12/01.2010', 'Amplifier TOA ZA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(586, 45, 66, '1.023', '3.05.04/01.2010', 'Led Monitor HP 21.6 inch', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(587, 47, 46, '1.024', '3.03.11/01.2010', 'Papan Tulis', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(588, 45, 76, '1.023', '3.05.14/01.2010', 'LCD Proyektor Epson', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(589, 47, 43, '1.024', '3.03.08/01.2010', 'Lemari Kaca almunium', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(590, 47, 42, '1.024', '3.03.07/01.2010', 'Almari Rak kayu tempat tas', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(591, 45, 36, '1.023', '3.03.01/01.2010', 'Kursi Bundar SINYA', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(592, 47, 117, '1.024', '3.03.26/01.2010', 'Jam Dinding Standart', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(593, 47, 38, '1.024', '3.03.03/01.2010', 'Meja Rakitan besi multipleks', 31, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 21, '', 'belum tercetak'),
(594, 45, 36, '1.023', '3.03.01/01.2010', 'Kursi Dosen biru FUTURA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(595, 47, 36, '1.024', '3.03.01/01.2010', 'Kursi Bulat SY', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(596, 45, 127, '1.023', '3.03.29/01.2010', 'Meja Kaca Lab', 30, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 62, '', 'belum tercetak'),
(597, 47, 36, '1.024', '3.03.01/01.2010', 'Kursi Dosen biru FUTURA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(598, 47, 84, '1.024', '3.05.22/01.2010', 'Spliter GAIN TECH', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 65, '', 'belum tercetak'),
(599, 45, 39, '1.023', '3.03.04/01.2010', 'Meja Kayu Dosen SBF', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(600, 47, 55, '1.024', '3.03.20/01.2010', 'AC Panasonic 2pk', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(601, 45, 55, '1.023', '3.03.20/01.2010', 'AC 2 PK Panasonic', 3, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(602, 47, 95, '1.024', '3.06.11/01.2010', 'MIC TOA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(603, 45, 74, '1.023', '3.05.12/01.2010', 'Amplifier TO ZA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(604, 47, 73, '1.024', '3.05.11/01.2010', 'Speaker TOA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(605, 47, 73, '1.024', '3.05.11/01.2010', 'Speaker Aktif LOGITECH', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(606, 45, 95, '1.023', '3.06.11/01.2010', 'MicrophoneTOA ZM', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(607, 45, 73, '1.023', '3.05.11/01.2010', 'Speaker TOA ZS', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(608, 45, 122, '1.023', '3.05.27/01.2010', 'Switch/Hub 16 Port DLINK', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(609, 47, 128, '1.024', '3.04.05/01.2010', 'Arduino uno', 16, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 68, '', 'belum tercetak'),
(610, 45, 122, '1.023', '3.05.27/01.2010', 'Switch/Hub 24 Port DLINK', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(611, 47, 63, '1.024', '3.05.01/01.2010', 'Komputer intel core i3/ ddr3 4GB/HDD 160 gb', 31, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(612, 45, 122, '1.023', '3.05.27/01.2010', 'Switch/Hub 8 Port DLINK', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(613, 47, 66, '1.024', '3.05.04/01.2010', 'LCD Monitor VIEW SONIC 16 inch', 31, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(614, 47, 60, '1.024', '3.04.02/01.2010', 'Osciloscope', 4, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 67, '', 'belum tercetak'),
(615, 45, 42, '1.023', '3.03.07/01.2010', 'Almari Rak Kayu tempat tas', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(616, 45, 46, '1.023', '3.03.11/01.2010', 'Papan Tulis', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(617, 48, 63, '1.025', '3.05.01/01.2010', 'PC Core i3 2120/ddr3 4GB/Hdd 320GB', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(618, 48, 66, '1.025', '3.05.04/01.2010', 'LCD Monitor DELL 19 inch', 41, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(619, 48, 76, '1.025', '3.05.14/01.2010', 'LCD Proyektor EPSON EB S400', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(620, 48, 117, '1.025', '3.03.26/01.2010', 'Jam Dinding Standart', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(621, 48, 42, '1.025', '3.03.07/01.2010', 'Almari Rak kayu tempat tas', 2, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(622, 48, 40, '1.025', '3.03.05/01.2010', 'Meja Laboratorium', 30, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 23, '', 'belum tercetak'),
(623, 48, 39, '1.025', '3.03.04/01.2010', 'Meja Dosen ACTIVE', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(624, 48, 36, '1.025', '3.03.01/01.2010', 'Kursi lipat CHITOSE', 41, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(625, 48, 36, '1.025', '3.03.01/01.2010', 'Kursi biru dosen FUTURA', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(626, 48, 55, '1.025', '3.03.20/01.2010', 'AC Panasonic 1,5 pK', 3, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(627, 48, 121, '1.025', '3.05.26/01.2010', 'VGA Spliter FIGEAR', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 55, '', 'belum tercetak'),
(628, 48, 46, '1.025', '3.03.11/01.2010', 'Papan Tulis', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(629, 48, 74, '1.025', '3.05.12/01.2010', 'Amplifier TOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(630, 48, 95, '1.025', '3.06.11/01.2010', 'Microphone TOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(631, 48, 73, '1.025', '3.05.11/01.2010', 'Sound TOA', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(632, 48, 122, '1.025', '3.05.27/01.2010', 'Switch Hub D-Link 24 port/100', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 63, '', 'belum tercetak'),
(633, 48, 122, '1.025', '3.05.27/01.2010', 'Switch Hub D-Link 24 Port/ 1000', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 63, '', 'belum tercetak'),
(635, 47, 8, '1.024', '1.02.01/01.2010', 'Trainer Digital', 40, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 69, '', 'belum tercetak'),
(636, 47, 8, '1.024', '1.02.01/01.2010', 'Trainer Mikro', 30, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 69, '', 'belum tercetak'),
(637, 49, 63, '1.026', '3.05.01/01.2010', 'PC core i3', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(638, 49, 66, '1.026', '3.05.04/01.2010', 'Monitor', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(639, 49, 120, '1.026', '3.05.25/01.2010', 'Keyboard', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(640, 49, 120, '1.026', '3.05.25/01.2010', 'Keyboard PS2', 24, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 54, '', 'belum tercetak'),
(641, 49, 85, '1.026', '3.06.01/01.2010', 'Audio Recorder (student)', 24, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(642, 49, 7, '1.026', '1.01.07/01.2010', 'Adaptor AC/ DC', 25, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 70, '', 'belum tercetak'),
(643, 49, 129, '1.026', '1.02.06/01.2010', 'Big Band Polytron', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(644, 49, 92, '1.026', '3.06.08/01.2010', 'Aver Vision F15/ camera', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 37, '', 'belum tercetak'),
(645, 49, 119, '1.026', '3.05.24/01.2010', 'Genius Mouse Pen i608X', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 53, '', 'belum tercetak'),
(646, 67, 36, '2.001', '3.03.01/01.2022', 'Kursi Kuliah ', 40, 'Pcs', 'Futura 747', 'hitam', 'Futura ', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(647, 49, 95, '1.026', '3.06.11/01.2010', 'Microphone Wirreles shure PGX -242', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(648, 67, 36, '2.001', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(649, 67, 39, '2.001', '3.03.04/01.2022', 'Meja dosen', 1, 'Pcs', '', 'coklat', 'Orange', 1, '2022', '2022-07-31', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(650, 67, 48, '2.001', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Pcs', '', 'kayu, kaca', 'Sakura', 1, '2022', '2022-07-10', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(651, 67, 117, '2.001', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', 'Jam', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(652, 67, 55, '2.001', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(653, 67, 74, '2.001', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(654, 67, 73, '2.001', '3.05.11/01.2022', 'Speaker ', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-31', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(655, 67, 95, '2.001', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(656, 67, 76, '2.001', '3.05.14/01.2022', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-31', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(657, 67, 63, '2.001', '3.05.01/01.2016', 'ALL In One', 1, 'Unit', 'Core i3', '20 Inch', 'Dell', 1, '2016', '2016-07-22', '7000000', 'Baik', '', '', 14, '', 'belum tercetak'),
(658, 67, 120, '2.001', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', '', '', 'Votre', 1, '2020', '2022-07-22', '75000', 'Baik', '', '', 54, '', 'belum tercetak'),
(659, 25, 119, '1.003', '3.05.24/01.2020', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2020', '2022-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(660, 67, 4, '2.001', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(661, 67, 52, '2.001', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(662, 68, 39, '2.002', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '120x60', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(663, 68, 39, '2.002', '3.03.04/01.2022', 'Meja Siswa  ', 15, 'Pcs', '150x60', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1200000', 'Baik', '', '', 22, '', 'belum tercetak'),
(664, 68, 36, '2.002', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(665, 68, 36, '2.002', '3.03.01/01.2022', 'Kursi Biru ', 30, 'Pcs', 'Kursi Susun', 'Biru', 'Brother', 1, '2022', '2022-07-22', '205000', 'Baik', '', '', 16, '', 'belum tercetak'),
(666, 68, 36, '2.002', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '405000', 'Baik', '', '', 16, '', 'belum tercetak'),
(667, 68, 48, '2.002', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Pcs', '', 'kayu, kaca', 'Sakura', 1, '2022', '2022-10-22', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(668, 68, 117, '2.002', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', '', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(669, 68, 55, '2.002', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(670, 68, 74, '2.002', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(671, 68, 73, '2.002', '3.05.11/01.2022', 'Speaker ', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(672, 68, 95, '2.002', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(673, 68, 76, '2.002', '3.05.14/01.2022', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(674, 68, 84, '2.002', '3.05.22/01.2015', 'Splitter VGA', 1, 'Unit', '', '', 'MT-VIKI', 1, '2015', '2015-07-22', '75000', 'Baik', '', '', 14, '', 'belum tercetak'),
(675, 68, 4, '2.002', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(676, 68, 52, '2.002', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(677, 69, 36, '2.003', '3.03.01/01.2022', 'Kursi Kuliah ', 40, 'Pcs', 'Futura 747', 'Hitam', 'Futura ', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(678, 69, 36, '2.003', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(679, 69, 39, '2.003', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(680, 69, 48, '2.003', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Pcs', '', 'kayu, kaca', 'Orange', 1, '2022', '2022-10-22', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(681, 69, 117, '2.003', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', '', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(682, 69, 55, '2.003', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(683, 69, 74, '2.003', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(684, 69, 73, '2.003', '3.05.11/01.2022', 'Speaker ', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(685, 69, 95, '2.003', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(686, 69, 76, '2.003', '3.05.14/01.2022', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(687, 69, 63, '2.003', '3.05.01/.2016', 'ALL In One', 1, 'Unit', 'Core i3', '20 Inch', 'Dell', 0, '2016', '2016-07-22', '7000000', 'Baik', '', '', 14, '', 'belum tercetak'),
(688, 69, 120, '2.003', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', '', '', 'Votre', 1, '2020', '2020-07-22', '75000', 'Baik', '', '', 54, '', 'belum tercetak');
INSERT INTO `tbl_barang` (`id_barang`, `id_ruangan`, `id_subklasifikasi`, `kode_lokasi`, `kode_barang`, `nama_barang`, `jumlah_barang`, `satuan_barang`, `spesifikasi_teknis`, `serial_number`, `model_number`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `harga_perolehan`, `keadaan_barang`, `peruntukan`, `keterangan`, `id_jenis_barang`, `foto_barang`, `cetak`) VALUES
(689, 69, 119, '2.003', '3.05.24/01.2020', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(690, 69, 4, '2.003', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(691, 69, 52, '2.003', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(692, 70, 36, '2.004', '3.03.01/01.2022', 'Kursi Kuliah ', 40, 'Pcs', 'Futura 747', 'Hitam', 'Futura ', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(693, 70, 36, '2.004', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(694, 70, 39, '2.004', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'Coklat', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(695, 70, 48, '2.004', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Pcs', '', 'Kayu, Kaca', 'Orange', 1, '2022', '2022-07-22', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(696, 70, 117, '2.004', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', '', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(697, 70, 55, '2.004', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(698, 70, 74, '2.004', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(699, 70, 73, '2.004', '3.05.11/01.2022', 'Speaker ', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(700, 70, 95, '2.004', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(701, 70, 76, '2.004', '3.05.14/01.2022', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(702, 70, 63, '2.004', '3.05.01/01.2022', 'ALL In One', 1, 'Unit', 'Core i3', '20 Inch', 'Dell', 1, '2022', '2022-07-22', '7000000', 'Baik', '', '', 14, '', 'belum tercetak'),
(703, 70, 120, '2.004', '3.05.25/01.2022', 'Keyboard', 1, 'Unit', '', '', 'Votre', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 54, '', 'belum tercetak'),
(704, 70, 119, '2.004', '3.05.24/01.2022', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(705, 70, 4, '2.004', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(706, 70, 52, '2.004', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(707, 71, 36, '2.005', '3.03.01/01.2022', 'Kursi Kuliah ', 40, 'Pcs', 'Futura 747', 'Hitam', 'Futura ', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(708, 71, 36, '2.005', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(709, 71, 39, '2.005', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'Coklat', 'Orange', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 22, '', 'belum tercetak'),
(710, 71, 48, '2.005', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Pcs', '', 'Kayu, Kaca', 'Orange', 1, '2022', '2022-07-22', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(711, 71, 117, '2.005', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', '', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(712, 71, 55, '2.005', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(713, 71, 74, '2.005', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(714, 71, 73, '2.005', '3.05.11/01.2022', 'Speaker ', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(715, 71, 95, '2.005', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(716, 71, 76, '2.005', '3.05.14/01.2022', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(717, 71, 63, '2.005', '3.05.01/01.2022', 'ALL In One', 1, 'Unit', 'Core i3', '20 Inch', 'Dell', 1, '2022', '2022-07-22', '7000000', 'Baik', '', '', 14, '', 'belum tercetak'),
(718, 71, 120, '2.005', '3.05.25/01.2022', 'Keyboard', 1, 'Unit', '', '', 'Votre', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 54, '', 'belum tercetak'),
(719, 71, 119, '2.005', '3.05.24/01.2022', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(720, 71, 4, '2.005', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(721, 71, 52, '2.005', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(722, 72, 36, '2.006', '3.03.01/01.2022', 'Kursi Kuliah', 40, 'Pcs', 'Futura 747', 'Hitam ', 'Futura', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(723, 72, 36, '2.006', '3.03.01/01.2022', 'Kursi Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(724, 72, 39, '2.006', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'Coklat ', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(725, 72, 48, '2.006', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Pcs', '', 'Kayu, Kaca', 'Orange', 1, '2022', '2022-07-22', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(726, 72, 117, '2.006', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', '', '', 'Diamond ', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(727, 72, 55, '2.006', '3.03.20/01.2022', 'Air Conditioning ', 2, 'Unit', '1,5 PK ', '', 'Panasonic ', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(728, 72, 74, '2.006', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(729, 72, 73, '2.006', '3.05.11/01.2022', 'Speaker', 1, 'Unit', 'ZA 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(730, 72, 95, '2.006', '3.06.11/01.2022', 'Microphone ', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(731, 72, 76, '2.006', '3.05.14/01.2022', 'LCD Proyektor ', 1, 'Unit', 'EB-X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(732, 72, 63, '2.006', '3.05.01/01.2022', 'CPU', 1, 'Unit', 'Core 2 duo', '', 'Intel', 1, '2022', '2022-07-22', '1500000', 'Baik', '', '', 14, '', 'belum tercetak'),
(733, 72, 66, '2.006', '3.05.04/01.2022', 'Monitor ', 1, 'Unit', '17 Inch', '', 'Dell', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 26, '', 'belum tercetak'),
(734, 72, 120, '2.006', '3.05.25/01.2022', 'Keyboard ', 1, 'Unit', '', '', 'Votre', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 54, '', 'belum tercetak'),
(735, 72, 119, '2.006', '3.05.24/01.2022', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(736, 72, 84, '2.006', '3.05.22/01.2022', 'Spliter VGA', 1, 'Unit', '', '', 'MT-VIKI', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 65, '', 'belum tercetak'),
(737, 72, 4, '2.006', '1.01.04/01.2022', 'Penghapus ', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(738, 72, 52, '2.006', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(739, 49, 73, '1.026', '3.05.11/01.2010', 'Speaker Polytron', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(740, 49, 55, '1.026', '3.03.20/01.2010', 'Air Conditioning 1,5 pK “Panasonic', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(741, 49, 55, '1.026', '3.03.20/01.2010', 'Air Conditioning 1,5 pK “LG', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(742, 49, 82, '1.026', '3.05.20/01.2010', 'UPS  APC BX650', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 42, '', 'belum tercetak'),
(743, 49, 81, '1.026', '3.05.19/01.2010', 'Modem Internet 4 Ch “Prolink', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 25, '', 'belum tercetak'),
(744, 49, 83, '1.026', '3.05.21/01.2010', 'USB TV', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 71, '', 'belum tercetak'),
(745, 49, 84, '1.026', '3.05.22/01.2010', 'Spliter 4 load', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 65, '', 'belum tercetak'),
(746, 49, 85, '1.026', '3.06.01/01.2010', 'Audio Recorder (teacher)', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(747, 49, 71, '1.026', '3.05.09/01.2010', 'Headset HL68 3P', 25, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 72, '', 'belum tercetak'),
(748, 49, 76, '1.026', '3.05.14/01.2010', 'LCD Proyektor “BenQ', 1, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(749, 49, 39, '1.026', '3.03.04/01.2010', 'Meja Laboratorium Bahasa', 12, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(750, 49, 39, '1.026', '3.03.04/01.2010', 'Meja Dosen / techer', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(751, 49, 73, '1.026', '3.05.11/01.2010', 'Speaker Room 8 inch', 2, 'Unit', '', '', '', 1, '2010', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(752, 49, 36, '1.026', '3.03.01/01.2010', 'Kursi Dosen MGLab', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(753, 49, 36, '1.026', '3.03.01/01.2010', 'Kursi Lipat “Fortuner', 24, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(754, 49, 117, '1.026', '3.03.26/01.2010', 'Jam Dinding', 1, 'Buah', '', '', '', 1, '2010', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(755, 49, 6, '1.026', '1.01.06/01.2010', 'Karpet', 1, 'Set', '', '', '', 1, '2010', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(756, 76, 36, '2.010', '3.03.01/01.2022', 'Kursi Lipat', 40, 'Pcs', 'cosmo 541', 'hitam', 'Chitose', 1, '2022', '', '325000', 'Baik', '', '', 16, '', 'belum tercetak'),
(757, 76, 36, '2.010', '3.03.01/01.2022', 'Kursi Dosen', 1, 'Pcs', 'Easio III VCR', 'merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(758, 76, 39, '2.010', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(759, 76, 40, '2.010', '3.03.05/01.2022', 'Meja Komputer', 20, 'Pcs', 'buatan', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 23, '', 'belum tercetak'),
(760, 76, 40, '2.010', '3.03.05/01.2012', 'Meja Komputer', 1, 'Pcs', 'buatan', 'abu abu', 'Lama', 1, '2012', '2012-01-01', '500000', 'Baik', '', '', 23, '', 'belum tercetak'),
(761, 76, 5, '2.010', '1.01.05/01.2022', 'CPU', 41, 'Unit', 'core i7 Gen 11', '', 'Intel', 1, '2022', '2022-07-22', '14000000', 'Baik', '', '', 52, '', 'belum tercetak'),
(762, 76, 66, '2.010', '3.05.04/01.2022', 'Monitor', 41, 'Unit', '24 Inch', '24 Inch', 'Samsung', 1, '2022', '2022-07-22', '1700000', 'Baik', '', '', 26, '', 'belum tercetak'),
(763, 76, 120, '2.010', '3.05.25/01.2022', 'Keyboard', 41, 'Unit', 'K120', '', 'Logitech', 1, '2022', '2022-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(764, 76, 119, '2.010', '3.05.24/01.2022', 'Mouse', 41, 'Unit', 'B100', '', 'Logitech', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 53, '', 'belum tercetak'),
(765, 76, 121, '2.010', '3.05.26/01.2022', 'Splitter VGA', 1, 'Unit', '', '', 'MT-VIKI', 1, '2022', '2022-07-22', '200000', 'Baik', '', '', 55, '', 'belum tercetak'),
(766, 76, 76, '2.010', '3.05.14/01.2022', 'LCD Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '4600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(767, 76, 55, '2.010', '3.03.20/01.2022', 'Air Conditioning', 3, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(768, 76, 74, '2.010', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '550000', 'Baik', '', '', 49, '', 'belum tercetak'),
(769, 76, 73, '2.010', '3.05.11/01.2022', 'Speaker', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '685000', 'Baik', '', '', 36, '', 'belum tercetak'),
(770, 76, 95, '2.010', '3.06.11/01.2022', 'Micropone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '175000', 'Baik', '', '', 50, '', 'belum tercetak'),
(771, 76, 46, '2.010', '3.03.11/01.2022', 'White Board', 1, 'Pcs', '240X120', 'list almunium', 'Sakura', 1, '2022', '2022-07-22', '650000', 'Baik', '', '', 64, '', 'belum tercetak'),
(772, 76, 117, '2.010', '3.03.26/01.2022', 'Jam Dinding', 1, 'Pcs', '', '', 'Standart', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(773, 77, 36, '2.011', '3.03.01/01.2022', 'Kursi Lipat', 40, 'Pcs', 'cosmo 541', 'hitam', 'Chitose', 1, '2022', '2022-07-22', '325000', 'Baik', '', '', 16, '', 'belum tercetak'),
(775, 77, 36, '2.011', '3.03.01/01.2022', 'Kursi Dosen', 1, 'Pcs', 'Easio III VCR', 'meerah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(776, 77, 39, '2.011', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(777, 73, 36, '2.007', '3.03.01/01.2022', 'Kursi Kuliah ', 40, 'Pcs', 'Futura 747', 'Hitam', 'Futura ', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(778, 73, 36, '2.007', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(779, 73, 39, '2.007', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'Coklat', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(780, 77, 40, '2.011', '3.03.05/01.2022', 'Meja Komputer', 20, 'Pcs', 'buatan', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 23, '', 'belum tercetak'),
(781, 73, 48, '2.007', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Pcs', '', 'Kayu, Kaca', 'Orange', 1, '2022', '2022-07-10', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(782, 77, 40, '2.011', '3.03.05/01.2012', 'Meja Komputer', 1, 'Pcs', 'buatan', 'abu abu', 'Lama', 1, '2012', '2012-01-12', '500000', 'Baik', '', '', 23, '', 'belum tercetak'),
(783, 73, 117, '2.007', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', '', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(784, 73, 55, '2.007', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(785, 77, 5, '2.011', '1.01.05/01.2022', 'CPU', 41, 'Unit', 'core i3', '', 'Intel', 1, '2022', '2022-07-22', '8500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(786, 73, 74, '2.007', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(787, 73, 73, '2.007', '3.05.11/01.2022', 'Speaker ', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(788, 77, 5, '2.011', '1.01.05/01.2022', 'CPU', 41, 'Unit', 'core i7 Gen 12', '25 Inch', 'Intel', 1, '2022', '2022-07-22', '8500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(789, 73, 95, '2.007', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(790, 77, 5, '2.011', '1.01.05/01.2022', 'CPU', 41, 'Unit', 'core i7 Gen 13', '26 Inch', 'Intel', 1, '2022', '2022-07-22', '8500002', 'Baik', '', '', 52, '', 'belum tercetak'),
(791, 73, 76, '2.007', '3.05.14/01.2022', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(792, 77, 66, '2.011', '3.05.04/01.2022', 'Monitor', 41, 'Unit', '24 Inch', '', 'Samsung', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(793, 73, 63, '2.007', '3.05.01/01.2012', 'CPU ', 1, 'Pcs', 'Core i3', '', 'Intel', 1, '2012', '', '1500000', 'Baik', '', '', 14, '', 'belum tercetak'),
(794, 77, 120, '2.011', '3.05.25/01.2022', 'Keyboard', 41, 'Unit', '', '', 'VOTRE', 1, '2022', '2022-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(795, 73, 66, '2.007', '3.05.04/01.2012', 'Monitor ', 1, 'Unit', '17 Inch', '', 'Dell', 1, '2012', '', '850000', 'Baik', '', '', 26, '', 'belum tercetak'),
(796, 77, 119, '2.011', '3.05.24/01.2022', 'Mouse', 41, 'Unit', '', '', 'Genius', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 53, '', 'belum tercetak'),
(797, 73, 120, '2.007', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', '', '', 'Votre', 1, '2020', '', '75000', 'Baik', '', '', 54, '', 'belum tercetak'),
(798, 77, 121, '2.011', '3.05.26/01.2022', 'Splitter VGA', 1, 'Unit', '', '', 'MT-VIKI', 1, '2022', '2022-07-22', '200000', 'Baik', '', '', 55, '', 'belum tercetak'),
(799, 73, 119, '2.007', '3.05.24/01.2020', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2020', '', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(800, 73, 84, '2.007', '3.05.22/01.2020', 'Splitter VGA', 1, 'Unit', '', '', 'MT-VIKI', 1, '2020', '', '75000', 'Baik', '', '', 65, '', 'belum tercetak'),
(801, 77, 76, '2.011', '3.05.14/01.2022', 'LCD Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '4600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(802, 73, 4, '2.007', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-01-10', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(803, 77, 55, '2.011', '3.03.20/01.2022', 'Air Conditioning', 3, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(804, 73, 52, '2.007', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-01-10', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(805, 77, 74, '2.011', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '550000', 'Baik', '', '', 49, '', 'belum tercetak'),
(806, 77, 73, '2.011', '3.05.11/01.2022', 'Speaker', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '685000', 'Baik', '', '', 36, '', 'belum tercetak'),
(807, 77, 95, '2.011', '3.06.11/01.2022', 'Micropone', 1, 'Unit', 'ZM-260z', '', 'TOA', 1, '2022', '2022-07-22', '175000', 'Baik', '', '', 50, '', 'belum tercetak'),
(808, 77, 46, '2.011', '3.03.11/01.2022', 'White Board', 1, 'Pcs', '240X120', 'list almunium', 'Sakura', 1, '2022', '2022-07-22', '650000', 'Baik', '', '', 64, '', 'belum tercetak'),
(809, 77, 117, '2.011', '3.03.26/01.2022', 'Jam Dinding', 1, 'Pcs', '', '', 'Standart', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(810, 74, 36, '2.008', '3.03.01/01.2022', 'Kursi Kuliah ', 40, 'Pcs', 'Futura 747', 'Hitam', 'Futura ', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(811, 78, 40, '2.012', '3.03.05/01.2012', 'Meja Komputer', 7, 'Pcs', 'Buatan', 'Abu abu /putih', '', 1, '2012', '2012-10-02', '100000', 'Baik', '', '', 23, '', 'belum tercetak'),
(812, 74, 36, '2.008', '3.03.01/01.2022', 'Kursi  Dosen ', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(813, 74, 39, '2.008', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'Coklat', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(814, 74, 48, '2.008', '3.03.13/01.2022', 'Backdrop kelas', 1, 'Unit', '', 'Kayu, Kaca', 'Orange', 1, '2022', '2022-07-22', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(815, 74, 117, '2.008', '3.03.26/01.2022', 'Jam Dinding ', 1, 'Pcs', '', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(816, 74, 55, '2.008', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(817, 74, 74, '2.008', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(818, 78, 36, '2.012', '3.03.01/01.2012', 'Kursi Dosen', 5, 'Pcs', 'kursi susun', 'biru', 'Futura', 1, '2012', '2012-10-02', '100000', 'Baik', '', '', 16, '', 'belum tercetak'),
(819, 74, 73, '2.008', '3.05.11/01.2022', 'Speaker ', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(820, 78, 36, '2.012', '3.03.01/01.2012', 'Kursi Lipat', 2, 'Pcs', 'cosmo 541', 'hitam', 'Chitose', 1, '2012', '2012-02-12', '125000', 'Baik', '', '', 16, '', 'belum tercetak'),
(821, 74, 95, '2.008', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 24, '', 'belum tercetak'),
(822, 74, 76, '2.008', '3.05.14/01.2022', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(823, 74, 63, '2.008', '3.05.01/01.2012', 'CPU ', 1, 'Unit', 'Core i3', '', 'Intel', 1, '2012', '', '1500000', 'Baik', '', '', 14, '', 'belum tercetak'),
(824, 78, 5, '2.012', '1.01.05/01.2012', 'CPU', 2, 'Unit', 'core i3', '', 'Intel', 1, '2012', '2012-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(825, 74, 66, '2.008', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '17 Inch', '', 'Dell', 1, '2012', '', '850000', 'Baik', '', '', 26, '', 'belum tercetak'),
(826, 78, 5, '2.012', '1.01.05/01.2012', 'CPU', 1, 'Unit', 'Pentium G2030', '', '', 1, '2012', '', '800000', 'Baik', '', '', 52, '', 'belum tercetak'),
(827, 74, 120, '2.008', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', '', '', 'Votre', 1, '2020', '', '75000', 'Baik', '', '', 53, '', 'belum tercetak'),
(828, 78, 66, '2.012', '3.05.04/01.2020', 'Monitor', 2, 'Unit', '', '19 Inch', 'LG', 1, '2020', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(829, 74, 119, '2.008', '3.05.24/01.2020', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2020', '', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(830, 74, 84, '2.008', '3.05.22/01.2020', 'Spliter VGA', 1, 'Unit', '', '', 'MT-VIKI', 1, '2020', '', '75000', 'Baik', '', '', 65, '', 'belum tercetak'),
(831, 78, 66, '2.012', '3.05.04/01.2020', 'Monitor', 1, 'Unit', '', '19 Inch', 'Dell', 1, '2020', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(832, 74, 4, '2.008', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(833, 78, 120, '2.012', '3.05.25/01.2022', 'Keyboard', 3, 'Unit', 'K120', '', 'Logitech', 1, '2022', '2022-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(834, 74, 52, '2.008', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(835, 78, 119, '2.012', '3.05.24/01.2022', 'Mouse', 3, 'Unit', 'B100', '', 'Logitech', 1, '2022', '2022-07-22', '75000', 'Baik', '', '', 53, '', 'belum tercetak'),
(836, 78, 55, '2.012', '3.03.20/01.2022', 'Air Conditioning', 3, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(837, 78, 117, '2.012', '3.03.26/01.2022', 'Jam Dinding', 1, 'Pcs', '', '', 'Standart', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(838, 75, 36, '2.009', '3.03.01/01.2022', 'Kursi Kuliah', 40, 'Pcs', 'Futura 747', 'Hitam', 'Futura ', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(839, 75, 36, '2.009', '3.03.01/01.2022', 'Kursi Dosen', 1, 'Pcs', 'Easio III VCR', 'Merah', 'IDACHI', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(840, 75, 39, '2.009', '3.03.04/01.2022', 'Meja Dosen', 1, 'Pcs', '', 'Coklat', 'Orange', 1, '2022', '2022-07-22', '750000', 'Baik', '', '', 22, '', 'belum tercetak'),
(841, 75, 48, '2.009', '3.03.13/01.2022', 'Backdrop Kelas', 1, 'Pcs', '', 'Kayu, Kaca', 'Orange', 1, '2022', '2022-07-22', '25100000', 'Baik', '', '', 59, '', 'belum tercetak'),
(842, 75, 117, '2.009', '3.03.26/01.2022', 'Jam Dinding', 10, 'Pcs', '', '', 'Diamond', 1, '2022', '2022-07-22', '50000', 'Baik', '', '', 51, '', 'belum tercetak'),
(843, 79, 39, '2.013', '3.03.04/01.2022', 'Meja Rektor', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(844, 75, 55, '2.009', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(845, 79, 39, '2.013', '3.03.04/01.2022', 'Meja rapat sedang Rektor', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(846, 75, 74, '2.009', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-230W', '', 'TOA', 1, '2022', '2022-07-22', '998000', 'Baik', '', '', 49, '', 'belum tercetak'),
(847, 79, 39, '2.013', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(848, 75, 73, '2.009', '3.05.11/01.2022', 'Speaker', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(849, 75, 95, '2.009', '3.06.11/01.2022', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2022', '2022-07-22', '210000', 'Baik', '', '', 50, '', 'belum tercetak'),
(850, 79, 39, '2.013', '3.03.04/01.2022', 'Meja Sofa', 2, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 22, '', 'belum tercetak'),
(851, 79, 39, '2.013', '3.03.04/01.2022', 'Meja Pantry Rektor', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(852, 75, 76, '2.009', '3.05.14/01.2022', 'LCD Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(853, 75, 63, '2.009', '3.05.01/01.2016', 'ALL In One', 1, 'Unit', 'Core i3', '20 Inch', 'Dell', 1, '2016', '2016-07-22', '7000000', 'Baik', '', '', 29, '', 'belum tercetak'),
(854, 75, 120, '2.009', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', '', '', 'Votre', 1, '2020', '2020-07-22', '75000', 'Baik', '', '', 54, '', 'belum tercetak'),
(855, 79, 130, '2.013', '3.03.30/01.2022', 'Kasur', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '600001', 'Baik', '', '', 73, '', 'belum tercetak'),
(856, 75, 119, '2.009', '3.05.24/01.2020', 'Mouse', 1, 'Unit', '', '', 'Genius', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(857, 75, 4, '2.009', '1.01.04/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '10000', 'Baik', '', '', 48, '', 'belum tercetak'),
(858, 79, 42, '2.013', '3.03.07/01.2022', 'Almari Hiaas Rektor', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(859, 75, 52, '2.009', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-07-22', '45000', 'Baik', '', '', 47, '', 'belum tercetak'),
(860, 79, 42, '2.013', '3.03.07/01.2022', 'Almari Pantry Rektor', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(861, 79, 48, '2.013', '3.03.13/01.2022', 'Bacdrop Rektor', 1, 'Set', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '5000000', 'Baik', '', '', 59, '', 'belum tercetak'),
(862, 79, 37, '2.013', '3.03.02/01.2022', 'Kursi Putar Rektor', 1, 'Unit', 'Emporium', 'Oscar', 'Idachi', 1, '2022', '2022-07-22', '5500000', 'Baik', '', '', 18, '', 'belum tercetak'),
(863, 67, 119, '2.001', '3.05.24/01.2020', 'Mouse', 1, 'Pcs', '', '', 'Genius', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(864, 79, 36, '2.013', '3.03.01/01.2022', 'Kursi Hadap', 8, 'Unit', 'Presso III VCR', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '2700000', 'Baik', '', '', 16, '', 'belum tercetak'),
(865, 79, 36, '2.013', '3.03.01/01.2022', 'Kursi Sofa Kotak', 6, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(866, 79, 63, '2.013', '3.05.01/01.2022', 'ALL In One', 1, 'Unit', 'core i3', '20 Inch', 'Asus', 1, '2022', '2022-07-22', '8500000', 'Baik', '', '', 14, '', 'belum tercetak'),
(867, 79, 120, '2.013', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(868, 79, 119, '2.013', '3.05.24/01.2020', 'Mouse', 1, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(869, 79, 57, '2.013', '3.03.22/01.2022', 'Televisi LED', 1, 'Unit', 'LG 65UQ8000PSC', '65 Inch', 'LG', 1, '2022', '2022-07-22', '7000000', 'Baik', '', '', 56, '', 'belum tercetak'),
(870, 79, 55, '2.013', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '4000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(871, 79, 104, '2.013', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'K-T7703', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(872, 79, 117, '2.013', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(873, 79, 46, '2.013', '3.03.11/01.2022', 'White Board Agenda', 1, 'Unit', '', 'aluminium', 'Surya', 1, '2022', '2022-07-22', '650000', 'Baik', '', '', 64, '', 'belum tercetak'),
(875, 79, 52, '2.013', '3.03.17/01.2022', 'Pigura', 4, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(876, 79, 53, '2.013', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(877, 80, 39, '2.014', '3.03.04/01.2022', 'Meja Pimpinan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(878, 80, 39, '2.014', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(879, 80, 39, '2.014', '3.03.04/01.2022', 'Meja Sofa', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(880, 80, 42, '2.014', '3.03.07/01.2022', 'Almari Wakil Rektor', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(881, 80, 37, '2.014', '3.03.02/01.2022', 'Kursi Putar Wakil Rektor', 1, 'Unit', 'Recom I ALTC', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 18, '', 'belum tercetak'),
(882, 80, 36, '2.014', '3.03.01/01.2022', 'Kursi Hadap', 2, 'Unit', 'Presso III VCR', '', 'Idachi', 1, '2022', '2022-07-22', '2700000', 'Baik', '', '', 16, '', 'belum tercetak'),
(883, 80, 126, '2.014', '3.03.28/01.2022', 'Kursi Sofa Kotak', 4, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 61, '', 'belum tercetak'),
(884, 80, 5, '2.014', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(885, 80, 5, '2.014', '1.01.05/01.2018', 'CPU', 1, 'Unit', 'core i7', '', 'Intel', 1, '2018', '2018-07-22', '5000000', 'Baik', '', '', 52, '', 'belum tercetak'),
(886, 80, 66, '2.014', '3.05.04/01.2018', 'Monitor', 1, 'Unit', '', '20 Inch', 'HP', 1, '2018', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(887, 80, 120, '2.014', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(888, 80, 119, '2.014', '3.05.24/01.2020', 'Mouse', 1, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(889, 80, 55, '2.014', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '4000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(890, 80, 104, '2.014', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'K-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(891, 80, 117, '2.014', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(892, 80, 52, '2.014', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(893, 80, 53, '2.014', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(894, 81, 39, '2.015', '3.03.04/01.2022', 'Meja Pimpinan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(895, 81, 39, '2.015', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(896, 81, 39, '2.015', '3.03.04/01.2022', 'Meja Sofa', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(897, 81, 42, '2.015', '3.03.07/01.2022', 'Almari Wakil Rektor', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(898, 81, 37, '2.015', '3.03.02/01.2022', 'Kursi Putar Wakil Rektor', 1, 'Unit', 'Recom I ALTC', 'Oscar', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 18, '', 'belum tercetak'),
(899, 81, 36, '2.015', '3.03.01/01.2022', 'Kursi Hadap', 2, 'Unit', 'Presso III VCR', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '2700000', 'Baik', '', '', 16, '', 'belum tercetak'),
(900, 81, 36, '2.015', '3.03.01/01.2022', 'Kursi Sofa Kotak', 4, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(901, 81, 5, '2.015', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(902, 81, 66, '2.015', '3.05.04/01.2018', 'Monitor', 1, 'Unit', '', '19 Inch', 'Asus', 1, '2018', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(903, 81, 120, '2.015', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(904, 81, 119, '2.015', '3.05.24/01.2020', 'Mouse', 1, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(905, 81, 104, '2.015', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(906, 81, 117, '2.015', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(907, 81, 52, '2.015', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(908, 81, 53, '2.015', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(909, 82, 39, '2.016', '3.03.04/01.2022', 'Meja Karyawan Besar', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(910, 82, 39, '2.016', '3.03.04/01.2022', 'Meja Karyawan Standart', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(911, 82, 39, '2.016', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(912, 82, 39, '2.016', '3.03.04/01.2022', 'Meja Lobi', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(913, 82, 39, '2.016', '3.03.04/01.2022', 'Meja Sofa', 5, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(914, 82, 42, '2.016', '3.03.07/01.2022', 'Almari File', 4, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(915, 82, 42, '2.016', '3.03.07/01.2022', 'Almari Pantry', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(916, 82, 36, '2.016', '3.03.01/01.2022', 'Kursi Karyawan', 3, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(917, 82, 36, '2.016', '3.03.01/01.2022', 'Kursi Hadap', 4, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '2700000', 'Baik', '', '', 16, '', 'belum tercetak'),
(918, 82, 36, '2.016', '3.03.01/01.2022', 'Kursi Sofa Kotak', 5, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(919, 82, 5, '2.016', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(920, 82, 5, '2.016', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'Dual Core', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(921, 82, 66, '2.016', '3.05.04/01.2018', 'Monitor', 1, 'Unit', '', '20 Inch', 'LG', 1, '2018', '2018-07-22', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(922, 82, 66, '2.016', '3.05.04/01.2018', 'Monitor', 1, 'Unit', '', '19 Inch', 'Dell', 1, '2018', '2018-07-22', '1600001', 'Baik', '', '', 26, '', 'belum tercetak'),
(923, 82, 120, '2.016', '3.05.25/01.2020', 'Keyboard', 2, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(924, 82, 119, '2.016', '3.05.24/01.2020', 'Mouse', 2, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(925, 82, 69, '2.016', '3.05.07/01.2022', 'Printer', 1, 'Unit', 'L3210', '', 'Epson', 1, '2022', '2022-07-22', '2295000', 'Baik', '', '', 30, '', 'belum tercetak'),
(926, 82, 123, '2.016', '3.03.27/01.2019', 'Scanner', 1, 'Unit', 'scansnap Si300i', '', 'Fujitsu', 1, '2019', '', '4600000', 'Baik', '', '', 34, '', 'belum tercetak'),
(927, 82, 104, '2.016', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(928, 82, 116, '2.016', '3.03.25/01.2022', 'Dispenser', 1, 'Unit', 'SWD 72 ENL WH', '', 'Sharp', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 46, '', 'belum tercetak'),
(929, 82, 55, '2.016', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '4000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(930, 82, 117, '2.016', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(931, 82, 52, '2.016', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(932, 82, 53, '2.016', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(933, 83, 39, '2.017', '3.03.04/01.2022', 'Meja FO', 3, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(934, 83, 39, '2.017', '3.03.04/01.2022', 'Cresenda Pintu', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 22, '', 'belum tercetak'),
(935, 83, 42, '2.017', '3.03.07/01.2022', 'Almari Hias', 1, 'Unit', '', 'polos', 'Orange', 1, '2022', '2022-07-22', '800000', 'Baik', '', '', 7, '', 'belum tercetak'),
(936, 83, 36, '2.017', '3.03.01/01.2022', 'Kursi Karyawan', 3, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 16, '', 'belum tercetak'),
(937, 83, 36, '2.017', '3.03.01/01.2022', 'Kursi Hadap', 6, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(938, 83, 36, '2.017', '3.03.01/01.2022', 'Kursi Sofa Kotak', 3, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(939, 83, 36, '2.017', '3.03.01/01.2022', 'Kursi Bandara', 1, 'Unit', 'PS 54 LF', 'Stainlees', 'Chitose', 1, '2022', '2022-07-22', '1800000', 'Baik', '', '', 16, '', 'belum tercetak'),
(940, 83, 48, '2.017', '3.03.13/01.2022', 'Bacdrop Pendaftaran', 1, 'Pcs', '', 'kayu warna warni', 'Orange', 1, '2022', '2022-07-22', '5000000', 'Baik', '', '', 59, '', 'belum tercetak'),
(941, 83, 5, '2.017', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', 'Gen 9', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(942, 83, 66, '2.017', '3.05.04/01.2018', 'Monitor', 1, 'Unit', '', '24 Inch', 'Samsung', 1, '2018', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(943, 83, 120, '2.017', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(944, 83, 119, '2.017', '3.05.24/01.2020', 'Mouse', 1, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(945, 83, 69, '2.017', '3.05.07/01.2019', 'Printer', 1, 'Unit', 'L360', '', 'Epson', 1, '2019', '', '1650000', 'Baik', '', '', 30, '', 'belum tercetak'),
(946, 83, 104, '2.017', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-DT 521', '', 'Panasonic', 1, '2022', '2022-07-22', '550000', 'Baik', '', '', 40, '', 'belum tercetak'),
(947, 83, 70, '2.017', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(948, 83, 55, '2.017', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(949, 83, 117, '2.017', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(950, 83, 52, '2.017', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(951, 83, 53, '2.017', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(952, 84, 39, '2.018', '3.03.04/01.2022', 'Meja Pimpinan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(953, 84, 39, '2.018', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 22, '', 'belum tercetak'),
(954, 84, 39, '2.018', '3.03.04/01.2012', 'Meja Karyawan', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(955, 84, 39, '2.018', '3.03.04/01.2022', 'Meja Karyawan', 4, 'Unit', '', '', 'Orange', 1, '2022', '2022-07-22', '1200000', 'Baik', '', '', 22, '', 'belum tercetak'),
(956, 84, 36, '2.018', '3.03.01/01.2022', 'Kursi Pimpinan', 1, 'Unit', 'PRESO II ALTC', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(957, 84, 42, '2.018', '3.03.07/01.2022', 'Almari Dinding besar', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(958, 84, 36, '2.018', '3.03.01/01.2022', 'Kursi Karyawan', 4, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(959, 84, 36, '2.018', '3.03.01/01.2022', 'Kursi Biru', 5, 'Pcs', 'kursi susun', 'biru', 'Brother', 1, '2022', '2022-07-22', '205000', 'Baik', '', '', 16, '', 'belum tercetak'),
(960, 84, 36, '2.018', '3.03.01/01.2022', 'Kursi Hadap', 2, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(961, 84, 42, '2.018', '3.03.07/01.2022', 'Almari Dinding besar', 1, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(962, 84, 5, '2.018', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(963, 84, 5, '2.018', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i5', 'Gen 9', 'Intel', 1, '2016', '2016-07-22', '1500001', 'Baik', '', '', 52, '', 'belum tercetak'),
(964, 84, 5, '2.018', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500002', 'Baik', '', '', 52, '', 'belum tercetak'),
(965, 84, 66, '2.018', '3.05.04/01.2018', 'Monitor', 3, 'Unit', '', '17 Inch', 'Dell', 1, '2018', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(966, 84, 120, '2.018', '3.05.25/01.2020', 'Keyboard', 3, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(967, 84, 119, '2.018', '3.05.24/01.2020', 'Mouse', 3, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(968, 84, 104, '2.018', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(969, 84, 70, '2.018', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(970, 84, 55, '2.018', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(971, 84, 117, '2.018', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(972, 84, 52, '2.018', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(973, 84, 53, '2.018', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(974, 85, 39, '2.019', '3.03.04/01.2022', 'Meja Pimpinan', 3, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(975, 85, 39, '2.019', '3.03.04/01.2022', 'Meja Karyawan', 4, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(976, 85, 39, '2.019', '3.03.04/01.2022', 'Cresenda', 3, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 22, '', 'belum tercetak'),
(977, 85, 42, '2.019', '3.03.07/01.2022', 'Almari Dinding besar', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(978, 85, 36, '2.019', '3.03.01/01.2022', 'Kursi Pimpinan', 3, 'Unit', 'PRESO II ALTC', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(979, 85, 36, '2.019', '3.03.01/01.2022', 'Kursi Karyawan', 4, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(980, 85, 36, '2.019', '3.03.01/01.2022', 'Kursi Hadap', 6, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(981, 85, 5, '2.019', '1.01.05/01.2016', 'CPU', 3, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(982, 85, 5, '2.019', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'Core 2 Duo', '', '', 1, '2016', '', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(983, 85, 5, '2.019', '1.01.05/01.2012', 'CPU', 1, 'Unit', 'Pentium G2030', '', '', 1, '2012', '', '800000', 'Baik', '', '', 52, '', 'belum tercetak'),
(984, 85, 66, '2.019', '3.05.04/01.2012', 'Monitor', 3, 'Unit', '', '16 Inch', 'Viewsonic', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(985, 85, 66, '2.019', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '16 Inch', 'Acer', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(986, 85, 66, '2.019', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '16 Inch', 'LG', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(987, 85, 66, '2.019', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '17 Inch', 'Dell', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(988, 85, 120, '2.019', '3.05.25/01.2020', 'Keyboard', 5, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(989, 85, 119, '2.019', '3.05.24/01.2020', 'Mouse', 5, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak');
INSERT INTO `tbl_barang` (`id_barang`, `id_ruangan`, `id_subklasifikasi`, `kode_lokasi`, `kode_barang`, `nama_barang`, `jumlah_barang`, `satuan_barang`, `spesifikasi_teknis`, `serial_number`, `model_number`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `harga_perolehan`, `keadaan_barang`, `peruntukan`, `keterangan`, `id_jenis_barang`, `foto_barang`, `cetak`) VALUES
(990, 85, 69, '2.019', '3.05.07/01.2014', 'Printer', 1, 'Unit', 'MP287', '', 'Canon', 1, '2014', '', '250000', 'Baik', '', '', 30, '', 'belum tercetak'),
(991, 85, 123, '2.019', '3.03.27/01.2019', 'Scanner', 1, 'Unit', 'scansnap Si300i', '', 'Fujitsu', 1, '2019', '', '4600000', 'Baik', '', '', 34, '', 'belum tercetak'),
(992, 85, 104, '2.019', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(993, 85, 70, '2.019', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(994, 85, 55, '2.019', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(995, 85, 117, '2.019', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(996, 85, 52, '2.019', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(997, 85, 53, '2.019', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(998, 86, 39, '2.020', '3.03.04/01.2022', 'Meja Pimpinan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(999, 86, 39, '2.020', '3.03.04/01.2022', 'Meja Karyawan', 3, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1000, 86, 39, '2.020', '3.03.04/01.2022', 'Cresenda', 2, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1001, 86, 42, '2.020', '3.03.07/01.2022', 'Almari Arsip', 1, 'Set', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1002, 86, 42, '2.020', '3.03.07/01.2022', 'Almari Pantry Panjang', 1, 'Set', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1003, 86, 36, '2.020', '3.03.01/01.2022', 'Kursi Pimpinan', 3, 'Unit', 'PRESO II ALTC', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1004, 86, 36, '2.020', '3.03.01/01.2022', 'Kursi Karyawan', 4, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1005, 86, 36, '2.020', '3.03.01/01.2022', 'Kursi Hadap', 5, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1006, 86, 115, '2.020', '3.03.24/01.2022', 'Sofa L', 1, 'Unit', '', 'coklat', 'GMM', 1, '2022', '2022-07-22', '5000000', 'Baik', '', '', 45, '', 'belum tercetak'),
(1007, 86, 5, '2.020', '1.01.05/01.2016', 'CPU', 3, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '2000000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1008, 86, 5, '2.020', '1.01.05/01.2012', 'CPU', 1, 'Unit', 'Dual Core', '', '', 1, '2012', '', '800000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1009, 86, 66, '2.020', '3.05.04/01.2020', 'Monitor', 2, 'Unit', '', '20 Inch', 'LG', 1, '2020', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1010, 86, 66, '2.020', '3.05.04/01.2020', 'Monitor', 1, 'Unit', '', '22 Inch', 'Acer', 1, '2020', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1011, 86, 66, '2.020', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '16 Inch', 'BenQ', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1012, 86, 120, '2.020', '3.05.25/01.2020', 'Keyboard', 5, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1013, 86, 119, '2.020', '3.05.24/01.2020', 'Mouse', 5, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1014, 86, 69, '2.020', '3.05.07/01.2020', 'Printer', 1, 'Unit', 'L360', '', 'Epson', 1, '2020', '', '1650000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1015, 86, 123, '2.020', '3.03.27/01.2019', 'Scanner', 1, 'Unit', 'scansnap Si300i', '', 'Fujitsu', 1, '2019', '', '4600000', 'Baik', '', '', 34, '', 'belum tercetak'),
(1016, 86, 104, '2.020', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(1017, 86, 70, '2.020', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(1018, 86, 116, '2.020', '3.03.25/01.2022', 'Dispenser', 1, 'Unit', '', '', '', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 46, '', 'belum tercetak'),
(1019, 86, 55, '2.020', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(1020, 86, 117, '2.020', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1021, 86, 52, '2.020', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1022, 86, 53, '2.020', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 1, '', 'belum tercetak'),
(1023, 87, 39, '2.021', '3.03.04/01.2022', 'Meja Loket Keuangan', 1, 'Set', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '5000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1024, 87, 36, '2.021', '3.03.01/01.2022', 'Kursi Karyawan', 3, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1025, 87, 42, '2.021', '3.03.07/01.2022', 'Almari Arsip', 1, 'Set', '', 'coklat', 'Orange', 1, '2022', '2022-07-02', '2500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1026, 87, 48, '2.021', '3.03.13/01.2022', 'Bacdrop Loket', 1, 'Pcs', '', 'kayu warna warni', 'Orange', 1, '2022', '2022-07-22', '7500000', 'Baik', '', '', 59, '', 'belum tercetak'),
(1027, 87, 5, '2.021', '1.01.05/01.2016', 'CPU', 2, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1028, 87, 66, '2.021', '3.05.04/01.2020', 'Monitor', 2, 'Unit', '', '19 Inch', 'Dell', 1, '2020', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1029, 87, 120, '2.021', '3.05.25/01.2020', 'Keyboard', 2, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1030, 87, 119, '2.021', '3.05.24/01.2020', 'Mouse', 2, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-20', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1031, 87, 69, '2.021', '3.05.07/01.2020', 'Printer', 1, 'Unit', 'L360', '', 'Epson', 1, '2020', '', '1650000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1032, 87, 104, '2.021', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(1033, 87, 70, '2.021', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(1034, 87, 117, '2.021', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1035, 87, 52, '2.021', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1036, 87, 53, '2.021', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(1037, 89, 39, '2.023', '3.03.04/01.2022', 'Meja Rapat Besar', 1, 'Set', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '10000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1038, 89, 36, '2.023', '3.03.01/01.2022', 'Kursi Rapat', 19, 'Unit', 'Presso III VCR', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '2700000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1039, 89, 37, '2.023', '3.03.02/01.2022', 'Kursi Rapat Putar', 14, 'Unit', 'AVIERO II P-AL', 'Oscar', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 18, '', 'belum tercetak'),
(1040, 89, 48, '2.023', '3.03.13/01.2022', 'Bacdrop Rapat', 1, 'Pcs', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '7500000', 'Baik', '', '', 59, '', 'belum tercetak'),
(1041, 89, 57, '2.023', '3.03.22/01.2022', 'Televisi LED', 1, 'Unit', 'LG 65UQ8000PSC', '65 Inch', 'LG', 1, '2022', '2022-07-22', '7000000', 'Baik', '', '', 56, '', 'belum tercetak'),
(1042, 89, 104, '2.023', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(1043, 89, 70, '2.023', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(1044, 89, 117, '2.023', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1045, 89, 52, '2.023', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1046, 89, 53, '2.023', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(1047, 88, 39, '2.022', '3.03.04/01.2022', 'Meja Pimpinan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1048, 88, 39, '2.022', '3.03.04/01.2022', 'Meja Karyawan', 4, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1049, 88, 39, '2.022', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1050, 88, 39, '2.022', '3.03.04/01.2014', 'Cresenda', 1, 'Unit', '', 'coklat', 'SBF', 1, '2014', '', '500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1051, 88, 39, '2.022', '3.03.04/01.2018', 'Meja Dispenser', 1, 'Unit', '', '', 'Toko', 1, '2018', '', '125000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1052, 88, 42, '2.022', '3.03.07/01.2014', 'Almari Besar', 1, 'Unit', '', 'coklat', 'SBF', 1, '2014', '2014-07-22', '1500000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1053, 88, 43, '2.022', '3.03.08/01.2014', 'Almari Kaca Arsip', 1, 'Unit', '', 'coklat', 'SBF', 1, '2014', '2014-07-22', '1500000', 'Baik', '', '', 6, '', 'belum tercetak'),
(1054, 88, 36, '2.022', '3.03.01/01.2022', 'Kursi Pimpinan', 1, 'Unit', 'PRESO II ALTC', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1055, 88, 36, '2.022', '3.03.01/01.2022', 'Kursi Karyawan', 4, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1056, 88, 36, '2.022', '3.03.01/01.2022', 'Kursi Hadap', 2, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1057, 88, 36, '2.022', '3.03.01/01.2022', 'Kursi Sofa Kotak', 2, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1058, 88, 5, '2.022', '1.01.05/01.2016', 'CPU', 2, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1059, 88, 5, '2.022', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'Core 2 Duo', '', 'Intel', 1, '2016', '', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1060, 88, 66, '2.022', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '19 Inch', 'Asus', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1061, 88, 66, '2.022', '3.05.04/01.2012', 'Monitor', 2, 'Unit', '', '19 Inch', 'Dell', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1062, 88, 120, '2.022', '3.05.25/01.2020', 'Keyboard', 3, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1063, 88, 119, '2.022', '3.05.24/01.2020', 'Mouse', 3, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1064, 88, 69, '2.022', '3.05.07/01.2022', 'Printer', 1, 'Unit', 'L3210', '', 'Epson', 1, '2022', '2022-08-22', '2560000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1065, 88, 69, '2.022', '3.05.07/01.2014', 'Printer', 1, 'Unit', 'IP 2270', '', 'Canon', 1, '2014', '', '250000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1066, 88, 123, '2.022', '3.03.27/01.2019', 'Scanner', 1, 'Unit', 'scansnap Si300i', '', 'Fujitsu', 1, '2019', '', '4600000', 'Baik', '', '', 34, '', 'belum tercetak'),
(1067, 88, 104, '2.022', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(1068, 88, 116, '2.022', '3.03.25/01.2020', 'Dispenser', 1, 'Unit', 'WD-185H', '', 'Miyako', 1, '2020', '', '150000', 'Baik', '', '', 46, '', 'belum tercetak'),
(1069, 88, 70, '2.022', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(1070, 88, 55, '2.022', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(1071, 88, 117, '2.022', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1072, 88, 52, '2.022', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1073, 88, 53, '2.022', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(1074, 90, 39, '2.024', '3.03.04/01.2022', 'Meja Pimpinan', 3, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1075, 90, 39, '2.024', '3.03.04/01.2022', 'Meja Karyawan', 6, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1076, 90, 39, '2.024', '3.03.04/01.2022', 'Meja Meeting LP3M', 6, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1077, 90, 39, '2.024', '3.03.04/01.2022', 'Cresenda', 3, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1078, 90, 39, '2.024', '3.03.04/01.2022', 'Meja Sofa', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1079, 90, 39, '2.024', '3.03.04/01.2018', 'Meja Dispenser', 1, 'Unit', '', '', 'Toko', 1, '2018', '', '125000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1080, 90, 42, '2.024', '3.03.07/01.2022', 'Almari Dinding Sedang', 2, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1081, 90, 36, '2.024', '3.03.01/01.2022', 'Kursi Pimpinan', 1, 'Unit', 'PRESO II ALTC', 'coklat', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1082, 90, 36, '2.024', '3.03.01/01.2022', 'Kursi Karyawan', 5, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1083, 90, 36, '2.024', '3.03.01/01.2022', 'Kursi Dosen', 6, 'Unit', '', 'Susun', 'Futura', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1084, 90, 36, '2.024', '3.03.01/01.2022', 'Kursi Hadap', 2, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1085, 90, 36, '2.024', '3.03.01/01.2022', 'Kursi Sofa Kotak', 3, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1086, 90, 5, '2.024', '1.01.05/01.2016', 'CPU', 4, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1087, 90, 5, '2.024', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'Core 2 Duo', '', '', 1, '2016', '', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1088, 90, 66, '2.024', '3.05.04/01.2012', 'Monitor', 2, 'Unit', '', '16 Inch', 'Viewsonic', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1089, 90, 66, '2.024', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '16 Inch', 'Acer', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1090, 90, 66, '2.024', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '19 Inch', 'LG', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1091, 90, 66, '2.024', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '19 Inch', 'Dell', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1092, 90, 120, '2.024', '3.05.25/01.2020', 'Keyboard', 5, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1093, 90, 119, '2.024', '3.05.24/01.2020', 'Mouse', 5, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1094, 90, 69, '2.024', '3.05.07/01.2014', 'Printer', 1, 'Unit', 'MP287', '', 'Canon', 1, '2014', '', '250000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1095, 90, 69, '2.024', '3.05.07/01.2014', 'Printer', 1, 'Unit', 'MP 237', '', 'Canon', 1, '2014', '', '250000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1096, 90, 123, '2.024', '3.03.27/01.2019', 'Scanner', 1, 'Unit', 'scansnap Si300i', '', 'Fujitsu', 1, '2019', '', '4600000', 'Baik', '', '', 34, '', 'belum tercetak'),
(1097, 90, 57, '2.024', '3.03.22/01.2022', 'Televisi LED', 1, 'Unit', '2T- C32', '', 'Sharp', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 56, '', 'belum tercetak'),
(1098, 90, 104, '2.024', '3.06.20/01.2022', 'Telephone', 1, 'Unit', 'KX-TS505M', '', 'Panasonic', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 40, '', 'belum tercetak'),
(1099, 90, 70, '2.024', '3.05.08/01.2019', 'HUB', 1, 'Unit', '8 Port', '', 'Tp-Link', 1, '2019', '', '100000', 'Baik', '', '', 63, '', 'belum tercetak'),
(1100, 90, 116, '2.024', '3.03.25/01.2020', 'Dispenser', 1, 'Unit', 'WD-185H', '', 'Miyako', 1, '2020', '', '150000', 'Baik', '', '', 46, '', 'belum tercetak'),
(1101, 90, 55, '2.024', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(1102, 90, 117, '2.024', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1103, 90, 52, '2.024', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1104, 90, 53, '2.024', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(1105, 91, 39, '2.025', '3.03.04/01.2022', 'Meja Resepsionis', 1, 'Set', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1106, 91, 36, '2.025', '3.03.01/01.2022', 'Kursi Hadap', 1, 'Unit', 'Presso III VCR', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1107, 91, 36, '2.025', '3.03.01/01.2022', 'Kursi Sofa Miring', 16, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1108, 91, 42, '2.025', '3.03.07/01.2022', 'Almari Galery', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '6000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1109, 91, 39, '2.025', '3.03.04/01.2022', 'Meja Sofa', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1110, 91, 5, '2.025', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1111, 91, 66, '2.025', '3.05.04/01.2018', 'Monitor', 1, 'Unit', '', '24 Inch', 'Samsung', 1, '2018', '', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1112, 91, 120, '2.025', '3.05.25/01.2020', 'Keyboard', 1, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1113, 91, 119, '2.025', '3.05.24/01.2020', 'Mouse', 1, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1114, 91, 8, '2.025', '1.02.01/01.2022', 'Finger Print', 1, 'Unit', 'Fingerspot REVO FF182BNC', '', '', 1, '2022', '2022-07-22', '3100000', 'Baik', '', '', 14, '', 'belum tercetak'),
(1115, 91, 117, '2.025', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1116, 91, 52, '2.025', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1117, 91, 53, '2.025', '3.03.18/01.2022', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '125000', 'Baik', '', '', 1, '', 'belum tercetak'),
(1118, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Dekan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1119, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Wakil Dekan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1120, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Wakil Dekan', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1600001', 'Baik', '', '', 22, '', 'belum tercetak'),
(1121, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Arsip (3)', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '2000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1122, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Arsip (1)', 2, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1123, 92, 39, '2.026', '3.03.04/01.2022', 'Cresenda', 3, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '800000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1124, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Pimpinan', 3, 'Unit', 'PRESO II ALTC', 'hitam', 'Idachi', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1125, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Hadap', 6, 'Unit', 'V Pose IIF', 'hijau', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1126, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Sofa Kotak', 3, 'Unit', '', 'warna warrni', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1127, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Sofa', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '600000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1128, 92, 5, '2.026', '1.01.05/01.2016', 'CPU', 2, 'Unit', 'core i5', 'Gen 9', 'Intel', 1, '2016', '2016-07-22', '4500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1129, 92, 5, '2.026', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1130, 92, 66, '2.026', '3.05.04/01.2022', 'Monitor', 2, 'Unit', '', '24 Inch', 'Samsung', 1, '2022', '2022-07-22', '1600000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1131, 92, 66, '2.026', '3.05.04/01.2019', 'Monitor', 2, 'Unit', '', '19 Inch', 'Asus', 1, '2019', '2019-07-22', '1200000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1132, 92, 66, '2.026', '3.05.04/01.2019', 'Monitor', 2, 'Unit', '', '20 Inch', 'LG', 1, '2019', '2019-07-22', '1200000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1133, 92, 120, '2.026', '3.05.25/01.2020', 'Keyboard', 3, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1134, 92, 119, '2.026', '3.05.24/01.2020', 'Mouse', 3, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1135, 92, 123, '2.026', '3.03.27/01.2014', 'Scanner', 1, 'Unit', 'CanonScan LiDE-110', '', 'Canon', 1, '2014', '', '600000', 'Baik', '', '', 34, '', 'belum tercetak'),
(1136, 92, 117, '2.026', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Kikai', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1137, 92, 55, '2.026', '3.03.20/01.2022', 'Air Conditioning', 1, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(1138, 92, 52, '2.026', '3.03.17/01.2022', 'Pigura Struktural', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '350000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1139, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Karyawan', 11, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1140, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Metting', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1141, 92, 39, '2.026', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '800000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1142, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Pengajaran', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '3500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1143, 92, 42, '2.026', '3.03.07/01.2022', 'Almari Arsip (bolak balik)', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '4000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1144, 92, 42, '2.026', '3.03.07/01.2022', 'Almari Loker Dosen', 2, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1145, 92, 42, '2.026', '3.03.07/01.2022', 'Almari Pantry', 2, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1146, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Karyawan', 10, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1147, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Hadap', 9, 'Unit', 'V Pose IIF', 'hitam', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1148, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Susun', 6, 'Unit', '', 'merah', 'Futura', 1, '2022', '2022-07-22', '450000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1149, 92, 5, '2.026', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', 'Gen 2', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1150, 92, 5, '2.026', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1151, 92, 66, '2.026', '3.05.04/01.2012', 'Monitor', 2, 'Unit', '', '19 Inch', 'Dell', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1152, 92, 66, '2.026', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '19 Inch', 'LG', 1, '2012', '', '500000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1153, 92, 120, '2.026', '3.05.25/01.2020', 'Keyboard', 2, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1154, 92, 119, '2.026', '3.05.24/01.2020', 'Mouse', 2, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1155, 92, 5, '2.026', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'Core 2 Duo', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1156, 92, 63, '2.026', '3.05.01/01.2016', 'CPU', 1, 'Unit', 'Pentium G2030', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1157, 92, 66, '2.026', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '19 Inch', 'Dell', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1158, 92, 120, '2.026', '3.05.25/01.2020', 'Keyboard', 2, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1159, 92, 119, '2.026', '3.05.24/01.2020', 'Mouse', 2, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1160, 92, 69, '2.026', '3.05.07/01.2021', 'Printer', 1, 'Unit', 'L120', '', 'Epson', 1, '2021', '', '2560000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1161, 92, 69, '2.026', '3.05.07/01.2012', 'Printer', 1, 'Unit', 'L3110', '', 'Epson', 1, '2012', '', '2560000', 'Baik', '', '', 30, '', 'belum tercetak'),
(1162, 92, 52, '2.026', '3.03.17/01.2022', 'Pigura', 1, 'Unit', 'Visi Misi', '', 'Bikinan', 1, '2022', '2022-07-22', '250000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1163, 92, 117, '2.026', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Kikai', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1164, 92, 39, '2.026', '3.03.04/01.2022', 'Meja Karyawan', 10, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '1000000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1165, 92, 39, '2.026', '3.03.04/01.2022', 'Cresenda', 1, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '800000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1166, 92, 42, '2.026', '3.03.07/01.2022', 'Almari Loker Dosen', 2, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 7, '', 'belum tercetak'),
(1167, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Karyawan', 10, 'Unit', 'Idachi Easio I', 'Net', 'Idachi', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1168, 92, 36, '2.026', '3.03.01/01.2022', 'Kursi Hadap', 9, 'Unit', '', 'coklat', 'Orange', 1, '2022', '2022-07-22', '850000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1169, 92, 5, '2.026', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'core i3', 'Gen 7', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1170, 92, 5, '2.026', '1.01.05/01.2016', 'CPU', 1, 'Unit', 'Core 2 Duo', '', 'Intel', 1, '2016', '2016-07-22', '1500000', 'Baik', '', '', 52, '', 'belum tercetak'),
(1171, 92, 66, '2.026', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '19 Inch', 'Dell', 1, '2012', '', '550000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1172, 92, 66, '2.026', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '', '19 Inch', 'LG', 1, '2012', '', '500000', 'Baik', '', '', 26, '', 'belum tercetak'),
(1173, 92, 120, '2.026', '3.05.25/01.2020', 'Keyboard', 2, 'Unit', 'K120', '', 'Logitech', 1, '2020', '2020-07-22', '175000', 'Baik', '', '', 54, '', 'belum tercetak'),
(1174, 92, 119, '2.026', '3.05.24/01.2020', 'Mouse', 2, 'Unit', 'B100', '', 'Logitech', 1, '2020', '2020-07-22', '50000', 'Baik', '', '', 53, '', 'belum tercetak'),
(1175, 92, 52, '2.026', '3.03.17/01.2022', 'Pigura', 1, 'Unit', 'Visi Misi', '', 'Bikinan', 1, '2022', '2022-07-22', '250000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1176, 92, 117, '2.026', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Kikai', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1177, 93, 39, '2.027', '3.03.04/01.2022', 'Meja Sofa', 10, 'Set', '', 'coklat', 'GMM', 1, '2022', '2022-07-22', '2500000', 'Baik', '', '', 22, '', 'belum tercetak'),
(1178, 93, 36, '2.027', '3.03.01/01.2022', 'Kursi Sofa', 20, 'Unit', 'Presso III VCR', 'coklat', 'GMM', 1, '2022', '2022-07-22', '2500000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1179, 93, 36, '2.027', '3.03.01/01.2022', 'Kursi Dosen', 6, 'Unit', 'susun', '', 'Brother', 1, '2022', '2022-07-22', '205000', 'Baik', '', '', 16, '', 'belum tercetak'),
(1180, 93, 57, '2.027', '3.03.22/01.2022', 'Televisi LED', 1, 'Unit', '70COC6500', '70 Inch', 'Coocaa', 1, '2022', '2022-07-22', '9800000', 'Baik', '', '', 56, '', 'belum tercetak'),
(1181, 93, 76, '2.027', '3.05.14/01.2022', 'LCD Proyektor', 2, 'Unit', 'EB- X500', '', 'Epson', 1, '2022', '2022-07-22', '5600000', 'Baik', '', '', 20, '', 'belum tercetak'),
(1182, 93, 74, '2.027', '3.05.12/01.2022', 'Amplifier', 1, 'Unit', 'ZA-2240 W', '', 'TOA', 1, '2022', '2022-07-22', '1650000', 'Baik', '', '', 49, '', 'belum tercetak'),
(1183, 93, 73, '2.027', '3.05.11/01.2022', 'Speaker', 1, 'Unit', 'ZS 1030 B', '', 'TOA', 1, '2022', '2022-07-22', '684000', 'Baik', '', '', 36, '', 'belum tercetak'),
(1184, 93, 117, '2.027', '3.03.26/01.2022', 'Jam Dinding', 1, 'Unit', '', '', 'Standart', 1, '2022', '2022-07-22', '80000', 'Baik', '', '', 51, '', 'belum tercetak'),
(1185, 93, 55, '2.027', '3.03.20/01.2022', 'Air Conditioning', 7, 'Unit', '1,5 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '3000000', 'Baik', '', '', 3, '', 'belum tercetak'),
(1186, 93, 55, '2.027', '3.03.20/01.2022', 'Air Conditioning', 2, 'Unit', '2 Pk', '', 'Panasonic', 1, '2022', '2022-07-22', '4500000', 'Baik', '', '', 3, '', 'belum tercetak'),
(1187, 93, 52, '2.027', '3.03.17/01.2022', 'Garuda', 1, 'Unit', 'Fiber 70 cm', '', '', 1, '2022', '2022-12-30', '420000', 'Baik', '', '', 74, '', 'belum tercetak'),
(1188, 93, 52, '2.027', '3.03.17/01.2022', 'Pigura Presiden & Wakil Presiden', 2, 'Unit', 'kaca', '', '', 1, '2022', '2022-12-30', '105000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1189, 93, 52, '2.027', '3.03.17/01.2022', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2022', '2022-07-22', '35000', 'Baik', '', '', 47, '', 'belum tercetak'),
(1190, 93, 53, '2.027', '3.03.18/01.2022', 'Tempat Sampah Besar', 2, 'Unit', '', '', 'Maspion', 1, '2022', '2022-07-22', '275000', 'Baik', '', '', 1, '', 'belum tercetak'),
(1191, 94, 85, '1.043', '3.06.01/01.2014', 'Audio Mixer', 1, 'Unit', 'Soundcraft EFX16', '', '', 1, '2014', '2014-12-07', '', 'Baik', 'Ruang Bioskop', '', 49, '', 'belum tercetak'),
(1192, 94, 66, '1.043', '3.05.04/01.2014', 'Monitor', 1, 'Unit', 'View Sonic', 'View sonic 16 inch', '', 1, '2014', '2014-12-07', '', 'Baik', 'Ruang Bioskop', '', 26, '', 'belum tercetak'),
(1193, 94, 86, '1.043', '3.06.02/01.2014', 'Equalizer', 1, 'Unit', 'Dbx 2231', '', '', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1194, 94, 75, '1.043', '3.05.13/01.2014', 'DVD Player', 1, 'Unit', 'Philips', '', '', 1, '2014', '', '', 'Baik', '', '', 0, '', 'belum tercetak'),
(1195, 94, 87, '1.043', '3.06.03/01.2014', 'Bass processor', 1, 'Unit', 'Behringer', 'Behringer', '', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1196, 94, 88, '1.043', '3.06.04/01.2014', 'Compressor', 1, 'Unit', 'Dbx 166xs', 'Dbx 166xs', '', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1197, 94, 89, '1.043', '3.06.05/01.2014', 'Crossover', 1, 'Unit', 'Dbx 234XL', 'Dbx 234XL', '', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1198, 94, 90, '1.043', '3.06.06/01.2014', 'Power Amplifier', 1, 'Unit', 'Pevey CS2000', 'Pevey CS2000', '', 1, '2014', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(1199, 94, 90, '1.043', '3.06.06/01.2014', 'Power Amplifier', 1, 'Unit', 'Pevey CS3000', 'Pevey CS3000', '', 1, '2014', '', '', 'Baik', '', '', 49, '', 'belum tercetak'),
(1200, 94, 44, '1.043', '3.03.09/01.2014', 'Rak Sound System', 1, 'Unit', '', '', '', 1, '2014', '', '', 'Baik', '', '', 31, '', 'belum tercetak'),
(1201, 94, 91, '1.043', '3.06.07/01.2014', 'Box Sound Systemm', 1, 'Unit', '', '', '', 1, '2014', '', '', 'Baik', '', '', 31, '', 'belum tercetak'),
(1202, 94, 92, '1.043', '3.06.08/01.2014', 'Stabilizezr', 1, 'Unit', 'Matsuyama', 'Matsuyama AVR/L-L565', '', 1, '2014', '', '', 'Baik', '', '', 37, '', 'belum tercetak'),
(1203, 94, 93, '1.043', '3.06.09/01.2014', 'Speaker treebel', 4, 'Unit', 'Behringer', 'Behringer B212XL', '', 1, '2014', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(1204, 94, 94, '1.043', '3.06.10/01.2014', 'Speaker Bass', 2, 'Unit', 'JBL', 'JBL SRV 100', '', 1, '2014', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(1205, 94, 95, '1.043', '3.06.11/01.2014', 'Microphone', 2, 'Unit', 'TOA', 'ZM 260', '', 1, '2014', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(1206, 94, 95, '1.043', '3.06.11/01.2014', 'Microphone', 1, 'Unit', 'TOA', 'ZM 270', '', 1, '2014', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(1207, 94, 96, '1.043', '3.06.12/01.2014', 'Sound card', 1, 'Unit', 'Behringer', 'Behringer UCA 222', '', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1208, 95, 108, '1.044', '3.06.24/01.2011', 'Camera video HD', 1, 'Unit', 'HXR NC 1501', '', 'Sony', 1, '2011', '', '', 'Baik', '', '', 75, '', 'belum tercetak'),
(1209, 95, 108, '1.044', '3.06.24/01.2011', 'Camera Handy cam', 1, 'Unit', 'JVC 1,33 MP', '', 'JVC', 1, '2011', '', '', 'Rusak', '', '', 75, '', 'belum tercetak'),
(1210, 94, 82, '1.043', '3.05.20/01.2014', 'UPS', 1, 'Unit', 'Prolink', '', 'UPS', 1, '2014', '', '', 'Baik', '', '', 42, '', 'belum tercetak'),
(1211, 94, 85, '1.043', '3.06.01/01.2014', 'Audio Mixer', 1, 'Unit', 'Yamaha MGP 16x', '', 'Yamaha', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1212, 94, 73, '1.043', '3.05.11/01.2014', 'Speaker Aktif', 1, 'Unit', 'Logitech', '', 'Logitech', 1, '2014', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(1213, 94, 73, '1.043', '3.05.11/01.2014', 'Speaker Aktif', 1, 'Unit', 'Nivs NCT-A30G', '', 'Speaker Aktif', 1, '2014', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(1214, 94, 71, '1.043', '3.05.09/01.2014', 'Headphone', 1, 'Unit', 'Alto HPA 6(6 channel)', '', 'Alto HPA', 1, '2014', '', '', 'Baik', '', '', 72, '', 'belum tercetak'),
(1215, 94, 85, '1.043', '3.06.01/01.2014', 'Audio Compressor', 1, 'Unit', 'Dbx 166xs', '', 'Audio Compressor', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1216, 94, 71, '1.043', '3.05.09/01.2014', 'Headset', 4, 'Unit', 'AKG K_44', '', 'Headset', 1, '2014', '', '', 'Baik', '', '', 72, '', 'belum tercetak'),
(1217, 94, 95, '1.043', '3.06.11/01.2014', 'Microphone', 3, 'Unit', 'AKG P5', '', 'AKG', 1, '2014', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(1218, 94, 95, '1.043', '3.06.11/01.2014', 'Microphone', 1, 'Unit', 'Sennheiseir e835', '', 'Senheiser', 1, '2014', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(1219, 94, 99, '1.043', '3.06.15/01.2014', 'Stand Mic Radio', 4, 'Unit', '', '', 'Standd Mic Radio', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1220, 94, 44, '1.043', '3.03.09/01.2014', 'Rak Sound System', 1, 'Unit', '', '', 'Rak Sound System', 1, '2014', '', '', 'Baik', '', '', 31, '', 'belum tercetak'),
(1221, 94, 96, '1.043', '3.06.12/01.2014', 'Sound Card', 1, 'Unit', 'Behringer UCA 202', '', 'Behringer', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1222, 94, 95, '1.043', '3.06.11/01.2014', 'Microphone', 1, 'Unit', 'Behringer B-1', '', 'Behringer', 1, '2014', '', '', 'Baik', '', '', 50, '', 'belum tercetak'),
(1223, 94, 92, '1.043', '3.06.08/01.2014', 'Stabilizer', 1, 'Unit', 'Matsuka SVC_1000VA', '', 'Matzuka', 1, '2014', '', '', 'Baik', '', '', 37, '', 'belum tercetak'),
(1224, 94, 85, '1.043', '3.06.01/01.2014', 'Audio Mixer', 1, 'Unit', 'Delta 8 Channel', '', 'Delta', 1, '2014', '', '', 'Baik', '', '', 2, '', 'belum tercetak'),
(1225, 94, 73, '1.043', '3.05.11/01.2014', 'Speaker Aktif', 1, 'Unit', 'Dazumba DE438', '', 'Dazumba', 1, '2014', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(1226, 94, 73, '1.043', '3.05.11/01.2014', 'Speaker Aktif', 1, 'Unit', 'Advancce M 680BT', '', 'Advancce', 1, '2014', '', '', 'Baik', '', '', 36, '', 'belum tercetak'),
(1227, 95, 108, '1.044', '3.06.24/01.2015', 'Camera Vvideo HD', 1, 'Buah', 'S0NY NX5R CAM', '', 'Sony', 1, '2015', '', '', 'Baik', '', '', 75, '', 'belum tercetak'),
(1228, 95, 131, '1.044', '3.06.25/01.2013', 'Augmented reality', 2, 'Buah', 'Kineet', '', 'Kineet', 1, '2013', '', '', 'Baik', '', '', 78, '', 'belum tercetak'),
(1229, 95, 139, '1.044', '3.06.33/01.2015', 'Pen Touch Table', 10, 'Buah', 'INTOUS', '', 'INTOUS', 1, '2015', '', '', 'Baik', '', '', 76, '', 'belum tercetak'),
(1230, 95, 68, '1.044', '3.05.06/01.2015', 'Stabilizer(manual)', 1, 'Buah', 'Clide cam', '', 'Clide cam', 1, '2015', '', '', 'Baik', '', '', 37, '', 'belum tercetak'),
(1231, 95, 141, '1.044', '3.06.35/01.2015', 'Recorder zoom', 1, 'Buah', 'H4 nsp', '', 'H4 nsp', 1, '2015', '', '', 'Baik', '', '', 77, '', 'belum tercetak'),
(1232, 95, 101, '1.044', '3.06.17/01.2015', 'Tripod', 3, 'Buah', 'Somita ST651', '', 'Somita', 1, '2015', '', '', 'Baik', '', '', 79, '', 'belum tercetak'),
(1233, 95, 101, '1.044', '3.06.17/01.2015', 'Tripod Roda Tiga', 1, 'Buah', 'Exel', '', 'Exel', 1, '2015', '', '', 'Baik', '', '', 79, '', 'belum tercetak'),
(1234, 95, 67, '1.044', '3.05.05/01.2015', 'Hardisk External', 3, 'Buah', '1(TB), WD 2TB(2)', '', 'Thosiba', 1, '2015', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(1235, 95, 65, '1.044', '3.05.03/01.2016', 'Laptop ', 1, 'Buah', 'Core i5, RAM 8GB, HDD 1TB', '', 'Intel', 1, '2016', '', '', 'Baik', '', '', 19, '', 'belum tercetak'),
(1236, 95, 108, '1.044', '3.06.24/01.2016', 'Camera', 1, 'Buah', 'Cannon EOS 7D', '', 'Cannon', 1, '2016', '', '', 'Baik', '', '', 75, '', 'belum tercetak'),
(1237, 95, 132, '1.044', '3.06.26/01.2016', 'lensa', 1, 'Buah', 'Cannon EF 28 mm', '', 'Cannon', 1, '2016', '', '', 'Baik', '', '', 80, '', 'belum tercetak'),
(1238, 95, 132, '1.044', '3.06.26/01.2016', 'Lensa', 1, 'Buah', 'Cannon EF 50 mm', '', 'Cannon', 1, '2016', '', '', 'Baik', '', '', 80, '', 'belum tercetak'),
(1239, 95, 142, '1.044', '3.06.36/01.2016', 'Tas Camera DSLR', 1, 'Buah', 'Anei', '', 'Anei', 1, '2016', '', '', 'Baik', '', '', 89, '', 'belum tercetak'),
(1240, 95, 143, '1.044', '3.06.37/01.2016', 'Tas Alat', 1, 'Buah', '', '', '', 1, '2016', '', '', 'Baik', '', '', 87, '', 'belum tercetak'),
(1241, 95, 140, '1.044', '3.06.34/01.2016', 'Battery camera', 14, 'Buah', 'Sony 12 dan Cannon 3', '', 'Sony', 1, '2016', '', '', 'Baik', '', '', 88, '', 'belum tercetak'),
(1242, 95, 138, '1.044', '3.06.32/01.2017', 'Audio Home Theater', 1, 'Buah', 'Sony BDV E-6101', '', 'Sony', 1, '2017', '', '', 'Baik', '', '', 81, '', 'belum tercetak'),
(1243, 95, 68, '1.044', '3.05.06/01.2017', 'Stabilizer(elektronik)', 1, 'Buah', 'Beholder', '', 'Beholder', 1, '2017', '', '', 'Baik', '', '', 37, '', 'belum tercetak'),
(1244, 95, 84, '1.044', '3.05.22/01.2017', 'HDMI Spliter', 1, 'Buah', 'GT-2005', '', 'GT-2004', 1, '2017', '', '', 'Baik', '', '', 65, '', 'belum tercetak'),
(1245, 95, 134, '1.044', '3.06.28/01.2017', 'VR Glass', 2, 'Buah', 'LI-Max', '', 'LI-Max', 1, '2017', '', '', 'Baik', '', '', 82, '', 'belum tercetak'),
(1246, 95, 69, '1.044', '3.05.07/01.2017', 'Printer A3', 1, 'Buah', 'HP office jet 7111', '', 'HP', 1, '2017', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(1247, 95, 123, '1.044', '3.03.27/01.2017', 'Scanner', 1, 'Buah', 'Cano Scan LiDE 111', '', 'Cannon', 1, '2017', '', '', 'Baik', '', '', 34, '', 'belum tercetak'),
(1248, 95, 82, '1.044', '3.05.20/01.2017', 'UPS', 13, 'Buah', 'Soconec(10), Prolink(2),Power tree(1)', '', 'Soconec', 1, '2017', '', '', 'Rusak', '', '', 42, '', 'belum tercetak'),
(1249, 95, 144, '1.044', '3.05.28/01.2017', 'Hardisk server', 1, 'Buah', 'Synologi 20TB', '', 'Synologi 20TB', 1, '2017', '', '', 'Baik', '', '', 90, '', 'belum tercetak'),
(1250, 95, 136, '1.044', '3.06.30/01.2018', 'LED Flash', 3, 'Buah', 'Lead Eco Tronic', '', 'Lead Eco Tronic', 1, '2018', '', '', 'Baik', '', '', 84, '', 'belum tercetak'),
(1251, 95, 137, '1.044', '3.06.31/01.2018', 'LED Strobe', 2, 'Buah', 'Frenso Led 1001', '', 'Frenso Led 1000', 1, '2018', '', '', 'Baik', '', '', 83, '', 'belum tercetak'),
(1252, 95, 145, '1.044', '3.06.38/01.2018', 'LED Kotak', 6, 'Buah', 'ED-5006', '', 'ED-5005', 1, '2018', '', '', 'Baik', '', '', 91, '', 'belum tercetak'),
(1253, 95, 96, '1.044', '3.06.12/01.2018', 'Sound card', 1, 'Buah', 'Scarlett 1819', '', 'Scarlett 1818', 1, '2018', '', '', 'Baik', '', '', 86, '', 'belum tercetak'),
(1254, 95, 135, '1.044', '3.06.29/01.2918', 'Slider camera', 1, 'Buah', '', '', '', 1, '2918', '', '', 'Baik', '', '', 85, '', 'belum tercetak'),
(1255, 96, 8, '1.045', '1.02.01/01.2011', 'Tang Krimping', 26, 'Unit', 'Tang Krimping', '', '', 1, '2011', '', '', 'Baik / 4 R', '', '', 1, '', 'belum tercetak'),
(1256, 96, 8, '1.045', '1.02.01/01.2013', 'Lan Tester', 4, 'Unit', 'Lan Tester', '', '', 1, '2013', '', '', 'Baik', '', '', 70, '', 'belum tercetak'),
(1257, 96, 5, '1.045', '1.01.05/01.2011', 'Komputer Praktek Rakit', 10, 'Unit', 'Komputer Praktek Rakit', '', '', 1, '2011', '', '', 'Rusak', '', '', 14, '', 'belum tercetak'),
(1258, 96, 122, '1.045', '3.05.27/01.2015', 'Switch/ Hub', 2, 'Unit', 'Switch/ Hub', '', '', 1, '2015', '', '', 'Baik', '', '', 38, '', 'belum tercetak'),
(1259, 96, 8, '1.045', '1.02.01/01.2017', 'Multi Tester', 10, 'Unit', 'Multi Tester', '', '', 1, '2017', '', '', 'Baik / 2 R', '', '', 27, '', 'belum tercetak'),
(1260, 96, 128, '1.045', '3.04.05/01.2011', 'Arduino Kit', 10, 'Unit', 'Arduino Kit', '', '', 1, '2011', '', '', 'Baik', '', '', 68, '', 'belum tercetak'),
(1261, 96, 8, '1.045', '1.02.01/01.2011', 'Trainer Digital', 15, 'Unit', 'Trainer Digital', '', '', 1, '2011', '', '', 'Baik', '', '', 69, '', 'belum tercetak'),
(1262, 96, 60, '1.045', '3.04.02/01.2011', 'Osciloscope', 4, 'Unit', 'Osciloscope', '', '', 1, '2011', '', '', 'Baik', '', '', 67, '', 'belum tercetak'),
(1263, 96, 8, '1.045', '1.02.01/01.2011', 'Trainer Mikro', 15, 'Unit', 'Trainer Mikro', '', '', 1, '2011', '', '', 'Baik', '', '', 69, '', 'belum tercetak'),
(1264, 96, 8, '1.045', '1.02.01/01.2014', 'Obeng (+/--)', 5, 'Unit', 'Obeng (+/--)', '', '', 1, '2014', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1265, 96, 8, '1.045', '1.02.01/01.2022', 'Kabel LAN', 1, 'Unit', 'Kabel LAN', '', '', 1, '2022', '', '', 'Baik', '', '', 70, '', 'belum tercetak'),
(1266, 96, 8, '1.045', '1.02.01/01.2020', 'Router Board', 12, 'Unit', 'RB 941', '', '', 1, '2020', '', '', 'Baik', '', '', 33, '', 'belum tercetak'),
(1267, 96, 8, '1.045', '1.02.01/01.2021', 'Router Board', 2, 'Unit', 'RB 951G', '', '', 1, '2021', '', '', 'Baik', '', '', 33, '', 'belum tercetak'),
(1268, 27, 8, '1.005', '1.02.01/01.2015', 'Korden Jendela', 2, 'Pcs', '', '', '', 1, '2015', '2015-01-10', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1269, 28, 8, '1.006', '1.02.01/01.2015', 'Korden jendela', 2, 'Pcs', '', '', '', 1, '2015', '2015-01-10', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1270, 30, 8, '1.008', '1.02.01/01.2015', 'Korden Jendela', 2, 'Pcs', '', '', '', 1, '2015', '2015-01-10', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1271, 34, 8, '1.012', '1.02.01/01.2015', 'Korden Jendela', 2, 'Pcs', '', '', '', 1, '2015', '2015-01-10', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1272, 40, 52, '1.018', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-01-10', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1273, 41, 52, '1.019', '3.03.17/01.2022', 'Pigura', 1, 'Pcs', '', '', '', 1, '2022', '2022-01-10', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1274, 41, 8, '1.019', '1.02.01/01.2022', 'Penghapus', 1, 'Pcs', '', '', '', 1, '2022', '2022-01-10', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1276, 98, 39, '1.047', '3.03.04/01.2012', 'Meja Karyawan SBF', 2, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1277, 98, 37, '1.047', '3.03.02/01.2012', 'Kursi Putar Karyawan', 2, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1278, 98, 36, '1.047', '3.03.01/01.2012', 'Kursi biru \'S\"', 3, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1279, 108, 48, '1.057', '3.03.13/01.2012', 'Backdrop Eksekutif', 1, 'Set', '', 'Coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 59, '', 'belum tercetak'),
(1280, 98, 115, '1.047', '3.03.24/01.2012', 'Kursi SOFA Sedang', 3, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(1281, 98, 42, '1.047', '3.03.07/01.2012', 'Almari Dinding', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1282, 108, 39, '1.057', '3.03.04/01.2012', 'Meja Audien VIP', 15, 'Buah', '', 'Coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1283, 98, 42, '1.047', '3.03.07/01.2012', 'Almari pantry/ disp', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1284, 108, 39, '1.057', '3.03.04/01.2012', 'Meja Dosen VIP', 1, 'Buah', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1285, 98, 55, '1.047', '3.03.20/01.2020', 'Air Conditioning', 1, 'Unit', '1 Pk', '', 'Panasonic', 1, '2020', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1286, 98, 104, '1.047', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(1287, 108, 42, '1.057', '3.03.07/01.2016', 'Almari Laptop', 2, 'Buah', '', '', 'SBF', 1, '2016', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1288, 98, 116, '1.047', '3.03.25/01.2020', 'Dispenser', 1, 'Unit', 'SWD 72 ENL WH', '', 'Sharp', 1, '2020', '', '', 'Baik', '', '', 46, '', 'belum tercetak'),
(1289, 108, 36, '1.057', '3.03.01/01.2012', 'Kursi susun', 62, 'Buah', 'susun', 'biru', 'Futura ', 1, '2012', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1290, 98, 117, '1.047', '3.03.26/01.2021', 'Jam Dinding', 1, 'Unit', '', '', 'Diamond', 1, '2021', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(1291, 98, 52, '1.047', '3.03.17/01.2015', 'Pigura', 12, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1292, 108, 74, '1.057', '3.05.12/01.2015', 'Amplifier', 1, 'Unit', 'ZA-2120', '', 'TOA', 1, '2015', '2015-10-12', '', 'Baik', '', '', 92, '', 'belum tercetak');
INSERT INTO `tbl_barang` (`id_barang`, `id_ruangan`, `id_subklasifikasi`, `kode_lokasi`, `kode_barang`, `nama_barang`, `jumlah_barang`, `satuan_barang`, `spesifikasi_teknis`, `serial_number`, `model_number`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `harga_perolehan`, `keadaan_barang`, `peruntukan`, `keterangan`, `id_jenis_barang`, `foto_barang`, `cetak`) VALUES
(1293, 98, 53, '1.047', '3.03.18/01.2020', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1294, 108, 73, '1.057', '3.05.11/01.2015', 'Speaker ', 1, 'Unit', 'ZA-1020 B', '', 'TOA', 1, '2015', '2015-10-12', '', 'Baik', '', '', 92, '', 'belum tercetak'),
(1295, 108, 95, '1.057', '3.06.11/01.2015', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2015', '2015-10-12', '', 'Baik', '', '', 92, '', 'belum tercetak'),
(1296, 108, 76, '1.057', '3.05.14/01.2020', 'Lcd Proyektor', 1, 'Unit', 'EB- X500', '', 'Epson', 1, '2020', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(1297, 108, 66, '1.057', '3.05.04/01.2011', 'Monitor', 1, 'Unit', '14 inch', '', 'ADC', 1, '2011', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(1298, 108, 147, '1.057', '3.06.39/01.2020', 'DVR', 1, 'Buah', '8 Port', '', 'SPC', 1, '2020', '', '', 'Baik', '', '', 93, '', 'belum tercetak'),
(1299, 108, 55, '1.057', '3.03.20/01.2012', 'Air Conditioning', 2012, 'Buah', '1,5 PK', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1300, 108, 66, '1.057', '3.05.04/01.2012', 'Layar LCD', 1, 'Buah', '', '', 'ORCA', 1, '2012', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(1301, 99, 39, '1.048', '3.03.04/01.2012', 'Meja Pimpinan B', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1302, 108, 104, '1.057', '3.06.20/01.2012', 'Telephone', 1, 'Buah', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 94, '', 'belum tercetak'),
(1303, 99, 39, '1.048', '3.03.04/01.2012', 'Meja Karyawan SBF', 3, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1304, 108, 117, '1.057', '3.03.26/01.2021', 'Jam Dinding ', 1, 'Buah', '', '', 'Sakana', 1, '2021', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(1305, 108, 52, '1.057', '3.03.17/01.2015', 'Pigura', 1, 'Buah', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1306, 99, 40, '1.048', '3.03.05/01.2012', 'Meja Komputer Kecil', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 23, '', 'belum tercetak'),
(1307, 108, 53, '1.057', '3.03.18/01.2020', 'Tempat sampah', 1, 'Buah', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 95, '', 'belum tercetak'),
(1308, 99, 42, '1.048', '3.03.07/01.2010', 'Almari Geser Sedang', 3, 'Unit', '', '', 'SBF', 1, '2010', '2010-12-10', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1309, 99, 43, '1.048', '3.03.08/01.2012', 'Almari Kaca Sedang', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(1310, 107, 48, '1.056', '3.03.13/01.2012', 'Backdrop AULA', 1, 'Set', '', 'Coklat ', 'SBF', 1, '2012', '', '', 'Baik', '', '', 59, '', 'belum tercetak'),
(1311, 107, 39, '1.056', '3.03.04/01.2012', 'Meja Panggung Aula', 1, 'Set', '', 'Coklat ', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1312, 99, 37, '1.048', '3.03.02/01.2019', 'Kursi Putar Karyawan', 1, 'Unit', '', 'coklat', 'Active', 1, '2019', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1313, 107, 39, '1.056', '3.03.04/01.2012', 'Meja MC', 1, 'Buah', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1314, 107, 39, '1.056', '3.03.04/01.2012', 'Meja Mimbar ', 2, 'Buah', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1315, 99, 37, '1.048', '3.03.02/01.2014', 'Kursi Putar Ungu', 1, 'Unit', '', 'ungu', '', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1316, 107, 36, '1.056', '3.03.01/01.2012', 'Kursi Kuliah', 180, 'Buah', 'Lipat', 'Hitam', 'Chitose', 1, '2012', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1317, 99, 37, '1.048', '3.03.02/01.2014', 'Kursi Putar Coklat', 1, 'Unit', '', 'coklat', '', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1318, 107, 74, '1.056', '3.05.12/01.2015', 'Amplifier', 1, 'Unit', 'ZA-2120', '', 'TOA', 1, '2015', '2015-10-12', '', 'Baik', '', '', 92, '', 'belum tercetak'),
(1319, 99, 36, '1.048', '3.03.01/01.2010', 'Kursi S', 1, 'Unit', '', 'biru', 'Chitose', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1320, 99, 36, '1.048', '3.03.01/01.2012', 'Kursi Lipat', 1, 'Pcs', 'cosmo 541', 'hitam', 'Chitose', 1, '2012', '2012-02-12', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1321, 107, 73, '1.056', '3.05.11/01.2015', 'Speaker', 2, 'Unit', 'ZS 1020 B', '', 'TOA', 1, '2015', '2015-10-12', '', 'Baik', '', '', 92, '', 'belum tercetak'),
(1322, 99, 36, '1.048', '3.03.01/01.2014', 'Kursi Dosen', 2, 'Pcs', 'kursi susun', 'biru', 'Futura', 1, '2014', '2014-10-01', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1323, 100, 39, '1.049', '3.03.04/01.2012', 'Meja Pimpinan B', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1324, 107, 95, '1.056', '3.06.11/01.2015', 'Microphone', 1, 'Unit', 'ZM-260', '', 'TOA', 1, '2015', '2015-10-12', '', 'Baik', '', '', 92, '', 'belum tercetak'),
(1325, 100, 40, '1.049', '3.03.05/01.2012', 'Meja komputer Kecil', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 23, '', 'belum tercetak'),
(1326, 100, 42, '1.049', '3.03.07/01.2010', 'Almari Geser Sedang', 1, 'Unit', '', 'coklat', 'SBF', 1, '2010', '2010-12-10', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1327, 107, 76, '1.056', '3.05.14/01.2022', 'LCD Proyektor ', 2, 'Unit', 'EB-X500', '', 'Epson', 1, '2022', '', '', 'Baik', '', '', 20, '', 'belum tercetak'),
(1328, 100, 37, '1.049', '3.03.02/01.2014', 'Kursi Putar Coklat', 1, 'Unit', '', 'coklat', 'Chitose', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1329, 107, 57, '1.056', '3.03.22/01.2019', 'Televisi ', 1, 'Unit', '50 Inch', 'LED', 'Samsung ', 1, '2019', '', '', 'Baik', '', '', 56, '', 'belum tercetak'),
(1330, 100, 36, '1.049', '3.03.01/01.2012', 'Kursi Lipat', 1, 'Pcs', 'cosmo 541', 'hitam', 'Chitose', 1, '2012', '2012-02-12', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1331, 107, 55, '1.056', '3.03.20/01.2012', 'Air Conditioning ', 2, 'Unit', '1,5 PK ', '', 'Panasonic ', 1, '2012', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1332, 100, 36, '1.049', '3.03.01/01.2010', 'Kursi S', 1, 'Unit', '', 'biru', 'Chitose', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1333, 107, 55, '1.056', '3.03.20/01.2012', 'Air Conditioning ', 2, 'Unit', '2 PK', '', 'Panasonic ', 1, '2012', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1334, 107, 148, '1.056', '3.06.40/01.2012', 'Layar LCD', 2, 'Unit', '', '', 'ORCA', 1, '2012', '', '', 'Baik', '', '', 96, '', 'belum tercetak'),
(1335, 107, 104, '1.056', '3.06.20/01.2012', 'Telephone ', 1, 'Buah', 'KX-T2371MX', '', 'Panasonic ', 1, '2012', '', '', 'Baik', '', '', 94, '', 'belum tercetak'),
(1336, 101, 39, '1.050', '3.03.04/01.2012', 'Meja Pimpinan B', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1337, 107, 117, '1.056', '3.03.26/01.2021', 'Jam Dinding ', 1, 'Unit', '', '', 'Standart', 1, '2021', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(1338, 107, 52, '1.056', '3.03.17/01.2015', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1339, 107, 53, '1.056', '3.03.18/01.2020', 'Tempat sampah ', 1, 'Buah', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 95, '', 'belum tercetak'),
(1340, 101, 39, '1.050', '3.03.04/01.2010', 'Cresenda', 1, 'Unit', '', '', 'SBF', 1, '2010', '2010-12-10', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1341, 106, 39, '1.055', '3.03.04/01.2015', 'Meja Pimpinan B', 2, 'Unit', '', 'Coklat ', 'SBF', 1, '2015', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1342, 101, 39, '1.050', '3.03.04/01.2012', 'Meja Arsip', 2, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1343, 106, 39, '1.055', '3.03.04/01.2015', 'Meja Karyawan ', 24, 'Unit', '', 'Coklat ', 'SBF', 1, '2015', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1344, 101, 42, '1.050', '3.03.07/.2010', 'Almari Geser Sedang', 2, 'Unit', '', 'coklat', 'SBF', 0, '2010', '2010-12-10', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1345, 106, 39, '1.055', '3.03.04/01.2012', 'Meja Komputer', 1, 'Unit', '', 'Coklat ', 'Jogja ', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1346, 106, 39, '1.055', '3.03.04/01.2010', 'Cresenda', 1, 'Unit', '', '', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1347, 101, 37, '1.050', '3.03.02/01.2014', 'Kursi Putar Coklat', 1, 'Unit', '', 'coklat', 'Chitose', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1348, 101, 36, '1.050', '3.03.01/01.2012', 'Kursi Lipat', 2, 'Pcs', 'cosmo 541', 'hitam', 'Chitose', 1, '2012', '2012-02-12', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1349, 106, 42, '1.055', '3.03.07/01.2010', 'Standart ', 2, 'Unit', '', 'Coklat ', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1350, 106, 42, '1.055', '3.03.07/01.2012', 'Almari Pantry Dispenser', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1351, 106, 42, '1.055', '3.03.07/01.2010', 'Almari kecil', 1, 'Unit', '', 'Coklat', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1352, 103, 39, '1.052', '3.03.04/01.2012', 'Meja Karyawan C', 2, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1353, 106, 42, '1.055', '3.03.07/01.2010', 'Almari Loker Dosen', 1, 'Unit', '', 'Coklat', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1354, 106, 37, '1.055', '3.03.02/01.2019', 'Kursi Putar Karyawan', 2, 'Unit', '', 'Coklat', 'Active', 1, '2019', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1355, 103, 42, '1.052', '3.03.07/01.2010', 'Almari Sedang', 1, 'Unit', '', '', 'SBF', 1, '2010', '2010-12-10', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1356, 106, 36, '1.055', '3.03.01/01.2010', 'Kursi  S', 26, 'Unit', '', '', 'Chitose', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1357, 103, 36, '1.052', '3.03.01/01.2014', 'Kursi Dosen', 1, 'Pcs', 'kursi susun', 'merah', 'Futura', 1, '2014', '2014-10-02', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1358, 106, 36, '1.055', '3.03.01/01.2014', 'Kursi  Dosen ', 2, 'Pcs', 'Kursi Susun', 'Biru', 'Futura ', 1, '2014', '2014-02-10', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1359, 103, 37, '1.052', '3.03.02/01.2014', 'Kursi Putar Coklat', 1, 'Unit', '', 'coklat', '', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1360, 106, 115, '1.055', '3.03.24/01.2014', 'Kursi Sofa', 3, 'Pcs', 'Kursi Susun', 'Biru', 'Futura ', 1, '2014', '2014-02-10', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(1361, 103, 104, '1.052', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(1362, 103, 52, '1.052', '3.03.17/01.2015', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1363, 106, 116, '1.055', '3.03.25/01.2019', 'Dispenser', 1, 'Unit', 'WD-189 H', '', 'Miyako', 1, '2019', '2019-07-22', '', 'Baik', '', '', 46, '', 'belum tercetak'),
(1364, 103, 53, '1.052', '3.03.18/01.2020', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1365, 106, 55, '1.055', '3.03.20/01.2012', 'Air Conditioning', 3, 'Unit', '1,5 PK', '', 'Panasonic', 1, '2012', '2012-10-12', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1366, 106, 104, '1.055', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 94, '', 'belum tercetak'),
(1367, 106, 117, '1.055', '3.03.26/01.2021', 'Jam Dinding ', 1, 'Unit', '', '', 'Standart', 1, '2021', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(1368, 106, 52, '1.055', '3.03.17/01.2015', 'Pigura', 2, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1369, 106, 53, '1.055', '3.03.18/01.2020', 'Tempat sampah', 1, 'Unit', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 95, '', 'belum tercetak'),
(1370, 57, 39, '1.034', '3.03.04/01.2012', 'Meja Pengajara', 1, 'Unit', '', 'Coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1371, 57, 39, '1.034', '3.03.04/01.2012', 'Meja Sofa sedang', 2, 'Unit', '', 'Coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1372, 57, 39, '1.034', '3.03.04/01.2010', 'Meja Dispenser', 1, 'Unit', '', '', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1373, 105, 39, '1.054', '3.03.04/01.2012', 'Meja Loket (4)', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1374, 57, 42, '1.034', '3.03.07/01.2010', 'Almari geser besar', 2, 'Unit', '', 'Coklat', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1375, 105, 48, '1.054', '3.03.13/01.2012', 'Meja Bacdrop Loket', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 59, '', 'belum tercetak'),
(1376, 57, 42, '1.034', '3.03.07/01.2010', 'Almari geser sedang', 1, 'Unit', '', 'Coklat', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1377, 105, 48, '1.054', '3.03.13/01.2012', 'Bacdrop Loket Pelayanan', 1, 'Set', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 59, '', 'belum tercetak'),
(1378, 57, 42, '1.034', '3.03.07/01.2016', 'Almari Laptop', 1, 'Unit', '', 'Coklat', 'SBF', 1, '2016', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1379, 57, 42, '1.034', '3.03.07/01.2016', 'Almari FIle', 1, 'Unit', '', 'Coklat', 'SBF', 1, '2016', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1380, 105, 37, '1.054', '3.03.02/01.2014', 'Kursi Putar Ungu', 3, 'Unit', '', 'ungu', '', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1381, 57, 39, '1.034', '3.03.04/01.2010', 'Cresenda', 1, 'Unit', '', 'Coklat', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1382, 105, 36, '1.054', '3.03.01/01.2014', 'Kursi Dosen', 1, 'Pcs', 'kursi susun', 'biru', 'Futura', 1, '2014', '2014-10-02', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1383, 57, 115, '1.034', '3.03.24/01.2012', 'Kursi Sofa Sedang', 3, 'Unit', '', 'Coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 45, '', 'belum tercetak'),
(1384, 57, 36, '1.034', '3.03.01/01.2010', 'Kursi  S', 2, 'Unit', '', '', 'Chitose', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1385, 105, 104, '1.054', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(1386, 105, 52, '1.054', '3.03.17/01.2015', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1387, 57, 116, '1.034', '3.03.25/01.2019', 'Dispenser', 1, 'Unit', 'WD-189 H', '', 'Miyako', 1, '2019', '2019-07-22', '', 'Baik', '', '', 46, '', 'belum tercetak'),
(1388, 105, 53, '1.054', '3.03.18/01.2020', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1389, 57, 104, '1.034', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 94, '', 'belum tercetak'),
(1390, 57, 117, '1.034', '3.03.26/01.2021', 'Jam Dinding ', 1, 'Unit', '', '', 'Standart', 1, '2021', '', '', 'Baik', '', '', 97, '', 'belum tercetak'),
(1391, 57, 52, '1.034', '3.03.17/01.2015', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1392, 57, 53, '1.034', '3.03.18/01.2020', 'Tempat sampah', 1, 'Unit', '', '', 'Sakana', 1, '2020', '', '', 'Baik', '', '', 95, '', 'belum tercetak'),
(1393, 102, 48, '1.051', '3.03.13/01.2010', 'Backdrop FO', 1, 'Set', '', 'Coklat', 'SBF', 1, '2010', '', '', 'Baik', '', '', 59, '', 'belum tercetak'),
(1394, 102, 39, '1.051', '3.03.04/01.2010', 'Meja FO', 1, 'Set', '', 'Coklat', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1395, 102, 39, '1.051', '3.03.04/01.2010', 'Meja pimpinan C', 1, 'Unit', '', '', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1396, 102, 39, '1.051', '3.03.04/01.2010', 'Cresenda', 2, 'Unit', '', '', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1397, 102, 39, '1.051', '3.03.04/01.2010', 'Meja backdrop FO', 1, 'Set', '', 'Coklat', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1398, 102, 42, '1.051', '3.03.07/01.2010', 'Almari geser besar', 1, 'Unit', '', '', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1399, 102, 42, '1.051', '3.03.07/01.2010', 'Almari geser sedang', 1, 'Unit', '', '', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1400, 102, 39, '1.051', '3.03.04/01.2010', 'Cresenda', 1, 'Unit', '', '', 'SBF', 1, '2010', '2010-10-12', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1401, 102, 37, '1.051', '3.03.02/01.2019', 'Kursi Pimpinan C', 1, 'Unit', '', 'Putar', '', 1, '2019', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1402, 102, 37, '1.051', '3.03.02/01.2010', 'Kursi Karyawan', 3, 'Unit', '', 'Putar', '', 1, '2010', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1403, 102, 36, '1.051', '3.03.01/01.2010', 'Kursi  S', 6, 'Unit', '', '', 'Chitose', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1404, 102, 55, '1.051', '3.03.20/01.2010', 'Air Conditioning', 1, 'Unit', '1,5 PK', '', 'LG', 1, '2010', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1405, 102, 149, '1.051', '3.03.31/01.2019', 'Fan', 1, 'Unit', 'Kipas', '', 'Miyako', 1, '2019', '', '', 'Baik', '', '', 99, '', 'belum tercetak'),
(1406, 102, 104, '1.051', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 94, '', 'belum tercetak'),
(1407, 102, 117, '1.051', '3.03.26/01.2021', 'Jam Dinding ', 1, 'Unit', '', '', 'Standart', 1, '2021', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(1408, 102, 52, '1.051', '3.03.17/01.2015', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1409, 102, 53, '1.051', '3.03.18/01.2020', 'Tempat sampah', 1, 'Unit', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 95, '', 'belum tercetak'),
(1410, 97, 39, '1.046', '3.03.04/01.2012', 'Meja pimpinan A', 1, 'Unit', '', 'Coklat ', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1411, 97, 39, '1.046', '3.03.04/01.2012', 'Meja rapat sedang SBF', 1, 'Unit', '', 'Coklat ', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1412, 97, 39, '1.046', '3.03.04/01.2012', 'Meja komputer SBF', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1413, 97, 43, '1.046', '3.03.08/01.2012', 'Almari kaca sedang', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(1414, 97, 43, '1.046', '3.03.08/01.2012', 'Almari kaca kecil', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(1415, 97, 42, '1.046', '3.03.07/01.2012', 'Almari geser kecil', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1416, 97, 37, '1.046', '3.03.02/01.2015', 'Kursi Putar Pimpinan', 1, 'Unit', '', 'Hitam', 'Chitose', 1, '2015', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1417, 97, 36, '1.046', '3.03.01/01.2012', 'Kursi Biru S', 9, 'Unit', '', 'Biru', 'Chitose', 1, '2012', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1418, 97, 5, '1.046', '1.01.05/01.2012', 'CPU', 1, 'Unit', 'core i3 4150', '', 'Intel', 1, '2012', '', '', 'Baik', '', '', 14, '', 'belum tercetak'),
(1419, 97, 66, '1.046', '3.05.04/01.2012', 'Monitor', 1, 'Unit', '19 Inch', '', 'Dell', 1, '2012', '', '', 'Baik', '', '', 26, '', 'belum tercetak'),
(1420, 97, 69, '1.046', '3.05.07/01.2012', 'Printer', 1, 'Unit', 'iP2770', '', 'Canon', 1, '2012', '', '', 'Baik', '', '', 30, '', 'belum tercetak'),
(1421, 97, 57, '1.046', '3.03.22/01.2020', 'Televisi LED', 1, 'Unit', 'LED 42 Inch', '', 'Samsung', 1, '2020', '', '', 'Baik', '', '', 56, '', 'belum tercetak'),
(1422, 97, 55, '1.046', '3.03.20/01.2012', 'Air Conditioning', 1, 'Unit', '1 PK', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1423, 97, 104, '1.046', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 94, '', 'belum tercetak'),
(1424, 97, 117, '1.046', '3.03.26/01.2021', 'Jam dinding', 1, 'Unit', '', '', 'Seiko', 1, '2021', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(1425, 97, 52, '1.046', '3.03.17/01.2017', 'Pigura simbul negara', 1, 'Unit', '', '', 'Bikinan', 1, '2017', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1426, 97, 4, '1.046', '1.01.04/01.2012', 'White board SBF', 1, 'Unit', '', '', 'SBF', 1, '2012', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(1427, 97, 4, '1.046', '1.01.04/01.2019', 'White board Agenda', 1, 'Unit', '', 'Aluminium', 'Wira Usaha', 1, '2019', '', '', 'Baik', '', '', 64, '', 'belum tercetak'),
(1428, 97, 104, '1.046', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic', 1, '2012', '', '', 'Baik', '', '', 94, '', 'belum tercetak'),
(1429, 97, 117, '1.046', '3.03.26/01.2021', 'Jam dinding', 1, 'Unit', '', '', 'Diamond', 1, '2021', '', '', 'Baik', '', '', 51, '', 'belum tercetak'),
(1430, 97, 52, '1.046', '3.03.17/01.2015', 'Pigura', 12, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1431, 97, 53, '1.046', '3.03.18/01.2020', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 95, '', 'belum tercetak'),
(1432, 104, 39, '1.053', '3.03.04/01.2012', 'Meja Karyawan C', 3, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1433, 104, 40, '1.053', '3.03.05/01.2012', 'Meja Komputer Kecil', 1, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 23, '', 'belum tercetak'),
(1434, 104, 39, '1.053', '3.03.04/01.2010', 'Cresenda', 1, 'Unit', '', '', 'SBF', 1, '2010', '', '', 'Baik', '', '', 22, '', 'belum tercetak'),
(1435, 104, 43, '1.053', '3.03.08/01.2012', 'Almari Kaca Sedang', 2, 'Unit', '', 'coklat', 'SBF', 1, '2012', '', '', 'Baik', '', '', 6, '', 'belum tercetak'),
(1436, 104, 42, '1.053', '3.03.07/01.2016', 'Almari Brankas', 1, 'Unit', '', '', '', 1, '2016', '', '', 'Baik', '', '', 7, '', 'belum tercetak'),
(1437, 104, 37, '1.053', '3.03.02/01.2014', 'Kursi Putar biru', 1, 'Unit', '', 'Biru', '', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1438, 104, 37, '1.053', '3.03.02/01.2014', 'Kursi Putar ungu', 1, 'Unit', '', 'Ungu', '', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1439, 104, 37, '1.053', '3.03.02/01.2014', 'Kursi Putar hitam', 1, 'Unit', '', 'Hitam', '', 1, '2014', '', '', 'Baik', '', '', 18, '', 'belum tercetak'),
(1440, 104, 36, '1.053', '3.03.01/01.2010', 'Kursi S', 1, 'Unit', '', '', 'Chitose', 1, '2010', '', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1441, 104, 36, '1.053', '3.03.01/01.2012', 'Kursi Lipat', 2, 'Pcs', 'Cosmo 541', 'Hitam', 'Chitose', 1, '2012', '2012-02-12', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1442, 104, 36, '1.053', '3.03.01/01.2014', 'Kursi Dosen', 1, 'Pcs', 'Kursi susun', 'Biru', 'Futura', 1, '2014', '2014-10-02', '', 'Baik', '', '', 16, '', 'belum tercetak'),
(1443, 104, 55, '1.053', '3.03.20/01.2009', 'Air Conditioning ', 1, 'Unit', '1 Pk', '', 'Panasonic ', 1, '2009', '', '', 'Baik', '', '', 3, '', 'belum tercetak'),
(1444, 104, 104, '1.053', '3.06.20/01.2012', 'Telephone', 1, 'Unit', 'KX-T2371MX', '', 'Panasonic ', 1, '2012', '', '', 'Baik', '', '', 40, '', 'belum tercetak'),
(1445, 104, 52, '1.053', '3.03.17/01.2015', 'Pigura', 1, 'Unit', '', '', 'Bikinan', 1, '2015', '', '', 'Baik', '', '', 47, '', 'belum tercetak'),
(1446, 104, 53, '1.053', '3.03.18/01.2020', 'Tempat Sampah', 1, 'Unit', '', '', 'Maspion', 1, '2020', '', '', 'Baik', '', '', 1, '', 'belum tercetak'),
(1447, 109, 39, '1.058', '3.03.04/01.2010', 'Meja Karyawan \"Olimpic', 4, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 22, NULL, 'belum tercetak'),
(1448, 109, 36, '1.058', '3.03.01/01.2010', 'Kursi Biasa \"Chitose', 10, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 16, NULL, 'belum tercetak'),
(1449, 109, 55, '1.058', '3.03.20/01.2010', 'Air Conditioning 1,5 pk \"Panasonic', 1, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 3, NULL, 'belum tercetak'),
(1450, 109, 117, '1.058', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(1451, 109, 117, '1.058', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(1452, 109, 53, '1.058', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 1, NULL, 'belum tercetak'),
(1453, 109, 5, '1.058', '1.01.05/01.2010', 'CPU Core i3', 2, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 52, NULL, 'belum tercetak'),
(1454, 109, 69, '1.058', '3.05.07/01.2010', 'Printer Canon', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 30, NULL, 'belum tercetak'),
(1455, 110, 39, '1.059', '3.03.04/01.2010', 'Meja Karyawan \"Olimpic', 4, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 22, NULL, 'belum tercetak'),
(1456, 110, 36, '1.059', '3.03.01/01.2010', 'Kursi Biasa \"Chitose', 10, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 16, NULL, 'belum tercetak'),
(1457, 110, 55, '1.059', '3.03.20/01.2010', 'Air Conditioning 1,5 pk \"Panasonic', 1, 'Unit', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 3, NULL, 'belum tercetak'),
(1458, 110, 117, '1.059', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(1459, 110, 117, '1.059', '3.03.26/01.2010', 'Jam Dinding \"Standart', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 51, NULL, 'belum tercetak'),
(1460, 110, 53, '1.059', '3.03.18/01.2010', 'Tempat sampah', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 1, NULL, 'belum tercetak'),
(1461, 110, 5, '1.059', '1.01.05/01.2010', 'CPU Core i3', 2, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 52, NULL, 'belum tercetak'),
(1462, 110, 69, '1.059', '3.05.07/01.2010', 'Printer Canon', 1, 'Buah', NULL, NULL, NULL, 1, '2010', NULL, NULL, 'Baik', NULL, NULL, 30, NULL, 'belum tercetak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lahan`
--

CREATE TABLE `tbl_lahan` (
  `id_lahan` int(11) NOT NULL,
  `kode_lahan` varchar(100) DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `tanggal_pembukuan` varchar(20) DEFAULT NULL,
  `nama_lahan` varchar(200) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `luas_lahan` varchar(50) DEFAULT NULL,
  `id_asal_barang` int(11) DEFAULT NULL,
  `tahun_perolehan` varchar(4) DEFAULT NULL,
  `tanggal_perolehan` varchar(20) DEFAULT NULL,
  `harga_perolehan` varchar(100) DEFAULT NULL,
  `harga_taksiran` varchar(100) DEFAULT NULL,
  `nomor_sertifikat` varchar(100) DEFAULT NULL,
  `status_sertifikat` varchar(50) DEFAULT NULL,
  `status_tanah` varchar(50) DEFAULT NULL,
  `sertifikat_yayasan` varchar(10) DEFAULT NULL,
  `tanggal_sewa_mulai` varchar(20) DEFAULT NULL,
  `tanggal_sewa_akhir` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `foto_lahan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_lahan`
--

INSERT INTO `tbl_lahan` (`id_lahan`, `kode_lahan`, `kode_barang`, `tanggal_pembukuan`, `nama_lahan`, `alamat`, `luas_lahan`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `harga_perolehan`, `harga_taksiran`, `nomor_sertifikat`, `status_sertifikat`, `status_tanah`, `sertifikat_yayasan`, `tanggal_sewa_mulai`, `tanggal_sewa_akhir`, `keterangan`, `foto_lahan`) VALUES
(13, '1', '2.02.01/01.2010', '', 'Lahan 1', 'Purwanegara Rt 007/Rw 003. Purwokerto Utara', '4811', 1, '2010', '', '', '', 'AAJ586301', 'HGB', 'HM', 'YA', '', '', '', ''),
(14, '2', '2.02.01/01.2014', '', 'Lahan 2', 'Purwanegara Rt 007/Rw 003. Purwokerto Utara', '125', 1, '2014', '', '', '', 'AAJ586299', 'HGB', 'HM', 'YA', '', '', '', ''),
(15, '3', '2.02.01/01.2015', '', 'Lahan 3', 'Purwanegara Rt 007/Rw 003. Purwokerto Utara', '667', 1, '2015', '', '', '', 'AAJ586300', 'HGB', 'HM', 'YA', '', '', '', ''),
(16, '4', '2.02.01/01.2017', '', 'Lahan 4', 'Purwanegara Rt 007/Rw 003. Purwokerto Utara', '3835', 1, '2017', '', '', '', 'BG.179040', 'HGB', 'HM', 'YA', '', '', '', ''),
(17, '5', '2.02.01/01.2017', '', 'Lahan 5', 'Purwanegara Rt 007/Rw 003. Purwokerto Utara', '433', 1, '2017', '', '', '', '4901169', 'HGB', 'HM', 'YA', '', '', '', ''),
(18, '6', '2.02.01/01.2018', '', 'Lahan 6', 'Purwanegara Rt 007/Rw 003. Purwokerto Utara', '649', 1, '2018', '', '', '', 'BG.179041', 'HGB', 'HM', 'YA', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `id_ruangan` int(11) NOT NULL,
  `id_bangunan` int(11) NOT NULL,
  `tanggal_pembukuan` varchar(30) DEFAULT NULL,
  `kode_ruangan` varchar(100) DEFAULT NULL,
  `nama_ruangan` varchar(100) DEFAULT NULL,
  `luas_ruangan` varchar(100) DEFAULT NULL,
  `id_asal_barang` int(11) DEFAULT NULL,
  `tahun_perolehan` varchar(4) DEFAULT NULL,
  `tanggal_perolehan` varchar(30) DEFAULT NULL,
  `peruntukan` varchar(200) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `foto_ruangan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`id_ruangan`, `id_bangunan`, `tanggal_pembukuan`, `kode_ruangan`, `nama_ruangan`, `luas_ruangan`, `id_asal_barang`, `tahun_perolehan`, `tanggal_perolehan`, `peruntukan`, `keterangan`, `foto_ruangan`) VALUES
(23, 13, '', '001', 'Ruang Dekanat', '', 1, '', '', '', '', ''),
(24, 13, '', '002', 'Ruang Dosen Sistem Informasi', '', 1, '', '', 'Ruang Dosen', '', ''),
(25, 13, '', '003', 'Ruang Kelas 2.1', '60', 1, '', '', 'Ruang Kelas', '', ''),
(26, 13, '', '003', 'Ruang Kelas 2.2', '60', 1, '', '', 'Ruang Kelas', '', ''),
(27, 13, '', '005', 'Ruang Kelas 2.3', '60', 1, '', '', 'Ruang Kelas', '', ''),
(28, 13, '', '006', 'Ruang Kelas 2.4', '60', 1, '', '', 'Ruang Kelas', '', ''),
(29, 13, '', '007', 'Ruang Kelas 3.1', '60', 1, '', '', 'Ruang Kelas', '', ''),
(30, 13, '', '008', 'Ruang Kelas 3.2', '60', 1, '', '', 'Ruang Kelas', '', ''),
(31, 13, '', '009', 'Ruang Kelas 3.3', '60', 1, '', '', 'Ruang Kelas', '', ''),
(32, 13, '', '010', 'Ruang Kelas 3.4', '60', 1, '', '', 'Ruang Kelas', '', ''),
(33, 13, '', '011', 'Ruang Kelas 3.5', '60', 1, '', '', 'Ruang Kelas', '', ''),
(34, 13, '', '012', 'Ruang Kelas 3.6', '60', 1, '', '', 'Ruang Kelas', '', ''),
(35, 13, '', '013', 'Ruang Kelas 3.7', '60', 1, '', '', 'Ruang Kelas', '', ''),
(36, 13, '', '014', 'Ruang Kelas 3.8', '60', 1, '', '', 'Ruang Kelas', '', ''),
(37, 13, '', '015', 'Ruang Kelas 3.9', '60', 1, '', '', 'Ruang Kelas', '', ''),
(38, 13, '', '016', 'Ruang Kelas 4.1', '60', 1, '', '', 'Ruang Kelas', '', ''),
(39, 13, '', '017', 'Ruang Kelas 4.2', '60', 1, '', '', 'Ruang Kelas', '', ''),
(40, 13, '', '018', 'Ruang Kelas 4.3', '60', 1, '', '', 'Ruang Kelas', '', ''),
(41, 13, '', '019', 'Ruang Kelas 4.4', '60', 1, '', '', 'Ruang Kelas', '', ''),
(42, 13, '', '020', 'Ruang Laboratorium Sistem Cerdas', '90', 1, '', '', 'Ruang Laboratorium', '', ''),
(43, 13, '', '021', 'Ruang Laboratorium Multimedia', '89', 1, '', '', 'Ruang Laboratorium', '', ''),
(44, 13, '', '022', 'Ruang Laboratorium Rekayasa Perangkat Lunak', '88', 1, '', '', 'Ruang Laboratorium', '', ''),
(45, 13, '', '023', 'Ruang Laboratorium Sistem Informasi', '89', 1, '', '', 'Ruang Laboratorium', '', ''),
(47, 13, '', '024', 'Ruang Laboratorium Jaringan Berbasis Informasi', '87', 1, '', '', 'Ruang Laboratorium', '', ''),
(48, 13, '', '025', 'Ruang Laboratorium Embbed System', '87', 1, '', '', 'Ruang Laboratorium', '', ''),
(49, 13, '', '026', 'Ruang Laboratorium Bahasa', '90', 1, '', '', 'Ruang Laboratorium', '', ''),
(50, 13, '', '027', 'Ruang Ujian 1', '40', 1, '', '', 'Ruang Ujian', '', ''),
(51, 13, '', '028', 'Ruang Ujian 2', '40', 1, '', '', 'Ruang Ujian', '', ''),
(52, 13, '', '029', 'Ruang Ujian 3', '40', 1, '', '', 'Ruang Ujian', '', ''),
(53, 13, '', '030', 'Ruang Genset', '12', 1, '', '', 'Ruang Genset', '', ''),
(54, 13, '', '031', 'Ruang Riset Group 1', '60', 1, '', '', 'Ruang Riset Group', '', ''),
(55, 13, '', '032', 'Ruang Administrasi Umum dan Keuangan', '36', 1, '', '', 'Ruang Administrasi Umum dan Keuangan', '', ''),
(56, 13, '', '033', 'Ruang Administrasi Akademik', '42', 1, '', '', 'Ruang Administrasi', '', ''),
(57, 13, '', '034', 'Ruang Pengajaran', '32', 1, '', '', 'Ruang Pengajaran', '', ''),
(58, 13, '', '035', 'Ruang Broadcasting', '30', 1, '', '', 'Ruang Broadcasting', '', ''),
(59, 13, '', '036', 'Ruang Perpustakaan', '220', 1, '', '', 'Ruang Perpustakaan', '', ''),
(60, 13, '', '037', 'Ruang Pusat Kegiatan Mahasiswa', '81', 1, '', '', 'Ruang Sarana dan Prasarana Pendukung Kegiatan Mahasiswa', '', ''),
(61, 13, '', '038', 'Ruang UKM Bersama', '70', 1, '', '', 'Ruang Sarana dan Prasarana Pendukung Kegiatan Mahasiswa', '', ''),
(62, 13, '', '039', 'Ruang Sekretariat BEM dan Senat Mahasiswa', '9', 1, '', '', 'Ruang Sarana dan Prasarana Pendukung Kegiatan Mahasiswa', '', ''),
(63, 13, '', '040', 'Mushola', '45', 1, '', '', 'Ruang Sarana dan Prasarana Pendukung Lainnya', '', ''),
(64, 13, '', '041', 'Kantin', '150', 1, '', '', 'Ruang Sarana dan Prasarana Pendukung Lainnya', '', ''),
(65, 13, '', '042', 'Sarana dan Prasarana Olahraga', '100', 1, '', '', 'Ruang Sarana dan Prasarana Pendukung Lainnya', '', ''),
(67, 14, '', '001', 'Ruang Kelas 2.1', '', 1, '', '', 'Kelas', '', ''),
(68, 14, '', '002', 'Ruang Kelas Pasca', '', 1, '', '', 'Kelas', '', ''),
(69, 14, '', '003', 'Ruang Kelas 3.1', '', 1, '', '', 'Kelas', '', ''),
(70, 14, '', '004', 'Ruang Kelas 3.2', '', 1, '', '', 'Kelas', '', ''),
(71, 14, '', '005', 'Ruang Kelas 3.3', '', 1, '', '', 'Kelas', '', ''),
(72, 14, '', '006', 'Ruang Kelas 4.1', '', 1, '', '', 'Kelas', '', ''),
(73, 14, '', '007', 'Ruang Kelas 5.1', '', 1, '', '', 'Kelas', '', ''),
(74, 14, '', '008', 'Ruang Kelas 5.2', '', 1, '', '', 'Kelas', '', ''),
(75, 14, '', '009', 'Ruang Kelas 5.3', '', 1, '', '', 'Kelas', '', ''),
(76, 14, '', '010', 'Ruang Laboratorium 1', '', 1, '', '', 'Ruang Laboratorium', '', ''),
(77, 14, '', '011', 'Ruang Laboratorium 2', '', 1, '', '', 'Ruang Laboratorium', '', ''),
(78, 14, '', '012', 'Ruang Pengembangan Laboratorium dan Teknologi', '', 1, '', '', 'Ruang Laboratorium', '', ''),
(79, 14, '', '013', 'Ruang Rektor', '', 1, '', '', '', '', ''),
(80, 14, '', '014', 'Ruang Wakil Rektor 1 (pak Giat)', '', 1, '', '', '', '', ''),
(81, 14, '', '015', 'Ruang Wakil Rektor 1 (pak Amang)', '', 1, '', '', '', '', ''),
(82, 14, '', '016', 'Ruang Sekretaris / Rektorat', '', 1, '', '', '', '', ''),
(83, 14, '', '017', 'Ruang Pendaftaran', '', 1, '', '', '', '', ''),
(84, 14, '', '018', 'Ruang Humas', '', 1, '', '', '', '', ''),
(85, 14, '', '019', 'Ruang LP3M', '', 1, '', '', '', '', ''),
(86, 14, '', '020', 'Ruang Keuangan', '', 1, '', '', '', '', ''),
(87, 14, '', '021', 'Ruang Loket', '', 1, '', '', '', '', ''),
(88, 14, '', '022', 'Ruang BKH', '', 1, '', '', '', '', ''),
(89, 14, '', '023', 'Ruang Rapat', '', 1, '', '', '', '', ''),
(90, 14, '', '024', 'Ruang LP2M', '', 1, '', '', '', '', ''),
(91, 14, '', '025', 'Lobi Lantai 1', '', 1, '', '', '', '', ''),
(92, 14, '', '026', 'Ruang FBIS', '', 1, '', '', '', '', ''),
(93, 14, '', '027', 'AULA', '', 1, '', '', '', '', ''),
(94, 13, '2010-10-10', '043', 'Ruang Laboratorium Ekonomi Kreatif', '90', 1, '2010', '2010-10-10', 'Lab Ekonomi Kreatif', '', ''),
(95, 13, '', '044', 'Ampu Studio', '', 1, '2010', '', 'Ampu Studio', '', ''),
(96, 13, '', '045', 'Ruang Lab Eldig', '90', 1, '2010', '', 'Lab eldig', '', ''),
(97, 13, '', '046', 'Ruang Pimpinan Yayasan', '', 1, '2010', '', 'Ruang Pimpinan Yayasan', '', ''),
(98, 13, '', '047', 'Ruang Yayasan/ Sekretaris', '', 1, '2010', '', 'Ruang Yayasan/ Sekretaris', '', ''),
(99, 13, '', '048', 'Ruang Dekan FIK / Pak Imam', '', 1, '2010', '', 'Ruang Dekan FIK / Pak Imam', '', ''),
(100, 13, '', '049', 'Ruang Wakil Dekan / Pak Didit', '', 1, '2010', '', 'Ruang Wakil Dekan / Pak Didit', '', ''),
(101, 13, '', '050', 'Ruang Wakil Dekan / Ibu Izah', '', 1, '2010', '', 'Ruang Wakil Dekan / Ibu Izah', '', ''),
(102, 13, '', '051', 'Ruang HUMAS / FO', '', 1, '2010', '', 'Ruang HUMAS / FO', '', ''),
(103, 13, '', '052', 'Ruang BAAK', '', 1, '2010', '', 'Ruang BAAK', '', ''),
(104, 13, '', '053', 'Ruang Kemahasiswaan', '', 1, '2010', '', 'Ruang Kemahasiswaan', '', ''),
(105, 13, '', '054', 'Ruang Loket Pelayanan', '', 1, '2010', '', 'Ruang Loket Pelayanan', '', ''),
(106, 13, '', '055', 'Ruang Dosen Sistem Informatika', '118', 1, '2010', '', 'Ruang Dosen Sistem Informatika', '', ''),
(107, 13, '', '056', 'Ruang AULA', '', 1, '2010', '', 'Ruang AULA', '', ''),
(108, 13, '', '057', 'Ruang Eksekutif/ VIP', '', 1, '2009', '', 'Ruang Eksekutif/ VIP', '', ''),
(109, 13, '', '058', 'Ruang Riset Group 2', '60', 1, '2010', '', 'Ruang Riset Group', '', ''),
(110, 13, '', '059', 'Ruang Riset Group 3', '60', 1, '2010', '', 'Ruang Riset Group', '', ''),
(111, 13, '', '060', 'Ruang Panel 1', '6', 1, '2010', '', 'Ruang Panel', '', ''),
(112, 13, '', '061', 'Ruang Panel 2', '3', 1, '2010', '', 'Ruang Panel', '', ''),
(113, 13, '', '062', 'Ruang Parkir Kendaraan', '325', 1, '2010', '', 'Ruang Parkir Kendaraan', '', ''),
(114, 13, '', '063', 'Ruang Pimpinan UPPS 1', '4', 1, '2010', '', 'Ruang Pimpinan UPPS', '', ''),
(115, 13, '', '064', 'Ruang Pimpinan UPPS 2', '4', 1, '2010', '', 'Ruang Pimpinan UPPS', '', ''),
(116, 13, '', '065', 'Ruang Pimpinan UPPS 3', '4', 1, '2010', '', 'Ruang Pimpinan UPPS', '', ''),
(117, 13, '', '066', 'Ruang Pimpinan UPPS 4', '4', 1, '2010', '', 'Ruang Pimpinan UPPS', '', ''),
(118, 13, '', '067', 'Ruang Pimpinan UPPS 5', '4', 1, '2010', '', 'Ruang Pimpinan UPPS', '', ''),
(119, 13, '', '068', 'Ruang Pimpinan UPPS 6', '4', 1, '2010', '', 'Ruang Pimpinan UPPS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id_vendor`, `nama_vendor`) VALUES
(3, 'Tokopedia (VGEN)'),
(4, 'Mides Purwokerto'),
(5, 'Els Komputer Purwokerto'),
(6, 'Tokopedia (Bandar komputer)'),
(7, 'Tokopedia (Pelitakomputer)'),
(8, 'Tokopedia (Mitraindotrading)'),
(9, 'R. Hidayat General ift'),
(10, 'CV Tiga Bintang'),
(11, 'PT. Cahaya Cipta Abadi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(23) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_ttd` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `divisi`, `nama`, `nik`, `email`, `contact`, `username`, `password`, `foto_ttd`, `role`, `active`) VALUES
(1, 'Bagian Aset dan Kerumahtanggaan', 'Antina Suherniati', '', 'bak@amikompurwokerto.co.id', '082221515765', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'centang3.png', 1, 'Y'),
(10, 'Unit Pengadaan Barang', 'shohi', '', 'nvtzusy@gmail.com', '45645', 'upb', '21232f297a57a5a743894a0e4a801fc3', 'centang.png', 3, 'Y'),
(13, 'Kemahasiswaan', 'mahasiswa', '453535', 'kemahasiswaan@gmail.com', '4563634', 'kemahasiswaan', '21232f297a57a5a743894a0e4a801fc3', 'Jabat_tangan4.jpg', 2, 'Y'),
(14, 'Program Studi Informatika', 'Prodi Informatika', '', 'prodi_informatika@amikompurwokerto.ac.id', '082134609876', 'prodi_informatika', 'f26236435a7a6cb41b411d9c56b97b9f', 'TTD_Digital_Fandy.png', 2, 'Y'),
(15, 'Bagian-Aset-dan-Kerumahtanggan', 'Retno Waluyo', '', 'waluyo@amikompurwokerto.ac.id', '085726311183', 'bakamikom', '21232f297a57a5a743894a0e4a801fc3', 'IMG-20230620-WA0000_(1).jpg', 2, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'ckingg9@gmail.com', 'pzNkfLdk06oFKLcf1hcPXp5YPd7fwArfOBzRF8L8aiw=', 1680824980),
(2, 'ckingg9@gmail.com', 'rUIiwiwGIOHApgWxJKyKNGFFQH6QwqgngC3iJ6hxbFQ=', 1680825248),
(3, 'ckingg9@gmail.com', 'jLqnn5Z8OHTzMolX9TnqMvmMG1dOxSLxAbEBsGzHy/I=', 1680825381),
(4, 'ckingg9@gmail.com', 'OBylwMHinjohBbKyuHt4iiSHSBf4kvaFea+ynDSLvUI=', 1680825446),
(5, 'ckingg9@gmail.com', 'zEXSXdJ5mEdqnmth3ygYxu+I49VWz75OE3skcdR40KE=', 1680825535),
(6, 'ckingg9@gmail.com', '2D/OqXPlAdCI5c2a8XsAOYJwynSw0tytpmVcXYa0Ypg=', 1685248883),
(7, 'nvtzusy@gmail.com', 'dRvZ0DKsqxfUt82k6y0B+25vSWHrXNP69Yxvg4/rh3o=', 1688517230),
(8, 'nvtzusy@gmail.com', 'Djmb4+FsnSaHU2seXYw9WE7L8M/1Rbr8Ohbelp2e9l4=', 1688517403),
(9, 'nvtzusy@gmail.com', 'dUB3bXg7DhR4U1558eEFqRcTkF9Sdyvqvf/HTwmhCAg=', 1688517509),
(10, 'nvtzusy@gmail.com', 'iqGKAeUfonNUubMsPXR9tcy7X/qvE4FWJqnB8KaW6JA=', 1688555185),
(11, 'daniagusmir@gmail.com', 'm6pJo+XJpJuU1bgyFo59xJRg2H+j2mKTg1+XwmTr8/M=', 1688681668);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsipdokumen`
--
ALTER TABLE `arsipdokumen`
  ADD PRIMARY KEY (`id_dokumen`) USING BTREE;

--
-- Indexes for table `arsipgambar`
--
ALTER TABLE `arsipgambar`
  ADD PRIMARY KEY (`id_gambar`) USING BTREE;

--
-- Indexes for table `arsipnota`
--
ALTER TABLE `arsipnota`
  ADD PRIMARY KEY (`id_nota`) USING BTREE;

--
-- Indexes for table `asal_barang`
--
ALTER TABLE `asal_barang`
  ADD PRIMARY KEY (`id_asal_barang`) USING BTREE;

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `barang_satuan`
--
ALTER TABLE `barang_satuan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `barang_temp`
--
ALTER TABLE `barang_temp`
  ADD PRIMARY KEY (`id_tmp`) USING BTREE;

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id_golongan`) USING BTREE;

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`) USING BTREE;

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_jenis_barang`) USING BTREE;

--
-- Indexes for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `lantai`
--
ALTER TABLE `lantai`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`) USING BTREE;

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `subklasifikasi`
--
ALTER TABLE `subklasifikasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`) USING BTREE;

--
-- Indexes for table `suratkeluar`
--
ALTER TABLE `suratkeluar`
  ADD PRIMARY KEY (`id_suratkeluar`) USING BTREE;

--
-- Indexes for table `suratmasuk`
--
ALTER TABLE `suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`) USING BTREE;

--
-- Indexes for table `surat_ba`
--
ALTER TABLE `surat_ba`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `surat_po`
--
ALTER TABLE `surat_po`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_bangunan`
--
ALTER TABLE `tbl_bangunan`
  ADD PRIMARY KEY (`id_bangunan`) USING BTREE;

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- Indexes for table `tbl_lahan`
--
ALTER TABLE `tbl_lahan`
  ADD PRIMARY KEY (`id_lahan`) USING BTREE;

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`id_ruangan`) USING BTREE;

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id_vendor`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsipdokumen`
--
ALTER TABLE `arsipdokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arsipgambar`
--
ALTER TABLE `arsipgambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `arsipnota`
--
ALTER TABLE `arsipnota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asal_barang`
--
ALTER TABLE `asal_barang`
  MODIFY `id_asal_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `barang_satuan`
--
ALTER TABLE `barang_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `barang_temp`
--
ALTER TABLE `barang_temp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id_jenis_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lantai`
--
ALTER TABLE `lantai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `subklasifikasi`
--
ALTER TABLE `subklasifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suratmasuk`
--
ALTER TABLE `suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surat_ba`
--
ALTER TABLE `surat_ba`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_po`
--
ALTER TABLE `surat_po`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bangunan`
--
ALTER TABLE `tbl_bangunan`
  MODIFY `id_bangunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1463;

--
-- AUTO_INCREMENT for table `tbl_lahan`
--
ALTER TABLE `tbl_lahan`
  MODIFY `id_lahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  MODIFY `id_ruangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
