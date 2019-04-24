-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 07:21 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensievent`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `absen` int(5) NOT NULL,
  `Masuk` datetime DEFAULT CURRENT_TIMESTAMP,
  `Pulang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `id_prodi`, `id_kelas`, `absen`, `Masuk`, `Pulang`) VALUES
(1, 2, 5, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 5, 21, '2019-04-24 16:31:04', '2019-04-24 16:31:04'),
(3, 1, 17, 5, '2019-04-24 18:08:00', '2019-04-24 18:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Teknik Informasi'),
(2, 'Teknik Mesin'),
(3, 'Teknik Elektro'),
(4, 'Teknik Sipil'),
(5, 'Teknik Kimia'),
(6, 'Akuntansi'),
(7, 'Administrasi Niaga'),
(8, 'Bahasa');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '1D'),
(5, '1E'),
(6, '1F'),
(7, '1G'),
(8, '2A'),
(9, '2B'),
(10, '2C'),
(11, '2D'),
(12, '2E'),
(13, '2F'),
(14, '2G'),
(15, '3A'),
(16, '3B'),
(17, '3C'),
(18, '3D'),
(19, '3E'),
(20, '3F'),
(21, '3G'),
(22, '4A'),
(23, '4B'),
(24, '4C'),
(25, '4D'),
(26, '4E'),
(27, '4F'),
(28, '4G');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `absen` int(5) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `status` enum('Alpha','Hadir') DEFAULT 'Alpha'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `id_kelas`, `absen`, `id_jurusan`, `id_prodi`, `status`) VALUES
('1831710012', 'Aldi', 1, 10, 3, 10, 'Alpha'),
('1831710129', 'Farras', 1, 22, 1, 1, 'Alpha');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `id_jurusan`, `nama_prodi`) VALUES
(1, 1, 'D4 Teknik Informatika'),
(2, 1, 'D3 Manajemen Informatika'),
(3, 2, 'D4 Teknik Otomotif Elektronik'),
(4, 2, 'D4 Teknik Mesin Produksi dan Perawatan'),
(5, 2, 'D3 Teknik Mesin'),
(6, 3, 'D4 Sistem Kelistrikan'),
(7, 3, 'D4 Teknik Elektronika'),
(8, 3, 'D4 Jaringan Telekomunikasi Digital'),
(9, 3, 'D3 Teknik Elektronika'),
(10, 3, 'D3 Teknik Listrik Industri'),
(11, 3, 'D3 Teknik Telekomunikasi'),
(12, 4, 'D4 Manajemen Rekayasa Konstruksi'),
(13, 4, 'D3 Teknik Sipil'),
(14, 4, 'D3 Teknik Konstruksi Jalan, Jembatan, dan Bangunan'),
(15, 5, 'D4 Teknik Kimia Industri'),
(16, 5, 'D3 Teknik Kimia'),
(17, 6, 'D4 Akuntansi Manajemen'),
(18, 6, 'D3 Akuntansi'),
(19, 7, 'D4 Manajemen Pemasaran'),
(20, 7, 'D3 Administrasi Bisnis'),
(21, 8, 'D3 Bahasa Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `prodii`
--

CREATE TABLE `prodii` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodii`
--

INSERT INTO `prodii` (`id_prodi`, `nama_prodi`) VALUES
(1, 'D3 Manajemen Informatika'),
(2, 'D4 Teknik Informatika'),
(3, 'D3 Teknik Mesin'),
(4, 'D4 Teknik Mesin Produksi dan Perawatan'),
(5, 'D4 Teknik Otomotif Elektronik'),
(6, 'D3 Teknik Elektronika'),
(7, 'D3 Teknik Listrik Industri'),
(8, 'D3 Teknik Telekomunikasi'),
(9, 'D4 Jaringan Telekomunikasi Digital'),
(10, 'D4 Sistem Kelistrikan'),
(11, 'D4 Teknik Elektronika'),
(12, 'D3 Teknik Konstruksi Jalan, Jembatan, da'),
(13, 'D3 Teknik Sipil'),
(14, 'D4 Manajemen Rekayasa Konstruksi'),
(15, 'D3 Teknik Kimia'),
(16, 'D4 Teknik Kimia Industri'),
(17, 'D3 Akuntansi'),
(18, 'D4 Akuntansi Manajemen'),
(19, 'D3 Administrasi Bisnis'),
(20, 'D4 Manajemen Pemasaran'),
(21, 'D3 Bahasa Inggris');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `kelas` (`id_kelas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `prodii`
--
ALTER TABLE `prodii`
  ADD PRIMARY KEY (`id_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `prodii`
--
ALTER TABLE `prodii`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `mahasiswa_ibfk_4` FOREIGN KEY (`id_prodi`) REFERENCES `prodii` (`id_prodi`),
  ADD CONSTRAINT `mahasiswa_ibfk_5` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `prodi_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodii` (`id_prodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
