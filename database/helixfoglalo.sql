-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 12:09 PM
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
  `F_username` varchar(50) NOT NULL,
  `F_password` varchar(255) NOT NULL,
  `F_vnev` varchar(50) NOT NULL,
  `F_knev` varchar(50) NOT NULL,
  `picture` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `V_id` int(10) UNSIGNED NOT NULL,
  `V_username` varchar(50) NOT NULL,
  `V_password` varchar(255) NOT NULL,
  `V_vnev` varchar(50) NOT NULL,
  `V_knev` varchar(50) NOT NULL,
  `picture` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`F_id`);

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
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`V_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `F_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rendezveny`
--
ALTER TABLE `rendezveny`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `V_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `user` FOREIGN KEY (`megrendelo_NK`) REFERENCES `user` (`NK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videos` FOREIGN KEY (`videos_1`) REFERENCES `videos` (`V_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videos2` FOREIGN KEY (`videos_2`) REFERENCES `videos` (`V_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
