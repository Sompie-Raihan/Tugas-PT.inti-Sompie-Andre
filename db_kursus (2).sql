-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 06:07 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kursus`
--

CREATE TABLE `tbl_kursus` (
  `id_kursus` varchar(15) NOT NULL,
  `nama_kursus` varchar(100) NOT NULL,
  `jumlah_chp` int(20) NOT NULL,
  `harga_kursus` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kursus`
--

INSERT INTO `tbl_kursus` (`id_kursus`, `nama_kursus`, `jumlah_chp`, `harga_kursus`, `gambar`) VALUES
('KRS0001', 'Tutor1', 10, '100.000', ''),
('KRS0002', 'Tutor2', 10, '100.000', 'portfolio-details-3.jpg'),
('KRS0003', 'TEST', 12, '150.000', ''),
('KRS0004', 'TEST4', 12, '150.000', ''),
('KRS0005', 'TEST5', 12, '150.000', ''),
('KRS0006', 'TEST6', 12, '150.000', ''),
('KRS0007', 'TEST8', 12, '150.000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_kursus`
--

CREATE TABLE `tbl_nilai_kursus` (
  `id_poin` int(100) NOT NULL,
  `id_user` varchar(15) NOT NULL,
  `id_kursus` varchar(15) NOT NULL,
  `total_poin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nilai_kursus`
--

INSERT INTO `tbl_nilai_kursus` (`id_poin`, `id_user`, `id_kursus`, `total_poin`) VALUES
(1, 'PG0001', 'KRS0001', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_kursus`
--

CREATE TABLE `tbl_user_kursus` (
  `id_user` varchar(15) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_kursus`
--

INSERT INTO `tbl_user_kursus` (`id_user`, `nama_user`, `username`, `password`, `gambar`) VALUES
('PG0001', 'MAKAN', '321', '321', 'download.png'),
('PGN002', 'USA', '123', '123', 'Icon.jpg'),
('PGN003', 'nakama', '651', '651', ''),
('PGN004', 'ALICE', '902', '902', ''),
('PGN005', 'ALICE02', '612', '612', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kursus`
--
ALTER TABLE `tbl_kursus`
  ADD PRIMARY KEY (`id_kursus`);

--
-- Indexes for table `tbl_nilai_kursus`
--
ALTER TABLE `tbl_nilai_kursus`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indexes for table `tbl_user_kursus`
--
ALTER TABLE `tbl_user_kursus`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_nilai_kursus`
--
ALTER TABLE `tbl_nilai_kursus`
  MODIFY `id_poin` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
