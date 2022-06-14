-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2022 a las 21:11:46
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `club_social`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_eventos` int(11) NOT NULL,
  `titulo_evento` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `cuerpo_evento` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_eventos`, `titulo_evento`, `cuerpo_evento`) VALUES
(1, 'título evento 1', 'cuerpo evento 1'),
(2, 'título evento 2', 'cuerpo evento 2'),
(3, 'título evento 3', 'cuerpo evento 4'),
(4, 'título evento 4', 'cuerpo evento 4'),
(5, 'título evento 5', 'cuerpo evento 5'),
(6, 'Test evento 6', 'Evento 6 descripcion'),
(8, 'Test evento 7', 'Evento 7 descripcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalaciones`
--

CREATE TABLE `instalaciones` (
  `nombre_pista` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_pista` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `precio_no_socio` float NOT NULL,
  `id_pista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `instalaciones`
--

INSERT INTO `instalaciones` (`nombre_pista`, `tipo_pista`, `precio`, `precio_no_socio`, `id_pista`) VALUES
('padel_1', 'padel', 1, 1.5, 1),
('padel_2', 'padel', 1, 1.4, 2),
('futbol_1', 'futbol', 5, 1, 5),
('baloncesto_1', 'baloncesto', 3, 1, 6),
('futbol_2', 'futbol', 2, 1, 3),
('futbol_3', 'futbol', 2, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticias` int(11) NOT NULL,
  `titulo_noticia` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `cuerpo_noticia` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticias`, `titulo_noticia`, `cuerpo_noticia`) VALUES
(22, 'Hola Javi Prada', 'Este es el cuerpo de la noticia para la presentación'),
(30, 'Test de la noticia 6 aaa aa', 'asdasd'),
(22, 'Hola Javi Prada', 'Este es el cuerpo de la noticia para la presentación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_pista` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_usuario`, `id_pista`, `fecha`, `hora`) VALUES
(1, 1, 6, '2022-02-12', 9),
(2, 5, 1, '2022-02-16', 9),
(3, 3, 2, '2022-02-13', 9),
(4, 3, 2, '2022-02-13', 10),
(5, 3, 2, '2022-02-13', 11),
(6, 3, 2, '2022-02-13', 12),
(7, 3, 2, '2022-02-13', 13),
(8, 3, 2, '2022-02-13', 14),
(9, 3, 2, '2022-02-13', 15),
(10, 3, 2, '2022-02-13', 16),
(11, 3, 2, '2022-02-13', 17),
(12, 3, 2, '2022-02-13', 18),
(13, 3, 2, '2022-02-13', 19),
(14, 3, 2, '2022-02-13', 20),
(15, 3, 2, '2022-02-13', 21),
(16, 3, 2, '2022-02-13', 22),
(28, 1, 4, '2022-02-17', 22),
(29, 1, 4, '2022-02-15', 12),
(30, 1, 4, '2022-02-20', 9),
(31, 1, 1, '2022-02-16', 19),
(32, 2, 2, '2022-02-23', 13),
(33, 2, 2, '2022-02-23', 18),
(34, 2, 4, '2022-02-26', 20),
(35, 2, 4, '2022-02-28', 21),
(36, 2, 5, '2022-02-24', 11),
(37, 2, 6, '2022-02-27', 19),
(38, 2, 5, '2022-02-28', 9),
(39, 2, 2, '2022-02-24', 22),
(40, 2, 2, '2022-02-26', 20),
(41, 2, 3, '2022-02-27', 21),
(42, 2, 3, '2022-02-26', 19),
(43, 4, 1, '2022-06-15', 10),
(44, 4, 1, '2022-06-21', 20),
(45, 2, 2, '2022-06-18', 15),
(46, 2, 6, '2022-06-15', 10),
(47, 3, 4, '2022-06-19', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_usuario` set('Socio','Administrador','Presidente','Invitado') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Invitado',
  `edad` int(11) NOT NULL,
  `miembros` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `tipo_usuario`, `edad`, `miembros`, `email`, `usuario`, `contraseña`) VALUES
(1, 'nombre 1', 'apes1', 'Invitado', 22, 2, 'email@gsfgda', 'usua1', '1234'),
(2, 'nombre 2', 'apes2', 'Socio', 2, 2, 'email@gsfgdaegfrg', 'usua2', '25252'),
(3, 'Admin', 'Administrador', 'Administrador', 0, 0, 'clubsocialsevilla@gmail.com', 'Admin', 'Admin'),
(4, 'Presidente', 'Presidente', 'Presidente', 30, 0, 'sdasda@asdad.es', 'Presidente', 'Presidente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD UNIQUE KEY `RESTRICCION_DUPLICIDAD` (`fecha`,`hora`,`id_pista`) USING BTREE,
  ADD KEY `FK_reserva_pista` (`id_pista`),
  ADD KEY `FK_reserva_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
