-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 12. 13:01
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
(5, 'T-shirt', 'Red-Bull', 'XL', 'Kék', 28000, 20),
(6, 'T-shirt', 'Red-Bull', 'XS', 'Fehér', 20000, 20),
(7, 'T-shirt', 'Red-Bull', 'S', 'Fehér', 20000, 20),
(8, 'T-shirt', 'Red-Bull', 'M', 'Fehér', 22000, 20),
(9, 'T-shirt', 'Red-Bull', 'L', 'Fehér', 25000, 20),
(10, 'T-shirt', 'Red-Bull', 'XL', 'Fehér', 28000, 20),
(11, 'T-shirt', 'Red-Bull', 'XS', 'Narancs', 20000, 20),
(12, 'T-shirt', 'Red-Bull', 'S', 'Narancs', 20000, 20),
(13, 'T-shirt', 'Red-Bull', 'M', 'Narancs', 22000, 20),
(14, 'T-shirt', 'Red-Bull', 'L', 'Narancs', 25000, 20),
(15, 'T-shirt', 'Red-Bull', 'XL', 'Narancs', 28000, 20),
(16, 'T-shirt', 'Ferrari', 'XS', 'Piros', 20000, 20),
(17, 'T-shirt', 'Ferrari', 'S', 'Piros', 20000, 20),
(18, 'T-shirt', 'Ferrari', 'M', 'Piros', 22000, 20),
(19, 'T-shirt', 'Ferrari', 'L', 'Piros', 25000, 20),
(20, 'T-shirt', 'Ferrari', 'XL', 'Piros', 28000, 20),
(21, 'T-shirt', 'Ferrari', 'XS', 'Sárga', 20000, 20),
(22, 'T-shirt', 'Ferrari', 'S', 'Sárga', 20000, 20),
(23, 'T-shirt', 'Ferrari', 'M', 'Sárga', 22000, 20),
(24, 'T-shirt', 'Ferrari', 'L', 'Sárga', 25000, 20),
(25, 'T-shirt', 'Ferrari', 'XL', 'Sárga', 28000, 20),
(31, 'T-shirt', 'Mercedes', 'XS', 'Fehér', 20000, 20),
(32, 'T-shirt', 'Mercedes', 'S', 'Fehér', 20000, 20),
(33, 'T-shirt', 'Mercedes', 'M', 'Fehér', 22000, 20),
(34, 'T-shirt', 'Mercedes', 'L', 'Fehér', 25000, 20),
(35, 'T-shirt', 'Mercedes', 'XL', 'Fehér', 28000, 20),
(36, 'T-shirt', 'Mercedes', 'XS', 'Fekete', 20000, 20),
(37, 'T-shirt', 'Mercedes', 'S', 'Fekete', 20000, 20),
(38, 'T-shirt', 'Mercedes', 'M', 'Fekete', 22000, 20),
(39, 'T-shirt', 'Mercedes', 'L', 'Fekete', 25000, 20),
(40, 'T-shirt', 'Mercedes', 'XL', 'Fekete', 28000, 20),
(41, 'T-shirt', 'Mclaren', 'XS', 'Narancs', 20000, 20),
(42, 'T-shirt', 'Mclaren', 'S', 'Narancs', 20000, 20),
(43, 'T-shirt', 'Mclaren', 'M', 'Narancs', 22000, 20),
(44, 'T-shirt', 'Mclaren', 'L', 'Narancs', 25000, 20),
(45, 'T-shirt', 'Mclaren', 'XL', 'Narancs', 28000, 20),
(46, 'T-shirt', 'Mclaren', 'XS', 'Fekete', 20000, 20),
(47, 'T-shirt', 'Mclaren', 'S', 'Fekete', 20000, 20),
(48, 'T-shirt', 'Mclaren', 'M', 'Fekete', 22000, 20),
(49, 'T-shirt', 'Mclaren', 'L', 'Fekete', 25000, 20),
(50, 'T-shirt', 'Mclaren', 'XL', 'Fekete', 28000, 20),
(51, 'T-shirt', 'Aston-Martin', 'XS', 'Zöld', 20000, 20),
(52, 'T-shirt', 'Aston-Martin', 'S', 'Zöld', 20000, 20),
(53, 'T-shirt', 'Aston-Martin', 'M', 'Zöld', 22000, 20),
(54, 'T-shirt', 'Aston-Martin', 'L', 'Zöld', 25000, 20),
(55, 'T-shirt', 'Aston-Martin', 'XL', 'Zöld', 28000, 20),
(56, 'T-shirt', 'Alfa-Romeo', 'XS', 'Fekete', 20000, 20),
(57, 'T-shirt', 'Alfa-Romeo', 'S', 'Fekete', 20000, 20),
(58, 'T-shirt', 'Alfa-Romeo', 'M', 'Fekete', 22000, 20),
(59, 'T-shirt', 'Alfa-Romeo', 'L', 'Fekete', 25000, 20),
(60, 'T-shirt', 'Alfa-Romeo', 'XL', 'Fekete', 28000, 20),
(61, 'T-shirt', 'Alpine', 'XS', 'Fekete', 20000, 20),
(62, 'T-shirt', 'Alpine', 'S', 'Fekete', 20000, 20),
(63, 'T-shirt', 'Alpine', 'M', 'Fekete', 22000, 20),
(64, 'T-shirt', 'Alpine', 'L', 'Fekete', 25000, 20),
(65, 'T-shirt', 'Alpine', 'XL', 'Fekete', 28000, 20),
(66, 'T-shirt', 'Alpine', 'XS', 'Fehér', 20000, 20),
(67, 'T-shirt', 'Alpine', 'S', 'Fehér', 20000, 20),
(68, 'T-shirt', 'Alpine', 'M', 'Fehér', 22000, 20),
(69, 'T-shirt', 'Alpine', 'L', 'Fehér', 25000, 20),
(70, 'T-shirt', 'Alpine', 'XL', 'Fehér', 28000, 20),
(71, 'T-shirt', 'Alpine', 'XS', 'Kék', 20000, 20),
(72, 'T-shirt', 'Alpine', 'S', 'Kék', 20000, 20),
(73, 'T-shirt', 'Alpine', 'M', 'Kék', 22000, 20),
(74, 'T-shirt', 'Alpine', 'L', 'Kék', 25000, 20),
(75, 'T-shirt', 'Alpine', 'XL', 'Kék', 28000, 20),
(76, 'T-shirt', 'Alpha-Tauri', 'XS', 'Fekete', 20000, 20),
(78, 'T-shirt', 'Alpha-Tauri', 'S', 'Fekete', 20000, 20),
(80, 'T-shirt', 'Alpha-Tauri', 'M', 'Fekete', 22000, 20),
(83, 'T-shirt', 'Alpha-Tauri', 'L', 'Fekete', 25000, 20),
(84, 'T-shirt', 'Alpha-Tauri', 'XL', 'Fekete', 28000, 20),
(86, 'T-shirt', 'Alpha-Tauri', 'XS', 'Fehér', 20000, 20),
(87, 'T-shirt', 'Alpha-Tauri', 'S', 'Fehér', 20000, 20),
(88, 'T-shirt', 'Alpha-Tauri', 'M', 'Fehér', 22000, 20),
(89, 'T-shirt', 'Alpha-Tauri', 'L', 'Fehér', 25000, 20),
(90, 'T-shirt', 'Alpha-Tauri', 'XL', 'Fehér', 28000, 20),
(91, 'T-shirt', 'Williams', 'XS', 'Kék', 20000, 20),
(92, 'T-shirt', 'Williams', 'S', 'Kék', 20000, 20),
(93, 'T-shirt', 'Williams', 'M', 'Kék', 22000, 20),
(94, 'T-shirt', 'Williams', 'L', 'Kék', 25000, 20),
(95, 'T-shirt', 'Williams', 'XL', 'Kék', 28000, 20),
(96, 'T-shirt', 'Haas', 'XS', 'Fekete', 20000, 20),
(97, 'T-shirt', 'Haas', 'S', 'Fekete', 20000, 20),
(98, 'T-shirt', 'Haas', 'M', 'Fekete', 22000, 20),
(99, 'T-shirt', 'Haas', 'L', 'Fekete', 25000, 20),
(100, 'T-shirt', 'Haas', 'XL', 'Fekete', 28000, 20),
(101, 'T-shirt', 'Haas', 'XS', 'Fehér', 20000, 20),
(102, 'T-shirt', 'Haas', 'S', 'Fehér', 20000, 20),
(103, 'T-shirt', 'Haas', 'M', 'Fehér', 22000, 20),
(104, 'T-shirt', 'Haas', 'L', 'Fehér', 25000, 20),
(105, 'T-shirt', 'Haas', 'XL', 'Fehér', 28000, 20),
(106, 'Cap', 'Red-Bull', 'XS', 'Kék', 17000, 20),
(107, 'Cap', 'Red-Bull', 'S', 'Kék', 17000, 20),
(108, 'Cap', 'Red-Bull', 'M', 'Kék', 17000, 20),
(109, 'Cap', 'Red-Bull', 'L', 'Kék', 17000, 20),
(110, 'Cap', 'Red-Bull', 'XL', 'Kék', 17000, 20),
(111, 'Cap', 'Red-Bull', 'XS', 'Fehér', 17000, 20),
(112, 'Cap', 'Red-Bull', 'S', 'Fehér', 17000, 20),
(113, 'Cap', 'Red-Bull', 'M', 'Fehér', 17000, 20),
(114, 'Cap', 'Red-Bull', 'L', 'Fehér', 17000, 20),
(115, 'Cap', 'Red-Bull', 'XL', 'Fehér', 17000, 20),
(116, 'Cap', 'Red-Bull', 'XS', 'Narancs', 17000, 20),
(117, 'Cap', 'Red-Bull', 'S', 'Narancs', 17000, 20),
(118, 'Cap', 'Red-Bull', 'M', 'Narancs', 17000, 20),
(119, 'Cap', 'Red-Bull', 'L', 'Narancs', 17000, 20),
(120, 'Cap', 'Red-Bull', 'XL', 'Narancs', 17000, 20),
(121, 'Cap', 'Ferrari', 'XS', 'Piros', 17000, 20),
(122, 'Cap', 'Ferrari', 'S', 'Piros', 17000, 20),
(123, 'Cap', 'Ferrari', 'M', 'Piros', 17000, 20),
(124, 'Cap', 'Ferrari', 'L', 'Piros', 17000, 20),
(125, 'Cap', 'Ferrari', 'XL', 'Piros', 17000, 20),
(126, 'Cap', 'Ferrari', 'XS', 'Fekete', 17000, 20),
(127, 'Cap', 'Ferrari', 'S', 'Fekete', 17000, 20),
(128, 'Cap', 'Ferrari', 'M', 'Fekete', 17000, 20),
(129, 'Cap', 'Ferrari', 'L', 'Fekete', 17000, 20),
(130, 'Cap', 'Ferrari', 'XL', 'Fekete', 17000, 20),
(131, 'Cap', 'Ferrari', 'XS', 'Fehér', 17000, 20),
(132, 'Cap', 'Ferrari', 'S', 'Fehér', 17000, 20),
(133, 'Cap', 'Ferrari', 'M', 'Fehér', 17000, 20),
(134, 'Cap', 'Ferrari', 'L', 'Fehér', 17000, 20),
(135, 'Cap', 'Ferrari', 'XL', 'Fehér', 17000, 20),
(136, 'Cap', 'Mercedes', 'XS', 'Fekete', 17000, 20),
(137, 'Cap', 'Mercedes', 'S', 'Fekete', 17000, 20),
(138, 'Cap', 'Mercedes', 'M', 'Fekete', 17000, 20),
(139, 'Cap', 'Mercedes', 'L', 'Fekete', 17000, 20),
(140, 'Cap', 'Mercedes', 'XL', 'Fekete', 17000, 20),
(141, 'Cap', 'Mercedes', 'XS', 'Fehér', 17000, 20),
(142, 'Cap', 'Mercedes', 'S', 'Fehér', 17000, 20),
(143, 'Cap', 'Mercedes', 'M', 'Fehér', 17000, 20),
(144, 'Cap', 'Mercedes', 'L', 'Fehér', 17000, 20),
(145, 'Cap', 'Mercedes', 'XL', 'Fehér', 17000, 20),
(146, 'Cap', 'Mclaren', 'XS', 'Narancs', 17000, 20),
(147, 'Cap', 'Mclaren', 'S', 'Narancs', 17000, 20),
(148, 'Cap', 'Mclaren', 'M', 'Narancs', 17000, 20),
(149, 'Cap', 'Mclaren', 'L', 'Narancs', 17000, 20),
(150, 'Cap', 'Mclaren', 'XL', 'Narancs', 17000, 20),
(151, 'Cap', 'Mclaren', 'XS', 'Fekete', 17000, 20),
(152, 'Cap', 'Mclaren', 'S', 'Fekete', 17000, 20),
(153, 'Cap', 'Mclaren', 'M', 'Fekete', 17000, 20),
(154, 'Cap', 'Mclaren', 'L', 'Fekete', 17000, 20),
(155, 'Cap', 'Mclaren', 'XL', 'Fekete', 17000, 20),
(156, 'Cap', 'Aston-Martin', 'XS', 'Zöld', 17000, 20),
(157, 'Cap', 'Aston-Martin', 'S', 'Zöld', 17000, 20),
(158, 'Cap', 'Aston-Martin', 'M', 'Zöld', 17000, 20),
(159, 'Cap', 'Aston-Martin', 'L', 'Zöld', 17000, 20),
(160, 'Cap', 'Aston-Martin', 'XL', 'Zöld', 17000, 20),
(161, 'Cap', 'Alfa-Romeo', 'XS', 'Fekete', 17000, 20),
(162, 'Cap', 'Alfa-Romeo', 'S', 'Fekete', 17000, 20),
(163, 'Cap', 'Alfa-Romeo', 'M', 'Fekete', 17000, 20),
(164, 'Cap', 'Alfa-Romeo', 'L', 'Fekete', 17000, 20),
(165, 'Cap', 'Alfa-Romeo', 'XL', 'Fekete', 17000, 20),
(166, 'Cap', 'Alpine', 'XS', 'Fekete', 17000, 20),
(167, 'Cap', 'Alpine', 'S', 'Fekete', 17000, 20),
(168, 'Cap', 'Alpine', 'M', 'Fekete', 17000, 20),
(169, 'Cap', 'Alpine', 'L', 'Fekete', 17000, 20),
(170, 'Cap', 'Alpine', 'XL', 'Fekete', 17000, 20),
(171, 'Cap', 'Alpine', 'XS', 'Fehér', 17000, 20),
(172, 'Cap', 'Alpine', 'S', 'Fehér', 17000, 20),
(173, 'Cap', 'Alpine', 'M', 'Fehér', 17000, 20),
(174, 'Cap', 'Alpine', 'L', 'Fehér', 17000, 20),
(175, 'Cap', 'Alpine', 'XL', 'Fehér', 17000, 20),
(176, 'Cap', 'Alpine', 'XS', 'Kék', 17000, 20),
(177, 'Cap', 'Alpine', 'S', 'Kék', 17000, 20),
(178, 'Cap', 'Alpine', 'M', 'Kék', 17000, 20),
(179, 'Cap', 'Alpine', 'L', 'Kék', 17000, 20),
(180, 'Cap', 'Alpine', 'XL', 'Kék', 17000, 20),
(181, 'Cap', 'Alpha-Tauri', 'XS', 'Fekete', 17000, 20),
(182, 'Cap', 'Alpha-Tauri', 'S', 'Fekete', 17000, 20),
(183, 'Cap', 'Alpha-Tauri', 'M', 'Fekete', 17000, 20),
(184, 'Cap', 'Alpha-Tauri', 'L', 'Fekete', 17000, 20),
(185, 'Cap', 'Alpha-Tauri', 'XL', 'Fekete', 17000, 20),
(186, 'Cap', 'Alpha-Tauri', 'XS', 'Fehér', 17000, 20),
(187, 'Cap', 'Alpha-Tauri', 'S', 'Fehér', 17000, 20),
(188, 'Cap', 'Alpha-Tauri', 'M', 'Fehér', 17000, 20),
(189, 'Cap', 'Alpha-Tauri', 'L', 'Fehér', 17000, 20),
(190, 'Cap', 'Alpha-Tauri', 'XL', 'Fehér', 17000, 20),
(191, 'Cap', 'Williams', 'XS', 'Kék', 17000, 20),
(192, 'Cap', 'Williams', 'S', 'Kék', 17000, 20),
(193, 'Cap', 'Williams', 'M', 'Kék', 17000, 20),
(194, 'Cap', 'Williams', 'L', 'Kék', 17000, 20),
(195, 'Cap', 'Williams', 'XL', 'Kék', 17000, 20),
(196, 'Cap', 'Haas', 'XS', 'Fekete', 17000, 20),
(197, 'Cap', 'Haas', 'S', 'Fekete', 17000, 20),
(198, 'Cap', 'Haas', 'M', 'Fekete', 17000, 20),
(199, 'Cap', 'Haas', 'L', 'Fekete', 17000, 20),
(200, 'Cap', 'Haas', 'XL', 'Fekete', 17000, 20),
(201, 'Cap', 'Haas', 'XS', 'Fehér', 17000, 20),
(202, 'Cap', 'Haas', 'S', 'Fehér', 17000, 20),
(203, 'Cap', 'Haas', 'M', 'Fehér', 17000, 20),
(204, 'Cap', 'Haas', 'L', 'Fehér', 17000, 20),
(205, 'Cap', 'Haas', 'XL', 'Fehér', 17000, 20);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
