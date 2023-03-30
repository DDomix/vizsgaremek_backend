-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 30. 16:31
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
-- Tábla szerkezet ehhez a táblához `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `shop`
--

INSERT INTO `shop` (`id`, `type`, `team`, `size`, `color`, `price`, `quantity`) VALUES
(1, 'T-shirt', 'Red-Bull', 'XS', 'Kék', 20000, 20),
(2, 'T-shirt', 'Red-Bull', 'S', 'Kék', 20000, 20),
(3, 'T-shirt', 'Red-Bull', 'M', 'Kék', 22000, 20),
(4, 'T-shirt', 'Red-Bull', 'L', 'Kék', 25000, 20),
(5, 'T-shirt', 'Red-Bull', 'XL', 'Kék', 25000, 20),
(6, 'T-shirt', 'Red-Bull', 'XS', 'Fehér', 20000, 20),
(7, 'T-shirt', 'Red-Bull', 'S', 'Fehér', 20000, 20),
(8, 'T-shirt', 'Red-Bull', 'M', 'Fehér', 22000, 20),
(9, 'T-shirt', 'Red-Bull', 'L', 'Fehér', 25000, 20),
(10, 'T-shirt', 'Red-Bull', 'XL', 'Fehér', 25000, 20),
(11, 'T-shirt', 'Red-Bull', 'XS', 'Narancs', 20000, 20),
(12, 'T-shirt', 'Red-Bull', 'S', 'Narancs', 20000, 20),
(13, 'T-shirt', 'Red-Bull', 'M', 'Narancs', 22000, 20),
(14, 'T-shirt', 'Red-Bull', 'L', 'Narancs', 25000, 20),
(15, 'T-shirt', 'Red-Bull', 'XL', 'Narancs', 25000, 20);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
