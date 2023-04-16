-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 16. 17:01
-- Kiszolgáló verziója: 10.4.18-MariaDB
-- PHP verzió: 7.3.27

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
('Jehan Daruvala', 24, 'India', 'Prema Racing', 126, 'Formula2', 7, 7),
('Enzo Fittipaldi', 21, 'Brasil', 'Charouz Racing System', 126, 'Formula2', 7, 8),
('Frederik Vesti', 21, 'Denmark', 'ART Grand Prix', 117, 'Formula2', 8, 9),
('Dennis Hauger', 19, 'Norway', 'Prema Racing', 115, 'Formula2', 9, 10),
('Juri Vips', 22, 'Estonia', 'Hitech Grand Prix', 114, 'Formula2', 10, 11),
('Richard Verschoor', 22, 'Netherland', 'Trident', 103, 'Formula2', 11, 12),
('Marcus Armstrong', 22, 'Australia', 'Hitech Grand Prix', 93, 'Formula2', 12, 13),
('Clement Novalak', 22, 'France', 'MP Motorsport', 40, 'Formula2', 13, 14),
('Ralph Boschung', 25, 'Switzerland', 'Campos Racing', 40, 'Formula2', 13, 15),
('Jake Hughes', 28, 'United Kingdom', 'Van Amersfoort Racing', 26, 'Formula2', 14, 16),
('Amaury Cordeel', 20, 'Belgium', 'Van Amersfoort Racing', 26, 'Formula2', 14, 17),
('David Beckmann', 22, 'Germany', 'Van Amersfoort Racing', 25, 'Formula2', 15, 18),
('Roy Nissany', 28, 'Israel', 'DAMS', 20, 'Formula2', 16, 19),
('Roberto Merhi', 31, 'Spain', 'Campos Racing', 15, 'Formula2', 17, 20),
('Olivér Caldwell', 20, 'United Kingdom', 'Campos Racing', 12, 'Formula2', 18, 21),
('Marino Sato', 23, 'Japan', 'Virtuosi', 6, 'Formula2', 19, 22),
('Calan Williams', 22, 'Australia', 'Trident', 5, 'Formula2', 20, 23),
('Cem Bolukbasi', 25, 'Turkey', 'Charouz Racing System', 0, 'Formula2', 21, 24),
('Luca Ghiotto', 28, 'Italy', 'Hitech Grand Prix', 0, 'Formula2', 21, 25),
('Zane Maloney', 19, 'Barbados', 'Trident', 0, 'Formula2', 21, 26),
('Juan Manuel Correa', 23, 'USA', 'ART Grand Prix', 0, 'Formula2', 21, 27),
('Tatiana Calderon', 29, 'Columbia', 'Charouz Racing System', 0, 'Formula2', 21, 28),
('Lirim Zendeli', 23, 'Germany', 'MP Motorsport', 0, 'Formula2', 21, 29),
('Victor Martins', 21, 'France', 'ART Grand Prix', 139, 'Formula3', 1, 30),
('Oliver Bearman', 19, 'United Kingdom', 'Prema Racing', 132, 'Formula3', 2, 31),
('Isack Hadjar', 18, 'France', 'Hitech Grand Prix', 123, 'Formula3', 3, 32),
('Roman Stanek', 19, 'Czech Republic', 'Trident', 117, 'Formula3', 4, 33),
('Arthur Leclerc', 22, 'Monaco', 'Prema Racing', 114, 'Formula3', 5, 34),
('Jak Crawford', 17, 'USA', 'Prema Racing', 109, 'Formula3', 6, 35),
('Caio Collet', 20, 'Brasil', 'MP Motorsport', 88, 'Formula3', 7, 36),
('Franco Colapinto', 19, 'Argentina', 'Van Amersfoort Racing', 76, 'Formula3', 8, 37),
('Alekszandr Szmoljar', 21, 'Russian', 'MP Motorsport', 76, 'Formula3', 8, 38),
('Zak O\'Sullivan', 18, 'United Kingdom', 'Carlin', 54, 'Formula3', 9, 39),
('Jonny Edgar', 19, 'United Kingdom', 'Trident', 46, 'Formula3', 10, 40),
('Kush Maini', 22, 'India', 'MP Motorsport', 31, 'Formula3', 11, 41),
('Grégoire Saucy', 23, 'Switzerland', 'ART Grand Prix', 30, 'Formula3', 12, 42),
('David Vidales', 20, 'Spain', 'Campos Racing', 29, 'Formula3', 13, 43),
('Kaylen Federick', 20, 'USA', 'Hitech Grand Prix', 27, 'Formula3', 14, 44),
('William Alatalo', 20, 'Finland', 'Jenzer Motorsport', 24, 'Formula3', 15, 45),
('Oliver Goathe', 18, 'Monaco', 'Campos Racing', 15, 'Formula3', 16, 46),
('Reece Ushijima', 20, 'United Kingdom', 'Van Amersfoort Racing', 13, 'Formula3', 17, 47),
('Sebastian Montoya', 17, 'Columbia', 'Campos Racing', 7, 'Formula3', 18, 48),
('Oliver Rasmussen', 2, 'Denmark', 'Trident', 4, 'Formula3', 19, 49),
('Brad Benavides', 21, 'USA', 'Carlin', 3, 'Formula3', 20, 50),
('Rafael Villagómez', 21, 'Mexico', 'Van Amersfoort Racing', 2, 'Formula3', 21, 51),
('Pepe Martí', 17, 'Spain', 'Campos Racing', 2, 'Formula3', 21, 52),
('Ido Cohen', 21, 'Israel', 'Jenzer Motorsport', 2, 'Formula3', 21, 53),
('Francesco Pizzi', 18, 'Italy', 'Charouz Racing System', 1, 'Formula3', 22, 54),
('David Schumacher', 21, 'Germany', 'Charouz Racing System', 0, 'Formula3', 23, 55),
('Lirim Zendeli', 23, 'Germany', 'Charouz Racing System', 0, 'Formula3', 23, 56),
('Ayrton Simmons', 21, 'United Kingdom', 'Charouz Racing System', 0, 'Formula3', 23, 57),
('Tóth László', 22, 'Hungary', 'Charouz Racing System', 0, 'Formula3', 23, 58),
('Christian Mansell', 18, 'Australia', 'Charouz Racing System', 0, 'Formula3', 23, 59),
('Alessandro Famularo', 20, 'Italy', 'Charouz Racing System', 0, 'Formula3', 23, 60),
('Zdenek Chovanec', 18, 'Portugal', 'Charouz Racing System', 0, 'Formula3', 23, 61),
('Federico Malvestiti', 22, 'Italy', 'Jenzer Motorsport', 0, 'Formula3', 23, 62),
('Niko Kari', 23, 'Finland', 'Jenzer Motorsport', 0, 'Formula3', 23, 63),
('Nazim Azman', 21, 'Malaysia', 'Hitech Grand Prix', 0, 'Formula3', 23, 64),
('Hunter Yeany', 17, 'USA', 'Campos Racing', 0, 'Formula3', 23, 65),
('Enzo Trulli', 17, 'Italy', 'Carlin', 0, 'Formula3', 23, 66),
('Filip Ugran', 20, 'Romania', 'MP Motorsport', 0, 'Formula3', 23, 67);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
