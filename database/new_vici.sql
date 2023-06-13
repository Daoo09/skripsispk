-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 06:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_vici`
--

-- --------------------------------------------------------

--
-- Table structure for table `hem`
--

CREATE TABLE `hem` (
  `id` int(11) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `Tipe` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hem`
--

INSERT INTO `hem` (`id`, `harga`, `Tipe`) VALUES
(1, '897500', 'Z'),
(2, '890000', '');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `Kode` char(120) NOT NULL,
  `Nama` char(120) NOT NULL,
  `Alamat` text NOT NULL,
  `Telp` char(65) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` text NOT NULL,
  `Tipe` char(1) NOT NULL,
  `User` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `Kode`, `Nama`, `Alamat`, `Telp`, `Tanggal`, `Keterangan`, `Tipe`, `User`) VALUES
(1, 'PLGN001', 'test', 'test', '01', '2023-06-04', 'test...', '', 'ADU');

-- --------------------------------------------------------

--
-- Table structure for table `poproduksi`
--

CREATE TABLE `poproduksi` (
  `id` int(11) NOT NULL,
  `Kode` char(120) NOT NULL,
  `KodePelanggan` char(120) NOT NULL,
  `NamaSales` char(65) NOT NULL,
  `TanggalTerima` date NOT NULL,
  `TanggalEstimasiPenyelesaian` date NOT NULL,
  `KodeProduk` char(120) NOT NULL,
  `JenisProduksi` char(1) NOT NULL,
  `JenisPelanggan` char(1) NOT NULL,
  `Bahan` char(120) NOT NULL,
  `KadarLokal` decimal(16,2) NOT NULL,
  `Kuantitas` decimal(16,2) NOT NULL,
  `Ukuran` decimal(16,2) NOT NULL,
  `EstimasiBerat` decimal(16,2) NOT NULL,
  `RangeBeratEstimasi` decimal(16,2) NOT NULL,
  `Susut` decimal(16,2) NOT NULL,
  `DatangEmas` decimal(16,2) NOT NULL,
  `KadarDatangEmas` decimal(16,2) NOT NULL,
  `DatangBerlian` decimal(16,2) NOT NULL,
  `BeratDatangBerlian` decimal(16,2) NOT NULL,
  `UpahPasangBerlian` decimal(16,2) NOT NULL,
  `NamaBatuPermata` char(65) NOT NULL,
  `BeratBatuPermata` decimal(16,2) NOT NULL,
  `TipeIkatan` char(1) NOT NULL,
  `Metode` char(1) NOT NULL,
  `TipePelanggan` char(1) NOT NULL,
  `Keterangan` text NOT NULL,
  `Foto` char(120) NOT NULL,
  `KrumWarna` char(65) NOT NULL,
  `KeteranganKrum` text NOT NULL,
  `HargaKrum` decimal(16,2) NOT NULL,
  `Upah` decimal(16,2) NOT NULL,
  `Budget` decimal(16,2) NOT NULL,
  `Panjar` decimal(16,2) NOT NULL,
  `Tipe` char(1) NOT NULL,
  `Tanggal` date NOT NULL,
  `User` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poservice`
--

