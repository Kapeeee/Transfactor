-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-03-2019 a las 09:04:48
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
  `plazo_pago` int(2) DEFAULT NULL,
  `giro` varchar(150) DEFAULT NULL,
  `comuna_factura` varchar(150) DEFAULT NULL,
  `dte_email` varchar(50) DEFAULT NULL,
  `ciudad_factura` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `rut`, `razon_social`, `email`, `telefono`, `contacto_personal`, `direccion`, `plazo_pago`, `giro`, `comuna_factura`, `dte_email`, `ciudad_factura`) VALUES
(2, '99570840-K', 'A J INGENIEROS S A', 'mibanez@aj.cl', '', 'Miriam Ibañez ', 'AVDA. LA DIVISA N? 0340', 30, 'FABRICACION E INSTALACION DE SISTEMAS DE COMUNICACION', 'SAN BERNARDO', 'dte.cl@einvoicing.signature-cloud.com', 'SANTIAGO'),
(3, '59201910-8', 'ABENER ENERGIA S.A Y TEYMA, GESTION DE CONTRATOS DE CONSTR. E ING. S.A', 'martin.lepori@abengoa.com', '', 'Martín Lépori Donati ', 'LAS ARAUCARIAS 9130 PISO 3', 30, 'GESTION CONTRATOS', 'QUILICURA', 'carla.donoso@abengoa.com', 'QUILICURA'),
(4, '96521440-2', 'ABENGOA CHILE S A', 'moises.rivera@abengoa.com', '', 'Moisés Rivera ', 'LAS ARAUCARIAS N? 9.130', 30, 'GENERACION HIDROELECTRICA', 'QUILICURA', 'abengoa_dte@paperless.cl', 'SANTIAGO'),
(5, '59069860-1', 'ACCIONA CONSTRUCCION S.A. AGENCIA CHILE', 'moises.rivera@abengoa.com', '', 'Moises Rivera ', 'AVENIDA APOQUINDO 4499 PISO 14', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'recepcion@custodium.com', 'SANTIAGO'),
(6, '76144427-1', 'AGRO-COMERCIAL LAS TORCASAS LTDA', 'agrocomerciallastorcasas@gmail.com', '', 'Miguel Silva', 'CALLE URIBE LOTE N? 4', 30, 'OTROS SERVICIOS AGRICOLAS N.C.P.', 'SANTA MARIA', 'facturacionmipyme2@sii.cl', 'SAN FELIPE'),
(7, '76418976-0', 'AGUAS DE ANTOFAGASTA S.A.', 'mpalavecinos@aguasantofagasta.cl', '', 'Marcelo Palavecinos Olivos ', 'AV PEDRO AGUIRRE CERDA 6496', 30, 'CAPTACION, PURIFICACION Y DISTRIBUCION DE AGUA', 'CALAMA', 'proveedordte@aguasantofagasta.cl', 'CALAMA'),
(8, '96954690-6', 'AGUAS Y RILES S. A.', 'pago.proveedores@aguasyriles.cl', '', 'Ana Castillo', 'MARCHANT PEREIRA 221 61', 30, 'VENTA AL POR MAYOR DE PRODUCTOS QUIMICOS', 'PROVIDENCIA', 'dte.cl@einvoicing.signature-cloud.com', 'SANTIAGO'),
(9, '76377649-2', 'AGUASIN SPA.', 'malvarez@aguasin.com', '', 'Miguel Alvarez', 'PANAMERICANA 18900', 30, 'PURIFICACION Y TRATAMIENTO DE AGUAS', 'LAMPA', 'empresas.esm@plane.cl', 'SANTIAGO'),
(10, '76035624-7', 'ALMACEN EXTRAPORTUARIO EL SAUCE S.A.', 'jcarvajal@rdaelsauce.cl ', '', 'Joselyn Carvajal Cort', 'AVDA. APOQUINDO 4001 OF 501', 30, 'BODEGAJE Y ALMACENAJE', 'LAS CONDES', 'elsauce_dte@paperless.cl', 'SANTIAGO'),
(11, '76321458-3', 'ALMEYDA SOLAR SPA', 'braulio.constanzo@enel.com', '', 'Constanzo Cifuentes, Braulio Francisco', 'AVDA. PRESIDENTE RIESCO 5335 P.15', 30, 'GENERACION EN OTRAS CENTRALES N.C.P.', 'LAS CONDES', 'almeydasolarspa@enel.com', 'SANTIAGO'),
(12, '76281400-5', 'ALUMINI INGENIERIA LTDA', 'pagoproveedores@aluminieng.com', '', 'Rosi Cerda', 'CAMINO EL CERRO 5091 EL ROSAL', 30, 'CONSTRUCCION DE EDIFICIOS COMPLETOS', 'HUECHURABA', 'dte_prod_alumini@smtp.suiteelectronica.com', 'SANTIAGO'),
(13, '79959900-7', 'ANDES CARGO TRANSPORTES LTDA', 'bm@andescargo.com', '', 'Bernardo Monasterio', 'CALLE LARGA 2338', 30, 'FABRICACION DE OTROS PRODUCTOS ELABORADOS', 'CALLE LARGA', 'FacturacionMIPYME@sii.cl', 'LOS ANDES'),
(14, '76545526-K', 'ARIDOS BUENA VISTA SPA', 'marcelo@aridosbuenavista.cl', '', 'Marcelo Diaz', 'ORILLA DE MAULE S/N EL PALTO', 60, 'EXTRACCION DE PIEDRAS ARENA Y ARCILLA', 'SAN JAVIER', 'intercambio@dtebcn.cl', 'TALCA'),
(15, '65698050-8', 'ASOCIACION GREMIAL DUE?OS DE BUSES PROV. EL LOA', 'vebru.7@gmail.com', '', 'Ver?nica Parada', 'FCO. MARTINIC MANZANA E 1 SITIO 8 PUERTO SECO', 30, 'TRANSPORTE', 'CALAMA', 'FacturacionMIPYME@sii.cl', 'CALAMA'),
(16, '76175835-7', 'ATCO SABINCO S.A .', 'MMORENO@ATCOSABINCO.COM', '', 'Margarita Moren o', 'LAS ESTERAS NORTE 2351', 30, 'FABRICACION DE PRODUCTOS METALICOS DE', 'QUILICURA', 'intercambio@dtebcn.cl', 'SANTIAGO'),
(17, '76792614-6', 'ATLANTICA YIELD CHILE SPA', 'abel.huenchunir@atlanticayield.com', '', 'Abel Huenchunir', 'CERRO EL PLOMO 5931 OF 1611', 30, 'GESTION EMPRESARIAL', 'LAS CONDES', 'FacturacionMIPYME@sii.cl', 'SANTIAGO'),
(18, '99564360-K', 'BESALCO M D MONTAJES S A', 'rsalazar@besalcomd.cl', '', 'Roberto Salazar', 'TAJAMAR 183, OF 301', 30, 'CONSTRUCCION', 'LAS CONDES', 'terceros-99564360k@dte.iconstruye.com', 'SANTIAGO'),
(19, '79633220-4', 'BESALCO MAQUINARIAS S.A.', 'sebastian.collao@besalco.cl', '', 'Sebasti?n Collao Carvajal.', 'JOSE JOAQUIN PRIETO 9660', 30, 'SERVICIOS DE CORTA DE MADERA', 'EL BOSQUE', 'terceros-796332204@dte.iconstruye.com', 'SANTIAGO'),
(20, '86431800-2', 'BRINKS CHILE S.A.', 'LBasi@brinks.cl', '', 'Leticia Basi', 'SERGIO LIVINGSTONE 964', 30, 'TRANSPORTE DE VALORES', 'INDEPENDENCIA', 'brinksrecepcion@custodium.com', 'SANTIAGO'),
(21, '76105206-3', 'BUILDTEK SPA', 'luis.aranda@buildtek.cl', '', 'Luis Aranda Caqueo', 'AVENIDA DEL VALLE 601 OF 22', 30, 'OBRAS DE INGENIERIA', 'HUECHURABA', 'dte.cl@einvoicing.signature-cloud.com', 'SANTIAGO'),
(22, '76512740-8', 'CACERES MILANEZ Y CIA LTDA.', 'contabilidad@controlmin.cl', '', 'Liesselot Alabarce M.', 'ANTOFAGASTA', 30, 'IND', 'ANTOFAGASTA', 'defontanacontrolminemp@defontana.com', 'ANTOFAGASTA'),
(23, '79933740-1', 'CARLOS ESCARATE Y CIA LTDA', 'bcruz@simacer.cl', '', 'B?rbara Cruz ', 'GRANADEROS 4556', 45, 'INDUSTRIAS BASICAS DE HIERRO Y ACERO', 'CALAMA', 'facturasdtesima@gmail.com', 'CALAMA'),
(24, '81185000-4', 'CESMEC S.A.', 'proveedores.cesmec@bureauveritas.cl', '', 'Flavia Saavedra', 'AV. MARATHON N? 2595', 30, 'OBRAS DE INGENIERIA', 'MACUL', 'dteprod@cesmec.cl', 'SANTIAGO'),
(25, '76276036-3', 'CIS CONSTRUCCIONES RENTA CAR LTDA', 'amorales@cisconstrucciones.cl', '', 'America Morales ', 'QUIRIHUE 295', 30, 'CONSTRUCCION', 'NU?OA', 'windte.recepcion@construccioncr.cl', 'SANTIAGO'),
(26, '76358067-9', 'COMERCIAL JEAN PAUL SOUBLETT RIVERA E. I. R. L.', 'adm.greentechchile@gmail.com', '', 'AliciaAguilarCastillo', 'EL CIRUELO 597', 30, 'ING. Y CONSTRUCCION', 'COPIAPO', 'FacturacionMIPYME@sii.cl', 'COPIAPO'),
(27, '76696139-8', 'COMERCIALIZADORA INDUSTRIAL INGEACEROS SPA', 'marcela.albornoz@dibema.cl', '', 'Marcela Albornoz ', 'GENERAL SALVO 3249 VILLA COVADONGA', 30, 'FABRICACION DE PRODUCTOS METALICOS DE ACERO', 'CALAMA', 'FacturacionMIPYME@sii.cl', 'CALAMA'),
(28, '76795930-3', 'CONSORCIO ABENGOA KIPREOS LIMITADA', 'paguilera@kipreos.cl', '', 'Paulina Aguilera ', 'LAS ARAUCARIAS 9130', 30, 'OBRAS DE INGENIERIA', 'QUILICURA', 'terceros-76795930@dte.iconstruye.com', 'SANTIAGO'),
(29, '76547842-1', 'CONSORCIO ISOTRON-SACYR S.A.', 'felipe.matus@isastur.com', '', 'Felipe Eduardo Matus Iratchet ', 'FRANCISCO NOGUERA 200 PISO 12', 30, 'OBRAS DE INGENIERIA', 'PROVIDENCIA', 'windte_dte@custodium.com', 'SANTIAGO'),
(30, '76556170-1', 'CONSORCIO TREPSA - CERRO ALTO S.A.', 'avivanco@cerroalto.cl', '', 'Antonio Vivanco A. ', 'FIDEL OTEIZA 1956 OF 102', 30, 'PREPARACION DEL TERRENO, EXCAVACIONES Y', 'PROVIDENCIA', 'facturacion-mca@cerroalto2.cl', 'SANTIAGO'),
(31, '96717980-9', 'CONSTRUCCION Y MONTAJE COM S.A.', 'jordan.madrid@skchile.cl', '', 'Jordan Madrid', 'ASTURIAS 149', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'comsarecepcion@custodium.com', 'SANTIAGO'),
(32, '76463399-7', 'CONSTRUCCION Y SERVICIOS SANDRA GOMEZ MONTIEL EIRL', 'syr-servicios@hotmail.com', '', 'Bernardo Soto Contreras', 'GILBERTO GOMEZ CONTARDO MZ-A SITIO 11', 30, 'CONSTRUCCION Y SERVICIOS', 'CALAMA', 'FacturacionMIPYME@sii.cl', 'CALAMA'),
(33, '76277983-8', 'CONSTRUCCIONES Y SERVICIOS CRISTIAN G. LEIVA CHACANA E.I.R.L.', 'CLCSOLDADURAS@GMAIL.COM', '', 'Cristian Leiva', 'HEROES DE LA CONCEPCION 2027', 30, 'OBRAS MENORES EN CONSTRUCCION', 'IQUIQUE', 'recepcion@mipymepro.cl', 'IQUIQUE'),
(34, '76888238-K', 'CONSTRUCTOR ATACAMA CSP CHILE SPA', 'carla.donoso@abengoa.com', '', 'Carla Donoso', 'ORINOCO 90', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'recepcion@custodium.com', 'SANTIAGO'),
(35, '79724730-8', 'CONSTRUCTORA ARAUCANIA LIMITADA', 'proveedores@araucanialtda.cl', '', 'Katherine Rodriguez', 'J M CARRERA 1049 1053 SANTA ROSA', 30, 'PREPARACION DEL TERRENO, EXCAVACIONES', 'CALAMA', 'cl.empresas@defontanadte.com', 'CALAMA'),
(36, '89853600-9', 'CONSTRUCTORA INGEVEC S.A.', 'veronica@ingevec.cl', '', 'Ver?nica Valenzuela Araya', 'CERRO EL PLOMO 5680  PISO 14', 30, 'CONSTRUCCION DE EDIFICIOS COMPLETOS O DE', 'LAS CONDES', 'dteingevec@desis.cl', 'SANTIAGO'),
(37, '76234055-0', 'CONSTRUCTORA PEUMA LIMITADA', 'ximena@constructorapeuma.com', '', 'Ximena Vilchez', 'CALLE SEPTIMA AVENIDA 1208', 30, 'CONSTRUCCION DE EFICIOS', 'SAN MIGUEL', 'terceros-76234055@dte.iconstruye.com', 'SANTIAGO'),
(38, '76749780-6', 'CONSTRUCTORA THECMA LTDA', 'pamela.tapia@thecma.cl', '', 'Pamela Tapia T.', 'SAN BARTOLO 4557 KAMAC MAYU', 30, 'OBRAS DE INGENIERIA', 'CALAMA', 'windte_dte@custodium.com', 'CALAMA'),
(39, '77052800-3', 'CONSTRUCTORA VISOL LTDA', 'obadilla@cvisol.cl', '', 'Obadilla Badilla', 'BALMACEDA 0211', 30, 'OBRAS DE INGENIERIA Y CONST. CIVILES', 'EL BOSQUE', 'terceros-visol@dte.iconstruye.com', 'SANTIAGO'),
(40, '61704000-K', 'CORP NACIONAL DEL COBRE DE CHILE', 'Acasa003@codelco.cl', '', 'Ana Casanga', 'HUERFANOS 1270', 30, 'EXTRACCION DE COBRE', 'SANTIAGO', 'codelcorecepcion@custodium.com', 'SANTIAGO'),
(41, '96870780-9', 'ECHEVERRIA IZQUIERDO MONTAJES INDUSTRIALES S.A.', 'proveedores@eimontajes.cl', '', 'HERNAN OSVALDO BACHO GONZALEZ', 'ROSARIO NORTE 532 702', 30, 'PREPARACION DEL TERRENO, EXCAVACIONES', 'LAS CONDES', 'dte-eimi@eimontajes.cl', 'SANTIAGO'),
(42, '76328136-1', 'EIFFAGE ENERGIA CHILE LTDA', 'crfernandez@energia.eiffage.es', '', 'Cristina Fernandez Lopez Brea ', 'ALMIRANTE PASTENE 185 305', 30, 'OBRAS DE INGENIERIA', 'PROVIDENCIA', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(43, '77874400-7', 'ELECMAIN LTDA.', 'jortiz@vtr.net', '', 'Jorge Ortiz', 'ELEUTERO RAMIREZ N? 442', 30, 'PREPARACION DEL TERRENO, EXCAVACIONES', 'ANTOFAGASTA', 'facturacion@facturachile.cl', 'ANTOFAGASTA'),
(44, '76761547-7', 'EMPRESA CONSTRUCTORA FLUOR SALFA SGO LIMITADA', 'Charles.Mayne-Nicholls@fluor.com', '', 'Charles Mayne-Nicholls', 'REYES LAVALLE 3340 PISO N? 7', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'dte.cl@einvoicing.signature-cloud.com', 'SANTIAGO'),
(45, '96684600-3', 'EMPRESA DE MONTAJES INDUSTRIALES SALFA S. A.', 'lperdomo@sccom.cl', '', 'LILINETH TERESA PERDOMO MONTILLA ', 'AVDA PRESIDENTE RIESCO 5335 PISO 11', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'mantenciones_prov@salfacorp.com', 'SANTIAGO'),
(46, '78315970-8', 'EMPRESA DE SERV. DE SEGURIDAD PRIVADA FUDU LTDA', 'contabilidadfudu@fudu.cl', '', 'Cynthia Rivera ', 'JOSE DOMINGO MUJICA 0210', 30, 'SERVICIOS', 'RANCAGUA', 'fudu@bsoft.cl', 'RANCAGUA'),
(47, '96524140-K', 'EMPRESA ELECTRICA PANGUIPULLI S.A.', 'braulio.constanzo@enel.com', '', 'Constanzo Cifuentes, Braulio Francisco', 'AVDA PRESIDENTE RIESCO 5335 P.15', 30, 'GENERACION HIDROELECTRICA', 'LAS CONDES', 'eepanguipullisa@enel.com', 'SANTIAGO'),
(48, '76200889-0', 'ENDURO SPA', 'Erika.Lindgren@emecogroup.com', '', 'Erika Lindgren', 'AVDA APOQUINDO 4001, OF 405', 30, 'ALQUILER DE OTROS TIPOS DE MAQUINARIAS Y EQUIPOS N.C.P.', 'LAS CONDES', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(49, '91081000-6', 'ENEL GENERACION CHILE S.A.', 'braulio.constanzo@enel.com', '', 'Constanzo Cifuentes, Braulio Francisco', 'SANTA ROSA 76', 90, 'GENERACION, TRANSMISION Y DISTRIBUCION ENERGIA ELECTRICA', 'SANTIAGO', 'enelgeneracionchilesa@enel.com', 'SANTIAGO'),
(50, '76412562-2', 'ENEL GREEN POWER DEL SUR SPA', 'braulio.constanzo@enel.com', '', 'Constanzo Cifuentes, Braulio Francisco', 'PDTE RIESCO 5335 PISO 15', 30, 'GENERACION EN OTRAS CENTRALES N.C.P.', 'LAS CONDES', 'egpdelsurspa@enel.com', 'SANTIAGO'),
(51, '79863400-3', 'ENRIQUE DESMADRYL LUDWIG Y CIA LTDA', 'eespinoza@gruasdesmadryl.cl', '', 'Ema Espinoza Suarez', 'FRESIA 2280', 30, 'INGENIERIA Y CONSTRUCCION', 'RENCA', 'dteedesmadrylycia@desis.cl', 'SANTIAGO'),
(52, '76925800-0', 'ESPINOS S.A.', 'juan.aris@potenciachile.cl', '', 'Juan Carlos Ar?s Vald', 'MONSE?OR SOTERO SANZ 267', 30, 'GENERACION ELECTRICA', 'SANTIAGO', 'electricas.dte@agrisol.cl', 'SANTIAGO'),
(53, '96959760-8', 'FARICASTELL S.A.', 'Pagoproveedores@inversionesfarias.cl', '', 'Carolinne Rojas C', 'ORLANDO VARAS 1263 O SECTOR CENTRO', 30, 'PREPARACION DEL TERRENO, EXCAVACIONES', 'ANTOFAGASTA', 'dte.cl@einvoicing.signature-cloud.com', 'ANTOFAGASTA'),
(54, '91489000-4', 'FINNING CHILE S.A.', 'jorge.mujica@finning.com', '', 'Jorge Mujica', 'AV. LOS JARDINES N? 924 C. EMPRESARIAL', 30, 'IMPORTACION, DISTRIBUCION Y SERVICIOS, ARRENDAMIENTO DE MAQU', 'HUECHURABA', 'recepciondte_prd@finning.com', 'SANTIAGO'),
(55, '78932860-9', 'GASATACAMA CHILE S.A.', 'braulio.constanzo@enel.com', '', 'Constanzo Cifuentes, Braulio Francisco', 'SANTA ROSA 76 P-10', 30, 'GENERACION TERMOELECTRICA EN CENTRALES DE CICLO COMBINADO', 'SANTIAGO', 'gasatacamachile@enel.com', 'SANTIAGO'),
(56, '76270831-0', 'GEOTECNIA CONSULTORES CHILE LIMITADA.', 'ldiaz@ghmconsultores.es', '', 'Luisa Diaz', 'PADRE MARIANO 391 OF 704', 30, 'GEOLOGIA', 'PROVIDENCIA', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(57, '96971330-6', 'GEOTERMICA DEL NORTE S A', 'braulio.constanzo@enel.com', '', 'Constanzo Cifuentes, Braulio Francisco', 'AVDA PRESIDENTE RIESCO 5335 PISO 15', 30, 'GENERACION, TRANSMISION Y DISTRIBUCION DE ENERGIA ELECTRICA', 'SANTIAGO', 'geotermicadelnortesa@enel.com', 'SANTIAGO'),
(58, '60511023-1', 'GOBERNACION PROVINCIAL DE EL LOA', 'rcarus@interior.gov.cl', '', 'Rodolfo Carus', 'GRANADEROS N? 2296', 30, 'GOBIERNO CENTRAL', 'CALAMA', '', 'CALAMA'),
(59, '77335840-0', 'GONZALEZ ACKERKNECHT LIMITADA', 'pcerda@cyg.cl', '', 'Patricia Cerda ', 'MANUEL MONTT 0570', 30, 'OBRAS DE INGENIERIA', 'RANCAGUA', 'dtecyg@desis.cl', 'RANCAGUA'),
(60, '76690471-8', 'GOSAN MINERALS SPA', 'gerenciagosanltda@gmail.com', '', 'Alesxander Sanchez', 'COSTA RICA 2864', 30, 'EXTRACCION DE MINERALES', 'CALAMA', 'FacturacionMIPYME@sii.cl', 'CALAMA'),
(61, '76233921-8', 'GRUAS ALTO TONELAJE MAULE SPA', 'rcontreras@gruasatmaule.cl', '', 'Rodrigo Contreras', 'AVDA FORESTAL 1100 PARQUE INDUSTRIAL', 30, 'ALQUILER DE MAQUINARIA Y EQUIPOS DE CONSTRUCCION', 'CORONEL', 'FacturacionMIPYME@sii.cl', 'CORONEL'),
(62, '76496891-3', 'GRUPO YALQUINCHA SPA', 'gerencia@grupoyalquincha.cl', '', 'Eduardo Cortes Gordillo', 'TALAGANTE 3411 MANUEL RODRIGUEZ', 30, 'OBRAS MENORES EN CONSTRUCCION', 'CALAMA', 'intercambio@facto.cl', 'CALAMA'),
(63, '76378396-0', 'HIGHSERVICE INGENIERIA Y CONSTRUCCION LTDA', 'bjara@highservice.cl', '', 'Belgica Jara', 'AVDA. PDTE KENNEDY 6660 P 1', 30, 'OBRAS DE INGENIERIA', 'VITACURA', '76378396-0@febos.cl', 'SANTIAGO'),
(64, '79723890-2', 'ICEM S.A.', 'asalas@icem.cl', '', 'ALONSO TOMAS SALAS VASQUEZ ', 'AVDA. PRESIDENTE RIESCO 5335', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'mantenciones_prov@salfacorp.com', 'SANTIAGO'),
(65, '77189740-1', 'ICL CATODOS LTDA', 'jrojas@iclcatodos.cl', '', 'Juan Rojas', 'AVDA LAS INDUSTRIAS 325 SECTOR PUERTO SECO', 30, 'FABRICACION DE OTROS PRODUCTOS ELABORADOS', 'CALAMA', 'windte_dte@custodium.com', 'CALAMA'),
(66, '77276280-1', 'INDUSTRIAL SUPPORT COMPANY LTDA.', 'bjara@highservice.cl', '', 'Belgica Jara', 'AV. PDTE KENNEDY LATERAL 6660', 30, 'MANTENIMIENTO INDUSTRIAL', 'VITACURA', '77276280-1@febos.cl', 'SANTIAGO'),
(67, '76214280-5', 'INGENIERIA AVA MONTAJES LIMITADA', 'cristianacuna@ava.cl', '', 'Cristian Acu?a ', 'AUTOP. CONCEP. THNO 8696 713 EDIF BIO BIO', 30, 'FABRICACION DE PRODUCTOS METALICOS DE', 'HUALPEN', 'contabilidad@ava.cl', 'CONCEPCION'),
(68, '93546000-K', 'INGENIERIA CIVIL VICENTE S A', 'ssilva@icv.cl', '', 'Sergio Silva Riveros', 'MARCHANT PEREIRA N? 221, PISO 10', 30, 'FABRICACION DE OTROS EQUIPOS DE TRANSPORTES', 'PROVIDENCIA', 'dteicvsa@icv.cl', 'SANTIAGO'),
(69, '89630400-3', 'INGENIERIA EN ELECTRONICA COMPUTACION Y MEDICINA S.A.', 'obras.civiles@ecm.cl', '', 'Ruth Segura ', 'AVDA. ELIODORO YA?EZ 1890', 30, 'SERVICIOS DE INGENIERIA', 'PROVIDENCIA', 'dte_prod@ecm.cl', 'SANTIAGO'),
(70, '77539370-K', 'INGENIERIA MONTAJE Y SERVICIOS PATAGONIA LTDA.', 'crgalvez@imspatagonia.cl', '', 'Cristi?n G?vez ', 'LO FONTECILLA 201 OF.1021', 30, 'EXTRACCION DE PIEDRA, ARENA Y ARCILLA', 'LAS CONDES', 'ims@gestdocu.cl', 'SANTIAGO'),
(71, '91915000-9', 'INGENIERIA Y CONSTRUCCION SIGDO KOPPERS S.A.', 'jordan.madrid@skchile.cl', '', 'Jordan Madrid', 'MALAGA 120', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'icskrecepcion@custodium.com', 'SANTIAGO'),
(72, '76006925-6', 'INGENIERIA Y CONSTRUCCIONES AMECI LIMITADA', 'elizabeth.rojas@ameci.cl', '', 'Elizabeth Rojas ', 'DIEGO ECHEVERRIA 660', 30, 'OBRAS DE INGENIERIA', 'QUILLOTA', 'cl.empresas@defontanadte.com', 'QUILLOTA'),
(73, '79730880-3', 'INGENIERIA Y CONSTRUCCIONES INCOLUR S A', 'csantander@incolur.cl', '', 'Claudio Santander ', 'NAPOLEON 3010 PISO 6', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'windte_dte@custodium.com', 'SANTIAGO'),
(74, '76113171-0', 'INGENIERIA,PAVIMENTOS Y CONSTRUCCION SPA', 'fdo_fuentes_tapia@hotmail.com', '', 'FERNANDO FUENTES TAPIA', 'CASPANA 1826 VILLA AYQUINA', 30, 'MOV TIERRA, PAVIMENTACION, OBRAS CIVILES Y PROYECTOS', 'CALAMA', 'facturacionmipyme2@sii.cl', 'CALAMA'),
(75, '81740700-5', 'INVENIO S A', 'daniel.hernandez@invenio.cl', '', 'Daniel Hernandez ', 'CHILLAN 2318', 30, 'SERVICIOS E INSUMOS PARA LA MINERIA', 'INDEPENDENCIA', 'cl.empresas@defontanadte.com', 'SANTIAGO'),
(76, '76093010-5', 'INVERSIONES FARIAS Y FARIAS LIMITADA', 'marcaya@faricastellsa.cl ', '', 'Marcela Arcaya', 'ORLANDO VARAS 1263 SECTOR CENTRO SUR', 30, 'CONSTRUCTORA', 'ANTOFAGASTA', 'dte.cl@einvoicing.signature-cloud.com', 'ANTOFAGASTA'),
(77, '96825260-7', 'ISOTRON CHILE S A', 'felipe.matus@isastur.com', '', 'Felipe Eduardo Matus Iratchet', 'CALLE FRANCISCO NOGUERA N? 200 PISO 12', 30, 'OBRAS DE INGENIERIA', 'PROVIDENCIA', 'windte_dte@custodium.com', 'SANTIAGO'),
(78, '76481565-3', 'KEPS SERVICIOS DE INGENIERIA SPA', 'scerna@abasterm.cl', '', 'Sinthia Cerna ', 'LOS ALERCES 1701', 30, 'OBRAS DE INGENIERIA', 'CALAMA', 'facturacionmipyme2@sii.cl', 'CALAMA'),
(79, '76596781-3', 'MACROSS SERVICIOS INTEGRALES SPA', 'treyes.carrasco1@gmail.com', '', 'Tamara Reyes ', 'AVDA PEDRO AGUIRRE CERDA 11092 CASA 10', 30, 'SERVICIOS INTEGRALES', 'ANTOFAGASTA', 'facturacionmipyme2@sii.cl', 'ANTOFAGASTA'),
(80, '76414215-2', 'MARACOF CHILE SPA', 'emartinez@maracof.com', '', 'Emilio Martinez', 'ALONSO DE CORDOVA 5710 202', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(81, '77956270-0', 'MARTINIC INGENIERIA Y SERVICIOS LTDA.', 'martinic@martinic.cl', '', 'Paola Carmona ', 'CAM A CHIU CHIU SITIO N? 3 PUERTO SECO', 30, 'MANTENIMIENTO Y REPARACION DE VEHICULOS', 'CALAMA', 'facturaelectronica@martinic.cl', 'CALAMA'),
(82, '99542240-9', 'MATRAS Y ALFONSO S.A.', 'contabilidad@tcgroup.cl', '', 'Alejandra Diaz ', 'LIPARITA 250 BARRIO INDUSTRIAL', 30, 'HOTELES', 'ANTOFAGASTA', 'terceros-99542240@dte.iconstruye.com', 'ANTOFAGASTA'),
(83, '77203650-7', 'MAXIMILIANO GONZALEZ Y COMPANIA LIMITADA', 'patricia.lorca@metrika.cl', '', 'Patricia Lorca', 'DIEGO DE ALMAGRO 951', 30, 'ING. Y TECN. PARA SEGURIDAD Y MEDIO AMBIENTE', 'RANCAGUA', 'windte_dte@custodium.com', 'RANCAGUA'),
(84, '77800010-5', 'MECANICA MINERA INGENIERIA Y SERVICIOS LTDA', 'patricio.troncoso@mecamin.cl', '', 'Patricio Troncoso', 'PASAJE ANDALIEN 273', 30, 'REPARACION DE OTROS TIPOS DE MAQUINARIA', 'ANTOFAGASTA', 'facturacion@mecamin.cl', 'ANTOFAGASTA'),
(85, '99511310-4', 'MINERA Y MONTAJES CONPAX SPA', 'david.fransoni@conpax.cl', '', 'David Antonio Fransoni Vasquez ', 'PALACIO RIESCO 4583', 30, 'OBRAS DE INGENIERIA', 'HUECHURABA', 'terceros-conpax@dte.iconstruye.com', 'SANTIAGO'),
(86, '76610790-7', 'MLF INGENIERIA LTDA', 'jlizama@mlfingenieria.cl', '', 'Jessica Lizama C. ', 'INDEPENDENCIA 3355 VILLA CODELCO', 30, 'OBRAS DE INGENIERIA', 'ANTOFAGASTA', 'FacturacionMIPYME@sii.cl', 'ANTOFAGASTA'),
(87, '76060841-6', 'OBRAS ESPECIALES CHILE S. A.', 'marco.valderrama@obechile.cl', '', 'Marco Aurelio Vaderrama', 'AVDA PRESIDENTE RIESCO 5561 OF 501-A', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'obrasespeciales_chile@facturaweb.cl', 'SANTIAGO'),
(88, '99509260-3', 'OBRAS INDUSTRIALES SALFA S A', 'lperdomo@sccom.cl', '', 'LILINETH TERESA PERDOMO MONTILLA ', 'AVDA. PRESIDENTE RIESCO 5335 PISO 11', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'mantenciones_prov@salfacorp.com', 'SANTIAGO'),
(89, '76052206-6', 'PARQUE EOLICO VALLE DE LOS VIENTOS S.A.', 'braulio.constanzo@enel.com', '', 'Constanzo Cifuentes, Braulio Francisco', 'AVDA PRESIDENTE RIESCO 5335 PISO 15', 30, 'GENERACION EN OTRAS CENTRALES N.C.P.', 'LAS CONDES', 'pevalledelosvientossa@enel.com', 'SANTIAGO'),
(90, '6218095-1', 'PEDRO RIGOBERTO VARGAS ACEVEDO', '1971pedro@live.com', '', 'Pedro Vargas', 'JUAN SALDIVAR SITIO 14 PUERTO SECO', 30, 'OBRAS MENORES Y MANTENCION DE VEHICULOS', 'CALAMA', 'facturacionmipyme2@sii.cl', 'CALAMA'),
(91, '76248021-2', 'PROMET MAQUINARIA Y EQUIPOS SPA', 'mvidarte@prometservicios.cl   ', '', 'Manuel Vidarte', 'AVDA DEL VALLE SUR 650 DEPTO 31', 30, 'MAQUINARIA', 'Huechuraba', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(92, '76543046-1', 'PROMET MONTAJES SPA', 'mvidarte@prometservicios.cl   ', '', 'Manuel Vidarte', 'AVDA. DEL VALLE SUR 650', 30, 'CONSTRUCCION DE CARRETERAS Y LINEAS DE F', 'Huechuraba', 'recepcionfactura@prometservicios.cl', 'SANTIAGO'),
(93, '96853940-K', 'PROMET SERVICIOS SPA', 'mvidarte@prometservicios.cl   ', '', 'Manuel Vidarte', 'AVDA DEL VALLE SUR 650 OF 31', 30, 'SERVICIOS DE INGENIERIA PRESTADO POR EM', 'HUECHURABA', 'recepcionfactura@prometservicios.cl', 'SANTIAGO'),
(94, '76593235-1', 'PROSUPLAN SPA', 'ggutierrez@prosuplan.com', '', 'Grecia Gutierrez ', 'AVDA DEL PARQUE 4928 OF 423 CIUDAD EMPRESARIAL', 30, 'OBRAS MENORES DE CONSTRUCCION', 'Huechuraba', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(95, '76204497-8', 'QUANTA SERVICES CHILE SPA', 'bsanchez@quantaservices.com', '', 'Bel?n S?nchez Leiva', 'ROSARIO NORTE 615 OF 1504 PISO 15', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'FacturacionMIPYME@sii.cl', 'SANTIAGO'),
(96, '87580800-1', 'READY MIX HORMIGONES LIMITADA', 'paola.repiso@cbb.cl', '', 'Paola Repiso', 'LIRA 2320', 30, 'ELABORACION DE HORMIGONES', 'SAN JOAQUIN', 'recepciondte.are@cbb.cl', 'SANTIAGO'),
(97, '78075740-K', 'REALINI FUENTES COMPANIA LIMITADA', 'mario.lucas@ocyre.cl', '', 'Mario Lucas N.', 'MANZANA 3 SITIO 19 SECTOR PUERTO SECO', 30, 'EXPLOTACION DE OTRAS MINAS Y CANTERAS', 'CALAMA', 'windte_dte@custodium.com', 'CALAMA'),
(98, '76320306-9', 'REMISOLD INGENIERIA SPA', 'r_zo@hotmail.com', '', 'Ren? Z??iga', 'NESTOR DEL FIERRO 465 PB 5B LA NEGRA', 30, 'OBRAS MENORES EN CONSTRUCCION', 'ANTOFAGASTA', 'FacturacionMIPYME@sii.cl', 'ANTOFAGASTA'),
(99, '76264251-4', 'RML GROUP INTERNATIONAL CHILE SPA', 'secretaria.santiago@rmlgroup.cl', '', 'Elizabeth Valeria Y. ', 'AVDA NUEVA TAJAMAR 555 OF 1902', 30, 'REPARACION, OPERACION Y MONTAJE DE MAQ. PARA MINERIA', 'LAS CONDES', 'cl.empresas@defontanadte.com', 'SANTIAGO'),
(100, '77557430-5', 'SALES DE MAGNESIO LIMITADA', 'proveedores.rwl@albemarle.com. ', '', 'Daniel van der Werf', 'ISIDORA GOYENECHEA 3162 PISO 13', 30, 'OTROS TIPOS DE VENTA AL POR MENOR', 'LAS CONDES', 'salmag@artikos.cl', 'SANTIAGO'),
(101, '13217553-5', 'SERGIO RICHARD SEGOVIA CRUZ', 'sergio_segovia_cruz@hotmail.com', '', 'Sergio Segovia Cruz', 'AVDA OHIGGINS S/N', 30, 'OBRAS MENORES EN CONSTRUCCION', 'OLLAGUE', 'facturacionmipyme2@sii.cl', 'OLLAGUE'),
(102, '76192781-7', 'SERVICIOS DE HIGIENE AMBIENTAL VARDOR LIMITADA', 'ingrid.dorador@vardor.cl', '', 'Ingrid Dorador', 'CALLE 47 MANZANA B12 ESTACION PAIPOTE', 30, 'LIMPIA DE FOSAS Y ALCANTARILLADO', 'COPIAPO', 'windte_dte@custodium.com', 'COPIAPO'),
(103, '76446522-9', 'SERVICIOS ELECTRICOS PRIMARIOS SPA', 'aibanez@ingenieriasep.cl', '', 'Ana Iba?ez', 'GONZALO DE LOS RIOS 6506', 30, 'SERV. DE ING. ELECTRICA , OOCC Y OBRAS MENORES', 'LAS CONDES', 'intercambio@dte.nubox.com', 'SANTIAGO'),
(104, '59242910-1', 'SERVIZI ENERGIA ITALIA SPA, AGENCIA EN CHILE', 'Leticia.Allende@saipem.com', '', 'Leticia Allende ', 'AVDA CERRO EL PLOMO 5630 OF 301', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'FacturacionMIPYME@sii.cl', 'SANTIAGO'),
(105, '96801810-8', 'SGS MINERALS S. A.', 'proveedoressgs@sgs.com', '', 'Alfredo Contreras', 'SIMON BOLIVAR N? 2155', 30, 'EMPRESAS DE SERVICIOS INTEGRALES DE INFO', 'CALAMA', 'cimm-tysrecepcion@custodium.com', 'CALAMA'),
(106, '76574653-1', 'SICOI CHILE SPA', 'g.mellini@sicoi.com', '', 'Gianluca Mellini ', 'SANTO DOMINGO 673311', 30, 'OBRAS MENORES DE CONSTRUCCION', 'SANTIAGO', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(107, '94995000-K', 'SIEMENS S.A.', 'viviana.jofre@siemens.com', '', 'Viviana Ester Jofre Araya', 'CERRO EL PLOMO 6000 OF 1001', 90, 'FABRICACION DE MOTORES, GENERADORES', 'LAS CONDES', 'siemensrecepcion@custodium.com', 'SANTIAGO'),
(108, '76669256-7', 'SIMTA INGENIERIA SPA', 'gacaroca@simtaingenieria.cl', '', 'Guillermo Caroca', 'VOLCAN OSORNO 34', 30, 'INGENIERIA MANTENIMIENTO', 'CON CON', 'FacturacionMIPYME@sii.cl', 'VALPARAISO'),
(109, '59209340-5', 'SK ENGINEERING & CONSTRUCTION CO., LTDA. AGENCIA EN CHILE', 'macarena.moreno@partner.sk.com', '', 'Macarena Moreno', 'AVDA APOQUINDO 3721 PISO 15', 30, 'OBRAS DE INGENIERIA', 'LAS CONDES', 'sk_dte@acasesorias.cl', 'SANTIAGO'),
(110, '79730570-7', 'SOC INGENIERIA CONSTRUCCION Y MAQUINARIA SPA', 'proveedores@sicomaq.cl', '', 'Angelina Ordenes', 'AVDA DEL PARQUE 4680-A OF 505', 30, 'CONSTRUCCION', 'Huechuraba', 'terceros-sicomaq@dte.iconstruye.com', 'SANTIAGO'),
(111, '76808160-3', 'SOC SERVICIOS INGENIERIA Y MANTENCION SA', 'scvjetkovic@sigmasa.cl', '', 'Susana Cvjetkovic ', 'DIAGONAL ORIENTE 5170', 30, 'INGENIERIA', '?U?OA', 'recepciondte@sigmasa.cl', 'SANTIAGO'),
(112, '76335822-4', 'SOCIEDAD COMERCIAL DIVISION NORTE LTDA', 'hector.cordovah87@gmail.com', '', 'Hector Cordova', 'HEROES DE LA CONCEPCION MZ 32 ST 06', 30, 'OBRAS MENORES EN CONSTRUCCION', 'ANTOFAGASTA', 'facturacionmipyme2@sii.cl', 'ANTOFAGASTA'),
(113, '76197134-4', 'SOCIEDAD COMERCIAL MICROGLOBAL S.A.C.', 'proveedores@microglobal.cl', '', 'Edwin Maldonado Sajama', 'MAR DE PLATA 1986', 30, 'REPARACION DE EQUIPOS DE CONTROL DE PROC', 'PROVIDENCIA', 'managerrecepcion@custodium.com', 'SANTIAGO'),
(114, '76505510-5', 'SOCIEDAD CONSTRUCTORA Y SERVICIOS INAKI LIMITADA', 'inakiltda@gmail.com', '', 'Dalma Tapia', 'AVDA CIRCUNVALACION N? 1117 LOTE 3', 30, 'PEQUE?A MINERIA', 'CALAMA', 'facturacionmipyme2@sii.cl', 'CALAMA'),
(115, '76434129-5', 'SOCIEDAD METALMEC?NICA COOPER HILL LIMITADA', 'A.SEGUEL@COOPERHILL.CL', '', 'ALBERTO SEGUEL ARAYA ', 'GRECIA 883', 30, 'CONSTRUCCION DE CARRETERAS Y LINEAS DE F', 'CALAMA', 'facturacionmipyme2@sii.cl', 'CALAMA'),
(116, '76009541-9', 'SOCIEDAD SERVICIOS INGENIERIA Y MANTENCION INTEGRAL MPM LIMITADA', 'jurdaneta@mpm.cl', '', 'Jeslaine Urdaneta Hernandez', 'AVDA LA DEHESA 1201 215 Y 216', 30, 'OBRAS DE INGENIERIA', 'LO BARNECHEA', 'terceros-76009541@dte.iconstruye.com', 'SANTIAGO'),
(117, '76425886-K', 'SOCIEDAD TECNOCYS S.A.', 'maria.acendra@tecnocysspa.cl', '', 'Maria Acendra ', 'PASAJE MANZANARES 382 VALLE LO CAMPINO', 30, 'OBRAS DE INGENIERIA', 'QUILICURA', 'FacturacionMIPYME@sii.cl', 'SANTIAGO'),
(118, '94623000-6', 'SODEXO CHILE S A', 'gerardo.frez@sodexo.com', '', 'Gerardo Frez Zu?iga', 'PEREZ VALENZUELA 1635', 60, 'SERVICIOS DE ALIMENTACION', 'PROVIDENCIA', 'sodexo_dte@paperless.cl', 'SANTIAGO'),
(119, '76112086-7', 'SOLUCIONES ASFALTICAS S.A.', 'contabilidad@solucionesasfalticas.cl', '', 'Elizabeth Past', 'AVDA BDO OHIGGINS 1338 OF 1402', 30, 'MOV. DE TIERRA Y VENTA DE MEZCLAS BITUMINOSAS', 'ANTOFAGASTA', 'FacturacionMIPYME@sii.cl', 'ANTOFAGASTA'),
(120, '76549525-3', 'SVS SERVICIOS INTEGRALES A LA MINERIA SPA', 'isabel.madrid03@svsmineria.cl', '', 'Isabel Madrid ', '14 DE FEBRERO 1965 OFICINA 306 PISO 3', 30, 'OTRAS ACTIVIDADES EMPRESARIALES', 'ANTOFAGASTA', 'intercambio@dte.nubox.com', 'ANTOFAGASTA'),
(121, '76254448-2', 'TECINSA SPA', 'COO@TECINSA.NET', '', 'Claudia Osorio', 'SANTA BEATRIZ 100 OF 1002 PISO 10', 30, 'MONTAJE Y MANTENIMIENTO DE INST. ELECTRICAS', 'PROVIDENCIA', 'facturacionmipyme2@sii.cl', 'SANTIAGO'),
(122, '76320186-4', 'TECNO FAST S. A.', 'recepcion@tecnofast.cl', '', 'Marcela Venegas', 'AVDA LA MONTANA 692', 30, 'ACONDICIONAMIENTO DE EDIFICIOS', 'LAMPA', 'dte.cl@einvoicing.signature-cloud.com', 'SANTIAGO'),
(123, '76413313-7', 'TECNOVE SERVICIOS,CONSTRUCCION Y SEQALETICA CHILE', 'mauriciomorales@tecnove.com', '', 'Mauricio Morales', 'LOS FRESNOS 500 GALPON 2', 30, 'TERMINACION Y ACABADO DE EDIFICIOS', 'COLINA', 'FacturacionMIPYME@sii.cl', 'SANTIAGO'),
(124, '79862750-3', 'TRANSPORTES CCU LTDA.', 'maavera@ccu.cl', '', 'Manuel Vera', 'PANAMERICANA NORTE N? 8000', 30, 'TRANSPORTE DE CARGA POR CARRETERA', 'QUILICURA', 'dte_tccu@xs4dte.cl', 'SANTIAGO'),
(125, '76278814-4', 'TRANSPORTES FACTOR DISTRIBUCION S.A.', 'cvillela@transfactor.cl', '', 'Cristian Villela', 'SERRANO 63 OFICINA 45', 30, 'TRANSPORTES DE CARGA', 'SANTIAGO', 'dtedistribucion@transfactor.cl', 'SANTIAGO'),
(126, '76224734-8', 'VAI PS INGENIERIA Y SERVICIOS LIMITADA', 'marcos.villar@vaips.cl', '', 'Marcos Villar', 'MONSE?OR VALECH 12050 17', 30, 'OBRAS DE INGENIERIA', 'MAIPU', 'FacturacionMIPYME@sii.cl', 'SANTIAGO'),
(128, '17164970-6', 'ANDESCODE SPA', 'ppimentel@andescode.cl', '+569 3088 2346', 'Patrik Pimentel', 'Hermanos Maristas 112', 30, 'Servicios Informatica', 'Los Andes', 'dte.cl@andescode.cl', 'Los Andes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1338 ;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `numero_doc`, `centro_costo`, `tipo_doc`, `tasa`, `dif_precio`, `fec_emision`, `fec_prorroga`, `fec_pag_prorroga`, `interes_prorroga`, `fec_venc_pactado`, `valor`, `anticipado`, `fec_depo_anticipo`, `retencion`, `interes_mora`, `excedente`, `estado_pago_excedente`, `fec_depo_exc`, `num_operacion_desc_excedente`, `obs`, `estado`, `operacion`, `id_fact`, `id_cli`, `id_hold`, `id_usu`, `fec_venc`, `tipo_pag_exc`) VALUES
(1237, 2868, 0, NULL, 0, 0, '2018-11-05', '0000-00-00', '0000-00-00', 0, '2019-04-18', 1561097, 0, '2019-03-13', 0, 0, 0, NULL, '0000-00-00', 0, '', 2, 0, NULL, 5, 2, NULL, '2019-02-01', NULL),
(1238, 2869, 0, NULL, 0, 0, '2018-11-05', '0000-00-00', '0000-00-00', 0, '0000-00-00', 6169586, 0, '0000-00-00', 0, 0, 0, NULL, '0000-00-00', 0, '', 2, 0, NULL, 5, 1, NULL, '2019-05-22', NULL),
(1239, 2870, 0, NULL, 0, 0, '2018-11-05', '0000-00-00', '0000-00-00', 0, '0000-00-00', 6169586, 0, '0000-00-00', 0, 0, 0, NULL, '0000-00-00', 0, '', 6, 0, NULL, 34, 1, NULL, '0000-00-00', NULL),
(1240, 2871, NULL, NULL, NULL, NULL, '2018-11-05', NULL, NULL, NULL, NULL, 609804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 5, 1, NULL, NULL, NULL),
(1241, 2872, NULL, NULL, NULL, NULL, '2018-11-06', NULL, NULL, NULL, NULL, 154948736, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 49, 1, NULL, NULL, NULL),
(1242, 2873, NULL, NULL, NULL, NULL, '2018-11-06', NULL, NULL, NULL, NULL, 71560625, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 49, 1, NULL, NULL, NULL),
(1243, 2874, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 2817999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 118, 1, NULL, NULL, NULL),
(1244, 2875, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 2454552, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 118, 1, NULL, NULL, NULL),
(1245, 2876, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 9148125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 118, 1, NULL, NULL, NULL),
(1246, 2877, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 1907422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 118, 1, NULL, NULL, NULL),
(1247, 2878, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 2475200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 92, 1, NULL, NULL, NULL),
(1248, 2879, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 1332115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 92, 1, NULL, NULL, NULL),
(1249, 2880, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 832657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 92, 1, NULL, NULL, NULL),
(1250, 2881, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 4408498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 92, 1, NULL, NULL, NULL),
(1251, 2882, NULL, NULL, NULL, NULL, '2018-11-08', NULL, NULL, NULL, NULL, 69020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 6, 1, NULL, NULL, NULL),
(1252, 2883, NULL, NULL, NULL, NULL, '2018-11-12', NULL, NULL, NULL, NULL, 1999200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 9, 1, NULL, NULL, NULL),
(1253, 2884, NULL, NULL, NULL, NULL, '2018-11-12', NULL, NULL, NULL, NULL, 5712000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 28, 1, NULL, NULL, NULL),
(1254, 2885, NULL, NULL, NULL, NULL, '2018-11-12', NULL, NULL, NULL, NULL, 3659250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 31, 1, NULL, NULL, NULL),
(1255, 2886, NULL, NULL, NULL, NULL, '2018-11-12', NULL, NULL, NULL, NULL, 2142000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 31, 1, NULL, NULL, NULL),
(1256, 2887, NULL, NULL, NULL, NULL, '2018-11-12', NULL, NULL, NULL, NULL, 12018776, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 41, 1, NULL, NULL, NULL),
(1257, 2888, NULL, NULL, NULL, NULL, '2018-11-13', NULL, NULL, NULL, NULL, 928200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 72, 1, NULL, NULL, NULL),
(1258, 2889, NULL, NULL, NULL, NULL, '2018-11-13', NULL, NULL, NULL, NULL, 142800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 93, 1, NULL, NULL, NULL),
(1259, 2890, NULL, NULL, NULL, NULL, '2018-11-13', NULL, NULL, NULL, NULL, 3046400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 93, 1, NULL, NULL, NULL),
(1260, 2891, NULL, NULL, NULL, NULL, '2018-11-13', NULL, NULL, NULL, NULL, 142800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 93, 1, NULL, NULL, NULL),
(1261, 2892, NULL, NULL, NULL, NULL, '2018-11-14', NULL, NULL, NULL, NULL, 14451289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 124, 1, NULL, NULL, NULL),
(1262, 2893, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 14744100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 18, 1, NULL, NULL, NULL),
(1263, 2894, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 638435, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 116, 1, NULL, NULL, NULL),
(1264, 2895, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 2553740, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 116, 1, NULL, NULL, NULL),
(1265, 2896, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 4022200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 28, 1, NULL, NULL, NULL),
(1266, 2897, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 2588250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 28, 1, NULL, NULL, NULL),
(1267, 2898, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 2623259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 89, 1, NULL, NULL, NULL),
(1268, 2899, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 2870280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 29, 1, NULL, NULL, NULL),
(1269, 2900, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 595000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 29, 1, NULL, NULL, NULL),
(1270, 2901, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 12298650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 120, 1, NULL, NULL, NULL),
(1271, 2902, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 2419382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 93, 1, NULL, NULL, NULL),
(1272, 2903, NULL, NULL, NULL, NULL, '2018-11-15', NULL, NULL, NULL, NULL, 2419382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 93, 1, NULL, NULL, NULL),
(1273, 2904, NULL, NULL, NULL, NULL, '2018-11-16', NULL, NULL, NULL, NULL, 55644469, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 52, 1, NULL, NULL, NULL),
(1274, 2905, NULL, NULL, NULL, NULL, '2018-11-16', NULL, NULL, NULL, NULL, 9350425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 67, 1, NULL, NULL, NULL),
(1275, 2906, NULL, NULL, NULL, NULL, '2018-11-16', NULL, NULL, NULL, NULL, 1097775, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 67, 1, NULL, NULL, NULL),
(1276, 2907, NULL, NULL, NULL, NULL, '2018-11-16', NULL, NULL, NULL, NULL, 1082900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 59, 1, NULL, NULL, NULL),
(1277, 2908, NULL, NULL, NULL, NULL, '2018-11-16', NULL, NULL, NULL, NULL, 999600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 109, 1, NULL, NULL, NULL),
(1278, 2909, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 830224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 76, 1, NULL, NULL, NULL),
(1279, 2910, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 773500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 4, 1, NULL, NULL, NULL),
(1280, 2911, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 476000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 77, 1, NULL, NULL, NULL),
(1281, 2912, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 464100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 66, 1, NULL, NULL, NULL),
(1282, 2913, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 1082900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 23, 1, NULL, NULL, NULL),
(1283, 2914, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 464100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 23, 1, NULL, NULL, NULL),
(1284, 2915, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 154700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 63, 1, NULL, NULL, NULL),
(1285, 2916, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 166600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 97, 1, NULL, NULL, NULL),
(1286, 2917, NULL, NULL, NULL, NULL, '2018-11-19', NULL, NULL, NULL, NULL, 154700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 46, 1, NULL, NULL, NULL),
(1287, 2918, NULL, NULL, NULL, NULL, '2018-11-20', NULL, NULL, NULL, NULL, 318920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 126, 1, NULL, NULL, NULL),
(1288, 2919, NULL, NULL, NULL, NULL, '2018-11-20', NULL, NULL, NULL, NULL, 616579, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 126, 1, NULL, NULL, NULL),
(1289, 2920, NULL, NULL, NULL, NULL, '2018-11-20', NULL, NULL, NULL, NULL, 629114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 115, 1, NULL, NULL, NULL),
(1290, 2921, NULL, NULL, NULL, NULL, '2018-11-20', NULL, NULL, NULL, NULL, 14102690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 104, 1, NULL, NULL, NULL),
(1291, 2922, NULL, NULL, NULL, NULL, '2018-11-21', NULL, NULL, NULL, NULL, 1213800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 116, 1, NULL, NULL, NULL),
(1292, 2923, NULL, NULL, NULL, NULL, '2018-11-21', NULL, NULL, NULL, NULL, 8340486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 34, 1, NULL, NULL, NULL),
(1293, 2924, NULL, NULL, NULL, NULL, '2018-11-21', NULL, NULL, NULL, NULL, 2007530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 105, 1, NULL, NULL, NULL),
(1294, 2925, NULL, NULL, NULL, NULL, '2018-11-21', NULL, NULL, NULL, NULL, 154700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 65, 1, NULL, NULL, NULL),
(1295, 2926, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 3248700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 73, 1, NULL, NULL, NULL),
(1296, 2927, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 3903200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 93, 1, NULL, NULL, NULL),
(1297, 2928, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 199920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 45, 1, NULL, NULL, NULL),
(1298, 2929, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 194684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 45, 1, NULL, NULL, NULL),
(1299, 2930, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 1256640, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 45, 1, NULL, NULL, NULL),
(1300, 2931, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 1399440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 45, 1, NULL, NULL, NULL),
(1301, 2932, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 825985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 45, 1, NULL, NULL, NULL),
(1302, 2933, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 1071000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 45, 1, NULL, NULL, NULL),
(1303, 2934, NULL, NULL, NULL, NULL, '2018-11-22', NULL, NULL, NULL, NULL, 1834247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 45, 1, NULL, NULL, NULL),
(1304, 2935, NULL, NULL, NULL, NULL, '2018-11-23', NULL, NULL, NULL, NULL, 43367141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 49, 1, NULL, NULL, NULL),
(1305, 2936, NULL, NULL, NULL, NULL, '2018-11-23', NULL, NULL, NULL, NULL, 12066600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 28, 1, NULL, NULL, NULL),
(1306, 2937, NULL, NULL, NULL, NULL, '2018-11-26', NULL, NULL, NULL, NULL, 39538245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 49, 1, NULL, NULL, NULL),
(1307, 2938, NULL, NULL, NULL, NULL, '2018-11-26', NULL, NULL, NULL, NULL, 11092894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 49, 1, NULL, NULL, NULL),
(1308, 2939, NULL, NULL, NULL, NULL, '2018-11-27', NULL, NULL, NULL, NULL, 6471313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 58, 1, NULL, NULL, NULL),
(1309, 2940, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 6847292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 123, 1, NULL, NULL, NULL),
(1310, 2941, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 220150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 116, 1, NULL, NULL, NULL),
(1311, 2942, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 2421650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 116, 1, NULL, NULL, NULL),
(1312, 2943, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 1761200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 116, 1, NULL, NULL, NULL),
(1313, 2944, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 2974200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 92, 1, NULL, NULL, NULL),
(1314, 2945, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 2944456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 117, 1, NULL, NULL, NULL),
(1315, 2946, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 1279250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 42, 1, NULL, NULL, NULL),
(1316, 2947, NULL, NULL, NULL, NULL, '2018-11-28', NULL, NULL, NULL, NULL, 163237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 42, 1, NULL, NULL, NULL),
(1317, 2948, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 1305896, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 26, 1, NULL, NULL, NULL),
(1318, 2949, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 2142000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 28, 1, NULL, NULL, NULL),
(1319, 2950, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 999600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 23, 1, NULL, NULL, NULL),
(1320, 2951, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 773500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 23, 1, NULL, NULL, NULL),
(1321, 2952, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 952000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 19, 1, NULL, NULL, NULL),
(1322, 2953, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 15113952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 124, 1, NULL, NULL, NULL),
(1323, 2954, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 749700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 82, 1, NULL, NULL, NULL),
(1324, 2955, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 357000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 79, 1, NULL, NULL, NULL),
(1325, 2956, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 154700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 59, 1, NULL, NULL, NULL),
(1326, 2957, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 154700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 59, 1, NULL, NULL, NULL),
(1327, 2958, NULL, NULL, NULL, NULL, '2018-11-29', NULL, NULL, NULL, NULL, 3272500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 24, 1, NULL, NULL, NULL),
(1328, 2959, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 10588134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 125, 1, NULL, NULL, NULL),
(1329, 2960, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 474810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 81, 1, NULL, NULL, NULL),
(1330, 2961, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 309400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 27, 1, NULL, NULL, NULL),
(1331, 2962, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 856800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 55, 1, NULL, NULL, NULL),
(1332, 2963, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 856800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 55, 1, NULL, NULL, NULL),
(1333, 2964, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 642600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 64, 1, NULL, NULL, NULL),
(1334, 2965, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 1913520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 77, 1, NULL, NULL, NULL),
(1335, 2966, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 266560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 68, 1, NULL, NULL, NULL),
(1336, 2967, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 2802450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 93, 1, NULL, NULL, NULL),
(1337, 2968, NULL, NULL, NULL, NULL, '2018-11-30', NULL, NULL, NULL, NULL, 9210828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 100, 1, NULL, NULL, NULL);

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
  `celular` varchar(20) DEFAULT NULL,
  `num_cta_1` varchar(45) DEFAULT NULL,
  `num_cta_2` varchar(45) DEFAULT NULL,
  `banco_cta_1` varchar(45) DEFAULT NULL,
  `banco_cta_2` varchar(45) DEFAULT NULL,
  `tipo_cta_1` varchar(45) DEFAULT NULL,
  `tipo_cta_2` varchar(45) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `email3` varchar(50) DEFAULT NULL,
  `email4` varchar(50) DEFAULT NULL,
  `cargo_contactop1` varchar(45) DEFAULT NULL,
  `contacto_personal2` varchar(100) DEFAULT NULL,
  `cargo_contactop2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_factoring`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `factoring`
--

INSERT INTO `factoring` (`id_factoring`, `rut`, `razon_social`, `email`, `telefono`, `contacto_personal`, `direccion`, `celular`, `num_cta_1`, `num_cta_2`, `banco_cta_1`, `banco_cta_2`, `tipo_cta_1`, `tipo_cta_2`, `email2`, `email3`, `email4`, `cargo_contactop1`, `contacto_personal2`, `cargo_contactop2`) VALUES
(19, '96861280-8', 'EUROCAPITAL S.A ', 'rnunez@eurocapital.cl', '', 'cpacheco', 'AVDA APOQUINDO Nº 3000 OF 603 LAS CONDES  ', '', '04388771', '356021470-5', 'SANTANDER', 'BANCO CHILE', 'CTA. CTE.', 'CTA. CTE.', 'cpacheco@eurocapital.cl', 'respinoza@eurocapital.cl', 'csierralta@eurocapital.cl', '', '', ''),
(20, '99500410-0', 'BANCO CONSORCIO', 'cobranzas@bancoconsorcio.cl', '22915 4454  ', 'Karen Bravo S.', 'EL BOSQUE SUR 130 PISO 7 LAS CONDES    ', '', '65099-04', '', 'Cta. del Banco Chile', '', 'CTA. CTE.', '', 'kbravo@bancoconsorcio.cl', 'hcubillos@bancoconsorcio.cl', '', 'Ejecutivo Factoring Empresas', 'Héctor Cubillos', 'Jefe Plataforma Factoring'),
(21, '76299831-9', 'BANFACTORING SA', 'Frequena@banfactoring.cl', '', 'FREQUENA', 'FIDEL OTEIZA 1971 OF 301 SANTIAGO', '', '', '', 'SANTANDER', '', 'CTA. CTE.', '', 'Frequena@banfactoring.cl', '', '', '', '', ''),
(22, '76887945-1', 'VIRACOCHA SERVICIOS FINANCIEROS SPA', 'finanzas@viracocha.cl', '(56) (34) 24477', 'CARLOS NELIDOW', 'AVDA. ARGENTINA ORIENTE 17 OF 312 LOS ANDES', '(56) (9) 445917', '72913531', '', 'SANTANDER', '', 'CTA. CTE.', '', 'CARLOS.NELIDOW@VIRACOCHA.CL', 'aline.bravo@viracocha.cl', '', 'Comercial', 'Aline Bravo', 'Finanzas '),
(23, '76562786-9', 'BICE FACTORING S. A.', 'gustavo.urzua@bice.cl', '+56 2 26922005', 'Gustavo Urzúa O.', 'TEATINOS 280 PISO 18, SANTIAGO', '+569 42189449', '01-33082-9', '', 'BANCO BICE', '', 'CTA. CTE.', '', 'gustavo.urzua@bice.cl', '', 'daniel.schiattino@bice.cl', '', '', ''),
(24, '76261789-7', 'NUEVO CAPITAL S.A.  ', 'avicencio@nuevocapital.cl', '222646137-222646167', 'Ingrid Poblete', 'REYES LAVALLE N° 3194, LAS CONDES, SANTIAGO      ', '84019233/61559135', '0-000-6736191-1', '', 'SANTANDER', '', 'CTA. CTE.', '', 'ipoblete@nuevocapital.cl', 'ltapia@nuevocapital.cl', 'ojorquera@nuevocapital.cl', 'Ejecutiva', '', ''),
(25, '76505525-3', 'FONDO DE INVERSIONES PRIVADO E CAPITAL', 'psoto@ecapital.cl', '', 'PATRICIO SOTO', 'AUGUSTO LEGUIA NORTE N° 100 OF 702, LAS CONDES', '', '', '', '', '', '', '', 'psoto@ecapital.cl', '', '', 'Ejecutivo', '', ''),
(26, '76870660-3', 'SCOTIA AZUL FACTORING LTDA', 'mvelasquezl@bbva.com', '56 32 2657825  ', 'mvelasquezl', 'AVDA COSTANERA SUR 2710, TORRE A PISO 20 LAS CONDES', '9-5393230   ', '', '', '', '', '', '', 'mvelasquezl@bbva.com', '', '', 'Ejecutivo', '', '');

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
  `direccion` varchar(100) DEFAULT NULL,
  `giro` varchar(150) DEFAULT NULL,
  `comuna_factura` varchar(150) DEFAULT NULL,
  `ciudad_factura` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_hold`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `holding`
--

INSERT INTO `holding` (`id_hold`, `rut`, `razon_social`, `email`, `telefono`, `contacto_personal`, `direccion`, `giro`, `comuna_factura`, `ciudad_factura`) VALUES
(1, '25225854-5', 'TRANSPORTES FACTOR DISTRIBUCION S.A.', 'dtedistribucion@transfactor.cl', '', 'Maria Ester Cortes', 'SERRANO 63 OF 45', 'TRANSPORTE DE CARGA, ASEO, ORNATO, JARDINES, PAISAJISMO, DISTRIBUCION DE AGUA', 'SANTIAGO', 'SANTIAGO'),
(2, '76367270-0', 'TRANSPORTES FACTOR LTDA', 'dte@transfactor.cl', '+56 34 2344384', 'Maria Ester Cortes', 'SERRANO 63 OF 42', 'TRANSPORTE DE CARGA Y MANEJO DE RESIDUOS', 'SANTIAGO', 'SANTIAGO'),
(3, '76851800-9', 'RENTA EQUIPOS SANTA TERES', 'dterenta@transfactor.cl', '', 'Maria Ester Cortes', 'MANUEL RODRIGUEZ 479', 'ARRIENDO DE VEHICULOS MOTORIZADOS', 'LOS ANDES', 'LOS ANDES'),
(4, '76936703-9', 'LOGISTIC SERVICES SPA', 'dte@transfactor.cl', '', 'Maria Ester Cortes', 'SERRANO 63', 'SERVICIOS DE LOGISTICA Y CONTROL DE BODEGAS', 'SANTIAGO', 'SANTIAGO'),
(5, '76800335-1', 'TRANSFACTOR-MAINPRO S.A.', 'dtetransfactor@transfactor.cl', '', 'Maria Ester Cortes', 'SERRANO 63 OF 27', 'MANTENCION, FABRICACION, REPARACION INDUSTRIAL', 'SANTIAGO', 'SANTIAGO');

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
(1, '17164970-6', 'PATRIK', 'PIMENTELS', 'PPIMENTEL@ANDESCODE.CL', '9407c826d8e3c07ad37cb2d13d1cb641', b'1', 2, 2, 'PPIMENTEL'),
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
