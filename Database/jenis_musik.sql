-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Bulan Mei 2024 pada 01.17
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_musik`
--

CREATE TABLE `jenis_musik` (
  `ID` int(11) NOT NULL,
  `Judul` varchar(100) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Penyanyi` varchar(100) DEFAULT NULL,
  `Tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_musik`
--

INSERT INTO `jenis_musik` (`ID`, `Judul`, `Genre`, `Penyanyi`, `Tahun`) VALUES
(2, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(3, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(4, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(5, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(6, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(7, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(8, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(9, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(10, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(11, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(12, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(13, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(14, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(15, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(16, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(17, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(18, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(19, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(20, 'Rumpang', 'Nadin Amizah', 'Pop', 2018),
(21, 'Bohemian Rhapsody', 'Queen', 'Rock', 1975),
(22, 'Rumpang', 'Nadin Amizah', 'Pop', 2018);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_musik`
--
ALTER TABLE `jenis_musik`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_musik`
--
ALTER TABLE `jenis_musik`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
