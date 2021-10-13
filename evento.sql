-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2021 a las 06:19:15
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `evnId` int(11) NOT NULL,
  `evnFecha` date NOT NULL,
  `evnCapacidadInvitados` int(11) NOT NULL,
  `evnTipoEvento` int(11) NOT NULL,
  `evnNumLista` int(11) NOT NULL,
  `evnDescripcion` varchar(250) NOT NULL,
  `evnUbicacion` varchar(300) DEFAULT NULL,
  `evrHoraInicio` time NOT NULL,
  `evrHoraFinal` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`evnId`, `evnFecha`, `evnCapacidadInvitados`, `evnTipoEvento`, `evnNumLista`, `evnDescripcion`, `evnUbicacion`, `evrHoraInicio`, `evrHoraFinal`) VALUES
(1, '2021-12-05', 40, 1, 1, 'Boda de Jairo y Regina', 'https://goo.gl/maps/uH6T8BeeeEkuG1Q99', '14:00:00', '18:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`evnId`),
  ADD KEY `evnTipoEvento` (`evnTipoEvento`),
  ADD KEY `evnNumLista` (`evnNumLista`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `evnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`evnTipoEvento`) REFERENCES `tipoevento` (`tpeId`),
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`evnNumLista`) REFERENCES `numlista` (`lsnID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
