-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 10:35 AM
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
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_hardware`
--

CREATE TABLE `data_hardware` (
  `kode` varchar(5) NOT NULL,
  `nama_hardware` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_hardware`
--

INSERT INTO `data_hardware` (`kode`, `nama_hardware`) VALUES
('J0001', 'Motherboard'),
('J0002', 'Processor'),
('J0003', 'Memory'),
('J0004', 'Kipas (FAN)'),
('J0005', 'Monitor'),
('J0006', 'Hardisk'),
('J0007', 'CD / DVD'),
('J0008', 'VGA'),
('J0009', 'Keyboard'),
('J0010', 'Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kode_hardware` varchar(5) DEFAULT NULL,
  `gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kode_hardware`, `gejala`) VALUES
(1, 'J0001', 'Tidak ada tampilan di layar'),
(2, 'J0001', 'Komputer tidak menyala'),
(3, 'J0001', 'Terdengar bunyi beep berulang'),
(4, 'J0001', 'USB tidak terdeteksi'),
(5, 'J0001', 'BIOS tidak bisa diakses'),
(6, 'J0002', 'Komputer lambat'),
(7, 'J0002', 'Komputer sering restart'),
(8, 'J0002', 'Suhu prosesor tinggi'),
(9, 'J0002', 'Prosesor tidak terdeteksi'),
(10, 'J0002', 'Komputer tidak bisa booting'),
(11, 'J0003', 'Komputer sering hang'),
(12, 'J0003', 'Blue screen of death (BSOD)'),
(13, 'J0003', 'Memori tidak terdeteksi'),
(14, 'J0003', 'Aplikasi sering crash'),
(15, 'J0003', 'Kinerja komputer lambat'),
(16, 'J0004', 'Suara kipas terlalu bising'),
(17, 'J0004', 'Kipas tidak berputar'),
(18, 'J0004', 'Komputer terlalu panas'),
(19, 'J0004', 'Suhu prosesor tinggi'),
(20, 'J0004', 'Kipas berputar tidak stabil'),
(21, 'J0005', 'Layar berkedip'),
(22, 'J0005', 'Tidak ada tampilan'),
(23, 'J0005', 'Warna tampilan tidak normal'),
(24, 'J0005', 'Resolusi layar tidak sesuai'),
(25, 'J0005', 'Monitor mati sendiri'),
(26, 'J0006', 'Hardisk tidak terdeteksi'),
(27, 'J0006', 'Suara hardisk berisik'),
(28, 'J0006', 'Komputer lambat saat mengakses data'),
(29, 'J0006', 'Terdapat bad sector'),
(30, 'J0006', 'Kapasitas hardisk tidak sesuai'),
(31, 'J0007', 'CD / DVD tidak terbaca'),
(32, 'J0007', 'Suara drive CD / DVD berisik'),
(33, 'J0007', 'Tray CD / DVD tidak bisa dibuka'),
(34, 'J0007', 'CD / DVD tidak bisa di-eject'),
(35, 'J0007', 'Proses baca CD / DVD lambat'),
(36, 'J0008', 'Tidak ada tampilan di layar'),
(37, 'J0008', 'Tampilan layar berbayang'),
(38, 'J0008', 'Tampilan layar pecah-pecah'),
(39, 'J0008', 'Resolusi tidak sesuai'),
(40, 'J0008', 'Komputer tidak bisa masuk ke sistem operasi'),
(41, 'J0009', 'Keyboard tidak terdeteksi'),
(42, 'J0009', 'Beberapa tombol tidak berfungsi'),
(43, 'J0009', 'Keyboard mengetik sendiri'),
(44, 'J0009', 'Keyboard lambat merespon'),
(45, 'J0009', 'Tombol keyboard macet'),
(46, 'J0010', 'Mouse tidak terdeteksi'),
(47, 'J0010', 'Gerakan kursor tidak stabil'),
(48, 'J0010', 'Tombol klik tidak berfungsi'),
(49, 'J0010', 'Kursor tidak bergerak'),
(50, 'J0010', 'Mouse pointer melompat-lompat');

-- --------------------------------------------------------

--
-- Table structure for table `solusi`
--

