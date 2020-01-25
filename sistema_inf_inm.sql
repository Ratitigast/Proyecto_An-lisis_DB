-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2020 a las 01:38:06
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_inf_inm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escritura`
--

CREATE TABLE `escritura` (
  `no_escritura` int(5) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `no_notaria` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escritura`
--

INSERT INTO `escritura` (`no_escritura`, `rfc`, `no_notaria`) VALUES
(693, 'CAFM950313R36', 1),
(1440, 'PEGM750203A67', 3),
(9262, 'GUGM9501282X2', 9),
(11894, 'PEJT950116QY9', 8),
(16014, 'GUGM9501282X2', 3),
(22291, 'GUJM950313R56', 2),
(38293, 'CAFM950313R36', 9),
(40271, 'MABS9501049T9', 9),
(43854, 'MAMH950121262', 2),
(46016, 'GUJM950313R56', 7),
(55269, 'GOMM950128LG9', 7),
(66992, 'CUVC950214JX8', 5),
(74653, 'PEGM750203A67', 6),
(77396, 'PEJT950116QY9', 2),
(77818, 'MABS9501049T9', 1),
(84307, 'GM750203ET2', 6),
(85055, 'GOMM950128LG9', 5),
(91341, 'GUJM950313R56', 2),
(92528, 'MABS9501049T9', 3),
(94235, 'MAMH950121262', 6),
(98637, 'CUVC950214JX8', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE `inmueble` (
  `no_catastro` varchar(22) NOT NULL,
  `no_escritura` int(5) NOT NULL,
  `tipo_inmueble` varchar(12) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `descripcion` varchar(130) NOT NULL,
  `no_inmueble` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`no_catastro`, `no_escritura`, `tipo_inmueble`, `direccion`, `descripcion`, `no_inmueble`) VALUES
('3ZZHZ5LOMFCE70YXMJXU', 43854, 'comercial', 'AV. INDEPENDENCIA NO 145', 'Al oriente de la glorieta de insurgentes al poniente de calle 11', 55),
('6QY7SVJUPEPGMZS0OVUB', 74653, 'habitacional', 'CALLE OCAMPO NO 14', ' Al poniente de la calle Bethoven al oriente de la Av.Misterios', 34),
('81KZBUTM5GA11ZLUDRNU', 38293, 'habitacional', 'AV. INDEPENDENCIA N0.670', ' Al poniente de Av. Lazaro cardenas al norte de calle juventino rosas', 11),
('87GFBUTT1GA15POURRNU', 22291, 'habitacional', 'AV. REVOLUCION N0.102', 'Al sureste de calle juventino victoria y noreste de Av. Volcanes', 13),
('CB9OL4SQ4F9U6HT3VV91', 98637, 'comercial', 'PROL.5 DE MAYO NO.786', 'Al sur de calle excursionistas al poniente de Av. Revolucion', 32),
('CDM4XF5GBZ64K05QR074', 94235, 'comercial', 'CALLE MATAMOROS NO. 310', ' Al sur con Av. del iman al norte con Av. Insurgentes', 12),
('CFAGA9BPEO0XBL3EWE0G', 40271, 'habitacional', 'AV. 20 DE NOVIEMBRE NO.1178', 'Al sur de calle 20 de mayo al norte de calle excursionistas', 20),
('DYKVXSQUXHN8TP1PBJLA', 77396, 'comercial', 'BLVD. BENITO JUAREZ S/N', 'Al poniente con Av. Insurgentes sur con calle juventino rosas', 77),
('EPB350WJHRL8R7VSOKZT', 9262, 'habitacional', 'CARRETERA A LOMA ALTA S/N', 'Al sur con Av.Independencia al norte con calle campo', 45),
('GFUO0E4WANPOT0AEJH8K', 46016, 'comercial', 'AV. 5 DE MAYO NO. 1226', 'Al oriente de la Av. Lazaro cardenas al poniente de Av.Misterios', 14),
('HA05DSDX8FXT5E0BJV', 693, 'habitacional', 'CALLE AGUSTIN LARA NO. 69-B', 'Al noreste con Av.Independecia al sureste con Av.Politécnico', 123),
('I4UWJ4DB64CD37IBMQP4', 77818, 'habitacional', 'CALLE MATAMOROS NO.280', 'Al este con calle cristobal colon al sur con A. politecnico', 32),
('JMI3U976KFDQKYGCC9GT', 92528, 'habitacional', 'CALLE ZARAGOZA NO. 1010', 'Al norte con calle juventino rosas al sur con calle bethoven', 11),
('NPTLC8AEOLSKM6QZT31P', 84307, 'comercial', 'AV. INDEPENDENCIA NO. 779', 'Al norponiente con Av. Independencia al sureste con Av. 5 de mayo', 12),
('O55NCFTUO0LMUFU63PFG', 85055, 'habitacional', 'CALLE OCAMPO NO. 254', 'Al poniente de Av. del Iman al oriente de calle victoria', 90),
('QUMFST9HF24LVV5DWJ1S', 11894, 'comercial', 'AV. 5 DE MAYO NO 1100-A', 'Al sur de la Av. revolucion al norte con Av. Lazaro cardenas', 11),
('R9MFCT4B6EBWQF8WVLSS', 1440, 'habitacional', 'AV. 20 DE NOVIEMBRE NO.859-B', 'Al sur con Av. REVOLUCION al este con Av. Insurgentes', 44),
('SWGZLYQZ77UJIJBA0QRF', 66992, 'comercial', 'AV. INDEPENDENCIA NO. 241', 'Al sureste con Av. 5 de mayo al oriente con calle agustin al poniente con calle campo', 134),
('UE82ORFPWZNMHVWNEAZ5', 91341, 'habitacional', 'AV. 20 DE NOVIEMBRE NO. 1060', 'Al sureste con calle zaragoza al norte con calle agustin lara', 56),
('Y23XSBCD7CTLLE9NMU9B', 55269, 'habitacional', 'AV. 20 DE NOVIEMBRE NO.1024', 'Al poniente con calle matamoros al oriente con Av.20 de noviembre', 33),
('ZRC1RDV3T1KGXAYYDBE2', 16014, 'comercial', 'AV. 20 DE NOVIEMBRE NO 1320', 'Al sur de Av.Misterios al noreste de Av. Constituyente', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `no_catastro` varchar(22) NOT NULL,
  `rfc` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`no_catastro`, `rfc`) VALUES
('HA05DSDX8FXT5E0BJV', 'CAFM950313R36'),
('R9MFCT4B6EBWQF8WVLSS', 'PEGM750203A67'),
('EPB350WJHRL8R7VSOKZT', 'GUGM9501282X2'),
('QUMFST9HF24LVV5DWJ1S', 'PEJT950116QY9'),
('ZRC1RDV3T1KGXAYYDBE2', 'GUGM9501282X2'),
('81KZBUTM5GA11ZLUDRNU', 'CAFM950313R36'),
('CFAGA9BPEO0XBL3EWE0G', 'MABS9501049T9'),
('3ZZHZ5LOMFCE70YXMJXU', 'MAMH950121262'),
('GFUO0E4WANPOT0AEJH8K', 'GUJM950313R56'),
('Y23XSBCD7CTLLE9NMU9B', 'GOMM950128LG9'),
('SWGZLYQZ77UJIJBA0QRF', 'CUVC950214JX8'),
('6QY7SVJUPEPGMZS0OVUB', 'PEGM750203A67'),
('DYKVXSQUXHN8TP1PBJLA', 'PEJT950116QY9'),
('I4UWJ4DB64CD37IBMQP4', 'MABS9501049T9'),
('NPTLC8AEOLSKM6QZT31P', 'GM750203ET2'),
('O55NCFTUO0LMUFU63PFG', 'GOMM950128LG9'),
('UE82ORFPWZNMHVWNEAZ5', 'GUJM950313R56'),
('JMI3U976KFDQKYGCC9GT', 'MABS9501049T9'),
('CDM4XF5GBZ64K05QR074', 'MAMH950121262'),
('CB9OL4SQ4F9U6HT3VV91', 'CUVC950214JX8'),
('87GFBUTT1GA15POURRNU', 'GUJM950313R56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `rfc` varchar(13) NOT NULL,
  `telefono` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`rfc`, `telefono`) VALUES
('CAFM950313R36', 2147483647),
('CUVC950214JX8', 2147483647),
('GM750203ET2', 2147483647),
('GOMM950128LG9', 2147483647),
('GUGM9501282X2', 2147483647),
('GUJM950313R56', 2147483647),
('MABS9501049T9', 2147483647),
('MAMH950121262', 2147483647),
('PEGM750203A67', 2147483647),
('PEJT950116QY9', 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titular`
--

CREATE TABLE `titular` (
  `rfc` varchar(13) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `ap_paterno` varchar(25) NOT NULL,
  `ap_materno` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `titular`
--

INSERT INTO `titular` (`rfc`, `curp`, `nombre`, `ap_paterno`, `ap_materno`) VALUES
('CAFM950313R36', 'CAFM950313HDFLNI08', 'Miguel', 'Calderon', 'Fuentes'),
('CUVC950214JX8', 'CUVC950214MDFVZR07', 'Caren Angelina', 'Cuevas', 'Vazquez'),
('GM750203ET2', 'DIGM750203HDFIRR00', 'Marco', 'Diaz', 'Garcia'),
('GOMM950128LG9', 'GOMM950128HDFDRR08', 'Mario', 'Godinez', 'Martinez'),
('GUGM9501282X2', 'GUGM950128MDFTNN02', 'Monserrat', 'Gutierrez', 'Guantez'),
('GUJM950313R56', 'GUJM950313MDFVIR01', 'Mariana', 'Guevara', 'Jimenez'),
('MABS9501049T9', 'MABS950104HDFRNR08', 'Sergio', 'Martinez', 'Benirtez'),
('MAMH950121262', 'MAMH950121HDFRRC06', 'Hector', 'Martinez', 'Murrieta'),
('PEGM750203A67', 'PEGM750203HDFRR01', 'Mario', 'Peña', 'Garcia'),
('PEJT950116QY9', 'PEJT950116HDFRIR07', 'Teresa', 'Perez', 'Jimenez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `escritura`
--
ALTER TABLE `escritura`
  ADD PRIMARY KEY (`no_escritura`),
  ADD KEY `rfc` (`rfc`);

--
-- Indices de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD PRIMARY KEY (`no_catastro`),
  ADD UNIQUE KEY `inmueble_ibfk_1` (`no_escritura`) USING BTREE;

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD KEY `rfc` (`rfc`),
  ADD KEY `no_catastro` (`no_catastro`) USING BTREE;

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD KEY `rfc` (`rfc`);

--
-- Indices de la tabla `titular`
--
ALTER TABLE `titular`
  ADD PRIMARY KEY (`rfc`),
  ADD UNIQUE KEY `curp` (`curp`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `escritura`
--
ALTER TABLE `escritura`
  ADD CONSTRAINT `escritura_ibfk_1` FOREIGN KEY (`rfc`) REFERENCES `titular` (`rfc`);

--
-- Filtros para la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD CONSTRAINT `inmueble_ibfk_1` FOREIGN KEY (`no_escritura`) REFERENCES `escritura` (`no_escritura`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `pertenece_ibfk_1` FOREIGN KEY (`no_catastro`) REFERENCES `inmueble` (`no_catastro`),
  ADD CONSTRAINT `pertenece_ibfk_2` FOREIGN KEY (`rfc`) REFERENCES `titular` (`rfc`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`rfc`) REFERENCES `titular` (`rfc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
