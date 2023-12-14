-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Des 2023 pada 03.54
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
-- Database: `perpustakaan_digital`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `kategori_buku` varchar(255) NOT NULL,
  `tahun_terbit_buku` int(11) NOT NULL,
  `penulis_buku` varchar(255) NOT NULL,
  `penerbit_buku` varchar(255) NOT NULL,
  `gambar_buku` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `nama_buku`, `kategori_buku`, `tahun_terbit_buku`, `penulis_buku`, `penerbit_buku`, `gambar_buku`) VALUES
(1, 'Tentang Kamu', 'Manga, Fiksi fantasi', 2016, 'Tere Liye', 'Republika', 'https://live.staticflickr.com/6010/6002326133_0acce48be6_m.jpg'),
(4, 'Dilan 1990', 'Novel', 2014, 'Pidi Baiq', 'Pastel Books', 'data:image/jpeg;base64,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'),
(5, 'Solo Leveling II', 'Novel', 2021, 'Chu-Gong', 'Clover', 'https://cdn.gramedia.com/uploads/items/Cover-Solo_Leveling_2-INA.jpg'),
(6, 'Negeri Di Ujung Tanduk', 'Novel', 2013, 'Tere Liye', 'Gramedia Pustaka Utama', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1362818782i/17566144.jpg'),
(7, 'Dasar-dasar Pemrograman WEB', 'Akademik', 0, 'Sandika Galih & Acep Hendra', 'Inkara', 'https://i0.wp.com/toko.inkara.co.id/wp-content/uploads/2023/08/CoverWEB-depan-scaled.jpg?fit=1811%2C2560&ssl=1'),
(8, 'Negeri Para Bedebah', 'Novel', 2023, 'Tere Liye', 'Sabak Grip', 'https://cdn.gramedia.com/uploads/picture_meta/2023/4/10/hwwjhrajpbdc4ctutxpzxa.jpg'),
(9, 'Matematika Diskrit', 'Akademik', 2008, 'Samuel Wibisono', 'Graha Ilmu', 'https://inlislite.uin-suska.ac.id/uploaded_files/sampul_koleksi/original/Monograf/1143.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;