-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2023 a las 02:16:09
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest-api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `aniopublicacion` date NOT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `categoria`, `aniopublicacion`, `ISBN`) VALUES
(1, 'Padre Rico, Padre Pobre', 'Robert T. Kiyosaki', 'Finanzas', '1986-04-12', '9788466332125'),
(2, 'Habitos Atomicos', 'James Clear', 'AutoAyuda', '2020-09-08', '9788418118036'),
(3, 'Git y GitHub desde cero', 'Brais Moure', 'Programacion', '2023-10-10', '9798391200475'),
(6, 'Rayuela', 'Julio Cortazar', 'Novela', '2013-05-16', '9789507310566'),
(7, 'One Piece vol. 1', 'Eiichiro Oda', 'Manga', '2013-05-16', '9788468471525'),
(8, 'Politica ArgEconomica', 'Gerardo Mazza', 'Economia', '2023-10-19', '9788393453131'),
(9, 'GTA SA', 'Rockstar', 'Juego', '1999-10-19', '3000000000000'),
(10, 'GTA VI', 'Rockstar', 'Juego', '2019-03-12', '5000000000000'),
(11, 'The Witcher', 'Sapkowski', 'Fantasia', '1999-10-19', '7000000000000'),
(13, 'eSPORTS T1', 'Faker', 'eSPORTS', '2023-05-05', '9000000000001'),
(16, 'Escuela de Rock', 'Sr. Black', 'Musica', '2004-05-12', '9000000000009'),
(17, 'Cuentos de Terror para Franco', 'Hugo Mitoire', 'Terror', '2009-05-12', '1000000000009');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
