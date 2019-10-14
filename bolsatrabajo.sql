-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-10-2019 a las 02:36:58
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bolsatrabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategorias` int(11) NOT NULL,
  `nombreCategoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `nombreCategoria`) VALUES
(3, 'Administración'),
(4, 'Almacén'),
(5, 'Atención al Cliente'),
(6, 'Compras'),
(7, 'Construcción'),
(8, 'Contabilidad'),
(9, 'Gerencia'),
(10, 'Diseño'),
(11, 'Enseñanza'),
(12, 'Turismo'),
(13, 'Informática'),
(14, 'Ingeniería'),
(15, 'Asesorias'),
(16, 'Reparación'),
(17, 'Publicidad'),
(18, 'Recursos Humanos'),
(19, 'Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL,
  `nombreEmpresa` varchar(45) NOT NULL,
  `descripcionEmpresa` varchar(45) NOT NULL,
  `rif` varchar(45) NOT NULL,
  `direccionEmpresa` varchar(45) NOT NULL,
  `areaEmpresa` varchar(45) NOT NULL,
  `correoEmpresa` varchar(45) NOT NULL,
  `webEmpresa` varchar(45) NOT NULL,
  `contrasenaEmpresa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `nombreEmpresa`, `descripcionEmpresa`, `rif`, `direccionEmpresa`, `areaEmpresa`, `correoEmpresa`, `webEmpresa`, `contrasenaEmpresa`) VALUES
(5, 'adventista', 'colegio', 'j-123123', 'sierra maestra', 'EnseÃ±anza', 'adv@gmail.com', '', '123'),
(6, 'smartprocess', 'ingeneria', 'j-123123', 'tierra negra', 'IngenierÃ­a', 'sp@smartprocessgroup.com', 'www.sp.com', '1234'),
(7, 'asd', 'asd', 'asd', 'asd', 'Asesorias', 'sp@sp.com', 'asd', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `idexp` int(11) NOT NULL,
  `expEmpresa` varchar(100) NOT NULL,
  `expPais` varchar(100) NOT NULL,
  `expSector` varchar(100) NOT NULL,
  `expArea` varchar(100) NOT NULL,
  `expLabor` varchar(100) NOT NULL,
  `expFechaIni` datetime NOT NULL,
  `expFechaFin` datetime NOT NULL,
  `usuarios_idusuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`idexp`, `expEmpresa`, `expPais`, `expSector`, `expArea`, `expLabor`, `expFechaIni`, `expFechaFin`, `usuarios_idusuarios`) VALUES
