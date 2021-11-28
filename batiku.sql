-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2019 pada 05.43
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batiku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `idAdmin` varchar(11) NOT NULL,
  `namaAdmin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_admin`
--

INSERT INTO `tabel_admin` (`idAdmin`, `namaAdmin`, `email`, `password`) VALUES
('1', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `idKategori` int(11) NOT NULL,
  `namaKategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_kategori`
--

INSERT INTO `tabel_kategori` (`idKategori`, `namaKategori`) VALUES
(1, 'Pria'),
(2, 'Wanita'),
(3, 'Anak-anak'),
(4, 'Couple'),
(5, 'Sarimbit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_keranjang`
--

CREATE TABLE `tabel_keranjang` (
  `idKeranjang` varchar(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` varchar(11) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_komentar`
--

CREATE TABLE `tabel_komentar` (
  `idKomen` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `idProduk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `path` varchar(50) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_produk`
--

INSERT INTO `tabel_produk` (`idProduk`, `nama`, `gambar`, `ukuran`, `keterangan`, `kategori`, `harga`, `stock`, `path`, `size`) VALUES
(21, 'Batik Pria Panjang', '924183c75013ea920be6c475cbd1f1af', 'L', 'Lengan panjang slimfit\r\nBahan cotton\r\nbatik cetak berkualitas', 'pria', 125000, 21, 'image/924183c75013ea920be6c475cbd1f1af.png', 101728),
(22, 'Kemeja Batik Lengan Panjang Pria', '4e7d919d4262dc94bc06ac9b682c7229', 'XL', 'Bahan kualitas premium', 'pria', 150000, 9, 'image/4e7d919d4262dc94bc06ac9b682c7229.png', 48168),
(23, 'Kemeja Batik Pendek', 'dda3ef641dfb9c3f9876da018575c282', 'M', 'Kemeja Batik Pendek M', 'pria', 90000, 12, 'image/dda3ef641dfb9c3f9876da018575c282.png', 77418),
(24, 'Batik Lengan Pendek Premium', 'ab921a552315ec2583aac748af43564e', 'L', 'Kualitas Premium', 'pria', 200000, 6, 'image/ab921a552315ec2583aac748af43564e.png', 46758),
(25, 'Gaun Batik', '767b0ef6ba07802af0ecd619ceb790ee', 'M', 'Gaun Batik Slim', 'wanita', 320000, 12, 'image/767b0ef6ba07802af0ecd619ceb790ee.png', 138829),
(26, 'Gaun  Batik Sebahu', '4e69e603af1d1d5a0bb02388c3594f51', 'S', 'Gaun  Batik Sebahu', 'wanita', 321000, 9, 'image/4e69e603af1d1d5a0bb02388c3594f51.png', 401299),
(27, 'Batik Formal Office', '2737a4e347b11f27c4250c84e136b78a', 'M', 'Batik Formal Office', 'wanita', 230000, 10, 'image/2737a4e347b11f27c4250c84e136b78a.png', 116487),
(28, 'Batik Summer', '3c536a078cf2d79146a9504904dc928c', 'M', 'Batik Summer', 'wanita', 205000, 12, 'image/3c536a078cf2d79146a9504904dc928c.png', 82566),
(29, 'Batik Couple bown', '8a86349b89b85b34c8702bedcd8b6a9b', 'L', 'Batik Couple bown', 'couple', 729000, 12, 'image/8a86349b89b85b34c8702bedcd8b6a9b.png', 96000),
(30, 'Batik Anak', '7063134b3d7463dd8f050beb009c8e6b', 'M', 'Batik Couple Seasi', 'anak', 78000, 8, 'image/7063134b3d7463dd8f050beb009c8e6b.png', 134794),
(31, 'Batik Anak Pria', 'e341f4d8f115c1553eaf91499e96838c', 'L', 'Batik Anak Pria', 'anak', 90000, 13, 'image/e341f4d8f115c1553eaf91499e96838c.png', 312814),
(32, 'Sarimbit', '0d3e2c4a1cec2ed207000ae267710271', 'M', 'Sarimbit', 'sarimbit', 680000, 12, 'image/0d3e2c4a1cec2ed207000ae267710271.png', 86826);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `idUser` varchar(11) NOT NULL,
  `daftarBarang` text NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`idTransaksi`, `idUser`, `daftarBarang`, `tanggal`, `total`) VALUES
(3, '1', '0', '0000-00-00', 2623000),
(4, '1', '0', '2017-06-07', 123000),
(5, '1', '0', '2017-06-07', 100000),
(6, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>, Kategori : sarimbit, Jumlah : 1<br>', '2019-12-05', 223000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_trolly`
--

CREATE TABLE `tabel_trolly` (
  `idTrolly` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_trolly`
--

INSERT INTO `tabel_trolly` (`idTrolly`, `idUser`, `idProduk`, `jumlah`, `harga`) VALUES
(1, 4, 28, 1, 205000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `idUser` int(11) NOT NULL,
  `namaUser` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`idUser`, `namaUser`, `email`, `password`, `alamat`, `telpon`) VALUES
(4, 'Asep', 'asep@outlook.com', 'dc855efb0dc7476760afaa1b281665f1', 'Sukabumi', '087777777777'),
(5, 'user', 'user@user.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Malang', '0897666555');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indeks untuk tabel `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indeks untuk tabel `tabel_keranjang`
--
ALTER TABLE `tabel_keranjang`
  ADD PRIMARY KEY (`idKeranjang`);

--
-- Indeks untuk tabel `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  ADD PRIMARY KEY (`idKomen`);

--
-- Indeks untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- Indeks untuk tabel `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  ADD PRIMARY KEY (`idTrolly`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  MODIFY `idKomen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  MODIFY `idTrolly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
