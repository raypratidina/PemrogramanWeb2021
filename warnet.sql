-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2021 pada 01.44
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warnet`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `id_user` int(100) NOT NULL,
  `jenis_kamar` text NOT NULL,
  `tanggal_mulai` varchar(100) NOT NULL,
  `tanggal_selesai` varchar(100) NOT NULL,
  `waktu_mulai` varchar(100) NOT NULL,
  `waktu_selesai` varchar(100) NOT NULL,
  `metode_pembayaran` varchar(100) NOT NULL,
  `sub_total` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id`, `id_user`, `jenis_kamar`, `tanggal_mulai`, `tanggal_selesai`, `waktu_mulai`, `waktu_selesai`, `metode_pembayaran`, `sub_total`, `total`) VALUES
(1, 1, 'VIP', '5/1/2021', '5/1/2021', '13:00', '17:00', 'OVO', '280.000', '280.000'),
(2, 2, 'VIP', '5/1/2021', '5/1/2021', '17:00', '20:00', 'OVO', '210.000', '210.000'),
(3, 3, 'BASIC', '5/1/2021', '5/1/2021', '13:00', '15:00', 'OVO', '10.000', '10.000'),
(4, 3, 'BASIC', '5/1/2021', '5/1/2021', '19:00', '21:00', 'OVO', '10.000', '10.000'),
(5, 4, 'VIP', '5/1/2021', '5/1/2021', '21:00', '23:00', 'OVO', '140.000', '140.000'),
(6, 5, 'BASIC', '5/1/2021', '5/1/2021', '08:00', '12:00', 'OVO', '20.000', '20.000'),
(7, 6, 'BASIC', '5/1/2021', '5/1/2021', '14:00', '17:00', 'OVO', '15.000', '15.000'),
(8, 7, 'BASIC', '5/1/2021', '5/1/2021', '09:00', '13:00', 'OVO', '20.000', '20.000'),
(9, 8, 'BASIC', '5/1/2021', '5/1/2021', '08:00', '15:00', 'OVO', '35.000', '35.000'),
(10, 9, 'BASIC', '5/1/2021', '5/1/2021', '10:00', '12:00', 'OVO', '10.000', '10.000'),
(11, 10, 'BASIC', '5/1/2021', '5/1/2021', '15:00', '18:00', 'OVO', '15.000', '15.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jeniskamar`
--

CREATE TABLE `jeniskamar` (
  `id_jenis_kamar` int(11) NOT NULL,
  `jenis_kamar` varchar(20) NOT NULL,
  `kecepatan_internet` varchar(20) NOT NULL,
  `harga_sewa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jeniskamar`
--

INSERT INTO `jeniskamar` (`id_jenis_kamar`, `jenis_kamar`, `kecepatan_internet`, `harga_sewa`) VALUES
(1, 'BASIC', '10Mbps', 5000),
(2, 'VIP', '1Gbs', 30000),
(3, 'BASIC', '10Mbs', 5000),
(4, 'BASIC', '10Mbs', 5000),
(5, 'VIP', '1Gbs', 30000),
(6, 'BASIC', '10Mbs', 5000),
(7, 'VIP', '1Gbs', 30000),
(8, 'BASIC', '10Mbs', 5000),
(9, 'BASIC', '10Mbs', 5000),
(10, 'VIP', '1Gbs', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `nama_kamar` varchar(20) NOT NULL,
  `id_jenis_kamar` int(11) NOT NULL,
  `id_komputer` int(11) NOT NULL,
  `jumlah_ac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`nama_kamar`, `id_jenis_kamar`, `id_komputer`, `jumlah_ac`) VALUES
('ROOM 1', 1, 1, 1),
('ROOM 10', 10, 10, 1),
('ROOM 2', 2, 2, 1),
('ROOM 3', 3, 3, 1),
('ROOM 4', 4, 4, 1),
('ROOM 5', 5, 5, 1),
('ROOM 6', 6, 6, 1),
('ROOM 7', 7, 7, 1),
('ROOM 8', 8, 8, 1),
('ROOM 9', 9, 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komputer`
--

CREATE TABLE `komputer` (
  `id_kompter` int(11) NOT NULL,
  `id_warnet` int(11) NOT NULL,
  `id_monitor` int(11) NOT NULL,
  `vga` varchar(20) NOT NULL,
  `prosesor` varchar(20) NOT NULL,
  `total_ram` int(11) NOT NULL,
  `jenis_penyimpanan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komputer`
--

INSERT INTO `komputer` (`id_kompter`, `id_warnet`, `id_monitor`, `vga`, `prosesor`, `total_ram`, `jenis_penyimpanan`) VALUES
(1, 1, 1, 'GTX 750', 'INTEL CORE I 3 8750H', 8, 'HDD 1TB	'),
(2, 2, 2, 'RTX 2060', 'RYZEN 7 4000', 32, 'SSD NVME 1TB'),
(3, 3, 3, 'GTX 180', 'RYZEN 5 4000', 12, 'SSD NVME 1TB'),
(4, 4, 4, 'GTX 750', 'INTEL CORE I 3 10010', 8, 'HDD 1TB'),
(5, 5, 5, 'RTX 2060', 'RYZEN 7 4000', 32, 'SSD NVME 2TB'),
(6, 6, 6, 'GTX 750', 'INTEL CORE I 3 8750H', 8, 'HDD 1TB'),
(7, 7, 7, 'RTX 2060', 'RYZEN 7 4000', 32, 'HDD 1TB'),
(8, 8, 8, 'GTX 180', 'RYZEN 5 4000', 12, 'SSD NVME 1TB'),
(9, 9, 9, 'GTX 750', 'INTEL CORE I 3 10010', 8, 'HDD 1TB'),
(10, 10, 10, 'RTX 2060', 'RYZEN 7 4000', 32, 'SSD NVME 2TB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `monitor`
--

CREATE TABLE `monitor` (
  `id_monitor` int(11) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `jenis_penyimpanan` varchar(15) NOT NULL,
  `resolusi` varchar(10) NOT NULL,
  `aspek_rasio` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `monitor`
--

INSERT INTO `monitor` (`id_monitor`, `merk`, `jenis_penyimpanan`, `resolusi`, `aspek_rasio`) VALUES
(1, 'SAMSUNG', 'HDD 1TB', '1080X1920', '16:09'),
(2, 'VIEWSONIC', 'SSD NVME 1TB', '2560X1080', '21:09'),
(3, 'LG', 'SSD NVME 1TB', '1080X1920', '16:09'),
(4, 'SAMSUNG', 'HDD 1TB', '1080X1920', '16:09'),
(5, 'LG', 'SSD NVME 2TB', '1080X1920', '16:09'),
(6, 'VIEWSONIC', 'HDD 2TB', '1080X1920', '16:09'),
(7, 'SAMSUNG', 'HDD 1TB', '1080X1920', '16:09'),
(8, 'LG', 'HDD 1TB', '1080X1920', '16:09'),
(9, 'HP', 'HDD 1TB', '1080X1920', '16:09'),
(10, 'ASUS', 'HDD 1TB', '1080X1920', '16:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `kode_booking` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_kamar` varchar(20) NOT NULL,
  `waktu_booking` datetime NOT NULL,
  `waktu_pemakaian` datetime NOT NULL,
  `lama_pemakaian` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `metode_pembayaran` varchar(20) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`kode_booking`, `id_user`, `nama_kamar`, `waktu_booking`, `waktu_pemakaian`, `lama_pemakaian`, `status`, `metode_pembayaran`, `subtotal`, `total`) VALUES
('asdfg45', 2, 'ROOM 2', '2021-05-07 07:00:00', '2021-05-07 13:00:00', 6, 'Belum bayar', 'OVO', 180, 180),
('dcfsazx45', 5, 'ROOM 5', '2021-05-07 08:30:00', '2021-05-07 14:00:00', 8, 'Belum bayar', 'OVO', 240, 240),
('ftjcdx65', 10, 'ROOM 10', '2021-05-07 13:00:00', '2021-05-07 21:00:00', 5, 'Sudah bayar', 'OVO', 150, 150),
('gkmyjhu67', 6, 'ROOM 6', '2021-05-07 13:00:00', '2021-05-07 19:00:00', 7, 'Belum bayar', 'CASH', 35, 35),
('gvhbdf56', 7, 'ROOM 7', '2021-05-07 08:20:00', '2021-05-07 14:00:00', 4, 'Belum bayar', 'CASH', 120, 120),
('hbgjncv78', 8, 'ROOM 8', '2021-05-07 08:30:00', '2021-05-07 13:00:00', 2, 'Belum bayar', 'CASH', 10, 10),
('imolhu98', 9, 'ROOM 9', '2021-05-07 09:00:00', '2021-05-07 17:00:00', 3, 'Sudah bayar', 'CASH', 15, 15),
('qwert123', 1, 'ROOM 1', '2021-05-07 11:00:00', '2021-05-07 14:00:00', 3, 'Sudah bayar', 'OVO', 15, 15),
('sedfca32', 4, 'ROOM 4', '2021-05-07 08:00:00', '2021-05-07 11:00:00', 5, 'Sudah bayar', 'CASH', 20, 20),
('zxcvb657', 3, 'ROOM 3', '2021-05-07 11:00:00', '2021-05-07 16:00:00', 4, 'Sudah bayar', 'GOPAY', 20, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `password`) VALUES
(1, 'SAPRI', 1234),
(2, 'DULMANAN', 1357),
(3, 'QADIR', 9876),
(4, 'JAMBRONI', 4217),
(5, 'CHRISTOPHER', 5648),
(6, 'SAM\'AN', 5349),
(7, 'MAULANA ABDIL', 5319),
(8, 'QHOIRIL JUM\'AN', 7456),
(9, 'CHOKY', 6666),
(10, 'ZARHADI', 8567);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jeniskamar`
--
ALTER TABLE `jeniskamar`
  ADD PRIMARY KEY (`id_jenis_kamar`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`nama_kamar`);

--
-- Indeks untuk tabel `komputer`
--
ALTER TABLE `komputer`
  ADD PRIMARY KEY (`id_kompter`);

--
-- Indeks untuk tabel `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`id_monitor`);

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `jeniskamar`
--
ALTER TABLE `jeniskamar`
  MODIFY `id_jenis_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `komputer`
--
ALTER TABLE `komputer`
  MODIFY `id_kompter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `monitor`
--
ALTER TABLE `monitor`
  MODIFY `id_monitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
