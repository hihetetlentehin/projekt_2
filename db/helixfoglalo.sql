-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Nov 22. 11:32
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `helixfoglalo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fotos`
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
-- Tábla szerkezet ehhez a táblához `rendezveny`
--

CREATE TABLE `rendezveny` (
  `r_id` int(11) NOT NULL,
  `r_nev` varchar(1000) NOT NULL,
  `helyszin` varchar(1000) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `fotos_1` int(11) NOT NULL,
  `fotos_2` int(11) DEFAULT NULL,
  `fotos_3` int(11) DEFAULT NULL,
  `videos_1` int(11) DEFAULT NULL,
  `videos_2` int(11) DEFAULT NULL,
  `megrendelo_NK` char(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `U_id` int(10) UNSIGNED NOT NULL,
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
-- Tábla szerkezet ehhez a táblához `videos`
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
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`F_id`);

--
-- A tábla indexei `rendezveny`
--
ALTER TABLE `rendezveny`
  ADD PRIMARY KEY (`r_id`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`U_id`);

--
-- A tábla indexei `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`V_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `fotos`
--
ALTER TABLE `fotos`
  MODIFY `F_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `rendezveny`
--
ALTER TABLE `rendezveny`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `U_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `videos`
--
ALTER TABLE `videos`
  MODIFY `V_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