CREATE TABLE `poservice` (
  `id` int(11) NOT NULL,
  `Kode` char(120) NOT NULL,
  `KodePelanggan` char(120) NOT NULL,
  `NamaSales` char(65) NOT NULL,
  `TanggalTerima` date NOT NULL,
  `TanggalEstimasiPenyelesaian` date NOT NULL,
  `KodeProduk` char(120) NOT NULL,
  `JenisProduksi` char(125) NOT NULL,
  `JenisPelanggan` char(1) NOT NULL,
  `Bahan` char(120) NOT NULL,
  `KadarLokal` decimal(16,2) NOT NULL,
  `Kuantitas` decimal(16,2) NOT NULL,
  `Ukuran` decimal(16,2) NOT NULL,
  `EstimasiBerat` decimal(16,2) NOT NULL,
  `RangeBeratEstimasi` decimal(16,2) NOT NULL,
  `Susut` decimal(16,2) NOT NULL,
  `DatangBerlian` decimal(16,2) NOT NULL,
  `BeratDatangBerlian` decimal(16,2) NOT NULL,
  `UpahPasangBerlian` decimal(16,2) NOT NULL,
  `NamaBatuPermata` char(65) NOT NULL,
  `BeratBatuPermata` decimal(16,2) NOT NULL,
  `TipeIkatan` char(65) NOT NULL,
  `Metode` char(65) NOT NULL,
  `TipePelanggan` char(65) NOT NULL,
  `Keterangan` text NOT NULL,
  `Foto` char(120) NOT NULL,
  `KrumWarna` char(120) NOT NULL,
  `KeteranganKrum` text NOT NULL,
  `HargaKrum` decimal(16,2) NOT NULL,
  `Upah` decimal(16,2) NOT NULL,
  `Budget` decimal(16,2) NOT NULL,
  `Panjar` decimal(16,2) NOT NULL,
  `Tipe` char(1) NOT NULL,
  `Tanggal` date NOT NULL,
  `User` char(50) NOT NULL,
  `Status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poservice`
--

INSERT INTO `poservice` (`id`, `Kode`, `KodePelanggan`, `NamaSales`, `TanggalTerima`, `TanggalEstimasiPenyelesaian`, `KodeProduk`, `JenisProduksi`, `JenisPelanggan`, `Bahan`, `KadarLokal`, `Kuantitas`, `Ukuran`, `EstimasiBerat`, `RangeBeratEstimasi`, `Susut`, `DatangBerlian`, `BeratDatangBerlian`, `UpahPasangBerlian`, `NamaBatuPermata`, `BeratBatuPermata`, `TipeIkatan`, `Metode`, `TipePelanggan`, `Keterangan`, `Foto`, `KrumWarna`, `KeteranganKrum`, `HargaKrum`, `Upah`, `Budget`, `Panjar`, `Tipe`, `Tanggal`, `User`, `Status`) VALUES
(2, 'POSRV001', 'PLGN001', 'testttt', '2023-06-04', '2023-06-06', 'PRDK001', '1', 'T', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, '1', '1', '1', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 'Z', '2023-06-04', 'ADU', '1'),
(3, 'POSRV001', 'PLGN001', 'cek sales', '2023-06-04', '2023-06-06', 'PRDK001', '1', 'T', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, '1', '1', '1', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 'Z', '2023-06-04', 'ADU', '1');

-- --------------------------------------------------------

--
-- Table structure for table `potempahan`
--

CREATE TABLE `potempahan` (
  `id` int(11) NOT NULL,
  `Kode` char(120) NOT NULL,
  `KodePelanggan` char(120) NOT NULL,
  `NamaSales` char(65) NOT NULL,
  `TanggalTerima` date NOT NULL,
  `TanggalEstimasiPenyelesaian` date NOT NULL,
  `KodeProduk` char(120) NOT NULL,
  `JenisProduksi` char(1) NOT NULL,
  `JenisPelanggan` char(1) NOT NULL,
  `Bahan` char(120) NOT NULL,
  `KadarLokal` decimal(16,2) NOT NULL,
  `Kuantitas` decimal(16,2) NOT NULL,
  `Ukuran` decimal(16,2) NOT NULL,
  `EstimasiBerat` decimal(16,2) NOT NULL,
  `RangeBeratEstimasi` decimal(16,2) NOT NULL,
  `Susut` decimal(16,2) NOT NULL,
  `DatangEmas` decimal(16,2) NOT NULL,
  `KadarDatangEmas` decimal(16,2) NOT NULL,
  `DatangBerlian` decimal(16,2) NOT NULL,
  `BeratDatangBerlian` decimal(16,2) NOT NULL,
  `UpahPasangBerlian` decimal(16,2) NOT NULL,
  `NamaBatuPermata` char(65) NOT NULL,
  `BeratBatuPermata` decimal(16,2) NOT NULL,
  `TipeIkatan` char(1) NOT NULL,
  `Metode` char(1) NOT NULL,
  `TipePelanggan` char(1) NOT NULL,
  `Keterangan` text NOT NULL,
  `Foto` char(120) NOT NULL,
  `KrumWarna` char(65) NOT NULL,
  `KeteranganKrum` text NOT NULL,
  `HargaKrum` decimal(16,2) NOT NULL,
  `Upah` decimal(16,2) NOT NULL,
  `Budget` decimal(16,2) NOT NULL,
  `Panjar` decimal(16,2) NOT NULL,
  `Tipe` char(1) NOT NULL,
  `Tanggal` date NOT NULL,
  `User` char(50) NOT NULL,
  `Status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `potempahan`
--

INSERT INTO `potempahan` (`id`, `Kode`, `KodePelanggan`, `NamaSales`, `TanggalTerima`, `TanggalEstimasiPenyelesaian`, `KodeProduk`, `JenisProduksi`, `JenisPelanggan`, `Bahan`, `KadarLokal`, `Kuantitas`, `Ukuran`, `EstimasiBerat`, `RangeBeratEstimasi`, `Susut`, `DatangEmas`, `KadarDatangEmas`, `DatangBerlian`, `BeratDatangBerlian`, `UpahPasangBerlian`, `NamaBatuPermata`, `BeratBatuPermata`, `TipeIkatan`, `Metode`, `TipePelanggan`, `Keterangan`, `Foto`, `KrumWarna`, `KeteranganKrum`, `HargaKrum`, `Upah`, `Budget`, `Panjar`, `Tipe`, `Tanggal`, `User`, `Status`) VALUES
(1, 'P001', 'PLGN001', 'test', '2023-06-04', '2023-06-05', 'KDP001', '1', 'T', '1', 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, '1', '1', '1', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 'Z', '2023-06-04', 'ADU', ''),
(2, 'P002', 'PLGN001', 'test', '2023-06-04', '2023-06-06', 'KDP002', '1', 'T', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, '1', '1', '1', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 'Z', '2023-06-04', 'ADU', '1'),
(3, 'P001', 'PLGN001', 'test', '2023-06-04', '2023-06-06', 'KDP001', '1', 'T', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, '1', '1', '1', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 'Z', '2023-06-04', 'ADU', '1'),
(4, 'P001', 'PLGN001', 'testtt', '2023-06-04', '2023-06-05', 'KDP001', '1', 'T', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, '1', '1', '1', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 'Z', '2023-06-04', 'ADU', '1'),
(5, 'P001', 'PLGN001', 'sales  1', '2023-06-04', '2023-06-06', 'KDP001', '1', 'T', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, '1', '1', '1', '', '', '', '', 0.00, 0.00, 0.00, 0.00, '', '2023-06-04', 'ADU', '1');

-- --------------------------------------------------------

--
-- Table structure for table `stsservice`
--

CREATE TABLE `stsservice` (
  `id` int(11) NOT NULL,
  `Kodeservice` char(200) NOT NULL,
  `Sk` char(200) NOT NULL,
  `Selesai` date NOT NULL,
  `Pb` date NOT NULL,
  `Tipe` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ststempahan`
--

CREATE TABLE `ststempahan` (
  `id` int(11) NOT NULL,
  `Kodetempahan` char(200) NOT NULL,
  `Sk` char(200) NOT NULL,
  `Selesai` date NOT NULL,
  `Pb` date NOT NULL,
  `Tipe` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `Kode` char(60) NOT NULL,
  `Nama` char(60) NOT NULL,
  `Alamat` char(60) NOT NULL,
  `Status` char(60) NOT NULL,
  `Username` char(60) NOT NULL,
  `password` char(50) NOT NULL,
  `Level` char(50) NOT NULL,
  `User` char(50) NOT NULL,
  `Tipe` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `Kode`, `Nama`, `Alamat`, `Status`, `Username`, `password`, `Level`, `User`, `Tipe`) VALUES
(1, 'USR001', 'ADU', 'Jl.Medan', '1', 'ADU', 'cf79ae6addba60ad018347359bd144d2', '1', '', ''),
(2, 'USR002', 'Pegawai', 'Jl.Medan', '1', 'Pegawai', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'ADU', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hem`
--
ALTER TABLE `hem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poproduksi`
--
ALTER TABLE `poproduksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poservice`
--
ALTER TABLE `poservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potempahan`
--
ALTER TABLE `potempahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stsservice`
--
ALTER TABLE `stsservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ststempahan`
--
ALTER TABLE `ststempahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hem`
--
ALTER TABLE `hem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poproduksi`
--
ALTER TABLE `poproduksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poservice`
--
ALTER TABLE `poservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `potempahan`
--
ALTER TABLE `potempahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stsservice`
--
ALTER TABLE `stsservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ststempahan`
--
ALTER TABLE `ststempahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
