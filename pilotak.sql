-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 14. 11:08
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
-- Adatbázis: `f1`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pilotak`
--

CREATE TABLE `pilotak` (
  `nev` varchar(255) NOT NULL,
  `kor` int(11) NOT NULL,
  `nemzetiseg` varchar(255) NOT NULL,
  `csapat` varchar(255) NOT NULL,
  `szerzettpontok` int(11) NOT NULL,
  `kategoria` varchar(255) NOT NULL,
  `helyezes` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `pilotak`
--

INSERT INTO `pilotak` (`nev`, `kor`, `nemzetiseg`, `csapat`, `szerzettpontok`, `kategoria`, `helyezes`, `id`) VALUES
('Felipe Drugovich', 22, 'Brazilian', 'MP Motorsport', 265, 'Formula2', 1, 1),
('Theo Pourchaire', 19, 'France', 'ART Grand Prix', 164, 'Formula2', 2, 2),
('Liam Lawson', 21, 'New Zealander', 'Carlin', 149, 'Formula2', 3, 3),
('Logan Sargeant', 22, 'USA', 'Carlin', 148, 'Formula2', 4, 4),
('Ayumu Iwasa', 21, 'Japan', 'DAMS', 139, 'Formula2', 5, 5),
('Jack Doohan', 20, 'Australia', 'Virtuosi Racing', 128, 'Formula2', 6, 6),
('Jehan Daruvala', 24, 'India', 'Prema Racing', 126, 'Formula2', 7, 7);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `pilotak`
--
ALTER TABLE `pilotak`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `pilotak`
--
ALTER TABLE `pilotak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
