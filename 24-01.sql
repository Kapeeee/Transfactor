-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-01-2019 a las 10:21:31
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `numero_doc`, `centro_costo`, `tipo_doc`, `tasa`, `dif_precio`, `fec_emision`, `fec_prorroga`, `fec_pag_prorroga`, `interes_prorroga`, `fec_venc_pactado`, `valor`, `anticipado`, `fec_depo_anticipo`, `retencion`, `interes_mora`, `excedente`, `estado_pago_excedente`, `fec_depo_exc`, `num_operacion_desc_excedente`, `obs`, `estado`, `operacion`, `id_fact`, `id_cli`, `id_hold`, `id_usu`, `fec_venc`, `tipo_pag_exc`) VALUES
(2, 2, 3, 1, 4, 1500, '2018-08-05', '2018-08-05', '2018-08-05', 15, '2018-08-05', 12442, 1233, '2018-08-05', 4522, 3224, 323, 1, '2018-08-05', 12, 'hahah', 1, 32, 1, 1, 1, 1, '2018-08-05', 1),
(3, 2, 3, 1, 4, 1500, '2018-08-05', '2018-08-05', '2018-08-05', 15, '2018-08-05', 12442, 1233, '2018-08-05', 4522, 3224, 323, 1, '2018-08-05', 12, 'hahah', 1, 32, 1, 1, 1, 1, '2018-08-05', 2),
(4, 952, 11244, 2, 2, 5000, '2019-01-24', '2019-01-18', '2019-01-19', 212, '2019-02-28', 3500, 1500, '2019-01-31', 10, 0, 45552, 1, NULL, 522, 'Prueba Numero 1', 2, 12, 2, 2, 1, 1, '2019-01-31', 1),
(5, 952, 11244, 2, 2, 5000, '2019-01-24', '2019-01-18', '2019-01-19', 212, '2019-02-28', 3500, 1500, '2019-01-31', 10, 0, 45552, 1, NULL, 522, 'Prueba Numero 1', 2, 12, 2, 2, 1, 1, '2019-01-31', 1),
(6, 952, 11244, 2, 2, 5000, '2019-01-24', '2019-01-18', '2019-01-19', 212, '2019-02-28', 3500, 1500, '2019-01-31', 10, 0, 45552, 1, NULL, 522, 'Prueba Numero 1', 2, 12, 2, 2, 1, 1, '2019-01-31', 1),
(7, 123, 214, 1, 12, 23124, '2019-01-25', '2019-01-19', '2019-01-24', 124, '2019-01-19', 124, 123, '2019-01-24', 24, 2312, 5122, 1, '2019-01-26', 1234, 'aqdwqdwdasd', 3, 2141, 2, 2, 2, 1, '2019-01-04', NULL),
(8, 358, 2020, 2, 1616, 1717, '2019-01-31', '2019-01-24', '2019-01-03', 123, '2019-01-26', 1313, 1414, '2019-02-27', 1515, 1919, 455, 2, '2019-01-28', 5585, 'nada.', 3, 1818, 2, 2, 2, 1, '2019-01-31', NULL),
(9, 358, 2020, 2, 1616, 1717, '2019-01-31', '2019-01-24', '2019-01-03', 123, '2019-01-26', 1313, 1414, '2019-02-27', 1515, 1919, 455, 2, '2019-01-28', 5585, 'nada.', 3, 1818, 2, 2, 2, 1, '2019-01-31', NULL),
(10, 358, 2020, 1, 1616, 1717, '2019-01-31', '2019-01-24', '2019-01-03', 123, '2019-01-26', 1313, 1414, '2019-02-27', 1515, 1919, 455, 2, '2019-01-28', 5585, 'nada.', 4, 1818, 2, 2, 2, 1, '2019-01-31', NULL),
(11, 214, 123, 1, 24124, 1231, '2019-01-05', '2019-01-11', '2019-01-25', 1242, '2019-01-25', 23124, 2412, '2019-01-26', 12412, 124, 1242, 2, '2019-01-24', 124124, 'qdqw1234', 4, 124, 2, 2, 1, 1, '2017-01-14', NULL),
(12, 124, 123, 2, 124, 141, '2019-01-19', '2019-01-18', '2019-01-26', 12412, '2019-01-03', 123, 123, '2019-01-11', 213124, 412, 21412, 2, '0000-00-00', 1242, 'fgh', 5, 312, 1, 2, 1, 1, '2019-01-26', NULL),
(13, 124, 123, 2, 124, 141, '2019-01-19', '2019-01-18', '2019-01-26', 12412, '2019-01-03', 123, 123, '2019-01-11', 213124, 412, 21412, 2, '0000-00-00', 1242, 'fgh', 5, 312, 1, 2, 2, 1, '2019-01-26', NULL);

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