CREATE TABLE `solusi` (
  `id` int(11) NOT NULL,
  `id_gejala` int(11) DEFAULT NULL,
  `solusi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `solusi`
--

INSERT INTO `solusi` (`id`, `id_gejala`, `solusi`) VALUES
(1, 1, 'Periksa kabel VGA dan koneksi monitor'),
(2, 2, 'Periksa koneksi power supply dan kabel listrik'),
(3, 3, 'Cek dan ganti RAM jika diperlukan'),
(4, 4, 'Periksa driver USB dan port USB'),
(5, 5, 'Reset BIOS dengan melepas baterai CMOS'),
(6, 6, 'Bersihkan kipas prosesor dan heatsink'),
(7, 7, 'Cek dan pastikan RAM terpasang dengan benar'),
(8, 8, 'Ganti thermal paste pada prosesor'),
(9, 9, 'Periksa socket prosesor di motherboard'),
(10, 10, 'Update BIOS ke versi terbaru'),
(11, 11, 'Bersihkan slot RAM dan RAM itu sendiri'),
(12, 12, 'Cek kompatibilitas RAM dengan motherboard'),
(13, 13, 'Ganti modul RAM yang rusak'),
(14, 14, 'Periksa kondisi software dan driver'),
(15, 15, 'tambahkan ram atau upgrade ke ssd'),
(16, 16, 'Bersihkan kipas dari debu dan kotoran'),
(17, 17, 'Cek koneksi power kipas'),
(18, 18, 'Tambahkan kipas pendingin tambahan'),
(19, 19, 'Ganti kipas dengan yang baru jika rusak'),
(20, 20, 'Periksa kecepatan kipas di BIOS'),
(21, 21, 'Periksa kabel VGA/HDMI'),
(22, 22, 'Cek power supply monitor'),
(23, 23, 'Kalibrasi warna monitor melalui pengaturan'),
(24, 24, 'Setel ulang resolusi layar di sistem operasi'),
(25, 25, 'Periksa kondisi fisik monitor'),
(26, 26, 'Cek koneksi kabel SATA/IDE'),
(27, 27, 'Gunakan utilitas cek kesehatan hardisk'),
(28, 28, 'Defrag hardisk untuk meningkatkan performa'),
(29, 29, 'Gunakan software untuk cek dan perbaiki bad sector'),
(30, 30, 'Periksa pengaturan partisi di sistem operasi'),
(31, 31, 'Bersihkan lensa CD / DVD drive'),
(32, 32, 'Periksa koneksi power dan data ke drive'),
(33, 33, 'Gunakan paperclip untuk membuka tray secara manual'),
(34, 34, 'Periksa driver CD / DVD di Device Manager'),
(35, 35, 'Ganti CD / DVD drive jika diperlukan'),
(36, 36, 'Periksa koneksi kabel VGA/HDMI'),
(37, 37, 'Update driver VGA ke versi terbaru'),
(38, 38, 'Ganti kartu VGA jika rusak'),
(39, 39, 'Setel ulang resolusi melalui pengaturan sistem'),
(40, 40, 'Cek dan perbaiki registry sistem'),
(41, 41, 'Periksa koneksi keyboard ke komputer'),
(42, 42, 'Bersihkan keyboard dari debu dan kotoran'),
(43, 43, 'Cek apakah ada tombol yang tertekan terus'),
(44, 44, 'Update driver keyboard di Device Manager'),
(45, 45, 'Ganti keyboard jika ada kerusakan fisik'),
(46, 46, 'Periksa koneksi mouse ke komputer'),
(47, 47, 'Ganti mouse pad jika rusak'),
(48, 48, 'Update driver mouse di Device Manager'),
(49, 49, 'Cek apakah ada debu di sensor mouse'),
(50, 50, 'Ganti mouse jika tidak berfungsi dengan baik');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_hardware`
--
ALTER TABLE `data_hardware`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_hardware` (`kode_hardware`);

--
-- Indexes for table `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `solusi`
--
ALTER TABLE `solusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`kode_hardware`) REFERENCES `data_hardware` (`kode`);

--
-- Constraints for table `solusi`
--
ALTER TABLE `solusi`
  ADD CONSTRAINT `solusi_ibfk_1` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
