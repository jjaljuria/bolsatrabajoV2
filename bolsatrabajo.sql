-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2020 a las 03:09:45
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

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
  `contrasenaEmpresa` varchar(45) NOT NULL,
  `imagenEmpresa` varchar(1000) NOT NULL DEFAULT './img-empresa/perfil-predeterminado',
  `preguntaSeguridad` char(150) DEFAULT NULL,
  `respuestaSeguridad` char(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `nombreEmpresa`, `descripcionEmpresa`, `rif`, `direccionEmpresa`, `areaEmpresa`, `correoEmpresa`, `webEmpresa`, `contrasenaEmpresa`, `imagenEmpresa`, `preguntaSeguridad`, `respuestaSeguridad`) VALUES
(5, 'Colegio Adventista', 'colegio', 'j-123123', 'sierra maestra', 'EnseÃ±anza', 'adv@gmail.com', '', '123', './img-empresa/perfil-predeterminado.png', NULL, NULL),
(6, 'smartprocess', 'ingeneria', 'j-123123', 'tierra negra', 'IngenierÃ­a', 'sp@smartprocessgroup.com', 'www.sp.com', '1234', './img-empresa/1572969657', NULL, NULL),
(7, 'asd', 'asd', 'asd', 'asd', 'Asesorias', 'sp@sp.com', 'asd', '1234', './img-empresa/perfil-predeterminado.png', NULL, NULL),
(9, 'urbe', 'educacion', '13123', 'c2', 'EnseÃ±anza', 'urbe@gmail.com', 'urbe.com', 'urbe', './img-empresa/perfil-predeterminado', 'Â¿Cual es tu color favorito?', 'rojo');

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
  `expFechaIni` date NOT NULL,
  `expFechaFin` date NOT NULL,
  `usuarios_idusuarios` int(11) NOT NULL,
  `yearExp` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`idexp`, `expEmpresa`, `expPais`, `expSector`, `expArea`, `expLabor`, `expFechaIni`, `expFechaFin`, `usuarios_idusuarios`, `yearExp`) VALUES
(4, 'YOLOPIDO', 'VZLA', 'INGENIERIA', 'TECNOLOGIA', 'PROGRAMADOR', '0001-11-11', '0011-11-11', 3, NULL),
(8, 'urbe', 'venezuela', 'educacion', 'tecnico', 'preparar pc', '2019-10-22', '2019-10-02', 3, NULL),
(10, 'CONTROVAL', 'Venezuela', 'Ingenieria', 'Logistica', 'Controlar procesos', '2016-01-01', '2020-01-29', 7, NULL),
(14, 'SMARTPROCESS', 'Venezuela', 'INGENIERIA', 'SOPORTE TECNICO', 'REPARAR TODO', '2015-01-01', '2020-11-18', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `idempresa` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpropuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `funciones` text,
  `categoria` varchar(150) DEFAULT NULL,
  `aExp` int(10) DEFAULT NULL,
  `educacion` char(150) DEFAULT NULL,
  `viajes` char(100) DEFAULT NULL,
  `vehiculo` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `propuesta`
--

INSERT INTO `propuesta` (`idpropuesta`, `titulo`, `descripcion`, `vacantes`, `sueldo`, `localizacion`, `publicacion`, `empresa_idempresa`, `funciones`, `categoria`, `aExp`, `educacion`, `viajes`, `vehiculo`) VALUES
(50, 'programador', 'saber react', 3, 111, 'Maracaibo', '0000-00-00 00:00:00', 5, 'programar app con react', 'Ventas', NULL, NULL, NULL, NULL),
(51, 'DESARROLLADOR WEB', 'SABER ANGULAR', 3, 222, 'CiudadOjeda', '0000-00-00 00:00:00', 6, 'REALIZAR APP CON ANGULAR', 'Mantenimiento', NULL, NULL, NULL, NULL),
(56, 'ASISTENTE ADMINISTRATIVO', 'QUE SEPA SAINT', 3, 400, 'Ciudad Ojeda', '0000-00-00 00:00:00', 6, 'SER ASISTENTE', 'Mantenimiento', 8, 'Bachiller', 'No', 'No');

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
  `fechaNacimiento` date NOT NULL,
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
  `curriculum` text,
  `descripcion` varchar(100) DEFAULT NULL,
  `fotoPerfil` varchar(1000) DEFAULT './img-perfil/perfil-predeterminado',
  `pregunta1` varchar(150) DEFAULT NULL,
  `resp1` char(150) DEFAULT NULL,
  `sueldoDeseado` char(100) DEFAULT NULL,
  `edad` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `nombre`, `apellido`, `ci`, `correo`, `contrasena`, `fechaNacimiento`, `estadoCivil`, `genero`, `num1`, `pais`, `ciudad`, `direccion`, `puestoDeseado`, `educacion`, `perfilProfesional`, `idioma`, `nivelIdioma`, `disponibilidadViajar`, `licencia`, `vehiculo`, `expEmpresa`, `expPais`, `expSector`, `expArea`, `expLabor`, `expFechaIni`, `expFechaFin`, `curriculum`, `descripcion`, `fotoPerfil`, `pregunta1`, `resp1`, `sueldoDeseado`, `edad`) VALUES
