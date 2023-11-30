-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2023 a las 00:10:00
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
-- Base de datos: `confbsas23564`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `resenia` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `temas` varchar(500) NOT NULL,
  `fotoPerfil` varchar(200) DEFAULT NULL,
  `dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `nombre`, `apellido`, `profesion`, `resenia`, `email`, `temas`, `fotoPerfil`, `dni`) VALUES
(2, 'Roiman', 'Vedia', 'llll', 'Tempsoft', 'jvedia@gmail.com', 'Inteligencia Artificial, Microsoft, Windows, bugs en Windos', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 0),
(16, 'Steve', 'Jarosesky', NULL, '', 'sjobs@gmail.com', 'Apple, mac, sistemas distribuidos, diseño de productos informáticos', 'https://imgdb.net/storage/uploads/80eee944aad1ca133afd5f64e95069ef411ea60d845497dbc9f5bf2916524ad8.png', 0),
(17, 'Romina', 'Paramo', NULL, '', 'pp@gmail.com', 'Seguirdad en las redes, IoT, Realidad aumentadad', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 0),
(19, 'Lorena', 'Lopez', NULL, '', 'll@gmail.com', 'Manejo de scripts, Seguirdad en las redes, IoT, Realidad aumentadad', 'https://imgdb.net/storage/uploads/f443e2b224b2574ee557f5fc5663e8bc0957c5db3d6b0a8ee85b08630557737b.jpeg', 0),
(21, 'Hernan', 'Jacinto', 'Ing. en Sistemas', '', 'jj@gmail.com', 'Ordenadores cuánticos, computación cuántica, big data', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `permisos` varchar(50) DEFAULT NULL,
  `fotoPerfil` varchar(200) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `permisos`, `fotoPerfil`, `nombre`, `apellido`) VALUES
(1, 'bill@gmail.com', '1234', 'user', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 'Bill', 'Gates'),
(2, 'jperez@gmail.com', '1234', 'user', 'https://imgdb.net/storage/uploads/80eee944aad1ca133afd5f64e95069ef411ea60d845497dbc9f5bf2916524ad8.png', NULL, NULL),
(4, 'czeplin1@amazon.co.uk', 'aQ0{Xhq9t\"X', 'user', NULL, NULL, NULL),
(5, 'cribbon2@bbc.co.uk', 'tJ1@e4Zl\"p70R@', 'user', NULL, NULL, NULL),
(6, 'tmcminn3@arstechnica.com', 'tX1#Vw8(D', 'user', NULL, NULL, NULL),
(7, 'brobertucci4@fastcompany.com', 'fP4(m(,877{J', 'user', NULL, NULL, NULL),
(8, 'ryellowlees5@nationalgeographic.com', 'oK6_Pi06wh=', 'user', NULL, NULL, NULL),
(9, 'tbeckson6@vimeo.com', 'bP6|N+dGgF9', 'user', NULL, NULL, NULL),
(10, 'dsiflet7@tinyurl.com', 'uE5.g!6_(caIci_`', 'user', NULL, NULL, NULL),
(13, 'jj@gmail.com', '1234', 'user', NULL, NULL, NULL),
(14, 'admin@gmail.com', 'admin', 'admin', NULL, NULL, NULL),
(15, 'lorellana@codoacodo.edu.ar', 'null', 'admin', NULL, NULL, NULL),
(16, 'lmendez@codoacodo.edu.ar', '1234', 'user', NULL, NULL, NULL),
(18, 'klop@gmail.com', '1234', 'user', NULL, NULL, NULL),
(19, 'sgomez@codoacodo.edu.ar', 'aA123456', 'user', NULL, NULL, NULL),
(21, 'jlopez@codoacodo.edu.ar', 'aA123456', 'user', NULL, NULL, NULL),
(25, 'klopez@codoacodo.edu.ar', 'aA123456', 'user', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ape` (`apellido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
