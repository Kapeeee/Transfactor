-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-01-2019 a las 10:33:57
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_transfactor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(10) DEFAULT NULL,
  `razon_social` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contacto_personal` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `rut`, `razon_social`, `email`, `telefono`, `contacto_personal`, `direccion`) VALUES
(1, '59069860-1', 'ISOTRONEX CHILE S.A.', 'ejemplo@eurocapital.cl', '+569 3088 2346', 'Felipe Fuenzalida', 'AV. LAS ACACIAS #6558');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `numero_doc` int(11) DEFAULT NULL,
  `centro_costo` int(11) DEFAULT NULL,
  `tipo_doc` int(11) DEFAULT NULL,
  `tasa` int(11) DEFAULT NULL,
  `dif_precio` int(11) DEFAULT NULL,
  `fec_emision` date DEFAULT NULL,
  `fec_prorroga` date DEFAULT NULL,
  `fec_pag_prorroga` date DEFAULT NULL,
  `interes_prorroga` int(11) DEFAULT NULL,
  `fec_venc_pactado` date DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `anticipado` int(11) DEFAULT NULL,
  `fec_depo_anticipo` date DEFAULT NULL,
  `retencion` int(11) DEFAULT NULL,
  `interes_mora` int(11) DEFAULT NULL,
  `excedente` int(11) DEFAULT NULL,
  `estado_pago_excedente` int(11) DEFAULT NULL,
  `fec_depo_exc` date DEFAULT NULL,
  `num_operacion_desc_excedente` int(11) DEFAULT NULL,
  `obs` varchar(150) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `operacion` int(11) DEFAULT NULL,
  `id_fact` int(11) DEFAULT NULL,
  `id_cli` int(11) DEFAULT NULL,
  `id_hold` int(11) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `fec_venc` date DEFAULT NULL,
  `tipo_pag_exc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_documento`),
  KEY `fk_doc_cli_idx` (`id_cli`),
  KEY `fk_doc_fac_idx` (`id_fact`),
  KEY `fk_doc_hold_idx` (`id_hold`),
  KEY `fk_doc_usu_idx` (`id_usu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `numero_doc`, `centro_costo`, `tipo_doc`, `tasa`, `dif_precio`, `fec_emision`, `fec_prorroga`, `fec_pag_prorroga`, `interes_prorroga`, `fec_venc_pactado`, `valor`, `anticipado`, `fec_depo_anticipo`, `retencion`, `interes_mora`, `excedente`, `estado_pago_excedente`, `fec_depo_exc`, `num_operacion_desc_excedente`, `obs`, `estado`, `operacion`, `id_fact`, `id_cli`, `id_hold`, `id_usu`, `fec_venc`, `tipo_pag_exc`) VALUES
(33, 1, NULL, NULL, NULL, NULL, '2019-01-29', NULL, NULL, NULL, NULL, 150000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL),
(34, 2, NULL, NULL, NULL, NULL, '2019-01-29', NULL, NULL, NULL, NULL, 200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL),
(35, 3, NULL, NULL, NULL, NULL, '2019-01-29', NULL, NULL, NULL, NULL, 250000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL),
(36, 4, NULL, NULL, NULL, NULL, '2019-01-29', NULL, NULL, NULL, NULL, 300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factoring`
--

CREATE TABLE IF NOT EXISTS `factoring` (
  `id_factoring` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(10) DEFAULT NULL,
  `razon_social` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contacto_personal` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_factoring`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `factoring`
--

INSERT INTO `factoring` (`id_factoring`, `rut`, `razon_social`, `email`, `telefono`, `contacto_personal`, `direccion`) VALUES
(1, '75485485-5', 'SERVICIOS FINANCIEROS VIRACOCHA', 'CONTACTO@VIRACOCHA.CL', '+56 9 3584 8584', 'ALINE BRAVO', 'AV. ARGENTINA 17 OF 312, LOS ANDES.'),
(2, '75845658-5', 'SERVICIOS FINANCIEROS EUROCAPITAL S.A', 'CONTACTO@EUROCAPITAL.CL', '+56 9 8558 6585', 'MARCELO GOMEZ', 'AV. 26 DE DICIEMBRE #3585 LOS ANDES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `holding`
--

CREATE TABLE IF NOT EXISTS `holding` (
  `id_hold` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(10) DEFAULT NULL,
  `razon_social` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contacto_personal` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hold`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `holding`
--

INSERT INTO `holding` (`id_hold`, `rut`, `razon_social`, `email`, `telefono`, `contacto_personal`, `direccion`) VALUES
(1, '25225854-5', 'TRANSPORTES FACTOR LTDA', 'CORREO@ROBERTOTRANSFACTOR.CLSS', '+56 9 6855 6548', 'Felipe Fuenzalida', 'San Francisco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tab_param`
--

CREATE TABLE IF NOT EXISTS `tab_param` (
  `cod_grupo` int(11) DEFAULT NULL,
  `cod_item` int(11) DEFAULT NULL,
  `desc_item` varchar(150) DEFAULT NULL,
  `vig_item` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='			';

--
-- Volcado de datos para la tabla `tab_param`
--

INSERT INTO `tab_param` (`cod_grupo`, `cod_item`, `desc_item`, `vig_item`) VALUES
(1, 0, 'CARGO', b'1'),
(1, 1, 'FINANCIERO', b'1'),
(1, 2, 'ADMINISTRATIVO', b'1'),
(2, 0, 'PERFIL', b'1'),
(2, 1, 'ADMIN', b'1'),
(2, 2, 'SUPERVISOR', b'1'),
(3, 0, 'ESTADO FACTURA', b'1'),
(3, 1, 'SIN MOVIMIENTO', b'1'),
(3, 2, 'FACTORIZADA', b'1'),
(3, 3, 'PRORROGADA', b'1'),
(3, 4, 'CANCELADA DE CLIENTE A FACTOR', b'1'),
(3, 5, 'CANCELADA DE CLIENTE A FACTORING', b'1'),
(3, 6, 'CANCELADA DE FACTOR A FACTORING', b'1'),
(4, 0, 'TIPO DE PAGO', b'1'),
(4, 1, 'TRANSFERENCIA', b'1'),
(4, 2, 'VALE VISTA', b'1'),
(4, 3, 'CHEQUE', b'1'),
(5, 0, 'TIPO DE DOCUMENTO', b'1'),
(5, 1, 'LETRA', b'1'),
(5, 2, 'FACTURA', b'1'),
(5, 3, 'OTRO', b'1'),
(6, 0, 'ESTADO PAGO EXCEDENTE', b'1'),
(6, 1, 'PAGADO', b'1'),
(6, 2, 'DESCONTADO', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usu` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(10) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `vigencia` bit(1) DEFAULT NULL,
  `cargo` int(11) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `nick` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usu`, `rut`, `nombre`, `apellido`, `email`, `pass`, `vigencia`, `cargo`, `perfil`, `nick`) VALUES
(1, '17164970-6', 'PATRIKS', 'PIMENTELS', 'PPIMENTEL@ANDESCODE.CLS', '9407c826d8e3c07ad37cb2d13d1cb641', b'1', 2, 2, 'PPIMENTEL'),
(2, '18113816-5', 'Rocio ', 'Costa', 'rcosta@factor.cl', 'fcd37399b82684a703e3be2d8368267b', b'1', 1, 2, 'RCOSTA');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `fk_doc_cli` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_doc_fac` FOREIGN KEY (`id_fact`) REFERENCES `factoring` (`id_factoring`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_doc_hold` FOREIGN KEY (`id_hold`) REFERENCES `holding` (`id_hold`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_doc_usu` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
