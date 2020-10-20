-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2020 pada 12.11
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kemahasiswaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nobp` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nobp`, `nama`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `fakultas`, `jurusan`) VALUES
(1811081006, 'Novita Aulia', 'pasar baru', 'kuranji', 'kuranji hulu', 'kota padang', 'sumatera barat', 'kedokteran', 'dokter hewan'),
(1811082024, 'Afrizal fauzi', 'tunggang', 'pasar ambacang', 'kuranji', 'kota padang', 'sumatera barat', 'TI', 'teknologi informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama`) VALUES
(1, 'methodlogy'),
(2, 'algoritma');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `nobp` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`nobp`, `id_matkul`, `nilai`, `semester`) VALUES
(1811082024, 1, 3.1, ''),
(1811082024, 1, 3.1, '2'),
(1811081006, 2, 3.3, '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nobp`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `nobp` (`nobp`,`id_matkul`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nobp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1811082025;

--
-- AUTO_INCREMENT untuk tabel `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`nobp`) REFERENCES `mahasiswa` (`nobp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