(4, 'sad', 'dd', 'sad', 'ad', 'ad', '0111-11-11 00:00:00', '0011-11-11 00:00:00', 3),
(6, 'SMART PROCESS', 'VENEZUELA', 'INGENIERIA', 'DPTO TECNOLOGIA', 'MANTENIMIENTO DE EQUIPOS', '0011-11-11 00:00:00', '0011-11-11 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propuesta`
--

CREATE TABLE `propuesta` (
  `idpropuesta` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `vacantes` int(11) NOT NULL,
  `sueldo` float NOT NULL,
  `localizacion` varchar(45) NOT NULL,
  `publicacion` datetime NOT NULL,
  `empresa_idempresa` int(11) NOT NULL,
  `categorias_idcategorias` int(11) NOT NULL,
  `funciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `propuesta`
--

INSERT INTO `propuesta` (`idpropuesta`, `titulo`, `descripcion`, `vacantes`, `sueldo`, `localizacion`, `publicacion`, `empresa_idempresa`, `categorias_idcategorias`, `funciones`) VALUES
(29, 'backend', 'mysql\r\nphp', 1, 100, 'Cabimas', '0000-00-00 00:00:00', 6, 19, NULL),
(30, 'front end', 'angular\r\nbootstrap', 5, 500, 'Maracaibo', '0000-00-00 00:00:00', 6, 19, NULL),
(31, 'programador', 'angular', 4, 1333, 'Maracaibo', '0000-00-00 00:00:00', 6, 19, ''),
(32, 'react', 'react', 5, 111, 'Maracaibo', '0000-00-00 00:00:00', 6, 19, ''),
(33, 'laravel', 'saber laravel', 4, 144, 'Maracaibo', '0000-00-00 00:00:00', 6, 19, ''),
(34, 'eee', 'eee', 11, 111, 'Maracaibo', '0000-00-00 00:00:00', 6, 19, ''),
(35, 'PROGRAMADOR', 'QUE SEPA PROGRAMAR', 11, 444, 'Maracaibo', '0000-00-00 00:00:00', 6, 19, 'DEBE PROGRAMAR SIEMPRE'),
(36, 'profesor', 'que sepa matematicas', 1, 500, 'Maracaibo', '0000-00-00 00:00:00', 5, 19, 'dar clases de matematica'),
(37, 'trabajador', 'asd', 123, 111, 'Maracaibo', '0000-00-00 00:00:00', 5, 19, 'asd'),
(38, 'diseÃ±ador', 'dasd', 23, 11, 'Maracaibo', '0000-00-00 00:00:00', 5, 19, 'ad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `ci` int(11) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  `estadoCivil` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `num1` int(11) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `puestoDeseado` varchar(45) NOT NULL,
  `educacion` varchar(45) NOT NULL,
  `perfilProfesional` varchar(45) NOT NULL,
  `idioma` varchar(45) NOT NULL,
  `nivelIdioma` varchar(45) NOT NULL,
  `disponibilidadViajar` varchar(2) NOT NULL,
  `licencia` varchar(2) NOT NULL,
  `vehiculo` varchar(2) DEFAULT NULL,
  `expEmpresa` varchar(100) NOT NULL,
  `expPais` varchar(100) NOT NULL,
  `expSector` varchar(100) NOT NULL,
  `expArea` varchar(100) NOT NULL,
  `expLabor` varchar(100) NOT NULL,
  `expFechaIni` date NOT NULL,
  `expFechaFin` date NOT NULL,
  `curriculum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `nombre`, `apellido`, `ci`, `correo`, `contrasena`, `fechaNacimiento`, `estadoCivil`, `genero`, `num1`, `pais`, `ciudad`, `direccion`, `puestoDeseado`, `educacion`, `perfilProfesional`, `idioma`, `nivelIdioma`, `disponibilidadViajar`, `licencia`, `vehiculo`, `expEmpresa`, `expPais`, `expSector`, `expArea`, `expLabor`, `expFechaIni`, `expFechaFin`, `curriculum`) VALUES
(1, 'jose javier', 'Pimentel', 268785655, 'yoheskyjpp@gmail.com', '1234', '0000-00-00 00:00:00', '', '', 2147483647, 'venezuela', 'MAracaivo', 'dfsd', 'programador', 'Universitario', '', 'frances', 'basico', '', '', NULL, 'EEE', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(3, 'jose', 'aljuria', 2555555, 'josealjuria@gmail.com', 'jose', '0000-00-00 00:00:00', '', '', 2147483647, 'venezuela', 'Maracaibo', 'Venezuela', 'PROGRAMADOR WEB', 'bachiller', '', 'ingles', 'intermedio', '', '', NULL, '', '', '', '', '', '0000-00-00', '0000-00-00', NULL),
(4, 'luis', 'colmenarez', 2512345, 'luis@gmail.com', 'luis', '0000-00-00 00:00:00', '', '', 2147483647, 'venezuela zulia', 'Maracaibo', 'Venezuela', 'tecnico', 'bachiller', '', 'ingles', 'basico', '', '', NULL, '', '', '', '', '', '0000-00-00', '0000-00-00', NULL),
(5, '', '', 0, '', '', '0000-00-00 00:00:00', '', '', 0, '', '', '', '', '', '', '', '', '', '', NULL, 'elinca', 'vzla', 'contratista', 'it', 'instalar computadoras', '0001-11-11', '0011-11-11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_has_propuesta`
--

CREATE TABLE `usuarios_has_propuesta` (
  `usuarios_idusuarios` int(11) NOT NULL,
  `propuesta_idpropuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategorias`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`idexp`,`usuarios_idusuarios`),
  ADD KEY `fk_experiencia_usuarios_idx` (`usuarios_idusuarios`);

--
-- Indices de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD PRIMARY KEY (`idpropuesta`,`empresa_idempresa`,`categorias_idcategorias`),
  ADD KEY `fk_propuesta_empresa1_idx` (`empresa_idempresa`),
  ADD KEY `fk_propuesta_categorias1_idx` (`categorias_idcategorias`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- Indices de la tabla `usuarios_has_propuesta`
--
ALTER TABLE `usuarios_has_propuesta`
  ADD PRIMARY KEY (`usuarios_idusuarios`,`propuesta_idpropuesta`),
  ADD KEY `fk_usuarios_has_propuesta_propuesta1_idx` (`propuesta_idpropuesta`),
  ADD KEY `fk_usuarios_has_propuesta_usuarios_idx` (`usuarios_idusuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `idexp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  MODIFY `idpropuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `fk_experiencia_usuarios1` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD CONSTRAINT `fk_propuesta_categorias1` FOREIGN KEY (`categorias_idcategorias`) REFERENCES `categorias` (`idcategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_propuesta_empresa1` FOREIGN KEY (`empresa_idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios_has_propuesta`
--
ALTER TABLE `usuarios_has_propuesta`
  ADD CONSTRAINT `fk_usuarios_has_propuesta_propuesta1` FOREIGN KEY (`propuesta_idpropuesta`) REFERENCES `propuesta` (`idpropuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_has_propuesta_usuarios` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
