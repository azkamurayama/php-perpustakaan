-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 11:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rplpustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `muda_buku`
--

CREATE TABLE `muda_buku` (
  `isbn` varchar(49) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` int(12) NOT NULL,
  `jenis_buku` varchar(37) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muda_buku`
--

INSERT INTO `muda_buku` (`isbn`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `jenis_buku`, `stok`) VALUES
('92793422', 'mobil', 'said', 'ermanis', 2002, 'romance', 98),
('92793429792', 'anak durhaka', 'alex', 'ermanis', 2002, 'romance', 13);

-- --------------------------------------------------------

--
-- Table structure for table `muda_pinjaman`
--

CREATE TABLE `muda_pinjaman` (
  `id_pinjaman` int(12) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` enum('pinjam','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `muda_siswa`
--

CREATE TABLE `muda_siswa` (
  `nisn` varchar(20) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `alamat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muda_siswa`
--

INSERT INTO `muda_siswa` (`nisn`, `nama_siswa`, `jurusan`, `jenis_kelamin`, `no_hp`, `alamat`) VALUES
('368643863', 'fauzan', 'AKL', 'L', 826826821, 'jl.dulu g sih');

-- --------------------------------------------------------

--
-- Table structure for table `muda_user`
--

CREATE TABLE `muda_user` (
  `id` int(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muda_user`
--

INSERT INTO `muda_user` (`id`, `nama_user`, `username`, `password`, `level`, `is_active`) VALUES
(4, 'said', 'saidaja', '$2y$10$ydv9aQzLiY1mQgWuNkRdaOERZNYASuqvIdAiWpx7b9sdPXqeDuvHa', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `muda_pinjaman`
--
ALTER TABLE `muda_pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `muda_siswa`
--
ALTER TABLE `muda_siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `muda_user`
--
ALTER TABLE `muda_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `muda_user`
--
ALTER TABLE `muda_user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
