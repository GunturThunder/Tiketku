-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 02:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking`
--

CREATE TABLE `tb_booking` (
  `id_booking` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `number_visitors` int(11) NOT NULL,
  `unit_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_booking`
--

INSERT INTO `tb_booking` (`id_booking`, `id_user`, `id_hotel`, `total_price`, `check_in`, `check_out`, `number_visitors`, `unit_room`) VALUES
(1, 1, 1, 600000, '2020-03-15', '2020-03-17', 2, 2),
(5, 1, 2, 300000, '2020-03-18', '2020-03-19', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hotel`
--

CREATE TABLE `tb_hotel` (
  `id_hotel` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_location` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `hotel_cover` varchar(100) NOT NULL,
  `hotel_description` varchar(1000) NOT NULL,
  `hotel_price` int(11) NOT NULL,
  `free_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_hotel`
--

INSERT INTO `tb_hotel` (`id_hotel`, `hotel_name`, `hotel_location`, `city`, `hotel_cover`, `hotel_description`, `hotel_price`, `free_room`) VALUES
(1, 'Whiz Hotel Pajajaran Bogor', 'Jl Cikurai - Pajajaran No 47, Padjajaran, Bogor, Jawa Barat, Indonesia, 16128', 'Bogor', 'http://192.168.1.22:8282/v1/images/2fqtd74wk7srukwu.jpg', 'Tersedia kolam renang untuk Anda bersantai sendiri maupun bersama teman dan keluarga.\r\n\r\nManjakan diri Anda dengan menikmati fasilitas spa yang memberikan harga dan kualitas pelayanan terbaik.\r\n\r\nResepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain. Jangan ragu untuk menghubungi resepsionis, kami siap melayani Anda.\r\n\r\nTerdapat restoran yang menyajikan menu lezat ala Whiz Prime Hotel Pajajaran Bogor khusus untuk Anda.\r\n\r\nWiFi tersedia di seluruh area publik properti untuk membantu Anda tetap terhubung dengan keluarga dan teman.', 310000, 40),
(2, 'Horison Ultima Bandung', 'Jl. Pelajar Pejuang 45 No. 121, Lengkong, Bandung, Jawa Barat, Indonesia, 40262', 'Bandung', 'http://192.168.1.22:8282/v1/images/2fqtd74wk7ssvc60.jpg', 'Hotel Horison Bandung merupakan tempat nyaman dan representatif untuk liburan bersama keluarga. Sejumlah fasilitas dan layanan eksklusif dihadirkan untuk menunjang keperluan para tamu, khususnya anak-anak. Beragam aktivitas kreatif diadakan ketika musim liburan sekolah.\r\n\r\nHorison Hotel Bandung berlokasi di Jalan Pelajar Pejuang No. 45, hanya 30 menit jika ditempuh dari pusat kota. Bangunannya memiliki arsitektur kekinian yang terdiri dari 10 lantai dengan 253 kamar klasik bergaya modern.', 300000, 40),
(3, 'MaxOne Ascent Hotel Malang', 'Jl. Jaksa Agung Suprapto 75A Malang, Klojen, Malang, Jawa Timur, Indonesia, 65111', 'Malang', 'http://192.168.1.22:8282/v1/images/2fqtd74wk7ssyajs.jpg', 'Tersedia kolam renang untuk Anda bersantai sendiri maupun bersama teman dan keluarga.\r\n\r\nResepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain. Jangan ragu untuk menghubungi resepsionis, kami siap melayani Anda.\r\n\r\nTerdapat restoran yang menyajikan menu lezat ala MaxOne Ascent Hotel Malang khusus untuk Anda.\r\n\r\nWiFi tersedia di seluruh area publik properti untuk membantu Anda tetap terhubung dengan keluarga dan teman.\r\n\r\nMaxOne Ascent Hotel Malang adalah akomodasi dengan fasilitas baik dan kualitas pelayanan memuaskan menurut sebagian besar tamu.\r\n\r\nDengan fasilitas yang memadai, MaxOne Ascent Hotel Malang menjadi pilihan yang tepat untuk menginap.', 340000, 40),
(4, 'Amanda Hills Bandungan', 'Jl. Nusa Indah, Bandungan, Semarang, Jawa Tengah', 'Semarang', 'http://192.168.1.22:8282/v1/images/2fqtd5ogk7ulyfem.jpeg', 'Berada di kawasan pegunungan Semarang, menawarkan penginapan yang menyatu dengan alam.', 250000, 30),
(5, 'Louis Kienne Star', 'Jalan Ahmad Yani No. 137, Salatiga, Jawa Tengah, Indonesia, 50241', 'Salatiga', 'http://192.168.1.22:8282/v1/images/2fqtddhkk7xcqrct.jpg', '\r\nCheck-in and Check-out Time\r\nCheck-in: Dari 14:00\r\nCheck-out: Sebelum 12:00\r\n\r\nLokasi\r\nMenginap di Louis Kienne Hotel saat anda sedang berada di Salatiga Tengah adalah sebuah pilihan cerdas.\r\n\r\nLokasi hotel sangat strategis karena hanya berjarak 5,83 km dengan Bandar Udara Internasional Achmad Yani (SRG).\r\n\r\nDari Stasiun Semarang Poncol , hotel ini hanya berjarak sekitar 2,27 km.\r\n\r\nhotel ini cukup mudah dijangkau karena berdekatan dengan fasilitas publik.\r\n\r\nTentang Louis Kienne Hotel Simpang Lima\r\n\r\nLouis Kienne Hotel Simpang Lima memiliki segala fasilitas penunjang bisnis untuk Anda dan kolega.', 450000, 30),
(6, 'Grand Inna Samudra Beach', 'Jalan Raya Cisolok KM 7 Palabuhanratu , Pelabuhan Ratu, Sukabumi, Jawa Barat, Indonesia, 43365', 'Sukabumi', 'http://192.168.1.22:8282/v1/images/2fqtddhkk7xe5hr7.jpg', 'Grand Inna Samudra Beach adalah hotel di lokasi yang baik, tepatnya berada di Pelabuhan Ratu.\n\nSelain letaknya yang strategis, Grand Inna Samudra Beach juga merupakan hotel dekat Pantai Citepus berjarak sekitar 3,06 km dan Pantai Karang Pamulang berjarak sekitar 4,29 km..\n\nTentang Grand Inna Samudra Beach\n\nhotel ini adalah pilihan yang pas jika Anda mencari liburan yang tenang dan jauh dari keramaian.\n\nPengalaman menginap Anda tak akan terlupakan berkat pelayanan istimewa yang disertai oleh berbagai fasilitas pendukung untuk kenyamanan Anda.\n\nTersedia kolam renang untuk Anda bersantai sendiri maupun bersama teman dan keluarga.\n\nResepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain. Jangan ragu untuk menghubungi resepsionis, kami siap melayani Anda.\n\nTerdapat restoran yang menyajikan menu lezat ala Grand Inna Samudra Beach khusus untuk Anda.', 620000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hotel_images`
--

CREATE TABLE `tb_hotel_images` (
  `id_hi` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_hotel_images`
--

INSERT INTO `tb_hotel_images` (`id_hi`, `id_hotel`, `image`) VALUES
(1, 2, 'http://192.168.1.22:8282/v1/images/2fqtd5x0k7u6wusq.jpg'),
(2, 2, 'http://192.168.1.22:8282/v1/images/2fqtd5x0k7u7fnpd.jpg'),
(3, 1, 'http://192.168.1.22:8282/v1/images/2fqtd5x0k7u7mxcl.jpg'),
(4, 1, 'http://192.168.1.22:8282/v1/images/2fqtd5x0k7u7nntp.jpg'),
(5, 1, 'http://192.168.1.22:8282/v1/images/2fqtd5x0k7u7pfup.jpg'),
(6, 3, 'http://192.168.1.22:8282/v1/images/2fqtd5x0k7u7sr3r.jpg'),
(7, 3, 'http://192.168.1.22:8282/v1/images/2fqtd5x0k7u7t1mo.jpeg'),
(8, 4, 'http://192.168.1.22:8282/v1/images/2fqtd5ogk7ulzgjl.jpg'),
(9, 4, 'http://192.168.1.22:8282/v1/images/2fqtd5ogk7ulzolp.jpg'),
(10, 5, 'http://192.168.1.22:8282/v1/images/2fqtddhkk7xcy0rn.jpeg'),
(11, 5, 'http://192.168.1.22:8282/v1/images/2fqtddhkk7xcyc99.jpg'),
(12, 6, 'http://192.168.1.22:8282/v1/images/2fqtddhkk7xe6350.jpg'),
(13, 6, 'http://192.168.1.22:8282/v1/images/2fqtddhkk7xe6hgc.jpg'),
(14, 2, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y59edr.jpg'),
(15, 2, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y59o9r.jpg'),
(16, 3, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y5cz41.jpg'),
(17, 3, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y5dbft.jpg'),
(18, 4, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y5fw2y.jpg'),
(19, 5, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y5jhwa.jpg'),
(20, 5, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y5jqal.jpg'),
(21, 6, 'http://192.168.1.22:8282/v1/images/2fqtd6vok7y5mp5k.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` enum('Man','Woman') NOT NULL,
  `phone_number` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `OTP` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `name_user`, `email`, `salt`, `password`, `address`, `gender`, `phone_number`, `created_at`, `updated_at`, `OTP`) VALUES
(1, 'andi irsandi123', 'andi@irsandi.com', '8fc0cf5a4894049a8c', '82b63937c4db8bb5ed2c7ca4af7b61f226d34814661ae113826137429a343eb07af7815894b0aac2733cd674d9229988a839c850da650dff281a9f6c077ded8c', 'Jl. Sukasari III', 'Man', '082290001995', '2020-03-27 10:26:33', '2020-03-14 04:44:48', 4781),
(3, 'sandirr', 'github@mail.co', '5cef8f9d2bce7e94d3', '98f227a740e73885eaf71cd14dafa325c7f32225df2987c849f9ec91f46708695f81d19ad3db2d3d63bf16d129b74f1770ae1018410cc68aed7e4c9830cacc02', 'bogor timur', 'Woman', '08229001996', '2020-03-17 10:56:07', '2020-03-17 10:56:07', NULL),
(5, 'guntur', 'gangkasa888@gmail.com', '583a2cc986ae4ade11', '7a6b1de85a0690e11c78aab724d5e659752955b91a2eb3dc99e1e1cc9d29d1f26ddfd5f309cd17e80551a1ac52f934fd89aa85705a2a9e90a738d831cdeefa3f', 'Jl. Cempaka', '', '08123456789', '2020-03-26 13:47:25', '2020-03-26 13:47:25', NULL),
(6, 'guntur', 'gangkasa8@gmail.com', '2a0953d7e9a9f7866f', '67ef2d238a1bf9747db62aa98ee222fa5fbf4f67e5be1a38957e5e214d7a6a59614d8af4e94327abbc3e464fe70a5a2ace94c9d461eacfbcd651a2910bc4ebb2', 'Jl. Cempaka', '', '085654041234', '2020-03-26 14:01:57', '2020-03-26 14:01:57', NULL),
(7, 'arda', 'arda@gmail.com', '1b681b4c2534d7aa2e', '2e65d631638b9fcc853dac72f761cddd373b20bed6112b2931c08e97bcb0e762de259bf95b1137a0bf7ea09bd6b8eff621da608a4541c2e30de9a694854308ab', 'Bogor', 'Woman', '081234567890', '2020-03-26 14:55:04', '2020-03-26 14:55:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `tb_hotel`
--
ALTER TABLE `tb_hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `tb_hotel_images`
--
ALTER TABLE `tb_hotel_images`
  ADD PRIMARY KEY (`id_hi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_booking`
--
ALTER TABLE `tb_booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_hotel`
--
ALTER TABLE `tb_hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_hotel_images`
--
ALTER TABLE `tb_hotel_images`
  MODIFY `id_hi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
