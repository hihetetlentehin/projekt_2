-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 03:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helixfoglalo`
--

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `F_id` int(10) UNSIGNED NOT NULL,
  `F_Username` varchar(255) NOT NULL,
  `F_password` varchar(255) NOT NULL,
  `F_vnev` varchar(50) CHARACTER SET utf8 NOT NULL,
  `F_knev` varchar(50) NOT NULL,
  `F_email` varchar(100) DEFAULT NULL,
  `F_telszam` varchar(12) DEFAULT NULL,
  `picture` varchar(50) NOT NULL,
  `F_pozicio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`F_id`, `F_Username`, `F_password`, `F_vnev`, `F_knev`, `F_email`, `F_telszam`, `picture`, `F_pozicio`) VALUES
(101, 'qEPYhQdgK', '12345678', 'Ambrus', 'Gábor', 'ambrusgabor@gmail.com', '36530359622', 'pic001.jpg', 'Fotós'),
(102, 'uJS95txKG', '12345678', 'Bakcsi', 'Alexandra', 'bakcsialexandra@gmail.com', '36130392016', 'pic002.jpg', 'Fotós'),
(103, 'EOILMLFSuPYJ', '12345678', 'Bakos', 'László', 'bakoslaszlo@gmail.com', '36716170015', 'pic002.jpg', 'Fotós'),
(104, '5guUvWNSzfXd', '12345678', 'Baranyai', 'Tamás', 'baranyaitamas@gmail.com', '36148447590', 'pic003.jpg', 'Fotós'),
(105, 'Hnea5T13f', '12345678', 'Bécsii', 'Evelin', 'becsievelin@gmail.com', '3640748681', 'pic004.jpg', 'Fotós'),
(106, 'gI3QrOYgz', '12345678', 'Benedek', 'Bálint', 'benedekbalint@gmail.com', '36535808701', 'pic005.jpg', 'Fotós'),
(107, 'KDBiNHKBq3o', '12345678', 'Bradics', 'Péter', 'bradicspeter@gmail.com', '36327862011', 'pic006.jpg', 'Fotós'),
(108, '7H4mZBwjQXIT', '12345678', 'Csete', 'Martin', 'csetemartin@gmail.com', '36448718805', 'pic007.jpg', 'Fotós'),
(109, '3efHchGadKr', '12345678', 'Csillag', 'Bence', 'csillagbence@gmail.com', '36530453099', 'pic008.jpg', 'Fotós'),
(110, 'bfgqT01w', '12345678', 'Fülöp', 'András', 'fulopandras@gmail.com', '3652365964', 'pic009.jpg', 'Fotós'),
(111, '745EGv0Sy', '12345678', 'Gyergyói', 'Réka', 'gyergyoireka@gmail.com', '36630807159', 'pic010.jpg', 'Fotós'),
(112, 'P89gI1P', '12345678', 'Jáger', 'Dávid', 'jagerdavid@gmail.com', '36724730190', 'pic011.jpg', 'Videós'),
(113, 'WWgFokJDXP78', '12345678', 'Kürtösi', 'Janka', 'kurtosijanka@gmail.com', '3644516810', 'pic012.jpg', 'Fotós'),
(114, 'TWeQLr', '12345678', 'Makay', 'Bálint', 'makaybalint@gmail.com', '36624016642', 'pic013.jpg', 'Videós'),
(115, 'GEpfiIw', '12345678', 'Marics', 'Tamás', 'maricstamas@gmail.com', '36714033407', 'pic014.jpg', 'Fotós'),
(116, 'Rp3JlM94WCXx', '12345678', 'Németh', 'Gergely', 'nemethgergely@gmail.com', '36424003309', 'pic015.jpg', 'Fotós'),
(117, 'lvf6rvY5qU0f', '12345678', 'Szatmáry', 'Csenge', 'szatmarycsenge@gmail.com', '36112125209', 'pic016.jpg', 'Fotós'),
(118, 'gwmLRfROY', '12345678', 'Tian', 'Yubo', 'tianyubo@gmail.com', '36121351884', 'pic017.jpg', 'Videós'),
(119, 'SCsE9c', '12345678', 'Vitéz', 'Marcell', 'vitezmarcell@gmail.com', '3625891504', 'pic018.jpg', 'Fotós'),
(120, '5aAsSe4mtgN1', '12345678', 'Szép', 'Kornél', 'szepkornel@gmail.com', '3639119090', 'pic019.jpg', 'Fotós'),
(121, 'gzx2U3', '12345678', 'Sándor', 'Bernát', 'teszt@teszt.hu', '36301234567', 'pic021.jpg', 'Fotós'),
(122, 'HmDiGt', '12345678', 'Sersztnyev', 'Kitti', 'teszt@teszt.hu', '36301234567', 'pic022.jpg', 'Fotós'),
(123, '5Dlsgwai5Ft9', '12345678', 'Szabó', 'Enikő', 'teszt@teszt.hu', '36301234567', 'pic023.jpg', 'Fotós'),
(124, 'jckUQhFbdbi', '12345678', 'Szatmáry', 'Csenge', 'teszt@teszt.hu', '36301234567', 'pic024.jpg', 'Fotós'),
(125, 'lQexkkf', '12345678', 'Tamás', 'Lilian', 'teszt@teszt.hu', '36301234567', 'pic026.jpg', 'Fotós');

-- --------------------------------------------------------

--
-- Table structure for table `rendezveny`
--

CREATE TABLE `rendezveny` (
  `r_id` int(11) NOT NULL,
  `r_nev` varchar(1000) NOT NULL,
  `helyszin` varchar(1000) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `fotos_1` int(10) UNSIGNED NOT NULL,
  `fotos_2` int(10) UNSIGNED DEFAULT NULL,
  `fotos_3` int(10) UNSIGNED DEFAULT NULL,
  `videos_1` int(10) UNSIGNED DEFAULT NULL,
  `videos_2` int(10) UNSIGNED DEFAULT NULL,
  `megrendelo_NK` char(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `NK` varchar(6) NOT NULL,
  `U_password` varchar(255) NOT NULL,
  `U_vnev` varchar(50) NOT NULL,
  `U_knev` varchar(50) NOT NULL,
  `szak` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tszam` tinyint(255) UNSIGNED NOT NULL,
  `isadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`F_id`),
  ADD UNIQUE KEY `Username` (`F_Username`);

--
-- Indexes for table `rendezveny`
--
ALTER TABLE `rendezveny`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `fotos` (`fotos_1`),
  ADD KEY `fotos2` (`fotos_2`),
  ADD KEY `fotos3` (`fotos_3`),
  ADD KEY `videos` (`videos_1`),
  ADD KEY `videos2` (`videos_2`),
  ADD KEY `user` (`megrendelo_NK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`NK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `F_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `rendezveny`
--
ALTER TABLE `rendezveny`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rendezveny`
--
ALTER TABLE `rendezveny`
  ADD CONSTRAINT `fotos` FOREIGN KEY (`fotos_1`) REFERENCES `fotos` (`F_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fotos2` FOREIGN KEY (`fotos_2`) REFERENCES `fotos` (`F_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fotos3` FOREIGN KEY (`fotos_3`) REFERENCES `fotos` (`F_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`megrendelo_NK`) REFERENCES `user` (`NK`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
