-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 14. 10:10
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
-- Tábla szerkezet ehhez a táblához `vezerloegyseg`
--

CREATE TABLE `vezerloegyseg` (
  `id` int(11) NOT NULL,
  `leiras` varchar(255) NOT NULL,
  `vezerloegysegkomponensek` varchar(255) NOT NULL,
  `darabszam` int(11) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `vezerloegyseg`
--

INSERT INTO `vezerloegyseg` (`id`, `leiras`, `vezerloegysegkomponensek`, `darabszam`, `ar`) VALUES
(1, 'The control center of the F1 car, responsible for controlling various systems of the car, such as the fuel mixture delivery to the combustion chamber, the gearbox control, and optimizing fuel and energy efficiency.', 'Universal Control Unit (ECU)', 4, 112000000),
(2, 'Usually mounted on the steering wheel, this panel allows the driver to regulate various parameters of the car\'s control unit', 'Control Panel', 10, 29000000),
(3, 'Cables and connectors that are connected to the control unit for transmission between different systems and sensors', 'Cables', 200, 370000),
(4, 'Various sensors that are connected to the control unit, allowing it to monitor different systems of the car, such as fuel and oil pressure, temperature, and wheel grip', 'Sensors', 1200, 750000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `vezerloegyseg`
--
ALTER TABLE `vezerloegyseg`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `vezerloegyseg`
--
ALTER TABLE `vezerloegyseg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
