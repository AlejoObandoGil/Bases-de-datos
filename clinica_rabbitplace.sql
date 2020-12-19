-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2019 a las 21:35:01
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica rabbitplace`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `idMascota` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `raza` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `especie` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `rescatado` tinyint(1) NOT NULL,
  `fechaIngreso` date NOT NULL,
  `fechaSalida` date NOT NULL,
  `idDueño` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`idMascota`, `raza`, `especie`, `genero`, `rescatado`, `fechaIngreso`, `fechaSalida`, `idDueño`) VALUES
('1234', 'pastor aleman', 'canino', 'macho', 0, '2019-11-08', '2019-11-08', '1127500'),
('2222', 'ninfa', 'cacatua', 'macho', 0, '2019-10-16', '2019-10-16', '1234567'),
('4321', 'siames', 'felino', 'hembra', 0, '2019-11-18', '2019-11-25', '9876543'),
('5555', 'mestizo', 'canino', 'hembra', 1, '2019-11-03', '0000-00-00', ''),
('6789', 'pitbull', 'canino', 'macho', 1, '2019-10-07', '2019-11-07', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales-enfermedades`
--

CREATE TABLE `animales-enfermedades` (
  `idMascota` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idEnfermedades` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueños`
--

CREATE TABLE `dueños` (
  `idDueño` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipoPago` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dueños`
--

INSERT INTO `dueños` (`idDueño`, `nombre`, `tipoPago`, `telefono`) VALUES
('1127500', 'Pedro Machete', 'efectivo', '3101075100'),
('1234567', 'alejandro Magno', 'oro', '3100666333'),
('9876543', 'Bill Gates', 'tarjeta de credito', '3008765431');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `idEnfermedad` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEnfermedad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tiempoEnfermedad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`idEnfermedad`, `tipoEnfermedad`, `tiempoEnfermedad`) VALUES
('1111', 'fiebre', 7),
('2222', 'sarna', 30),
('3333', 'parvovirus', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades-tratamientos`
--

CREATE TABLE `enfermedades-tratamientos` (
  `idEnfermedad` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idTratamientos` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `idTratamiento` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `duracion` int(5) NOT NULL,
  `reacciones` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `medicamentos` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`idTratamiento`, `duracion`, `reacciones`, `medicamentos`) VALUES
('2334', 7, 'no presenta reacciones', 'antibioticos'),
('3333', 30, 'no presenta reacciones', 'antiparasitarios'),
('5678', 7, 'vomitos, problemas intestinales', 'antibioticos, antialergicos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`idMascota`);

--
-- Indices de la tabla `dueños`
--
ALTER TABLE `dueños`
  ADD PRIMARY KEY (`idDueño`);

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`idEnfermedad`);

--
-- Indices de la tabla `enfermedades-tratamientos`
--
ALTER TABLE `enfermedades-tratamientos`
  ADD PRIMARY KEY (`idEnfermedad`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`idTratamiento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
