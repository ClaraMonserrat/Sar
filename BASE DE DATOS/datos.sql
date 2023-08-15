-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-08-2023 a las 17:36:54
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
-- Estructura de tabla para la tabla `datos`
--

DROP TABLE IF EXISTS `datos`;
CREATE TABLE IF NOT EXISTS `datos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `apellidos` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `contrasena` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `nombre`, `apellidos`, `email`, `tel`, `contrasena`) VALUES
(26, 'sonia', 'ramirez', 'sonia12@gmail.com', '5545674523', '$2y$10$3F9fMpLP4PUro5AQLejmfu7'),
(25, 'sonia', 'ramirez', 'sonia12@gmail.com', '5545674523', '$2y$10$0/AzknqtYILv.NJx3l891uS'),
(24, 'sonia', 'ramirez', 'sonia12@gmail.com', '5545674523', '$2y$10$2dZlphZGQLFLG8ZR1ZuZAON'),
(23, 'sonia', 'ramirez', 'sonia12@gmail.com', '5545674523', '$2y$10$FTY6LULFLwGzHveCUM.g0OD'),
(22, 'zoey', 'ramirez', 'zoe12@gmail.com', '5545674523', '$2y$10$f1Kw8NysP/FcaQ0lTmST0eT'),
(21, 'zoe', 'ramirez', 'zoe@gmail.com', '5545674523', '$2y$10$vkanDsYz0/MvDjesfafIEew'),
(20, 'Ivan', 'Tenorio', 'ivan_tenorio@gmail.com', '5672819273', '$2y$10$sbKKpMTwqun146407EihR.i'),
(18, 'Ivan', 'Tenorio', 'ivan_tenorio@gmail.com', '5672819273', '$2y$10$lqnzetbTerpe8zcQxYav8uO'),
(19, 'Ivan', 'Tenorio', 'ivan_tenorio@gmail.com', '5672819273', '$2y$10$iJo7ikt/WJWoAEaQ/GllgeD'),
(49, 'prueba2', 'prueba2', 'prueba2@gmail.com', '5557878754', 'fsgfsfsh'),
(48, 'prueba1', 'sar', 'prueba@gmail.com', '5524565432', 'jsjsjsjsa'),
(27, 'zoey', 'ramirez', 'zoe12@gmail.com', '5545674523', '$2y$10$MHe6bAFQ6r8YBXVD4JOsMuI'),
(28, 'zoey', 'ramirez', 'zoe12@gmail.com', '5545674523', '$2y$10$jAdYr/uwnOQuGkdXqgC0Gef'),
(29, 'zoey7', 'ramirez', 'zoe12@gmail.com', '5545674523', '$2y$10$/yZ22sWWmz1/2b6M//nu.OX'),
(30, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$CUmkgV1ByrcWuStF2o1r1u/'),
(31, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$vZIBq1hTW2JAorLe91GveuE'),
(32, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$hAzATyMCbd.Bpcj7gEbvTeS'),
(33, 'zaira', 'lopez', 'zaira@gmail.com', '5545674523', '$2y$10$A31zDvRqFYpJs3HJ0UEAjeA'),
(34, 'zaira', 'lopez', 'zaira@gmail.com', '5545674523', '$2y$10$1Bn/R8N1O3RpnuT6WReBOeQ'),
(35, 'zaira', 'lopez', 'zaira@gmail.com', '5545674523', '$2y$10$dlFUbSqPGHCTpV42OUWag.k'),
(36, 'zaira', 'lopez', 'zaira@gmail.com', '5545674523', '$2y$10$mKrFstE.k1i9kLUFP.lJdex'),
(37, 'zaira', 'lopez', 'zaira@gmail.com', '5545674523', '$2y$10$YbhAuGVxnY5RT64eCQV6OOC'),
(38, 'zaira', 'lopez', 'zaira@gmail.com', '5545674523', '$2y$10$/VsPmxyy4MWgoEmPDoiVHOs'),
(39, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$JuS4rDh7SzVdgziK2qAMSOj'),
(40, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$chKgh0hefj6Xcx4Ewkk5zOE'),
(41, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$fxDb9Jwa9sB11KXQMoU1ZuX'),
(42, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$gEALT6iJmlMpyxxvu97adO5'),
(43, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$xY9s7AsaT7bZYYKRPSZDhes'),
(44, 'daniel', 'santos', 'danielsantos@gmail.com', '5545674523', '$2y$10$xFlTtHqjM2j3YO2c6twhHu1'),
(45, 'hannia', 'santos', 'eshgwz@gmail.com', '5672819273', '$2y$10$K/0G/W.YSryP8KHjYUdSteZ'),
(46, 'erika', 'garcia', 'eshgwz@gmail.com', '5545674523', '$2y$10$5ww1NoMd0lv7kGPs5TAIyuM'),
(47, 'erik', 'garcia', 'eshgwz@gmail.com', '55543654789', ''),
(50, 'prueba3', 'prueba3', 'prueba3@gmail.com', '5557899', 'hola1'),
(51, 'prueba4', 'prueba4', 'prueba4@gmail.com', '5598982382', 'samuel');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
