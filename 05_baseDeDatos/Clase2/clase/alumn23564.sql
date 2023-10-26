-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2023 a las 01:30:05
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumn23564`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `dni`, `email`) VALUES
(1, 'Kevin', 'Suarez', 23555666, NULL),
(2, 'Lorena', 'Nuñez', 223333444, NULL),
(3, 'Juan', 'Perez', 15666333, NULL),
(4, 'Bruno', 'Perez', 11533333, NULL),
(5, 'Juan', 'Perez', 14222333, NULL),
(36, 'Rodolfo', 'Sanchez', 18789654, NULL),
(37, 'Rodolfo', 'Lorenz', 40456789, NULL),
(38, 'Juan', 'Sanchez', 12456987, NULL),
(39, 'Rodolfo', 'Jarosesky', 23654159, NULL),
(40, 'Kevin', 'Sanchez', 22444111, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idProfesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `idProfesor`) VALUES
(1, 'Química', 1),
(2, 'Matemática', 1),
(3, 'Informática', 2),
(4, 'Literatura', 3),
(5, 'leyes', 3),
(6, 'Química 2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `dni`, `email`) VALUES
(1, 'Sandro', 'Gimenez', 11223456, NULL),
(2, 'Lorena', 'Gimenez', 11223456, NULL),
(3, 'Juan', 'Gimenez', 11223446, NULL),
(4, 'Sandro', 'Estevez', 11225456, NULL),
(16, 'Emelita', 'Nuschke', 0, 'enuschkeb@de.vu'),
(17, 'Willy', 'Caesar', 0, 'wcaesarc@artisteer.com'),
(18, 'Frederigo', 'Rawcliffe', 0, 'frawcliffed@infoseek.co.jp'),
(19, 'Bren', 'Randalston', 0, 'brandalstone@google.pl'),
(20, 'Magda', 'Samwaye', 0, 'msamwayef@newyorker.com'),
(21, 'Marve', 'Dewsnap', 0, 'mdewsnapg@amazon.de'),
(22, 'Rebeka', 'Meek', 0, 'rmeekh@chicagotribune.com'),
(23, 'Ammamaria', 'Ross', 0, 'arossi@ca.gov'),
(24, 'Katrine', 'Abdee', 0, 'kabdeej@cbc.ca'),
(25, 'Cahra', 'Petrolli', 387565511, NULL),
(26, 'Lorianna', 'Holsey', 415178103, NULL),
(27, 'Sherye', 'Wynter', 825795943, NULL),
(28, 'Agnesse', 'MacShirrie', 131463427, NULL),
(29, 'Toddie', 'Pahl', 432595642, NULL),
(30, 'Hewett', 'Paireman', 829916848, NULL),
(31, 'Rodolph', 'Leupold', 461026034, NULL),
(32, 'Dom', 'Cumine', 179146833, NULL),
(33, 'Eada', 'Colquitt', 460250767, NULL),
(34, 'Katee', 'Eplate', 792934368, NULL),
(35, 'Lolita', 'Iffe', 775003797, NULL),
(36, 'Abagael', 'Dewitt', 29578429, NULL),
(37, 'Ingar', 'Ashleigh', 107088065, NULL),
(38, 'Kamillah', 'Bonnaire', 910986044, NULL),
(39, 'Cammy', 'Wandless', 834311120, NULL),
(40, 'Stevana', 'Stobie', 209238016, NULL),
(41, 'Pierette', 'Ludl', 207908207, NULL),
(42, 'Dion', 'Sample', 138649353, NULL),
(43, 'Kelsi', 'Grebbin', 809634487, NULL),
(44, 'Trista', 'Yexley', 687005989, NULL),
(45, 'Cahra', 'Petrolli', 387565511, NULL),
(46, 'Lorianna', 'Holsey', 415178103, NULL),
(47, 'Sherye', 'Wynter', 825795943, NULL),
(48, 'Agnesse', 'MacShirrie', 131463427, NULL),
(49, 'Toddie', 'Pahl', 432595642, NULL),
(50, 'Hewett', 'Paireman', 829916848, NULL),
(51, 'Rodolph', 'Leupold', 461026034, NULL),
(52, 'Dom', 'Cumine', 179146833, NULL),
(53, 'Eada', 'Colquitt', 460250767, NULL),
(54, 'Katee', 'Eplate', 792934368, NULL),
(55, 'Lolita', 'Iffe', 775003797, NULL),
(56, 'Abagael', 'Dewitt', 29578429, NULL),
(57, 'Ingar', 'Ashleigh', 107088065, NULL),
(58, 'Kamillah', 'Bonnaire', 910986044, NULL),
(59, 'Cammy', 'Wandless', 834311120, NULL),
(60, 'Stevana', 'Stobie', 209238016, NULL),
(61, 'Pierette', 'Ludl', 207908207, NULL),
(62, 'Dion', 'Sample', 138649353, NULL),
(63, 'Kelsi', 'Grebbin', 809634487, NULL),
(64, 'Trista', 'Yexley', 687005989, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_dni` (`dni`),
  ADD KEY `idx_ape` (`apellido`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProfesor` (`idProfesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`idProfesor`) REFERENCES `profesores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
