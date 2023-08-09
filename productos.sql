-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-08-2023 a las 18:41:03
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sarsolu1_clientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `ID_productos` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Nombre_corto` varchar(30) NOT NULL,
  `Descripcion` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Precio_normal` varchar(30) NOT NULL,
  `Precio_descuento` varchar(30) NOT NULL,
  `ID_categoria` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_productos`, `Nombre`, `Nombre_corto`, `Descripcion`, `Precio_normal`, `Precio_descuento`, `ID_categoria`) VALUES
('1', 'Cursos SAR Solutions', 'Cursos', '', '', '', ''),
('10', 'Mapeo de Procesos', 'Mapeo', '', '', '', ''),
('11', 'ISO 31000:2018 Gestión de Ries', 'ISO 31000:2018', '', '', '', ''),
('12', 'ISO 37001:2018 Sistema de Gest', 'ISO 37001:2018', '', '', '', ''),
('13', 'ISO 28000:2007 Sistema de Gest', 'ISO 28000:2007', '', '', '', ''),
('15', 'SAP ABAP', 'ABAP ', '', '', '', ''),
('16', 'LEGISLACIÓN AMBIENTAL ', 'LEG AMBIENTAL', '', '', '', ''),
('17', 'Six Sigma Yellow Belt', 'SSYB', '', '', '', ''),
('18', 'SAP FI', 'SAP FI', '', '', '', ''),
('19', 'SAP Business One', 'SAP Business One', '', '', '', ''),
('2', 'ISO 9001-2015 Sistemas de gest', 'ISO 9001-2015  Quality managem', '', '', '', ''),
('20', 'SAP MM', 'SAP MM', '', '', '', ''),
('21', 'SAP PP', 'SAP PP', '', '', '', ''),
('22', 'SAP SD', 'SAP SD', '', '', '', ''),
('23', 'Microsoft Office – Acce', 'Microsoft Office – Access', '', '', '', ''),
('24', 'Microsoft Excel', 'Microsoft Excel', '', '', '', ''),
('25', 'Microsoft Powerpoint', 'Microsoft Powerpoint', '', '', '', ''),
('26', 'Microsoft Word', 'Microsoft Word', '', '', '', ''),
('27', 'Excel para Ingenieros', 'Excel para Ingenieros', '', '', '', ''),
('28', 'Power BI Excel', 'Power BI Excel', '', '', '', ''),
('29', 'Six Sigma Green Belt', 'Six Sigma Green Belt', '', '', '', ''),
('30', 'Core Tools', 'Core Tools', '', '', '', ''),
('31', 'ISO 22000:2018 Sistemas de ges', 'ISO 22000:2018 Sistemas de ges', '', '', '', ''),
('32', 'Distintivo H', 'Distintivo H', '', '', '', ''),
('33', 'Cedula de Operación Anual', 'Cedula de Operación Anual', '', '', '', ''),
('34', 'KPI´S', 'KPI´S', '', '', '', ''),
('35', 'SAP HANA PP', 'SAP HANA PP', '', '', '', ''),
('36', 'SAP FIORI', 'SAP FIORI', '', '', '', ''),
('37', 'SAP WM', 'SAP WM', '', '', '', ''),
('38', '8 D’s – Metodología de Resoluc', '8 D’s – Metodología de Resoluc', '', '', '', ''),
('39', 'LAU – Licencia Ambiental Unica', 'LAU – Licencia Ambiental Unica', '', '', '', ''),
('40', 'Certificación en PMP', 'Certificación en PMP', '', '', '', ''),
('41', 'Modelo de procesos', 'Modelo de procesos', 'Modelo de procesos', '', '', ''),
('42', 'Excel aplicando al análisis fi', 'Excel aplicando al análisis fi', '', '', '', ''),
('43', 'Supervisor ambiental', 'Supervisor ambiental', '', '', '', ''),
('44', 'HACCP', 'HACCP', '', '', '', ''),
('46', 'SAP S/4 HANA', 'SAP S/4 HANA', '', '', '', ''),
('47', 'Supervisor de Seguridad Indust', 'Supervisor de Seguridad Indust', '', '', '', ''),
('48', 'IATF 16949', 'IATF 16949', '', '', '', ''),
('49', 'Formación de Auditores Interno', 'FAI ISO 14001 2015', '', '', '', ''),
('5', 'MICROSOFT OFFICE BÁSICO - BASI', 'OFFICE BÁSICO', '', '', '', ''),
('50', 'Brigadas de Seguridad en las O', 'Brigadas de Seguridad en las O', '', '', '', ''),
('51', '7 Herramientas de la Calidad', '7 Herramientas de la Calidad', '', '', '', ''),
('52', 'SCRUM', 'SCRUM', '', '', '', ''),
('53', 'Six Sigma Black Belt', 'SSBB', '', '', '', ''),
('54', 'Lean Manufacturing', 'LM', '', '', '', ''),
('55', 'Supply Chain Management', 'SCM', '', '', '', ''),
('56', 'Six Sigma White Belt', 'SSWB', '', '', '', ''),
('57', 'Lean Service', 'Lean Service', '', '', '', ''),
('58', 'Trabajos en Altura', 'Trabajos en Altura', '', '', '', ''),
('59', 'Kaizen - Mejora Continua', 'Kaizen', '', '', '', ''),
('60', 'Value Stream Mapping', 'VSM', '', '', '', ''),
('61', 'Lean Logistics', 'Lean Logistics', '', '', '', ''),
('62', ' Costos aplicados a la Cadena ', 'Costos en cadena de suministro', '', '', '', ''),
('63', 'Logística de abastecimiento', 'Logística de abastecimiento', '', '', '', ''),
('64', 'Indicadores Logísticos', 'Indicadores Logísticos', '', '', '', ''),
('65', 'Logística Inversa', 'Logística Inversa', '', '', '', ''),
('66', 'Aplicación de Buenas Prácticas', 'BPM en Alimentos', '', '', '', ''),
('67', 'Mejora Continua en la Cadena d', 'Mejora Continua CS', '', '', '', ''),
('68', 'Introducción', 'Intro', '', '', '', ''),
('69', '01. Habilidad Lectora ', 'HL', '', '', '', ''),
('7', 'ISO 19011:2018 Formación de Au', 'ISO 19011:2018', '', '', '', ''),
('70', '02. Matemáticas', 'Mats', '', '', '', ''),
('71', 'NEWS SAR SOLUTIONS ', 'News SAR ', '', '', '', ''),
('72', 'SAP PM', 'SAPPM', '', '', '', ''),
('73', 'SAP S/4 HANA EWM - Gestión de ', 'SAP S/4 HANA EWM', '', '', '', ''),
('74', 'SAP SD S4 Aprende SD y mejora ', 'SAP SD S4 / SD', '', '', '', ''),
('75', ' SAP CO Domina Centros de Cost', 'SAP CO', '', '', '', ''),
('76', ' SAP MM S4 El curso de consult', 'SAP MM S4', '', '', '', ''),
('77', 'SAP S/4 HANA PP- Planificación', 'SAP S4 HANA PP', '', '', '', ''),
('78', 'NAVEGACIÓN SAP ', 'SAP NS', '', '', '', ''),
('79', 'Onboarding RRHH', 'ORH', '', '', '', ''),
('8', 'ISO 14001-2015 Sistema de Gest', 'ISO 14001', '', '', '', ''),
('80', 'Beneficios para principiantes ', 'BPRRHH', '', '', '', ''),
('81', 'Cultura Organizacional Experie', 'COECI', '', '', '', ''),
('82', 'Gestión de evaluación del dese', 'GED', '', '', '', ''),
('83', 'Gestión de la experiencia del ', 'GEC', '', '', '', ''),
('84', 'MANUALES SAP', 'MS', '', '', '', ''),
('9', 'ISO 45001-2018 Sistemas de ges', 'ISO 45001', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
