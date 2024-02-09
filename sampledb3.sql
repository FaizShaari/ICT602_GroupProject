-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 09:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampledb3`
--

-- --------------------------------------------------------

--
-- Table structure for table `maklumat`
--

CREATE TABLE `maklumat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lat` decimal(10,4) NOT NULL,
  `lng` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maklumat`
--

INSERT INTO `maklumat` (`id`, `name`, `description`, `lat`, `lng`) VALUES
(1, 'Desaru Coast Adventure Water Park', 'Johor', '1.5381', '104.2629'),
(2, 'Pulau Rawa', 'Johor', '2.5204', '103.9715'),
(3, 'Pulau Sibu', 'Johor', '2.2150', '104.0531'),
(4, 'Pantai Desaru', 'Johor', '1.5403', '104.2505'),
(5, 'Taman Negara Endau-Rompin', 'Johor', '2.4719', '103.2663'),
(6, 'Legoland Malaysia Resort', 'Johor', '1.4274', '103.6303'),
(7, 'Kulim Eco Trail Retreat', 'Johor', '1.6539', '103.9271'),
(8, 'Taman Negara Tanjung Piai', 'Johor', '1.2681', '103.5087'),
(9, 'Zoo Johor (Johor Safari Park)', 'Johor', '1.4575', '103.7522'),
(10, 'Austin Heights Water & Adventure Park', 'Johor', '1.5621', '103.7757'),
(11, 'KUSO 3D Art Gallery', 'Johor', '1.5508', '103.7852'),
(12, 'Bazaar Johor (Bazaar Karat)', 'Johor', '1.4582', '103.7641'),
(13, 'Johor Premium Outlet (JPO)', 'Johor', '1.6037', '103.6217'),
(14, 'Nasuha Herbs & Spice Farm', 'Johor', '2.1287', '102.7043'),
(15, 'Taman Buaya Teluk Sengat', 'Johor', '1.5651', '104.0264'),
(16, 'Air Terjun Kota Tinggi', 'Johor', '1.8289', '103.8275'),
(17, 'Kluang Coffee Powder Factory', 'Johor', '2.0220', '103.3247'),
(18, 'Danga Bay', 'Johor', '1.4774', '103.7238'),
(19, 'Rock World', 'Johor', '1.5795', '103.7290'),
(20, 'LOST in JB Escape Room', 'Johor', '1.5612', '103.7793'),
(21, 'Desaru Ostrich Farm', 'Johor', '1.3689', '104.2393'),
(22, 'Angry Bird Activity Park', 'Johor', '1.4629', '103.7635'),
(23, 'Puteri Harbour Indoor Theme Park', 'Johor', '1.4162', '103.6569'),
(24, 'Hutan Bandar MBJB', 'Johor', '1.4827', '103.7447'),
(25, 'Taman Negara Pulau Kukup', 'Johor', '1.3272', '103.4343'),
(26, 'Nanyang Fish Farm', 'Johor', '1.6978', '103.4888'),
(27, 'Laman Mahkota Istana Bukit Serene', 'Johor', '1.4804', '103.7226'),
(28, 'Masjid Sultan Abu Bakar', 'Johor', '1.4572', '103.7513'),
(29, 'Taman Rekreasi Tanjung Emas', 'Johor', '2.0476', '102.5555'),
(30, 'Taman Hutan Lagenda Gunung Ledang', 'Johor', '2.3417', '102.6173'),
(31, 'Muzium Nelayan Tanjung Balau', 'Johor', '1.6148', '104.2579'),
(32, 'Desaru Fruit Farm', 'Johor', '1.5839', '104.1935'),
(33, 'Pantai Stulang Laut', 'Johor', '1.4691', '103.7789'),
(34, 'Pantai Minyak Beku', 'Johor', '1.7950', '102.8879'),
(35, 'Gunung Lambak', 'Johor', '2.0250', '103.3422'),
(36, 'Hutan Lipur Gunung Pulai 2', 'Johor', '1.5923', '103.5106'),
(37, 'Pantai Air Papan', 'Johor', '2.5201', '103.8285'),
(38, 'Wet World Batu Pahat Village Resort', 'Johor', '1.8816', '102.9453'),
(39, 'Penggaram Square Batu Pahat', 'Johor', '1.8476', '102.9348'),
(40, 'Puteri Harbour Marina', 'Johor', '1.4171', '103.6583'),
(41, 'Muzium Bugis Pontian', 'Johor', '1.4280', '103.4118'),
(42, 'Muzium Kota Johor Lama', 'Johor', '1.5807', '104.0178'),
(43, 'Muzium Layang-Layang Pasir Gudang', 'Johor', '1.4750', '103.9064'),
(44, 'Muzium Tokoh Johor', 'Johor', '1.4723', '103.7655'),
(45, 'Muzium Mersing', 'Johor', '2.4327', '103.8397'),
(46, 'Taman Merdeka', 'Johor', '1.4794', '103.7359'),
(47, 'Kolam Air Panas Sungai Gersik', 'Johor', '1.9410', '102.7422'),
(48, 'Don Hu Jurassic Park Muar', 'Johor', '2.0802', '102.5677'),
(49, 'Laser Battle Experience in Johor Bahru', 'Johor', '1.4623', '103.7634'),
(50, 'Gunung Lambak Waterpark', 'Johor', '2.0260', '103.3445'),
(51, 'ATV Park Johor', 'Johor', '1.5705', '103.6341'),
(52, 'Kota Tinggi Firefly Park', 'Johor', '1.7268', '103.9113'),
(53, 'UK Farm Agro Resort', 'Johor', '2.0181', '103.2187'),
(54, 'Taman Laut Sultan Iskandar (TLSI)', 'Johor', '2.4513', '104.1056'),
(55, 'Galeri Darurat Bukit Kepong', 'Johor', '1.5393', '104.2599'),
(56, 'Pineapple Museum', 'Johor', '1.5070', '103.4448'),
(57, 'Pulau Pangkor', 'Perak', '4.2110', '100.5666'),
(58, 'The Haven Resort Hotel', 'Perak', '4.6372', '101.1627'),
(59, 'Sunway Lost World of Tambun', 'Perak', '4.6250', '101.1549'),
(60, 'Sungai Klah Hotspring', 'Perak', '3.9979', '101.3937'),
(61, 'Masjid Diraja Ubudiah', 'Perak', '4.7642', '100.9511'),
(62, 'Zoo Taiping dan Night Safari', 'Perak', '4.8549', '100.7497'),
(63, 'Pangkor Laut Resort', 'Perak', '4.1965', '100.5437'),
(64, 'Taman Rekreasi Gunung Lang', 'Perak', '4.6288', '101.0910'),
(65, 'Muzium Perak Taiping', 'Perak', '4.8610', '100.7452'),
(66, 'Kellie\'s Castle', 'Perak', '4.4744', '101.0877'),
(67, 'Sultan Azlan Shah Gallery', 'Perak', '4.7664', '100.9482'),
(68, 'Bukit Merah Lake Town Resort', 'Perak', '4.9947', '100.6601'),
(69, 'Tasik Banding ', 'Perak', '5.5453', '101.3401'),
(70, 'Pulau Orang Utan', 'Perak', '5.0087', '100.6756'),
(71, 'Ladang Anggur Saloma', 'Perak', '4.1503', '100.7246'),
(72, 'Teluk Senangin', 'Perak', '4.2996', '100.5799'),
(73, 'Pantai Teluk Batik', 'Perak', '4.1876', '100.6074'),
(74, 'Menara Condong Teluk Intan', 'Perak', '4.0251', '101.0193'),
(75, 'Bukit Larut (Maxwell Hill)', 'Perak', '4.8619', '100.7931'),
(76, 'Belum Rainforest Resort', 'Perak', '5.5436', '101.3407'),
(77, 'Taman Tasik Taiping', 'Perak', '4.8525', '100.7495'),
(78, 'Kuala Sepetang', 'Perak', '4.8348', '100.6278'),
(79, 'Muzium Geologi Ipoh', 'Perak', '4.5976', '101.1198'),
(80, 'Gua Tempurung', 'Perak', '4.4161', '101.1877'),
(81, 'Kledang Saiong Forest Eco Park', 'Perak', '4.6839', '101.0685'),
(82, 'Lata Ulu Chepor', 'Perak', '4.7005', '101.0773'),
(83, 'Pasar Karat Ipoh', 'Perak', '4.5960', '101.0901'),
(84, 'Muzium Arkeologi Lenggong', 'Perak', '5.0548', '100.9741'),
(85, 'The Banjaran Hotsprings Retreat', 'Perak', '4.6311', '101.1561'),
(86, 'Kek Long Tong Cave Temple', 'Perak', '4.5590', '101.1294'),
(87, 'Tasik Cermin Gunung Rapat', 'Perak', '4.5589', '101.1201'),
(88, 'Masjid Sultan Idris Shah II', 'Perak', '4.5964', '101.0758'),
(89, 'Masjid Muhammadiyah Ipoh', 'Perak', '4.6496', '101.1073'),
(90, 'Air Terjun Lata Iskandar', 'Perak', '4.3242', '101.3256'),
(91, 'Bukit Kledang', 'Perak', '4.5804', '101.0253'),
(92, 'Ladang Limau Tambun GOChin', 'Perak', '4.5648', '101.1137'),
(93, 'Air Terjun Ulu Kenas', 'Perak', '4.6869', '100.8857'),
(94, 'Air Terjun Lata Kinjang', 'Perak', '4.2988', '101.2540'),
(95, 'Taman Eko Rimba Lata Kekabu', 'Perak', '5.0504', '100.9448'),
(96, 'Riverside Camp Gopeng', 'Perak', '4.4478', '101.1984'),
(97, 'Pusat Rekreasi Hotsprings Lubuk Timah', 'Perak', '4.5597', '101.1620'),
(98, 'Swiss-Garden Beach Resort Damai Laut', 'Perak', '4.2601', '100.5917'),
(99, 'Kubu Belanda', 'Perak', '4.2008', '100.5760'),
(100, 'Lata Tebing Tinggi', 'Perak', '5.2062', '100.7811'),
(101, 'Ulu River Lodge', 'Perak', '4.4439', '101.1989'),
(102, 'Trong Hotspring', 'Perak', '4.7526', '100.7211'),
(103, 'Ipoh Mural Art Trail', 'Perak', '4.5953', '101.0786'),
(104, 'Marina Island Pangkor Resort', 'Perak', '4.2103', '100.6039'),
(105, 'Kem As Salam', 'Perak', '5.2578', '100.8438'),
(106, 'Kem Ayer Hitam, Batu Kurau', 'Perak', '5.0183', '100.8320'),
(107, 'Spritzer Eco Park', 'Perak', '4.8208', '100.7520'),
(108, 'Perak Agrotourism Resort', 'Perak', '4.2547', '101.0428'),
(109, 'Kompleks Sejarah Pasir Salak', 'Perak', '4.1735', '100.9469'),
(110, 'Pusat Konservasi Penyu Segari', 'Perak', '4.3630', '100.5814'),
(111, 'Refarm', 'Perak', '4.2706', '101.1702'),
(112, 'Victoria Bridge', 'Perak', '4.8377', '100.9638');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `maklumat`
--
ALTER TABLE `maklumat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maklumat`
--
ALTER TABLE `maklumat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
