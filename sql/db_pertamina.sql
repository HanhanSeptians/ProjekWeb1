-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2022 at 06:50 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pertamina`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `password`) VALUES
('adminpertamina@gmail.com', 'admin12345');

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `kantor` varchar(10) NOT NULL,
  `jenis_asset` varchar(30) NOT NULL,
  `deskripsi_asset` varchar(255) NOT NULL,
  `no_asset` varchar(10) NOT NULL,
  `merk_type` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `ukuran` varchar(30) NOT NULL,
  `tahun_pengadaan` year(4) NOT NULL,
  `status_kepemilikan` varchar(30) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `asal_usul` varchar(30) NOT NULL,
  `harga` int(30) NOT NULL,
  `gambar` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`kantor`, `jenis_asset`, `deskripsi_asset`, `no_asset`, `merk_type`, `jumlah`, `ukuran`, `tahun_pengadaan`, `status_kepemilikan`, `lokasi`, `kondisi`, `asal_usul`, `harga`, `gambar`, `keterangan`) VALUES
('OC', '', 'Kursi Sova Hitam', '0001', '', 3, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'Meja Sofa', '0002', '', 1, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0003', '', 1, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'Meja Penerima Tamu', '0004', '', 1, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sofa Hitam', '0005', '', 2, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'Emergency Box', '0006', '', 1, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sandaran Merah Tua', '0007', '', 4, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kecil Kuning Muda', '0008', '', 1, '0', 2020, '', 'Ruang Lobby lt.6', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat Warna Cokelat', '0009', '', 1, '0', 2020, '', 'Ruang Rapat 6B', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam Kulit', '0010', '', 8, '0', 2020, '', 'Ruang Rapat 6B', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sandaran Merah', '0011', '', 4, '0', 2020, '', 'Ruang Rapat 6B', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0012', '', 1, '0', 2020, '', 'Ruang Rapat 6B', 'DB', '', 0, '', ''),
('OC', '', 'Rak Tempat Piala', '0013', '', 2, '0', 2020, '', 'Ruang Rapat 6B', 'DB', '', 0, '', ''),
('OC', '', 'Piagam Visi & Misi', '0014', '', 1, '0', 2020, '', 'Ruang Rapat 6B', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat Warna Cokelat', '0015', '', 1, '0', 2020, '', 'Ruang Rapat 6C', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam Kulit', '0016', '', 4, '0', 2020, '', 'Ruang Rapat 6C', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sandaran Merah Tua', '0017', '', 1, '0', 2020, '', 'Ruang Rapat 6C', 'DB', '', 0, '', ''),
('OC', '', 'TV & Kabel', '0018', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Rak Tempat Piala', '0019', '', 2, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat Warna Cokelat', '0020', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0021', '', 19, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Credense', '0022', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Dispenser', '0023', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Credensa', '0024', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Printer', '0025', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Pemanas Air', '0026', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'White Board', '0027', '', 2, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Projektor', '0028', '', 1, '0', 2020, '', 'Ruang Rapat 6A', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat Warna Cokelat', '0029', '', 1, '0', 2020, '', 'Ruang Rapat 6D', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0030', '', 8, '0', 2020, '', 'Ruang Rapat 6D', 'DB', '', 0, '', ''),
('OC', '', 'TV & Kabelnya', '0031', '', 1, '0', 2020, '', 'Ruang Rapat 6D', 'DB', '', 0, '', ''),
('OC', '', 'White Board', '0032', '', 1, '0', 2020, '', 'Ruang Rapat 6D', 'DB', '', 0, '', ''),
('OC', '', 'Credensa Warna Cokelat', '0033', '', 1, '0', 2020, '', 'Ruang Rapat 6D', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat Warna Cokelat', '0034', '', 1, '0', 2020, '', 'Ruang Rapat 6E', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0035', '', 8, '0', 2020, '', 'Ruang Rapat 6E', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sandaran Merah Tua', '0036', '', 4, '0', 2020, '', 'Ruang Rapat 6E', 'DB', '', 0, '', ''),
('OC', '', 'White Board', '0037', '', 1, '0', 2020, '', 'Ruang Rapat 6E', 'DB', '', 0, '', ''),
('OC', '', 'Credensa Warna Cokelat', '0038', '', 1, '0', 2020, '', 'Ruang Rapat 6E', 'DB', '', 0, '', ''),
('OC', '', 'Kubikal Kotak Bagian Tengah', '0039', '', 67, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Kubikal Kotak Sebelah Timur', '0040', '', 11, '0', 2020, '', 'Kubikal Sebelah Timur', 'DB', '', 0, '', ''),
('OC', '', 'Kubikal', '0041', '', 2, '0', 2020, '', 'Kubikal Sekretaris Direktur Ut', 'DB', '', 0, '', ''),
('OC', '', 'Bufet Laci / Cradensa', '0042', '', 1, '0', 2020, '', 'Kubikal Sekretaris Direktur Ut', 'DB', '', 0, '', ''),
('OC', '', 'Kubikal', '0043', '', 2, '0', 2020, '', 'Kubikal Sekre. Dir. S & M', 'DB', '', 0, '', ''),
('OC', '', 'Credensa', '0044', '', 10, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0045', '', 72, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam Kulit', '0046', '', 13, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Rak Abu Kecil', '0047', '', 2, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Dispenser Sanken', '0048', '', 1, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Kulkas LG', '0049', '', 1, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Printer HP', '0050', '', 2, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Mesin Tik ', '0051', '', 1, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Rak Kayu Kaca', '0052', '', 1, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Abu Kayu ', '0053', '', 11, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Rak dinding', '0054', '', 8, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Printer Epson Hitam', '0055', '', 1, '0', 2020, '', 'Ruang Sales', 'DB', '', 0, '', ''),
('OC', '', 'Rak Piring Gelas Merah', '0056', '', 2, '0', 2020, '', 'Pantry Utara', 'DB', '', 0, '', ''),
('OC', '', 'Kompor Listrik', '0057', '', 1, '0', 2020, '', 'Pantry Utara', 'DB', '', 0, '', ''),
('OC', '', 'Laci Piring', '0058', '', 1, '0', 2020, '', 'Pantry Utara', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Oranye', '0059', '', 1, '0', 2020, '', 'Pantry Utara', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sender Merah ', '0060', '', 2, '0', 2020, '', 'Pantry Utara', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Hitam 2', '0061', '', 2, '0', 2020, '', 'Pantry Utara', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Panjang ', '0062', '', 1, '0', 2020, '', 'Pantry Utara', 'DB', '', 0, '', ''),
('OC', '', 'Rak Abu Cokelat Kecil', '0063', '', 4, '0', 2020, '', 'Pantry Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Rak Abu Cokelat Besar', '0064', '', 1, '0', 2020, '', 'Pantry Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja', '0065', '', 1, '0', 2020, '', 'Ruang Trial', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0066', '', 1, '0', 2020, '', 'Ruang Trial', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu', '0067', '', 1, '0', 2020, '', 'Ruang Trial', 'DB', '', 0, '', ''),
('OC', '', 'PC HP', '0068', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Meja Penerima Tamu', '0069', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'PC HP', '0070', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Cokelat Panjang', '0071', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Cokelat Pendek', '0072', '', 2, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Meja Tamu', '0073', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Rak Cokelat Muda', '0074', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Drum PTPL', '0075', '', 3, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Emergency Box', '0076', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Box Cokelat 2', '0077', '', 2, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Rak Abu Abu', '0078', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sandar Merah ', '0079', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Lampu Hias', '0080', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0081', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja', '0082', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Kulit Hitam', '0083', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0084', '', 2, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat  ', '0085', '', 3, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Kursi kerja ', '0086', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'White Board', '0087', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Projektor', '0088', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0089', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0090', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Credensa Warna Cokelat', '0091', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Cokelat Pendek', '0092', '', 2, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Cokelat Panjang', '0093', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Meja Tamu', '0094', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Rak Kayu Kuning', '0095', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0096', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Gantungan', '0097', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Besar Cokelat', '0098', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Credense Besar Cokelat', '0099', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Kulkas Samsung', '0100', '', 1, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0101', '', 2, '0', 2020, '', 'Ruang Direktur Utama', 'DB', '', 0, '', ''),
('OC', '', 'Sofa merah besar', '0102', '', 2, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Sofa merah kecil', '0103', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Meja Tamu', '0104', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Rak Kuning', '0105', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Credense Cokelat Besar', '0106', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Kulkas Glacio', '0107', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Dispenser', '0108', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0109', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0110', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0111', '', 2, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'PC HP', '0112', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0113', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Rak ', '0114', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Printer', '0115', '', 1, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0116', '', 2, '0', 2020, '', 'Ruang Direktur Sales&Marketing', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0117', '', 1, '0', 2020, '', 'Ruang VP SMT ', '', '', 0, '', ''),
('OC', '', 'Kursi Sender Merah ', '0118', '', 3, '0', 2020, '', 'Ruang VP SMT ', '', '', 0, '', ''),
('OC', '', 'Meja Kerja', '0119', '', 1, '0', 2020, '', 'Ruang VP SMT ', '', '', 0, '', ''),
('OC', '', 'Credensa', '0120', '', 2, '0', 2020, '', 'Ruang VP SMT ', '', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0121', '', 1, '0', 2020, '', 'Ruang VP SMT ', '', '', 0, '', ''),
('OC', '', 'Glassboard', '0122', '', 1, '0', 2020, '', 'Ruang VP SMT ', '', '', 0, '', ''),
('OC', '', 'TV LG', '0123', '', 1, '0', 2020, '', 'Ruang VP SMT ', '', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0124', '', 1, '0', 2020, '', 'Ruang VP Sales ', '', '', 0, '', ''),
('OC', '', 'Kursi Sender Merah ', '0125', '', 2, '0', 2020, '', 'Ruang VP Sales ', '', '', 0, '', ''),
('OC', '', 'Meja Kerja', '0126', '', 1, '0', 2020, '', 'Ruang VP Sales ', '', '', 0, '', ''),
('OC', '', 'Credensa', '0127', '', 1, '0', 2020, '', 'Ruang VP Sales ', '', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0128', '', 2, '0', 2020, '', 'Ruang VP Sales ', '', '', 0, '', ''),
('OC', '', 'Glassboard', '0129', '', 1, '0', 2020, '', 'Ruang VP Sales ', '', '', 0, '', ''),
('OC', '', 'TV LG', '0130', '', 1, '0', 2020, '', 'Ruang VP Sales ', '', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0131', '', 1, '0', 2020, '', 'Ruang VP A', '', '', 0, '', ''),
('OC', '', 'Kursi Sender Merah ', '0132', '', 2, '0', 2020, '', 'Ruang VP A', '', '', 0, '', ''),
('OC', '', 'Meja Kerja', '0133', '', 1, '0', 2020, '', 'Ruang VP A', '', '', 0, '', ''),
('OC', '', 'Credensa', '0134', '', 1, '0', 2020, '', 'Ruang VP A', '', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0135', '', 2, '0', 2020, '', 'Ruang VP A', '', '', 0, '', ''),
('OC', '', 'Glassboard', '0136', '', 1, '0', 2020, '', 'Ruang VP A', '', '', 0, '', ''),
('OC', '', 'TV LG', '0137', '', 1, '0', 2020, '', 'Ruang VP A', '', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0138', '', 1, '0', 2020, '', 'Ruang VP B', '', '', 0, '', ''),
('OC', '', 'Kursi Sender Merah ', '0139', '', 2, '0', 2020, '', 'Ruang VP B', '', '', 0, '', ''),
('OC', '', 'Meja Kerja', '0140', '', 1, '0', 2020, '', 'Ruang VP B', '', '', 0, '', ''),
('OC', '', 'Credensa', '0141', '', 1, '0', 2020, '', 'Ruang VP B', '', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0142', '', 2, '0', 2020, '', 'Ruang VP B', '', '', 0, '', ''),
('OC', '', 'Glassboard', '0143', '', 1, '0', 2020, '', 'Ruang VP B', '', '', 0, '', ''),
('OC', '', 'TV LG', '0144', '', 1, '0', 2020, '', 'Ruang VP B', '', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0145', '', 1, '0', 2020, '', 'Ruang VP C', '', '', 0, '', ''),
('OC', '', 'Kursi Sender Merah ', '0146', '', 2, '0', 2020, '', 'Ruang VP C', '', '', 0, '', ''),
('OC', '', 'Meja Kerja', '0147', '', 1, '0', 2020, '', 'Ruang VP C', '', '', 0, '', ''),
('OC', '', 'Credensa', '0148', '', 1, '0', 2020, '', 'Ruang VP C', '', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0149', '', 2, '0', 2020, '', 'Ruang VP C', '', '', 0, '', ''),
('OC', '', 'Glassboard', '0150', '', 1, '0', 2020, '', 'Ruang VP C', '', '', 0, '', ''),
('OC', '', 'TV LG', '0151', '', 1, '0', 2020, '', 'Ruang VP C', '', '', 0, '', ''),
('OC', '', 'Meja Receptionist', '0152', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Kursi Warna Hitam', '0153', '', 5, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam Gagang Besi Alumunium', '0154', '', 11, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Meja Makan', '0155', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sandaran Merah Tua', '0156', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kecil Warna Kuning Muda', '0157', '', 2, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Tempat untuk Photo', '0158', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0159', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Cokelat', '0160', '', 2, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Emergency Box', '0161', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Utara', 'DB', '', 0, '', ''),
('OC', '', 'Rak Kaca', '0162', '', 2, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Meja Pajangan Bunga', '0163', '', 3, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Screen Pajangan PTPL', '0164', '', 3, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Timbangan', '0165', '', 1, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Laci Biru', '0166', '', 1, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Pajangan In line Blending', '0167', '', 1, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Pajangan Mechanical', '0168', '', 1, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Pajangan Oil Hidraulic Trainer', '0169', '', 1, '0', 2020, '', 'Lorong Utara', 'DB', '', 0, '', ''),
('OC', '', 'Meja Receptionist', '0170', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Emergency Box', '0171', '', 1, '0', 2020, '', 'Ruang Lobby lt.7 Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Meja Tenis Meja', '0172', '', 4, '0', 2020, '', 'Ruang Lobby lt.7 Selatan', 'DB', '', 0, '', ''),
('OC', '', 'White Board ', '0173', '', 2, '0', 2020, '', 'Ruang Lobby lt.7 Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Meja Cokelat ', '0174', '', 3, '0', 2020, '', 'Ruang Lobby lt.7 Selatan', 'TR', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0175', '', 1, '0', 2020, '', 'Ruang VP 1', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0176', '', 2, '0', 2020, '', 'Ruang VP 1', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0177', '', 1, '0', 2020, '', 'Ruang VP 1', 'DB', '', 0, '', ''),
('OC', '', 'Credense Hitam Kayu Panjang', '0178', '', 1, '0', 2020, '', 'Ruang VP 1', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0179', '', 2, '0', 2020, '', 'Ruang VP 1', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0180', '', 1, '0', 2020, '', 'Ruang VP 1', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0181', '', 1, '0', 2020, '', 'Ruang VP 1', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0182', '', 1, '0', 2020, '', 'Ruang VP Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0183', '', 2, '0', 2020, '', 'Ruang VP Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0184', '', 1, '0', 2020, '', 'Ruang VP Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Credense Hitam Kayu Panjang', '0185', '', 1, '0', 2020, '', 'Ruang VP Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0186', '', 2, '0', 2020, '', 'Ruang VP Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0187', '', 1, '0', 2020, '', 'Ruang VP Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0188', '', 1, '0', 2020, '', 'Ruang VP Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0189', '', 1, '0', 2020, '', 'Ruang VP 2', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0190', '', 2, '0', 2020, '', 'Ruang VP 2', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0191', '', 1, '0', 2020, '', 'Ruang VP 2', 'DB', '', 0, '', ''),
('OC', '', 'Credense Hitam Kayu Panjang', '0192', '', 1, '0', 2020, '', 'Ruang VP 2', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0193', '', 2, '0', 2020, '', 'Ruang VP 2', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0194', '', 1, '0', 2020, '', 'Ruang VP 2', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0195', '', 1, '0', 2020, '', 'Ruang VP 2', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0196', '', 1, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0197', '', 2, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0198', '', 1, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'Credense Hitam Kayu Panjang', '0199', '', 1, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0200', '', 2, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0201', '', 1, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0202', '', 1, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Biru', '0203', '', 1, '0', 2020, '', 'Ruang VP 3', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0204', '', 1, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0205', '', 2, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0206', '', 1, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Credense Hitam Kayu Panjang', '0207', '', 1, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0208', '', 2, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0209', '', 1, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0210', '', 1, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam  ', '0211', '', 2, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah', '0212', '', 1, '0', 2020, '', 'Ruang VP 4', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0213', '', 1, '0', 2020, '', 'Ruang Manager 1', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu  ', '0214', '', 1, '0', 2020, '', 'Ruang Manager 1', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0215', '', 1, '0', 2020, '', 'Ruang Manager 1', 'DB', '', 0, '', ''),
('OC', '', 'Credense Kayu ', '0216', '', 2, '0', 2020, '', 'Ruang Manager 1', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0217', '', 1, '0', 2020, '', 'Ruang Manager 2', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu  ', '0218', '', 1, '0', 2020, '', 'Ruang Manager 2', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0219', '', 1, '0', 2020, '', 'Ruang Manager 2', 'DB', '', 0, '', ''),
('OC', '', 'Credense Kayu ', '0220', '', 2, '0', 2020, '', 'Ruang Manager 2', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0221', '', 1, '0', 2020, '', 'Ruang Manager 3', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu  ', '0222', '', 1, '0', 2020, '', 'Ruang Manager 3', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0223', '', 1, '0', 2020, '', 'Ruang Manager 3', 'DB', '', 0, '', ''),
('OC', '', 'Credense Kayu ', '0224', '', 2, '0', 2020, '', 'Ruang Manager 3', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0225', '', 1, '0', 2020, '', 'Ruang Manager 4', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu  ', '0226', '', 1, '0', 2020, '', 'Ruang Manager 4', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0227', '', 1, '0', 2020, '', 'Ruang Manager 4', 'DB', '', 0, '', ''),
('OC', '', 'Credense Kayu ', '0228', '', 2, '0', 2020, '', 'Ruang Manager 4', 'DB', '', 0, '', ''),
('OC', '', 'Brankas Besar', '0229', '', 8, '0', 2020, '', 'Gudang Dokumen', 'DB', '', 0, '', ''),
('OC', '', 'Meja Putih Kecil', '0230', '', 1, '0', 2020, '', 'Gudang Dokumen', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat ', '0231', '', 1, '0', 2020, '', 'Ruang Rapat Komite Audit ', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Rapat', '0232', '', 7, '0', 2020, '', 'Ruang Rapat Komite Audit ', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kayu', '0233', '', 1, '0', 2020, '', 'Ruang Rapat Komite Audit ', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0234', '', 1, '0', 2020, '', 'Ruang Rapat Komite Audit ', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0235', '', 1, '0', 2020, '', 'Ruang Rapat Komite Audit ', 'DB', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0236', '', 2, '0', 2020, '', 'Ruang Rapat Komite Audit ', 'DB', '', 0, '', ''),
('OC', '', 'Rak Dinding Kayu', '0237', '', 2, '0', 2020, '', 'Ruang Komisaris Utama', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0238', '', 1, '0', 2020, '', 'Ruang Komisaris Utama', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu', '0239', '', 2, '0', 2020, '', 'Ruang Komisaris Utama', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0240', '', 1, '0', 2020, '', 'Ruang Komisaris Utama', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0241', '', 1, '0', 2020, '', 'Ruang Komisaris Utama', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja ', '0242', '', 2, '0', 2020, '', 'Ruang Sekretaris Dewan Komisar', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja  ', '0243', '', 2, '0', 2020, '', 'Ruang Sekretaris Dewan Komisar', 'DB', '', 0, '', ''),
('OC', '', 'Credense ', '0244', '', 1, '0', 2020, '', 'Ruang Sekretaris Dewan Komisar', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0245', '', 1, '0', 2020, '', 'Ruang Sekretaris Dewan Komisar', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0246', '', 1, '0', 2020, '', 'Ruang Sekretaris Dewan Komisar', 'DB', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0247', '', 2, '0', 2020, '', 'Ruang Sekretaris Dewan Komisar', 'DB', '', 0, '', ''),
('OC', '', 'Credense ', '0248', '', 1, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kaca', '0249', '', 2, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Set Speaker', '0250', '', 1, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Infokus', '0251', '', 1, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Screen Proyektor', '0252', '', 1, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Mimbar Plastik Bening', '0253', '', 1, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Stand Mic', '0254', '', 2, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Kursi acara', '0255', '', 72, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Karpet Merah Sajadah', '0256', '', 14, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Karpet Hijau Sejadah', '0257', '', 6, '0', 2020, '', 'Aula Lantai 7', 'DB', '', 0, '', ''),
('OC', '', 'Meja ', '0258', '', 1, '0', 2020, '', 'Ruang Rapat Dewan Komisaris', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0259', '', 3, '0', 2020, '', 'Ruang Rapat Dewan Komisaris', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah Hitam ', '0260', '', 5, '0', 2020, '', 'Ruang Rapat Dewan Komisaris', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah', '0261', '', 5, '0', 2020, '', 'Ruang Rapat Dewan Komisaris', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0262', '', 1, '0', 2020, '', 'Ruang Rapat Dewan Komisaris', 'DB', '', 0, '', ''),
('OC', '', 'Meja TV', '0263', '', 1, '0', 2020, '', 'Ruang Rapat Dewan Komisaris', 'DB', '', 0, '', ''),
('OC', '', 'Rak Cokelat', '0264', '', 1, '0', 2020, '', 'Ruang Rapat Dewan Komisaris', 'DB', '', 0, '', ''),
('OC', '', 'Meja Registrasi ', '0265', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Meja Cokelat Besar', '0266', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0267', '', 29, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah', '0268', '', 36, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Kubikal ', '0269', '', 69, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Dispenser Sanken', '0270', '', 2, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Kayu ', '0271', '', 5, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Brankas Uchihan', '0272', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Cokelat Muda', '0273', '', 3, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Credense Penghargaan Besar', '0274', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Credense Penghargaan Kecil', '0275', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Kulkas Electrolux', '0276', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Kayu Besar 12 Pintu', '0277', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Paper Breaker', '0278', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Printer HP', '0279', '', 4, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Printer EPSON Hitam', '0280', '', 1, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Rak Dinding', '0281', '', 4, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Credense Cokelat Muda', '0282', '', 7, '0', 2020, '', 'Ruang Corporate Development', 'DB', '', 0, '', ''),
('OC', '', 'Meja  ', '0283', '', 7, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0284', '', 30, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam ', '0285', '', 3, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah', '0286', '', 3, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0287', '', 1, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Infokus', '0288', '', 1, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Router ', '0289', '', 1, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Speaker', '0290', '', 2, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Stand Mic', '0291', '', 1, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'Rak Panjang ', '0292', '', 4, '0', 2020, '', 'Ruang ILMA', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0293', '', 1, '0', 2020, '', 'Ruang Rapat C', 'DB', '', 0, '', ''),
('OC', '', 'Meja Rapat ', '0294', '', 1, '0', 2020, '', 'Ruang Rapat C', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Rapat', '0295', '', 5, '0', 2020, '', 'Ruang Rapat C', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0296', '', 1, '0', 2020, '', 'Ruang Rapat C', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0297', '', 2, '0', 2020, '', 'Ruang Rapat C', 'DB', '', 0, '', ''),
('OC', '', 'Lukisan ', '0298', '', 1, '0', 2020, '', 'Ruang Rapat C', 'DB', '', 0, '', ''),
('OC', '', 'Aquarium', '0299', '', 1, '0', 2020, '', 'Ruang Rapat C', 'DB', '', 0, '', ''),
('OC', '', 'TV ', '0300', '', 6, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'Kubikal ', '0301', '', 3, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0302', '', 1, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Oranye', '0303', '', 1, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'PC HP', '0304', '', 1, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0305', '', 2, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Biru', '0306', '', 2, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Cokelat Muda', '0307', '', 1, '0', 2020, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('OC', '', 'TV ', '0308', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Meja ', '0309', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0310', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah', '0311', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Tempat Tidur Periksa Dokter', '0312', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0313', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0314', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Tabung Oksigen', '0315', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Roda', '0316', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Tangga kecil', '0317', '', 1, '0', 2020, '', 'Ruang Rapat A', 'DB', '', 0, '', ''),
('OC', '', 'Meja Sofa', '0318', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Warna Hitam', '0319', '', 3, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Meja Penerima Tamu', '0320', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Warna Hitam', '0321', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Warna Hitam Sandaran', '0322', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Laci Warna Kuning Muda', '0323', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Sofa Warna Hitam', '0324', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah ', '0325', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Emergency Box ', '0326', '', 1, '0', 2020, '', 'Ruang Lobby lt. 8 Sebelah Utar', 'DB', '', 0, '', ''),
('OC', '', 'Credensa Warna Cokelat Tua', '0327', '', 1, '0', 2020, '', 'Ruang Tamu', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Warna Cokelat Muda', '0328', '', 3, '0', 2020, '', 'Ruang Tamu', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja Kuning Muda', '0329', '', 1, '0', 2020, '', 'Ruang Tempat ATK', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja Kuning Muda / Credensa', '0330', '', 1, '0', 2020, '', 'Ruang Kerja Manager Strategic ', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam Kerja', '0331', '', 1, '0', 2020, '', 'Ruang Kerja Manager Strategic ', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam Biru untuk Tamu', '0332', '', 2, '0', 2020, '', 'Ruang Kerja Manager Strategic ', 'DB', '', 0, '', ''),
('OC', '', 'Laci Warna Kuning Muda', '0333', '', 2, '0', 2020, '', 'Ruang Kerja Manager Strategic ', 'DB', '', 0, '', ''),
('OC', '', 'Kotak Kubikal Warna Hijau Muda Pekerja/OS', '0334', '', 44, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Warna Orange Tua', '0335', '', 20, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Kursi sandaran Biru', '0336', '', 9, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kulit warna hitam', '0337', '', 10, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Kursi sandaran merah tua', '0338', '', 4, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Kursi hitam kecil', '0339', '', 2, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Dispenser', '0340', '', 2, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Credensa warna putih', '0341', '', 1, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Bufet/lemari tempat arsip warna putih', '0342', '', 8, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Printer Merk HP', '0343', '', 4, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Printer Merk Epson', '0344', '', 3, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'PC merk HP', '0345', '', 7, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'PC merk Dell', '0346', '', 9, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Printer merk Brother APS-2400N', '0347', '', 1, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Tempat sampah', '0348', '', 11, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0349', '', 2, '0', 2020, '', 'Ruang General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja Kuning Muda / Credensa', '0350', '', 1, '0', 2020, '', 'Ruang Kerja Manager Asset Mana', 'DB', '', 0, '', ''),
('OC', '', 'Credensa warna putih', '0351', '', 1, '0', 2020, '', 'Ruang Kerja Manager Asset Mana', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Biru', '0352', '', 1, '0', 2020, '', 'Ruang Kerja Manager Asset Mana', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0353', '', 1, '0', 2020, '', 'Ruang Kerja Manager Asset Mana', 'DB', '', 0, '', ''),
('OC', '', 'Laci Putih', '0354', '', 1, '0', 2020, '', 'Ruang Kerja Manager Asset Mana', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja Kuning Muda / Credensa', '0355', '', 1, '0', 2020, '', 'Ruang Kerja Manager IT', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Oranye', '0356', '', 2, '0', 2020, '', 'Ruang Kerja Manager IT', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0357', '', 1, '0', 2020, '', 'Ruang Kerja Manager IT', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Kayu', '0358', '', 1, '0', 2020, '', 'Ruang Kerja Manager IT', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Merah ', '0359', '', 1, '0', 2020, '', 'Ruang Kerja Manager IT', 'DB', '', 0, '', ''),
('OC', '', 'PC Dell', '0360', '', 1, '0', 2020, '', 'Ruang Kerja Manager IT', 'DB', '', 0, '', ''),
('OC', '', 'Kursi hitam kulit', '0361', '', 2, '0', 2020, '', 'Ruang Kerja Manager IT', 'DB', '', 0, '', ''),
('OC', '', 'Kotak Kubikal', '0362', '', 5, '0', 2020, '', 'Lorong Sebelah Timur', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kulit Hitam besar', '0363', '', 1, '0', 2020, '', 'Lorong sebelah Barat', 'DB', '', 0, '', ''),
('OC', '', 'Bufet lemari kaca', '0364', '', 1, '0', 2020, '', 'Ruang Sholat ', 'DB', '', 0, '', ''),
('OC', '', 'Meja kerja warna Cokelat Muda', '0365', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Credensa Warna Cokelat muda', '0366', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu', '0367', '', 2, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0368', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0369', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Cermin', '0370', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'tempat sampah', '0371', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0372', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0373', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Laci kecil', '0374', '', 1, '0', 2020, '', 'Ruang VP General Affairs', 'DB', '', 0, '', ''),
('OC', '', 'Meja kerja warna Cokelat Muda', '0375', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'Credensa Warna Cokelat muda', '0376', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu', '0377', '', 3, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja', '0378', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0379', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'tempat sampah', '0380', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'Glassboard', '0381', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding', '0382', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'Laci kecil', '0383', '', 1, '0', 2020, '', 'Ruang Manager HRD', 'DB', '', 0, '', ''),
('OC', '', 'Set Laci Cokelat', '0384', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kayu Kerja Cokelat', '0385', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu Hitam', '0386', '', 2, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam', '0387', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Hitam ', '0388', '', 2, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kaca Cokelat ', '0389', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Set Lemari Kayu ', '0390', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Showcase Kecil Putih 1', '0391', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'TV Samsung ', '0392', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Set Indovision 1', '0393', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Telefon ', '0394', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Router Cisco ', '0395', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam ', '0396', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Hitam Panjang ', '0397', '', 2, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Hitam Kecil ', '0398', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Meja Tamu 1', '0399', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Infocus', '0400', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja Hitam ', '0401', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'White board', '0402', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja Cokelat ', '0403', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Brankas Putih', '0404', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Set Lemari Kayu Kaca', '0405', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0406', '', 0, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Mesin TIK Putih', '0407', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kayu', '0408', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Kayu Kaca Hitam', '0409', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Hitam', '0410', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kayu Kaca', '0411', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Gantungan', '0412', '', 1, '0', 2020, '', 'Ruang Direktur FBS', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja ', '0413', '', 1, '0', 2020, '', 'Ruang  Manager Financial Accou', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja  ', '0414', '', 1, '0', 2020, '', 'Ruang  Manager Financial Accou', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu  ', '0415', '', 1, '0', 2020, '', 'Ruang  Manager Financial Accou', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kaca Abu-Abu', '0416', '', 1, '0', 2020, '', 'Ruang  Manager Financial Accou', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja ', '0417', '', 1, '0', 2020, '', 'Ruang Manager Tax', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja  ', '0418', '', 1, '0', 2020, '', 'Ruang Manager Tax', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu  ', '0419', '', 1, '0', 2020, '', 'Ruang Manager Tax', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kaca Abu-Abu', '0420', '', 1, '0', 2020, '', 'Ruang Manager Tax', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja ', '0421', '', 1, '0', 2020, '', 'Ruang Manager Treasury', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja  ', '0422', '', 1, '0', 2020, '', 'Ruang Manager Treasury', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu  ', '0423', '', 1, '0', 2020, '', 'Ruang Manager Treasury', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kaca Abu-Abu', '0424', '', 1, '0', 2020, '', 'Ruang Manager Treasury', 'DB', '', 0, '', ''),
('OC', '', 'Set Meja Kerja ', '0425', '', 1, '0', 2020, '', 'Ruang Manager Control Group & ', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Kayu  ', '0426', '', 1, '0', 2020, '', 'Ruang Manager Control Group & ', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0427', '', 2, '0', 2020, '', 'Ruang Manager Control Group & ', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja ', '0428', '', 1, '0', 2020, '', 'Ruang Manager Accounting', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu', '0429', '', 2, '0', 2020, '', 'Ruang Manager Accounting', 'DB', '', 0, '', ''),
('OC', '', 'White Board', '0430', '', 1, '0', 2020, '', 'Ruang Manager Accounting', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kerja  ', '0431', '', 1, '0', 2020, '', 'Ruang Manager Accounting', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Hitam', '0432', '', 1, '0', 2020, '', 'Ruang Manager Accounting', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding ', '0433', '', 2, '0', 2020, '', 'Ruang VP Finance', 'DB', '', 0, '', ''),
('OC', '', 'TV  ', '0434', '', 1, '0', 2020, '', 'Ruang VP Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja ', '0435', '', 2, '0', 2020, '', 'Ruang VP Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Tamu', '0436', '', 1, '0', 2020, '', 'Ruang VP Finance', 'DB', '', 0, '', ''),
('OC', '', 'Credensa ', '0437', '', 1, '0', 2020, '', 'Ruang VP Finance', 'DB', '', 0, '', ''),
('OC', '', 'White board', '0438', '', 1, '0', 2020, '', 'Ruang VP Finance', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Kayu Dinding', '0439', '', 2, '0', 2020, '', 'Ruang Millenial', 'DB', '', 0, '', ''),
('OC', '', 'Laci Kayu', '0440', '', 1, '0', 2020, '', 'Ruang Millenial', 'DB', '', 0, '', ''),
('OC', '', 'White Board ', '0441', '', 2, '0', 2020, '', 'Ruang Millenial', 'DB', '', 0, '', ''),
('OC', '', 'Credense', '0442', '', 1, '0', 2020, '', 'Gudang ATK', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kayu Kaca', '0443', '', 1, '0', 2020, '', 'Gudang ATK', 'DB', '', 0, '', ''),
('OC', '', 'Credense', '0444', '', 1, '0', 2020, '', 'Ruang Meeting Finance', 'DB', '', 0, '', ''),
('OC', '', 'Meja Kayu Kaca', '0445', '', 1, '0', 2020, '', 'Ruang Meeting Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam', '0446', '', 1, '0', 2020, '', 'Ruang Meeting Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Oranye', '0447', '', 1, '0', 2020, '', 'Ruang Meeting Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Biru', '0448', '', 1, '0', 2020, '', 'Ruang Meeting Finance', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding ', '0449', '', 1, '0', 2020, '', 'Ruang Meeting Finance', 'DB', '', 0, '', ''),
('OC', '', 'White board', '0450', '', 1, '0', 2020, '', 'Ruang Meeting Finance', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding ', '0451', '', 2, '0', 2020, '', 'Ruang Meeting C', 'DB', '', 0, '', ''),
('OC', '', 'Credense Cokelat ', '0452', '', 1, '0', 2020, '', 'Ruang Meeting C', 'DB', '', 0, '', ''),
('OC', '', 'Meja Meeting', '0453', '', 1, '0', 2020, '', 'Ruang Meeting C', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam I', '0454', '', 4, '0', 2020, '', 'Ruang Meeting C', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Hitam II', '0455', '', 1, '0', 2020, '', 'Ruang Meeting C', 'DB', '', 0, '', ''),
('OC', '', 'White Board Roda', '0456', '', 1, '0', 2020, '', 'Ruang Meeting C', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0457', '', 1, '0', 2020, '', 'Ruang Meeting C', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Putih', '0458', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Laci Hitam Besar', '0459', '', 3, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Laci Hitam Kecil', '0460', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kotak Kubikal Warna Biru  Pekerja/OS', '0461', '', 32, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kursi Kerja ', '0462', '', 33, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Credense Kayu Besar', '0463', '', 2, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Laci Hitam Kecil', '0464', '', 2, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Kayu Putih', '0465', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding ', '0466', '', 2, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kubikal Finance Besar', '0467', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Printer HP', '0468', '', 2, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'PC Finance Lenovo', '0469', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'PC Staff ', '0470', '', 26, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kulkas Aqua', '0471', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Rak Krisbow Oranye Biru', '0472', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Laci Putih', '0473', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Laci Putih Kecil', '0474', '', 1, '0', 2020, '', 'Ruang Finance', 'DB', '', 0, '', ''),
('OC', '', 'Kursi ', '0475', '', 5, '0', 2020, '', 'Ruang Meeting Samping B', 'DB', '', 0, '', ''),
('OC', '', 'Meja Meeting', '0476', '', 1, '0', 2020, '', 'Ruang Meeting Samping B', 'DB', '', 0, '', ''),
('OC', '', 'TV ', '0477', '', 1, '0', 2020, '', 'Ruang Meeting Samping B', 'DB', '', 0, '', ''),
('OC', '', 'Credense Hitam', '0478', '', 1, '0', 2020, '', 'Ruang Meeting B', 'DB', '', 0, '', ''),
('OC', '', 'Meja Meeting', '0479', '', 1, '0', 2020, '', 'Ruang Meeting B', 'DB', '', 0, '', ''),
('OC', '', 'Kursi ', '0480', '', 8, '0', 2020, '', 'Ruang Meeting B', 'DB', '', 0, '', ''),
('OC', '', 'TV', '0481', '', 1, '0', 2020, '', 'Ruang Meeting B', 'DB', '', 0, '', ''),
('OC', '', 'Meja TV', '0482', '', 1, '0', 2020, '', 'Ruang Meeting B', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Dinding ', '0483', '', 1, '0', 2020, '', 'Ruang Meeting B', 'DB', '', 0, '', ''),
('OC', '', 'Meja 1', '0484', '', 1, '0', 2020, '', 'Ruang Meeting A', 'DB', '', 0, '', ''),
('OC', '', 'Kursi ', '0485', '', 16, '0', 2020, '', 'Ruang Meeting A', 'DB', '', 0, '', ''),
('OC', '', 'TV ', '0486', '', 1, '0', 2020, '', 'Ruang Meeting A', 'DB', '', 0, '', ''),
('OC', '', 'Infocus', '0487', '', 1, '0', 2020, '', 'Ruang Meeting A', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Hitam', '0488', '', 1, '0', 2020, '', 'Ruang Meeting A', 'DB', '', 0, '', ''),
('OC', '', 'Meja Gudang', '0489', '', 1, '0', 2020, '', 'Ruang Meeting A', 'TR', '', 0, '', ''),
('OC', '', 'Meja Tamu  ', '0490', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Sofa Tamu', '0491', '', 5, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Meja Receptionist', '0492', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Kursi ', '0493', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Laci Hitam', '0494', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Laci Cokelat', '0495', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Kursi tunggu', '0496', '', 3, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', ''),
('OC', '', 'Lemari Mushola', '0497', '', 1, '0', 2020, '', 'Lobby Selatan', 'DB', '', 0, '', '');
INSERT INTO `asset` (`kantor`, `jenis_asset`, `deskripsi_asset`, `no_asset`, `merk_type`, `jumlah`, `ukuran`, `tahun_pengadaan`, `status_kepemilikan`, `lokasi`, `kondisi`, `asal_usul`, `harga`, `gambar`, `keterangan`) VALUES
('PUC', '', 'Meja Kantor ', '0001', '', 0, '0', 2012, '', 'Office MWH', 'RB', '', 0, '', 'Dimensi (150 x 70 x 75)'),
('PUC', '', 'Meja Kantor ', '0002', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', 'Dimensi (150 x 70 x 75)'),
('PUC', '', 'Meja Kantor ', '0003', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', 'Dimensi (140 x 70 x70)'),
('PUC', '', 'Meja Kantor ', '0004', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', 'Dimensi (160 x 70 x 73)'),
('PUC', '', 'Kursi Kantor', '0005', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0006', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0007', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0008', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0009', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0010', '', 0, '0', 2021, '', 'Office MWH', 'DJ', '', 0, '', 'Warna Biru'),
('PUC', '', 'Kursi Kantor', '0011', '', 0, '0', 2021, '', 'Office MWH', 'DJ', '', 0, '', 'Warna Biru'),
('PUC', '', 'Lemari Kaca', '0012', '', 0, '0', 2021, '', 'Office MWH', 'DB', '', 0, '', 'Dimensi (130 x 40 x 140)'),
('PUC', '', 'Lemari Kaca', '0013', '', 0, '0', 2021, '', 'Office MWH', 'DB', '', 0, '', 'Dimensi (200 x 50 x 107)'),
('PUC', '', 'Lemari Dokumen', '0014', '', 0, '0', 2021, '', 'Office MWH', 'DB', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Lemari Dokumen', '0015', '', 0, '0', 2021, '', 'Office MWH', 'DB', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Lemari Kayu', '0016', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', 'Dimensi (200 x 47 x 83)'),
('PUC', '', 'Lemari Kecil', '0017', '', 0, '0', 2021, '', 'Office MWH', 'DB', '', 0, '', 'Dimensi (40 x 50 x 63)'),
('PUC', '', 'Lemari Kecil', '0018', '', 0, '0', 2021, '', 'Office MWH', 'DB', '', 0, '', 'Dimensi (40 x 50 x 63)'),
('PUC', '', 'Lemari Loker', '0019', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari Loker', '0020', '', 0, '0', 2021, '', 'Office MWH', 'DS', '', 0, '', ''),
('PUC', '', 'Meja Kantor ', '0021', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', 'Dimensi (160 x 70 x 76)'),
('PUC', '', 'Meja Kantor ', '0022', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', 'Dimensi (120 x 75 x 76)'),
('PUC', '', 'Meja Kantor ', '0023', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', 'Dimensi (80 x 60 x 75)'),
('PUC', '', 'Kursi Kantor', '0024', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0025', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0026', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari Dokumen', '0027', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0028', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0029', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0030', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Loker', '0031', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari Loker', '0032', '', 0, '0', 2021, '', 'Office Blending', 'DS', '', 0, '', ''),
('PUC', '', 'Meja Kantor ', '0033', '', 0, '0', 2021, '', 'Office DFO', 'DS', '', 0, '', 'Dimensi (150 x 75 x 76)'),
('PUC', '', 'Meja Kantor ', '0034', '', 0, '0', 2021, '', 'Office DFO', 'DS', '', 0, '', 'Dimensi (80 x 60 x 75)'),
('PUC', '', 'Kursi Kantor', '0035', '', 0, '0', 2021, '', 'Office DFO', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0036', '', 0, '0', 2021, '', 'Office DFO', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari Dokumen', '0037', '', 0, '0', 2021, '', 'Office DFO', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Loker', '0038', '', 0, '0', 2021, '', 'Office DFO', 'DS', '', 0, '', ''),
('PUC', '', 'Meja Kantor ', '0039', '', 0, '0', 2021, '', 'Office P2', 'DB', '', 0, '', 'Dimensi (152 x 75 x 76)'),
('PUC', '', 'Meja Kantor ', '0040', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', 'Dimensi (152 x 75 x 76)'),
('PUC', '', 'Meja Kantor ', '0041', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', 'Dimensi (152 x 75 x 76)'),
('PUC', '', 'Meja Kantor ', '0042', '', 0, '0', 2021, '', 'Office P2', 'DJ', '', 0, '', 'Dimensi (152 x 75 x 76)'),
('PUC', '', 'Meja Kantor ', '0043', '', 0, '0', 2021, '', 'Office P2', 'DB', '', 0, '', ''),
('PUC', '', 'Meja Kantor ', '0044', '', 0, '0', 2021, '', 'Office P2', 'DB', '', 0, '', 'Dimensi (120 x 60 x 75)'),
('PUC', '', 'Kursi Kantor', '0045', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0046', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0047', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0048', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0049', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari Dokumen', '0050', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', 'Dimensi (120 x 40 x 180)'),
('PUC', '', 'Lemari Dokumen', '0051', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Loker', '0052', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', ''),
('PUC', '', 'Loker', '0053', '', 0, '0', 2021, '', 'Office P2', 'DS', '', 0, '', ''),
('PUC', '', 'Meja Kantor ', '0054', '', 0, '0', 2021, '', 'Office Admin LOBP', 'DS', '', 0, '', 'Dimensi (152 x 75 x 76)'),
('PUC', '', 'Meja Kantor ', '0055', '', 0, '0', 2021, '', 'Office Admin LOBP', 'DS', '', 0, '', 'Dimensi (120 x 60 x 75)'),
('PUC', '', 'Kursi Kantor', '0056', '', 0, '0', 2021, '', 'Office Admin LOBP', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari Dokumen', '0057', '', 0, '0', 2021, '', 'Office Admin LOBP', 'DS', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Lemari Dokumen', '0058', '', 0, '0', 2021, '', 'Office Admin LOBP', 'DS', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Meja Kantor ', '0059', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (160 x 70 x 76)'),
('PUC', '', 'Meja Kantor ', '0060', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (120 x 60 x 75)'),
('PUC', '', 'Meja Kantor ', '0061', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (120 x 60 x 75)'),
('PUC', '', 'Meja Kantor ', '0062', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (120 x 75 x 75)'),
('PUC', '', 'Meja Kantor ', '0063', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (80 x 60 x 74)'),
('PUC', '', 'Meja Kantor ', '0064', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (183 x 85 x 76)'),
('PUC', '', 'Lemari Dokumen', '0065', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Lemari Dokumen', '0066', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0067', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0068', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Loker', '0069', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (38 x 38 x 180)'),
('PUC', '', 'Loker', '0070', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', 'Dimensi (38 x 38 x 180)'),
('PUC', '', 'Loker', '0071', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', ''),
('PUC', '', 'Loker', '0072', '', 0, '0', 2021, '', 'Office Lithos', 'DS', '', 0, '', ''),
('PUC', '', 'Loker', '0073', '', 0, '0', 2021, '', 'Office Lithos', 'DJ', '', 0, '', ''),
('PUC', '', 'Meja Kantor ', '0074', '', 0, '0', 2021, '', 'Ruang Label', 'DS', '', 0, '', 'Dimensi (180 x 80 x 76)'),
('PUC', '', 'Lemari Kaca', '0075', '', 0, '0', 2021, '', 'Ruang Label', 'DS', '', 0, '', 'Dimensi (200 x 50 x 117)'),
('PUC', '', 'Lemari Kaca', '0076', '', 0, '0', 2021, '', 'Ruang Label', 'DS', '', 0, '', 'Dimensi (200 x 45 x 188)'),
('PUC', '', 'Lemari Kaca', '0077', '', 0, '0', 2021, '', 'Ruang Label', 'DJ', '', 0, '', 'Dimensi (200 x 45 x 188)'),
('PUC', '', 'Lemari Sampel', '0078', '', 0, '0', 2021, '', 'Ruang Label', 'DS', '', 0, '', 'Dimensi (70 x 95 x 102)'),
('PUC', '', 'Lemari Sampel', '0079', '', 0, '0', 2021, '', 'Ruang Label', 'DS', '', 0, '', 'Dimensi (70 x 95 x 102)'),
('PUC', '', 'Loker', '0080', '', 0, '0', 2021, '', 'Ruang Label', 'DS', '', 0, '', ''),
('PUC', '', 'Meja Kantor ', '0081', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (183 x 88 x 76)'),
('PUC', '', 'Meja Kantor ', '0082', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (183 x 88 x 76)'),
('PUC', '', 'Meja Kantor ', '0083', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (162 x 61 x 76)'),
('PUC', '', 'Meja Kantor ', '0084', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (120 x 60 x 74)'),
('PUC', '', 'Meja Kantor ', '0085', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (80 x 60 x74)'),
('PUC', '', 'Meja Kantor ', '0086', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (160 x 70 x76)'),
('PUC', '', 'Meja Kantor ', '0087', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (150 x 75 x 75)'),
('PUC', '', 'Meja Kantor ', '0088', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (120 x 70 x 74)'),
('PUC', '', 'Meja Kantor ', '0089', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (180 x 80 x 76)'),
('PUC', '', 'Meja Kantor ', '0090', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', 'Dimensi (240 x 120 x 75)'),
('PUC', '', 'Kursi Kantor', '0091', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0092', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0093', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0094', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', ''),
('PUC', '', 'Kursi Kantor', '0095', '', 0, '0', 2021, '', 'Office Teknik', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari Kaca', '0096', '', 0, '0', 2021, '', '', 'DB', '', 0, '', 'Dimensi (250 x 45 x 97)'),
('PUC', '', 'Lemari Kaca', '0097', '', 0, '0', 2021, '', '', 'DB', '', 0, '', 'Dimensi (200 x 45 x 180)'),
('PUC', '', 'Lemari Kaca', '0098', '', 0, '0', 2021, '', '', 'DB', '', 0, '', 'Dimensi (165 x 60 x 115)'),
('PUC', '', 'Lemari Dokumen', '0099', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Lemari Dokumen', '0100', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Lemari Dokumen', '0101', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (92 x 46 x 183)'),
('PUC', '', 'Lemari Dokumen', '0102', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0103', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0104', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Lemari Dokumen', '0105', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (92 x 46 x 92)'),
('PUC', '', 'Loker', '0106', '', 0, '0', 2021, '', '', 'DB', '', 0, '', 'Dimensi (46 x 63 x 132)'),
('PUC', '', 'Loker', '0107', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (46 x 63 x 132)'),
('PUC', '', 'Loker', '0108', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (46 x 63 x 132)'),
('PUC', '', 'Loker', '0109', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (46 x 63 x 132)'),
('PUC', '', 'Loker', '0110', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (46 x 63 x 132)'),
('PUC', '', 'Loker', '0111', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (83 x 83 x 180)'),
('PUC', '', 'Loker', '0112', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (83 x 83 x 180)'),
('PUC', '', 'Loker', '0113', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (83 x 83 x 180)'),
('PUC', '', 'Loker', '0114', '', 0, '0', 2021, '', '', 'DS', '', 0, '', 'Dimensi (83 x 83 x 180)'),
('PUC', '', 'Lemari Data', '0115', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Dimensi (8,4 x 3 x 0,5) meter'),
('PUC', '', 'Kursi Kantor', '0116', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 581 AL HDT'),
('PUC', '', 'Kursi Kantor', '0117', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 581 AL HDT'),
('PUC', '', 'Kursi Kantor', '0118', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 581 AL HDT'),
('PUC', '', 'Kursi Kantor', '0119', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 2013 CR'),
('PUC', '', 'Kursi Kantor', '0120', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 2013 CR'),
('PUC', '', 'Kursi Kantor', '0121', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 2013 CR'),
('PUC', '', 'Kursi Kantor', '0122', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 2013 CR'),
('PUC', '', 'Kursi Kantor', '0123', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 2013 CR'),
('PUC', '', 'Kursi Kantor', '0124', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Indachi Type D 2013 CR'),
('PUC', '', 'Kursi Kantor', '0125', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Chairman SC 1109'),
('PUC', '', 'Kursi Kantor', '0126', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Chairman SC 1109'),
('PUC', '', 'Kursi Kantor', '0127', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Chairman SC 1109'),
('PUC', '', 'Kursi Kantor', '0128', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Chairman SC 1109'),
('PUC', '', 'Kursi Kantor', '0129', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Chairman SC 1109'),
('PUC', '', 'Kursi Kantor', '0130', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Chairman SC 1109'),
('PUC', '', 'Screen Proyektor', '0131', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Uk 84 inchi'),
('PUC', '', 'Proyektor', '0132', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'EPSON EB-1780W'),
('PUC', '', 'Tangga Lipat Aluminium', '0133', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', 'Panjang 5 meter'),
('PUC', '', 'Lemari Aluminium Kaca', '0134', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'Merk Brother'),
('PUC', '', 'Lemari Aluminium Kaca', '0135', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'Merk Brother'),
('PUC', '', 'Lemari Aluminium Kaca', '0136', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'Merk Brother'),
('PUC', '', 'Lemari Aluminium Kaca', '0137', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'Merk Lions'),
('PUC', '', 'Lemari Aluminium Kaca', '0138', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'Tempat Piring'),
('PUC', '', 'Lemari Aluminium Kaca', '0139', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'Tempat Helm dan rompi'),
('PUC', '', 'Lemari Aluminium Kaca', '0140', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'File'),
('PUC', '', 'Lemari Aluminium Kaca', '0141', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'File'),
('PUC', '', 'Lemari Aluminium Kaca', '0142', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', 'Rak Sepatu'),
('PUC', '', 'Rak Air Minum Kemasan Galon', '0143', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Brankas', '0144', '', 0, '0', 2021, '', 'Kantor', 'TR', '', 0, '', ''),
('PUC', '', 'Dispenser', '0145', '', 0, '0', 2021, '', 'Kantor', 'DB', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0146', '', 0, '0', 2021, '', 'Receiptionist', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0147', '', 0, '0', 2021, '', 'Dapur', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0148', '', 0, '0', 2021, '', 'R. Man. PUC', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0149', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0150', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0151', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0152', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0153', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0154', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0155', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0156', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Pesawat Telepon', '0157', '', 0, '0', 2021, '', 'Kantor', 'DS', '', 0, '', ''),
('PUC', '', 'Lemari', '0158', '', 0, '0', 2021, '', 'Kantor', 'TR', '', 0, '', ''),
('PUC', '', 'Kursi Sofa', '0159', '', 0, '0', 2021, '', 'R. Man. PUC', 'DS', '', 0, '', ''),
('PUG', '', 'AC', '0001', '', 0, '0', 2019, '', 'ADM TEKNIK', 'RB', '', 0, '', 'Lobby (2 pcs)'),
('PUG', '', 'AC', '0002', '', 0, '0', 2019, '', 'ADM TEKNIK', 'DB', '', 0, '', 'Lobby'),
('PUG', '', 'AC', '0003', '', 0, '0', 2019, '', 'ADM HR', 'TR', '', 0, '', 'Lobby'),
('PUG', '', 'AC', '0004', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Lobby (2 pcs)'),
('PUG', '', 'AC', '0005', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Lobby'),
('PUG', '', 'KULKAS', '0006', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Lobby ( SARANA PROMOSI )'),
('PUG', '', 'TV 42\"', '0007', '', 0, '0', 2019, '', 'ADM HR', 'TR', '', 0, '', 'Ruang tamu (3 pcs)'),
('PUG', '', 'MEJA', '0008', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Ruang tamu'),
('PUG', '', 'MEJA', '0009', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Samping ruang tamu'),
('PUG', '', 'MEJA', '0010', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Ruang Sekretaris'),
('PUG', '', 'MEJA', '0011', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Ruang Sekretaris (2 pcs)'),
('PUG', '', 'MEJA', '0012', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Ruang Sekretaris'),
('PUG', '', 'MESIN KETIK ELEKTRIK', '0013', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Ruang Manager PUJ ( CCTV )'),
('PUG', '', 'DISEPENSER', '0014', '', 0, '0', 2019, '', 'ADM HR', 'DB', '', 0, '', 'Ruang Manager PUJ ( ATG )'),
('PUG', '', 'MEJA ', '0015', '', 0, '0', 2020, '', 'SEK MAN PUG', 'DB', '', 0, '', 'Ruang Manager PUJ'),
('PUG', '', 'AC', '0016', '', 0, '0', 2019, '', 'SEK MAN PUG', 'DB', '', 0, '', 'Ruang Manager PUJ'),
('PUG', '', 'AC', '0017', '', 0, '0', 2019, '', 'MAN PUG', 'DB', '', 0, '', 'Ruang Manager PUJ (4 pcs)'),
('PUG', '', 'KULKAS', '0018', '', 0, '0', 2019, '', 'MAN PUG', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'DISEPENSER', '0019', '', 0, '0', 2019, '', 'MAN PUG', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'BU', '0020', '', 0, '0', 2019, '', 'MAN PUG', 'TX', '', 0, '', 'Ruang rapat (23 pcs)'),
('PUG', '', 'BUFFET', '0021', '', 0, '0', 2019, '', 'MAN PUG', 'DB', '', 0, '', 'Ruang cozy HR'),
('PUG', '', 'BUFFET', '0022', '', 0, '0', 2019, '', 'MAN PUG', 'DB', '', 0, '', 'Office lantai 2'),
('PUG', '', 'AC', '0023', '', 0, '0', 2019, '', 'MAN PUG', 'DB', '', 0, '', 'Office lantai 2'),
('PUG', '', 'AC', '0024', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang HR'),
('PUG', '', 'AC', '0025', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang HR'),
('PUG', '', 'AC', '0026', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang HR'),
('PUG', '', 'DISEPENSER', '0027', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang HR'),
('PUG', '', 'TV 21\"', '0028', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang HR (7 pcs)'),
('PUG', '', 'MEJA RAPAT', '0029', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang mbak Jo'),
('PUG', '', 'LCD PROJECTOR PANASONIC', '0030', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang Logistik'),
('PUG', '', 'WIHITE BOARD', '0031', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang Teknik'),
('PUG', '', 'LAYAR PROJECTOR', '0032', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang Teknik'),
('PUG', '', 'AC', '0033', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Depan ruang brainz (2 pcs)'),
('PUG', '', 'MEJA', '0034', '', 0, '0', 2019, '', 'RAPAT ENDURO', 'DB', '', 0, '', 'Ruang brainz'),
('PUG', '', 'LEMARI BESI', '0035', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Ruang brainz'),
('PUG', '', 'LEMARI BESI', '0036', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Ruang brainz'),
('PUG', '', 'LEMARI BESI', '0037', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'LEMARI KACA', '0038', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'LEMARI KACA', '0039', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Ruang rapat (5 pcs)'),
('PUG', '', 'MEJA', '0040', '', 0, '0', 2019, '', 'HSSE PUSKODAL', 'DB', '', 0, '', 'Ruang rokok (6 pcs)'),
('PUG', '', 'MEJA', '0041', '', 0, '0', 2019, '', 'HSSE PUSKODAL', 'DB', '', 0, '', 'Ruang rokok'),
('PUG', '', 'MEJA', '0042', '', 0, '0', 2019, '', 'HSSE PUSKODAL', 'DB', '', 0, '', '61 pcs'),
('PUG', '', 'MEJA', '0043', '', 0, '0', 2019, '', 'HSSE PUSKODAL', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0044', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0045', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'DISEPENSER', '0046', '', 0, '0', 2019, '', 'HSSE PUSKODAL', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0047', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0048', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Gudang ATK'),
('PUG', '', 'LEMARI DOC', '0049', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Ruang musik'),
('PUG', '', 'LEMARI DOC', '0050', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', 'Ruang musik'),
('PUG', '', 'AC', '0051', '', 0, '0', 2019, '', 'HSSE', 'DB', '', 0, '', '3 unit'),
('PUG', '', 'AC', '0052', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Adm (6 pcs)'),
('PUG', '', 'AC', '0053', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Pak Tantra (2 pcs)'),
('PUG', '', 'AC', '0054', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Pak Tantra'),
('PUG', '', 'MEJA OVAL', '0055', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Pak Tantra'),
('PUG', '', 'MEJA OVAL', '0056', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Pak Tantra'),
('PUG', '', 'KULKAS', '0057', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Pak Karel'),
('PUG', '', 'TREADMILL', '0058', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Pak Karel'),
('PUG', '', 'KARAOKE', '0059', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Pak Karel'),
('PUG', '', 'LOKER', '0060', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Rapat (7 pcs)'),
('PUG', '', 'LEMARI DOC', '0061', '', 0, '0', 2019, '', 'PUSKODAL', 'DB', '', 0, '', 'Ruang Rapat'),
('PUG', '', 'AC', '0062', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', 'Ruang Rapat'),
('PUG', '', 'AC', '0063', '', 0, '0', 2019, '', 'SECURITY', 'TR', '', 0, '', 'Ruang PLC  GP (5 pcs)'),
('PUG', '', 'KIPAS', '0064', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', 'Ruang PLC  GP'),
('PUG', '', 'TV CCTV', '0065', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', 'Ruang PLC  GP (2 pcs)'),
('PUG', '', 'TV CCTV', '0066', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', '5 pcs'),
('PUG', '', 'LEMARI KAYU', '0067', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', '3 pcs'),
('PUG', '', 'MEJA', '0068', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0069', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA KACA', '0070', '', 0, '0', 2019, '', 'SECURITY', 'DB', '', 0, '', '2 pcs'),
('PUG', '', 'LEMARI ', '0071', '', 0, '0', 2019, '', 'POS 2', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0072', '', 0, '0', 2019, '', 'POS 2', 'DB', '', 0, '', 'New LOBP bawah (4 pcs)'),
('PUG', '', 'MEJA', '0073', '', 0, '0', 2019, '', 'POS 2', 'DB', '', 0, '', 'New LOBP bawah (2 pcs)'),
('PUG', '', 'AC', '0074', '', 0, '0', 2019, '', 'POS 2', 'DB', '', 0, '', 'New LOBP Atas (3 unit)'),
('PUG', '', 'DISEPENSER', '0075', '', 0, '0', 2019, '', 'WORKSHOP', 'DJ', '', 0, '', 'New LOBP Atas (21 pcs)'),
('PUG', '', 'TREADMILL', '0076', '', 0, '0', 2019, '', 'WORKSHOP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'HOME GYM', '0077', '', 0, '0', 2019, '', 'WORKSHOP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'BENCH PRESS', '0078', '', 0, '0', 2019, '', 'WORKSHOP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'PREACHER CURL', '0079', '', 0, '0', 2019, '', 'WORKSHOP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'SMITH MACHINE', '0080', '', 0, '0', 2019, '', 'WORKSHOP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'MEJA PINGPONG', '0081', '', 0, '0', 2019, '', 'WORKSHOP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'DUMBBLE SET RACK', '0082', '', 0, '0', 2019, '', 'WORKSHOP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'MEJA', '0083', '', 0, '0', 2019, '', 'ADM MWH', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'AC', '0084', '', 0, '0', 2019, '', 'ADM MWH', 'DS', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'LEMARI', '0085', '', 0, '0', 2019, '', 'ADM MWH', 'DB', '', 0, '', 'New LOBP Atas'),
('PUG', '', 'MEJA', '0086', '', 0, '0', 2019, '', 'ADM MWH', 'DB', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUG', '', 'AC', '0087', '', 0, '0', 2019, '', 'ADM MWH', 'DS', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUG', '', 'MEJA', '0088', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUG', '', 'MEJA', '0089', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUG', '', 'MEJA', '0090', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'AC', '0091', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'AC', '0092', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'AC', '0093', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', 'Ruang rapat (13 pcs)'),
('PUG', '', 'MEJA', '0094', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'AC', '0095', '', 0, '0', 2019, '', 'SPV ADM LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'MEJA', '0096', '', 0, '0', 2019, '', 'SPV ADM LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'PRINTER EPSON', '0097', '', 0, '0', 2019, '', 'SPV ADM LOBP', 'TR', '', 0, '', 'Ruang rapat'),
('PUG', '', 'BUFFET', '0098', '', 0, '0', 2019, '', 'SPV ADM LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'LEMARI KACA', '0099', '', 0, '0', 2019, '', 'SPV ADM LOBP', 'DB', '', 0, '', 'Ruang teknik maintenance'),
('PUG', '', 'KABINET', '0100', '', 0, '0', 2019, '', 'SPV ADM LOBP', 'DB', '', 0, '', 'Ruang teknik maintenance'),
('PUG', '', 'PRINTER EPSON', '0101', '', 0, '0', 2019, '', 'ADM LOBP', 'DS', '', 0, '', 'Ruang teknik maintenance'),
('PUG', '', 'KULKAS', '0102', '', 0, '0', 2019, '', 'ADM LOBP', 'DS', '', 0, '', '8 pcs'),
('PUG', '', 'MEJA', '0103', '', 0, '0', 2019, '', 'ADM LOBP', 'DS', '', 0, '', '8 pcs'),
('PUG', '', 'MEJA ', '0104', '', 0, '0', 2019, '', 'ADM LOBP', 'DS', '', 0, '', ''),
('PUG', '', 'MEJA', '0105', '', 0, '0', 2019, '', 'ADM LOBP', 'DS', '', 0, '', ''),
('PUG', '', 'MEJA', '0106', '', 0, '0', 2019, '', 'ADM LOBP', 'DS', '', 0, '', '6 pcs'),
('PUG', '', 'DISEPENSER', '0107', '', 0, '0', 2019, '', 'ADM LOBP', 'DB', '', 0, '', '7 pcs'),
('PUG', '', 'LEMARI DOC', '0108', '', 0, '0', 2019, '', 'ADM LOBP', 'DB', '', 0, '', '4 pcs'),
('PUG', '', 'LEMARI DOC', '0109', '', 0, '0', 2019, '', 'ADM LOBP', 'DJ', '', 0, '', '2 pcs'),
('PUG', '', 'LEMARI DOC', '0110', '', 0, '0', 2019, '', 'ADM LOBP', 'DJ', '', 0, '', '5 pcs'),
('PUG', '', 'AC', '0111', '', 0, '0', 2019, '', 'ADM LOBP', 'DB', '', 0, '', '5 pcs'),
('PUG', '', 'AC', '0112', '', 0, '0', 2019, '', 'ADM LOBP', 'DB', '', 0, '', '4 pcs'),
('PUG', '', 'TV SONY 32\"', '0113', '', 0, '0', 2019, '', 'ADM LOBP', 'DB', '', 0, '', ''),
('PUG', '', 'TV', '0114', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'TR', '', 0, '', '4 pcs'),
('PUG', '', 'AC', '0115', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'TR', '', 0, '', ''),
('PUG', '', 'LEMARI DOC', '0116', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'DB', '', 0, '', '2 pcs'),
('PUG', '', 'LEMARI', '0117', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'DB', '', 0, '', '2 pcs'),
('PUG', '', 'PRINTER HP', '0118', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'DB', '', 0, '', ''),
('PUG', '', 'DESK ', '0119', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'DB', '', 0, '', ''),
('PUG', '', 'DESK ', '0120', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'DB', '', 0, '', ''),
('PUG', '', 'KABINET BESI', '0121', '', 0, '0', 2019, '', 'SPV FILLING LITHOS& DRUM', 'DB', '', 0, '', ''),
('PUG', '', 'PRINTER', '0122', '', 0, '0', 2019, '', 'OPERATION HEAD', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0123', '', 0, '0', 2019, '', 'OPERATION HEAD', 'DB', '', 0, '', '6 pcs'),
('PUG', '', 'DESK', '0124', '', 0, '0', 2019, '', 'OPERATION HEAD', 'DB', '', 0, '', ''),
('PUG', '', 'DESK', '0125', '', 0, '0', 2019, '', 'OPERATION HEAD', 'DB', '', 0, '', ''),
('PUG', '', 'DESK', '0126', '', 0, '0', 2019, '', 'OPERATION HEAD', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0127', '', 0, '0', 2019, '', 'OPERATION HEAD', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0128', '', 0, '0', 2019, '', 'OPERATION HEAD', 'DB', '', 0, '', '4 pcs'),
('PUG', '', 'DESK', '0129', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'DESK', '0130', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'ROUND DESK', '0131', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0132', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0133', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0134', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0135', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0136', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0137', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0138', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0139', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0140', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0141', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0142', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'L DESK', '0143', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DS', '', 0, '', ''),
('PUG', '', 'L DESK', '0144', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DS', '', 0, '', '5 pcs'),
('PUG', '', 'DESK', '0145', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DS', '', 0, '', ''),
('PUG', '', 'DESK', '0146', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DS', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0147', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DJ', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0148', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0149', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DB', '', 0, '', ''),
('PUG', '', 'DISEPENSER', '0150', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0151', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', '3 pcs'),
('PUG', '', 'LEMARI BESI', '0152', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'DESK MEJA', '0153', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'DESK MEJA', '0154', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'LONG DESK', '0155', '', 0, '0', 2019, '', 'ADM TEKNIK', 'DB', '', 0, '', ''),
('PUG', '', 'KABINET', '0156', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'KULKAS', '0157', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0158', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', '2 pcs'),
('PUG', '', 'AC', '0159', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'TV', '0160', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'DISEPENSER', '0161', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'SPEAKER', '0162', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0163', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0164', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0165', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0166', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0167', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0168', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0169', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0170', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI', '0171', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI KACA', '0172', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', 'Ruangan pak Nur (2 pcs)'),
('PUG', '', 'LEMARI KACA', '0173', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUG', '', 'AC', '0174', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUG', '', 'AC', '0175', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUG', '', 'DISEPENSER', '0176', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan pak Nur (3 pcs)'),
('PUG', '', 'MEJA', '0177', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUG', '', 'MEJA', '0178', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUG', '', 'MEJA', '0179', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan kosong'),
('PUG', '', 'MEJA', '0180', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan Mbak Yashmikha'),
('PUG', '', 'PRINTER CANON IX6870', '0181', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan Mbak Yashmikha'),
('PUG', '', 'KULKAS', '0182', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', 'Ruangan Mbak Yashmikha (2 pcs)'),
('PUG', '', 'AC', '0183', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0184', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0185', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI BESI', '0186', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'Meja Kantor', '0187', '', 0, '0', 2019, '', 'KANTOR HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'Meja Kantor', '0188', '', 0, '0', 2019, '', 'KANTOR HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'Meja Kantor', '0189', '', 0, '0', 2019, '', 'KANTOR HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'Meja Kantor', '0190', '', 0, '0', 2019, '', 'KANTOR HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'Meja Kantor', '0191', '', 0, '0', 2019, '', 'KANTOR HSSE', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0192', '', 0, '0', 2019, '', 'QC', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0193', '', 0, '0', 2019, '', 'QC', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0194', '', 0, '0', 2019, '', 'QC', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0195', '', 0, '0', 2019, '', 'QC', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0196', '', 0, '0', 2019, '', 'Control room', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'Sepeda Pancal', '0197', '', 0, '0', 2019, '', 'Control room', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'DISPENSER', '0198', '', 0, '0', 2019, '', 'P2', 'TR', '', 0, '', 'Ruang rapat'),
('PUG', '', 'DESK MEJA', '0199', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'SOFA', '0200', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', 'Ruang rapat'),
('PUG', '', 'AC', '0201', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0202', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'PRINTER STIKER ZEBRA 170Xi4', '0203', '', 0, '0', 2019, '', 'P2', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0204', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0205', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0206', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0207', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0208', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'PRINTER HP PRO MZ03DW', '0209', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', '4 pcs'),
('PUG', '', 'PRINTER EPSON L220', '0210', '', 0, '0', 2019, '', 'CONTROL ROOM', 'DB', '', 0, '', ''),
('PUG', '', 'MEJA', '0211', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', 'Pantry'),
('PUG', '', 'MEJA', '0212', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', 'Pantry'),
('PUG', '', 'RAK MATERIAL', '0213', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', 'Pantry'),
('PUG', '', 'RAK MATERIAL', '0214', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', 'Depan ruang lantai 3 (12 pcs)'),
('PUG', '', 'RAK MATERIAL', '0215', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', ''),
('PUG', '', 'RAK MATERIAL', '0216', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', ''),
('PUG', '', 'RAK MATERIAL', '0217', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'PAPAN INFORMASI', '0218', '', 0, '0', 2019, '', 'QC BAWAH', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI KACA', '0219', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI KACA', '0220', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'LEMARI KACA', '0221', '', 0, '0', 2019, '', 'QC ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0222', '', 0, '0', 2019, '', 'QC', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0223', '', 0, '0', 2019, '', 'QC', 'DB', '', 0, '', ''),
('PUG', '', 'Sepeda Pancal', '0224', '', 0, '0', 2019, '', 'QC', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0225', '', 0, '0', 2019, '', 'ADM TEKNIK', 'DB', '', 0, '', ''),
('PUG', '', 'DISPENSER', '0226', '', 0, '0', 2019, '', 'POS 2', 'DB', '', 0, '', ''),
('PUG', '', 'KULKAS', '0227', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'DISPENSER', '0228', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'DISPENSER', '0229', '', 0, '0', 2019, '', 'ADM MWH ATAS', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0230', '', 0, '0', 2019, '', 'MAIN CONTROL ROOM', 'TR', '', 0, '', ''),
('PUG', '', 'DISPENSER', '0231', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0232', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0233', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DB', '', 0, '', ''),
('PUG', '', 'AC', '0234', '', 0, '0', 2019, '', 'TEKNIK OBP', 'DB', '', 0, '', ''),
('PUG', '', 'PAPER SHREDDER HEAVY DUTY', '0235', '', 0, '0', 2021, ' 16.275.000 ', 'ADM HR', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi tamu merah 1 set', '0001', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Lobby (2 pcs)'),
('PUJ', '', 'Meja tamu', '0002', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Lobby'),
('PUJ', '', 'Meja repsesionis', '0003', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Lobby'),
('PUJ', '', 'Kursi Kerja 1 set', '0004', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DS', '', 0, '', 'Lobby (2 pcs)'),
('PUJ', '', 'Partisi penyimpanan botol oli', '0005', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Lobby'),
('PUJ', '', 'TV LED 60\'', '0006', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Lobby ( SARANA PROMOSI )'),
('PUJ', '', 'Sofa tamu 1 set', '0007', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang tamu (3 pcs)'),
('PUJ', '', 'TV LED 60\'', '0008', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang tamu'),
('PUJ', '', 'Sofa tamu 1 set', '0009', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Samping ruang tamu'),
('PUJ', '', 'Meja Kerja', '0010', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Sekretaris'),
('PUJ', '', 'Kursi Kerja 1 set', '0011', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Sekretaris (2 pcs)'),
('PUJ', '', 'Lemari Kabinet', '0012', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Sekretaris'),
('PUJ', '', 'TV LED 60\'', '0013', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Manager PUJ ( CCTV )'),
('PUJ', '', 'TV LED 60\'', '0014', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Manager PUJ ( ATG )'),
('PUJ', '', 'Meja TV', '0015', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Manager PUJ'),
('PUJ', '', 'Meja kerja', '0016', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Manager PUJ'),
('PUJ', '', 'Kursi Kerja (1 set)', '0017', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang Manager PUJ (4 pcs)'),
('PUJ', '', 'Proyektor', '0018', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Meja Rapat 1 set', '0019', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Kursi kantor 1 set', '0020', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 1', 'DB', '', 0, '', 'Ruang rapat (23 pcs)'),
('PUJ', '', 'TV LED 60\"', '0021', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang cozy HR'),
('PUJ', '', 'Kubikal 1 set', '0022', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DS', '', 0, '', 'Office lantai 2'),
('PUJ', '', 'Kursi kantor 1 set', '0023', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Office lantai 2'),
('PUJ', '', 'Lemari kabinet kecil', '0024', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DS', '', 0, '', 'Ruang HR'),
('PUJ', '', 'Lemari kabinet kecil', '0025', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DS', '', 0, '', 'Ruang HR'),
('PUJ', '', 'Lemari kabinet kecil', '0026', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang HR'),
('PUJ', '', 'Penghancur kertas', '0027', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang HR'),
('PUJ', '', 'Kursi kantor 1 set', '0028', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DS', '', 0, '', 'Ruang HR (7 pcs)'),
('PUJ', '', 'Brankas uang', '0029', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang mbak Jo'),
('PUJ', '', 'Kubikal 1 set', '0030', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DS', '', 0, '', 'Ruang Logistik'),
('PUJ', '', 'Kubikal 1 set', '0031', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DS', '', 0, '', 'Ruang Teknik'),
('PUJ', '', 'Lemari File', '0032', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang Teknik'),
('PUJ', '', 'Sofa tamu (1 set)', '0033', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Depan ruang brainz (2 pcs)'),
('PUJ', '', 'Filling kabinet 1 set', '0034', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang brainz'),
('PUJ', '', 'Lemari kabinet besi', '0035', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'TR', '', 0, '', 'Ruang brainz'),
('PUJ', '', 'Lemari kabinet besi', '0036', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'TR', '', 0, '', 'Ruang brainz'),
('PUJ', '', 'Proyektor', '0037', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'TR', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Rak 1 set', '0038', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Kursi kantor (1 set)', '0039', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang rapat (5 pcs)'),
('PUJ', '', 'Sofa 1 set', '0040', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang rokok (6 pcs)'),
('PUJ', '', 'Lemari kabinet', '0041', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 2', 'DB', '', 0, '', 'Ruang rokok'),
('PUJ', '', 'Kursi biru 1 set', '0042', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DB', '', 0, '', '61 pcs'),
('PUJ', '', 'Meja kantor 1 set', '0043', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DS', '', 0, '', ''),
('PUJ', '', 'Tangga', '0044', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja tenis 1 set', '0045', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DB', '', 0, '', ''),
('PUJ', '', 'Net bulu tangkis 1 set', '0046', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DB', '', 0, '', ''),
('PUJ', '', 'Net bulu tangkis 1 set', '0047', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DB', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet besi', '0048', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DJ', '', 0, '', 'Gudang ATK'),
('PUJ', '', '1 set alat musik', '0049', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DB', '', 0, '', 'Ruang musik'),
('PUJ', '', 'Lemari berkas besi', '0050', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DJ', '', 0, '', 'Ruang musik'),
('PUJ', '', 'Peralatan Gym 1 set', '0051', '', 0, '0', 2022, '', 'Gedung Utama PUJ Lt. 3', 'DB', '', 0, '', '3 unit'),
('PUJ', '', 'Kursi kerja 1 set', '0052', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Adm (6 pcs)'),
('PUJ', '', 'Kursi kerja 1 set', '0053', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Pak Tantra (2 pcs)'),
('PUJ', '', 'Meja kerja', '0054', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Pak Tantra'),
('PUJ', '', 'Sofa', '0055', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Pak Tantra'),
('PUJ', '', 'Meja kaca', '0056', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Pak Tantra'),
('PUJ', '', 'Kursi kerja', '0057', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Pak Karel'),
('PUJ', '', 'Kursi kerja', '0058', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Pak Karel'),
('PUJ', '', 'Meja kerja', '0059', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Pak Karel'),
('PUJ', '', 'Kursi kerja (1 set)', '0060', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Rapat (7 pcs)'),
('PUJ', '', 'Meja rapat 1 set', '0061', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang Rapat'),
('PUJ', '', 'Lemari berkas', '0062', '', 0, '0', 2022, '', 'Grease Plant', 'DJ', '', 0, '', 'Ruang Rapat'),
('PUJ', '', 'Kursi kerja 1 set', '0063', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang PLC  GP (5 pcs)'),
('PUJ', '', 'Meja kerja bundar', '0064', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang PLC  GP'),
('PUJ', '', 'Meja kerja 1 set', '0065', '', 0, '0', 2022, '', 'Grease Plant', 'DB', '', 0, '', 'Ruang PLC  GP (2 pcs)'),
('PUJ', '', 'Kursi kerja 1 set', '0066', '', 0, '0', 2022, '', 'VIM', 'DJ', '', 0, '', '5 pcs'),
('PUJ', '', 'Meja kerja 1 set', '0067', '', 0, '0', 2022, '', 'VIM', 'DJ', '', 0, '', '3 pcs'),
('PUJ', '', 'Lemari besi', '0068', '', 0, '0', 2022, '', 'VIM', 'DJ', '', 0, '', ''),
('PUJ', '', 'Lemari besi', '0069', '', 0, '0', 2022, '', 'VIM', 'DJ', '', 0, '', ''),
('PUJ', '', 'Kursi kerja 1 set', '0070', '', 0, '0', 2022, '', 'VIM', 'DJ', '', 0, '', '2 pcs'),
('PUJ', '', 'Meja kerja', '0071', '', 0, '0', 2022, '', 'VIM', 'DJ', '', 0, '', ''),
('PUJ', '', 'Kursi kerja 1 set', '0072', '', 0, '0', 2022, '', 'New LOBP', 'DJ', '', 0, '', 'New LOBP bawah (4 pcs)'),
('PUJ', '', 'Meja kerja 1 set', '0073', '', 0, '0', 2022, '', 'New LOBP', 'DJ', '', 0, '', 'New LOBP bawah (2 pcs)'),
('PUJ', '', 'Kubikal 1 set', '0074', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas (3 unit)'),
('PUJ', '', 'Kursi kerja 1 set', '0075', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas (21 pcs)'),
('PUJ', '', 'Meja kerja', '0076', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Lemari besi', '0077', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Lemari besi', '0078', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Lemari besi', '0079', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Lemari besi', '0080', '', 0, '0', 2022, '', 'New LOBP', 'TR', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Meja kotak', '0081', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Lemari', '0082', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Lemari', '0083', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Rak sepatu/helm', '0084', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Lemari besi', '0085', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'New LOBP Atas'),
('PUJ', '', 'Kursi kerja 1 set', '0086', '', 0, '0', 2022, '', 'New LOBP', 'DS', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUJ', '', 'Kursi biru', '0087', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUJ', '', 'Meja kerja', '0088', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUJ', '', 'Lemari besi', '0089', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang Rapat Ex ruang pak setyo'),
('PUJ', '', 'Meja kerja', '0090', '', 0, '0', 2022, '', 'New LOBP', 'DS', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Meja kerja', '0091', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Meja rapat', '0092', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Kursi biru 1 set', '0093', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang rapat (13 pcs)'),
('PUJ', '', 'Kursi kerja lipat', '0094', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Kursi Kerja', '0095', '', 0, '0', 2022, '', 'New LOBP', 'TR', '', 0, '', 'Ruang rapat');
INSERT INTO `asset` (`kantor`, `jenis_asset`, `deskripsi_asset`, `no_asset`, `merk_type`, `jumlah`, `ukuran`, `tahun_pengadaan`, `status_kepemilikan`, `lokasi`, `kondisi`, `asal_usul`, `harga`, `gambar`, `keterangan`) VALUES
('PUJ', '', 'Kursi Kerja', '0096', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Lemari besi', '0097', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Lemari besi', '0098', '', 0, '0', 2022, '', 'New LOBP', 'DJ', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Meja kerja', '0099', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang teknik maintenance'),
('PUJ', '', 'Kursi kerja', '0100', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang teknik maintenance'),
('PUJ', '', 'Meja kerja', '0101', '', 0, '0', 2022, '', 'New LOBP', 'DB', '', 0, '', 'Ruang teknik maintenance'),
('PUJ', '', 'Meja kerja', '0102', '', 0, '0', 2022, '', 'Control  Room', 'DB', '', 0, '', '8 pcs'),
('PUJ', '', 'Kursi biriu 1 set', '0103', '', 0, '0', 2022, '', 'Control  Room', 'DB', '', 0, '', '8 pcs'),
('PUJ', '', 'Lemari berkas', '0104', '', 0, '0', 2022, '', 'Control  Room', 'DB', '', 0, '', ''),
('PUJ', '', 'Lemari berkas', '0105', '', 0, '0', 2022, '', 'Control  Room', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja 1 set', '0106', '', 0, '0', 2022, '', 'Control  Room', 'DB', '', 0, '', '6 pcs'),
('PUJ', '', 'Kursi kerja 1 set', '0107', '', 0, '0', 2022, '', 'MWH', 'DJ', '', 0, '', '7 pcs'),
('PUJ', '', 'Meja kerja 1 set', '0108', '', 0, '0', 2022, '', 'MWH', 'DJ', '', 0, '', '4 pcs'),
('PUJ', '', 'Kursi kerja 1 set', '0109', '', 0, '0', 2022, '', 'MWH', 'DJ', '', 0, '', '2 pcs'),
('PUJ', '', 'Kursi kerja 1 set', '0110', '', 0, '0', 2022, '', 'MWH', 'DB', '', 0, '', '5 pcs'),
('PUJ', '', 'Meja kerja 1 set', '0111', '', 0, '0', 2022, '', 'MWH', 'DJ', '', 0, '', '5 pcs'),
('PUJ', '', 'Meja kerja besi 1 set', '0112', '', 0, '0', 2022, '', 'Filling Drum', 'DB', '', 0, '', '4 pcs'),
('PUJ', '', 'Kursi kerja', '0113', '', 0, '0', 2022, '', 'Security area New LOBP', 'DJ', '', 0, '', ''),
('PUJ', '', 'Meja kerja 1 set', '0114', '', 0, '0', 2022, '', 'Ruang CCTV', 'DB', '', 0, '', '4 pcs'),
('PUJ', '', 'Meja bundar', '0115', '', 0, '0', 2022, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja 1 set', '0116', '', 0, '0', 2022, '', 'Ruang CCTV', 'DS', '', 0, '', '2 pcs'),
('PUJ', '', 'Kursi Tunggu 1 set', '0117', '', 0, '0', 2022, '', 'Ruang CCTV', 'DS', '', 0, '', '2 pcs'),
('PUJ', '', 'Kursi biru', '0118', '', 0, '0', 2022, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi putih', '0119', '', 0, '0', 2022, '', 'Ruang CCTV', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari Kabinet', '0120', '', 0, '0', 2022, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('PUJ', '', 'Lemari Kabinet', '0121', '', 0, '0', 2022, '', 'Ruang CCTV', 'DB', '', 0, '', ''),
('PUJ', '', 'Kubikal 1 set', '0122', '', 0, '0', 2022, '', 'Ruang HSE', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja 1 set', '0123', '', 0, '0', 2022, '', 'Ruang HSE', 'DB', '', 0, '', '6 pcs'),
('PUJ', '', 'Lemari Kabinet', '0124', '', 0, '0', 2022, '', 'Ruang HSE', 'DB', '', 0, '', ''),
('PUJ', '', 'Whiteboard kecil', '0125', '', 0, '0', 2022, '', 'Ruang HSE', 'DB', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet kaca 1 set', '0126', '', 0, '0', 2022, '', 'Ruang HSE', 'DB', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet kaca dorong', '0127', '', 0, '0', 2022, '', 'Ruang HSE', 'DS', '', 0, '', ''),
('PUJ', '', 'Sofa 1 set', '0128', '', 0, '0', 2022, '', 'Fire Station', 'DS', '', 0, '', '4 pcs'),
('PUJ', '', 'Meja kerja 1 set', '0129', '', 0, '0', 2022, '', 'Fire Station', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet kaca dorong', '0130', '', 0, '0', 2022, '', 'Fire Station', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet kaca dorong', '0131', '', 0, '0', 2022, '', 'Gudang HSE', 'DJ', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet dorong kecil', '0132', '', 0, '0', 2022, '', 'Gudang HSE', 'DJ', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0133', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kantor', '0134', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet besi', '0135', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari kaca', '0136', '', 0, '0', 2022, '', 'QC', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi biru', '0137', '', 0, '0', 2022, '', 'QC', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja komputer', '0138', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kantor', '0139', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet kaca dorong kecil', '0140', '', 0, '0', 2022, '', 'QC', 'DJ', '', 0, '', ''),
('PUJ', '', 'Meja kantor 1 set', '0141', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Laci Dokumen 2 susun', '0142', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari file hitam 1 set', '0143', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0144', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', '5 pcs'),
('PUJ', '', 'Filling kabinet 1 set', '0145', '', 0, '0', 2022, '', 'QC', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari Kabinet', '0146', '', 0, '0', 2022, '', 'QC', 'DJ', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0147', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0148', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DJ', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0149', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0150', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja 1 set', '0151', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', '3 pcs'),
('PUJ', '', 'Meja kerja', '0152', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0153', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0154', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DJ', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0155', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0156', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0157', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja 1 set', '0158', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', '2 pcs'),
('PUJ', '', 'Kursi kerja', '0159', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Laci Dokumen 4 susun', '0160', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0161', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0162', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0163', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0164', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0165', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0166', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0167', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0168', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja bundar', '0169', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0170', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0171', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', ''),
('PUJ', '', 'Sofa 1 set', '0172', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', 'Ruangan pak Nur (2 pcs)'),
('PUJ', '', 'Meja tamu', '0173', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUJ', '', 'Meja kerja', '0174', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DS', '', 0, '', 'Ruangan pak Nur'),
('PUJ', '', 'Meja kerja', '0175', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUJ', '', 'Kursi kerja 1 set', '0176', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', 'Ruangan pak Nur (3 pcs)'),
('PUJ', '', 'Lemari kabinet 1 set', '0177', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUJ', '', 'Whiteboard', '0178', '', 0, '0', 2022, '', 'Laboratorium Lantai 1', 'DB', '', 0, '', 'Ruangan pak Nur'),
('PUJ', '', 'Meja kantor', '0179', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', 'Ruangan kosong'),
('PUJ', '', 'Meja kantor', '0180', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', 'Ruangan Mbak Yashmikha'),
('PUJ', '', 'Lemari kabinet 1 set', '0181', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', 'Ruangan Mbak Yashmikha'),
('PUJ', '', 'Kursi kerja 1 set', '0182', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', 'Ruangan Mbak Yashmikha (2 pcs)'),
('PUJ', '', 'Meja bundar', '0183', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0184', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0185', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0186', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet besi', '0187', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0188', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0189', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0190', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0191', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0192', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0193', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Lemari kabinet besi kaca 1 set', '0194', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0195', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', ''),
('PUJ', '', 'Meja kerja 1 set', '0196', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Kursi kerja', '0197', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Kursi biru', '0198', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Whiteboard', '0199', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Meja kerja', '0200', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', 'Ruang rapat'),
('PUJ', '', 'Meja kerja', '0201', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0202', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0203', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0204', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0205', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0206', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja kerja', '0207', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja komputer', '0208', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi kerja', '0209', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', '4 pcs'),
('PUJ', '', 'Meja kerja', '0210', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', ''),
('PUJ', '', 'Meja bundar', '0211', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DS', '', 0, '', 'Pantry'),
('PUJ', '', 'Kursi biru', '0212', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', 'Pantry'),
('PUJ', '', 'Kursi biru', '0213', '', 0, '0', 2022, '', 'Laboratorium Lantai 2', 'DB', '', 0, '', 'Pantry'),
('PUJ', '', 'Kursi biru 1 set', '0214', '', 0, '0', 2022, '', 'Laboratorium Lantai 3', 'DB', '', 0, '', 'Depan ruang lantai 3 (12 pcs)'),
('PUJ', '', 'Tangga', '0215', '', 0, '0', 2022, '', 'Laboratorium Lantai 3', 'DS', '', 0, '', ''),
('PUJ', '', 'Kursi biru', '0216', '', 0, '0', 2022, '', 'Laboratorium Lantai 3', 'DB', '', 0, '', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_hapus`
-- (See below for the actual view)
--
CREATE TABLE `asset_hapus` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_inventaris`
-- (See below for the actual view)
--
CREATE TABLE `asset_inventaris` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_kadaluwarsa`
-- (See below for the actual view)
--
CREATE TABLE `asset_kadaluwarsa` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_oc`
-- (See below for the actual view)
--
CREATE TABLE `asset_oc` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_puc`
-- (See below for the actual view)
--
CREATE TABLE `asset_puc` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_pug`
-- (See below for the actual view)
--
CREATE TABLE `asset_pug` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_puj`
-- (See below for the actual view)
--
CREATE TABLE `asset_puj` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `asset_rusak`
-- (See below for the actual view)
--
CREATE TABLE `asset_rusak` (
`jenis_asset` varchar(30)
,`deskripsi_asset` varchar(255)
,`kode_asset` varchar(21)
,`merk_type` varchar(30)
,`jumlah` int(11)
,`ukuran` varchar(30)
,`tahun_pengadaan` year(4)
,`status_kepemilikan` varchar(30)
,`lokasi` varchar(30)
,`kondisi` varchar(20)
,`asal_usul` varchar(30)
,`harga` int(30)
,`gambar` varchar(30)
,`keterangan` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `kantor`
--

CREATE TABLE `kantor` (
  `id_kantor` varchar(10) NOT NULL,
  `nama_kantor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kantor`
--

INSERT INTO `kantor` (`id_kantor`, `nama_kantor`) VALUES
('OC', 'Office Center'),
('PUC', 'Production Unit Cilacap'),
('PUG', 'Production Unit Gresik'),
('PUJ', 'Production Unit Jakarta');

-- --------------------------------------------------------

--
-- Structure for view `asset_hapus`
--
DROP TABLE IF EXISTS `asset_hapus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_hapus`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` WHERE `asset`.`kondisi` = 'rb' OR `asset`.`tahun_pengadaan` <= year(current_timestamp()) - 10 ;

-- --------------------------------------------------------

--
-- Structure for view `asset_inventaris`
--
DROP TABLE IF EXISTS `asset_inventaris`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_inventaris`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` ;

-- --------------------------------------------------------

--
-- Structure for view `asset_kadaluwarsa`
--
DROP TABLE IF EXISTS `asset_kadaluwarsa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_kadaluwarsa`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` WHERE `asset`.`tahun_pengadaan` <= year(curdate()) - 10 ;

-- --------------------------------------------------------

--
-- Structure for view `asset_oc`
--
DROP TABLE IF EXISTS `asset_oc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_oc`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` WHERE `asset`.`kantor` = 'oc' ;

-- --------------------------------------------------------

--
-- Structure for view `asset_puc`
--
DROP TABLE IF EXISTS `asset_puc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_puc`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` WHERE `asset`.`kantor` = 'puc' ;

-- --------------------------------------------------------

--
-- Structure for view `asset_pug`
--
DROP TABLE IF EXISTS `asset_pug`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_pug`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` WHERE `asset`.`kantor` = 'pug' ;

-- --------------------------------------------------------

--
-- Structure for view `asset_puj`
--
DROP TABLE IF EXISTS `asset_puj`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_puj`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` WHERE `asset`.`kantor` = 'puj' ;

-- --------------------------------------------------------

--
-- Structure for view `asset_rusak`
--
DROP TABLE IF EXISTS `asset_rusak`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asset_rusak`  AS SELECT `asset`.`jenis_asset` AS `jenis_asset`, `asset`.`deskripsi_asset` AS `deskripsi_asset`, concat(`asset`.`kantor`,'/',`asset`.`no_asset`) AS `kode_asset`, `asset`.`merk_type` AS `merk_type`, `asset`.`jumlah` AS `jumlah`, `asset`.`ukuran` AS `ukuran`, `asset`.`tahun_pengadaan` AS `tahun_pengadaan`, `asset`.`status_kepemilikan` AS `status_kepemilikan`, `asset`.`lokasi` AS `lokasi`, `asset`.`kondisi` AS `kondisi`, `asset`.`asal_usul` AS `asal_usul`, `asset`.`harga` AS `harga`, `asset`.`gambar` AS `gambar`, `asset`.`keterangan` AS `keterangan` FROM `asset` WHERE `asset`.`kondisi` = 'rb' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`kantor`,`no_asset`) USING BTREE;

--
-- Indexes for table `kantor`
--
ALTER TABLE `kantor`
  ADD PRIMARY KEY (`id_kantor`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `fk_kantor` FOREIGN KEY (`kantor`) REFERENCES `kantor` (`id_kantor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
