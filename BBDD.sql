-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2020 a las 20:40:23
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miniprojecte2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontact`
--

CREATE TABLE `tblcontact` (
  `name` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `content` varchar(500) NOT NULL,
  `IDMsg` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcontact`
--

INSERT INTO `tblcontact` (`name`, `email`, `subject`, `content`, `IDMsg`) VALUES
('joel', 'joellf10@hotmail.com', 'hola', 'Primera Prova', 1),
('ProvaProjecte', 'provaProjecte@quartaentrega.com', 'Prova per al projecte', 'Aquesta és la prova que realitzem per al projecte. Es mostrarà com es guarda el missatge dins la BBDD.', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`IDMsg`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `IDMsg` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