(1, 'Yohesky', 'Pimentel', 26878565, 'yoheskyjpp@gmail.com', '1234', '1998-05-29', 'Casado/a', 'Hombre', 2147483647, 'venezuela', 'Maracaibo', 'UrbanizaciÃ³n el Soler', 'programador', 'Universitario', '', 'Ingles', 'intermedio', 'No', '', 'No', 'EEE', '', '', '', '', '0000-00-00', '0000-00-00', './curriculum/CVYOHESKY2019.pdf', 'angular', './img-perfil/yo.png', NULL, NULL, '400', 22),
(3, 'jose', 'aljuria', 2555555, 'josealjuria@gmail.com', 'jose', '0000-00-00', '', '', 2147483647, 'venezuela', 'Maracaibo', 'Venezuela', 'PROGRAMADOR WEB', 'bachiller', '', 'ingles', 'intermedio', '', '', NULL, '', '', '', '', '', '0000-00-00', '0000-00-00', NULL, NULL, './img-perfil/1572969632', NULL, NULL, NULL, NULL),
(4, 'luis', 'colmenarez', 2512345, 'luis@gmail.com', 'luis', '0000-00-00', '', '', 2147483647, 'venezuela zulia', 'Maracaibo', 'Venezuela', 'tecnico', 'Universitario', '', 'ingles', 'basico', '', '', NULL, '', '', '', '', '', '0000-00-00', '0000-00-00', NULL, 'Persona responsable y autodidacta', './img-perfil/perfil-predeterminado.png', NULL, NULL, NULL, NULL),
(5, '', '', 0, '', '', '0000-00-00', '', '', 0, '', '', '', '', '', '', '', '', '', '', NULL, 'elinca', 'vzla', 'contratista', 'it', 'instalar computadoras', '0001-11-11', '0011-11-11', NULL, NULL, './img-perfil/perfil-predeterminado.png', NULL, NULL, NULL, NULL),
(7, 'coral', 'portillo', 14901511, 'cportillo@gmail.com', 'coral', '0000-00-00', 'Casado/a', 'Hombre', 2147483647, 'Venezuela', 'Maracaibo', 'Soler', 'LOGISTICA', 'Tecnico Superior Universitario', '', 'Ingles', 'intermedio', 'No', '', 'Si', '', '', '', '', '', '0000-00-00', '0000-00-00', NULL, 'Asistente de logÃ­stica con 10 aÃ±os de experiencia en el mercado con alta responsabilidad y entrega', './img-perfil/1579706977_7', 'Â¿Como se llama tu mejor amigo de la infancia?', 'yohesky', '400', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_has_propuesta`
--

CREATE TABLE `usuarios_has_propuesta` (
  `usuarios_idusuarios` int(11) NOT NULL,
  `propuesta_idpropuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_has_propuesta`
--

INSERT INTO `usuarios_has_propuesta` (`usuarios_idusuarios`, `propuesta_idpropuesta`) VALUES
(3, 50),
(1, 50),
(4, 50),
(7, 51);

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD KEY `idempresa` (`idempresa`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idpropuesta` (`idpropuesta`);

--
-- Indices de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD PRIMARY KEY (`idpropuesta`,`empresa_idempresa`),
  ADD KEY `fk_propuesta_empresa1_idx` (`empresa_idempresa`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- Indices de la tabla `usuarios_has_propuesta`
--
ALTER TABLE `usuarios_has_propuesta`
  ADD KEY `usuarios_idusuarios` (`usuarios_idusuarios`),
  ADD KEY `propuesta_idpropuesta` (`propuesta_idpropuesta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `idexp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  MODIFY `idpropuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `fk_experiencia_usuarios1` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuarios`) ON DELETE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_3` FOREIGN KEY (`idpropuesta`) REFERENCES `propuesta` (`idpropuesta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD CONSTRAINT `fk_propuesta_empresa1` FOREIGN KEY (`empresa_idempresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios_has_propuesta`
--
ALTER TABLE `usuarios_has_propuesta`
  ADD CONSTRAINT `usuarios_has_propuesta_ibfk_1` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuarios_has_propuesta_ibfk_2` FOREIGN KEY (`propuesta_idpropuesta`) REFERENCES `propuesta` (`idpropuesta`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
