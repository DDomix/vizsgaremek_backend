-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 14. 09:29
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
-- Tábla szerkezet ehhez a táblához `kaszni`
--

CREATE TABLE `kaszni` (
  `id` int(11) NOT NULL,
  `leiras` varchar(255) NOT NULL,
  `kasznikomponensek` varchar(255) NOT NULL,
  `darabszam` int(11) NOT NULL,
  `ar` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `kaszni`
--

INSERT INTO `kaszni` (`id`, `leiras`, `kasznikomponensek`, `darabszam`, `ar`) VALUES
(1, 'The main structure of the car, which includes the cockpit, suspension, and power unit assembly', 'Chassis', 10, 2000000000),
(2, 'High-performance, turbocharged V6 engine with hybrid technology that recovers much of the energy from braking and exhaust gases', 'Power Unit', 12, 1500000000),
(3, 'The transmission that transfers power from the power unit to the rear wheels', 'Gearbox', 20, 700000),
(4, 'High-performance brake discs and calipers designed to withstand high temperatures and forces', 'Brakes', 10, 700000000),
(5, 'A complex system of dampers, springs, and linkages that allow the car to handle sharp turns and uneven surfaces at high speeds', 'Suspension', 10, 7000000),
(6, 'The design of the car\'s body, wings, and other components to optimize downforce and minimize drag', 'Aerodynamics', 10, 7000000),
(7, 'Specifically designed high-performance tires that provide grip and durability on the track', 'Tires', 50, 1100000),
(8, 'A highly precise, responsive steering system that allows the driver to make precise adjustments while driving at high speeds', 'Steering', 8, 37000000),
(9, 'A complex system of fuel tanks, pumps, and lines that deliver fuel to the power unit', 'Fuel System', 10, 112000000),
(10, 'A sophisticated network of sensors, data collection systems, and electronic controls that assist the driver and engineers in monitoring and optimizing performance', 'Electronics', 10, 149000000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kaszni`
--
ALTER TABLE `kaszni`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kaszni`
--
ALTER TABLE `kaszni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
