-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2021 pada 01.59
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(10) NOT NULL,
  `Nama_Barang` text NOT NULL,
  `Stok` int(11) NOT NULL,
  `Satuan` text NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Stok`, `Satuan`, `Harga`) VALUES
('B1', 'Kopi Kapal Api', 99, '1', 10000),
('B2', 'Indomie Goreng Di Rebus', 98, '1', 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_barang`
--

CREATE TABLE `detail_barang` (
  `Kode_Detail` varchar(10) NOT NULL,
  `Kode_Barang` varchar(10) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_barang`
--

INSERT INTO `detail_barang` (`Kode_Detail`, `Kode_Barang`, `Harga`, `Jumlah`, `Discount`, `Subtotal`) VALUES
('DTRX004', 'B012', 48000, 2, 2500, 93500),
('DTRX007', 'B012', 48000, 2, 0, 96000),
('DTRX001', 'B2', 5000, 1, 0, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `Kode_Transaksi` varchar(10) NOT NULL,
  `Kode_Detail` varchar(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam` time NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`Kode_Transaksi`, `Kode_Detail`, `Tanggal`, `Jam`, `Total`) VALUES
('TRX001', 'DTRX001', '2021-12-13', '12:36:50', 5000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Kode_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
