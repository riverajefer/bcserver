-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2015 a las 00:53:49
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `login_l4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ahorro`
--

CREATE TABLE IF NOT EXISTS `ahorro` (
`id` int(10) unsigned NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `alcancia_id` int(11) NOT NULL,
  `moneda` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_corta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ahorro`
--

INSERT INTO `ahorro` (`id`, `consecutivo`, `user_id`, `alcancia_id`, `moneda`, `fecha_corta`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '100', '12 de junio - 16:07', 'viernes, 12 de junio de 2015, Hora 16:07', '2015-06-12 21:07:36', '2015-06-12 21:07:36'),
(2, 1, 2, 1, '200', '12 de junio - 16:07', 'viernes, 12 de junio de 2015, Hora 16:07', '2015-06-12 21:07:36', '2015-06-12 21:07:36'),
(3, 1, 2, 1, '200', '12 de junio - 16:07', 'viernes, 12 de junio de 2015, Hora 16:07', '2015-06-12 21:07:38', '2015-06-12 21:07:38'),
(4, 1, 2, 1, '100', '12 de junio - 16:07', 'viernes, 12 de junio de 2015, Hora 16:07', '2015-06-12 21:07:38', '2015-06-12 21:07:38'),
(5, 1, 2, 1, '100', '12 de junio - 16:07', 'viernes, 12 de junio de 2015, Hora 16:07', '2015-06-12 21:07:40', '2015-06-12 21:07:40'),
(6, 2, 2, 1, '200', '12 de junio - 16:08', 'viernes, 12 de junio de 2015, Hora 16:08', '2015-06-12 21:08:14', '2015-06-12 21:08:14'),
(7, 2, 2, 1, '100', '12 de junio - 16:08', 'viernes, 12 de junio de 2015, Hora 16:08', '2015-06-12 21:08:15', '2015-06-12 21:08:15'),
(8, 3, 2, 1, '100', '12 de junio - 17:03', 'viernes, 12 de junio de 2015, Hora 17:03', '2015-06-15 22:03:44', '2015-06-12 22:03:44'),
(9, 3, 2, 1, '1000', '12 de junio - 17:03', 'viernes, 12 de junio de 2015, Hora 17:03', '2015-06-15 22:03:54', '2015-06-12 22:03:54'),
(10, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:33', '2015-06-12 22:40:33'),
(11, 4, 2, 1, '200', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:34', '2015-06-12 22:40:34'),
(12, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:38', '2015-06-12 22:40:38'),
(13, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:40', '2015-06-12 22:40:40'),
(14, 4, 2, 1, '200', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:41', '2015-06-12 22:40:41'),
(15, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:42', '2015-06-12 22:40:42'),
(16, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:45', '2015-06-12 22:40:45'),
(17, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:45', '2015-06-12 22:40:45'),
(18, 4, 2, 1, '200', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:47', '2015-06-12 22:40:47'),
(19, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:48', '2015-06-12 22:40:48'),
(20, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:49', '2015-06-12 22:40:49'),
(21, 4, 2, 1, '200', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:50', '2015-06-12 22:40:50'),
(22, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:51', '2015-06-12 22:40:51'),
(23, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:54', '2015-06-12 22:40:54'),
(24, 4, 2, 1, '1000', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:55', '2015-06-12 22:40:55'),
(25, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:56', '2015-06-12 22:40:56'),
(26, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:57', '2015-06-12 22:40:57'),
(27, 4, 2, 1, '100', '12 de junio - 17:40', 'viernes, 12 de junio de 2015, Hora 17:40', '2015-06-12 22:40:59', '2015-06-12 22:40:59'),
(28, 4, 2, 1, '100', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:02', '2015-06-12 22:41:02'),
(29, 4, 2, 1, '100', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:03', '2015-06-12 22:41:03'),
(30, 4, 2, 1, '200', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:05', '2015-06-12 22:41:05'),
(31, 4, 2, 1, '100', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:07', '2015-06-12 22:41:07'),
(32, 4, 2, 1, '200', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:09', '2015-06-12 22:41:09'),
(33, 4, 2, 1, '200', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:10', '2015-06-12 22:41:10'),
(34, 4, 2, 1, '200', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:11', '2015-06-12 22:41:11'),
(35, 4, 2, 1, '100', '12 de junio - 17:41', 'viernes, 12 de junio de 2015, Hora 17:41', '2015-06-12 22:41:13', '2015-06-12 22:41:13'),
(36, 4, 2, 1, '200', '16 de junio - 09:26', 'martes, 16 de junio de 2015, Hora 09:26', '2015-06-16 14:26:32', '2015-06-16 14:26:32'),
(37, 4, 2, 1, '100', '16 de junio - 09:26', 'martes, 16 de junio de 2015, Hora 09:26', '2015-06-16 14:26:39', '2015-06-16 14:26:39'),
(38, 5, 2, 1, '100', '16 de junio - 09:28', 'martes, 16 de junio de 2015, Hora 09:28', '2015-06-16 14:28:16', '2015-06-16 14:28:16'),
(39, 5, 2, 1, '200', '16 de junio - 09:28', 'martes, 16 de junio de 2015, Hora 09:28', '2015-06-16 14:28:27', '2015-06-16 14:28:27'),
(40, 5, 2, 1, '100', '16 de junio - 09:28', 'martes, 16 de junio de 2015, Hora 09:28', '2015-06-16 14:28:36', '2015-06-16 14:28:36'),
(41, 5, 2, 1, '100', '16 de junio - 09:28', 'martes, 16 de junio de 2015, Hora 09:28', '2015-06-16 14:28:37', '2015-06-16 14:28:37'),
(42, 6, 2, 1, '100', '16 de junio - 10:14', 'martes, 16 de junio de 2015, Hora 10:14', '2015-05-13 15:14:14', '2015-06-16 15:14:14'),
(43, 6, 2, 1, '100', '16 de junio - 11:59', 'martes, 16 de junio de 2015, Hora 11:59', '2015-06-16 16:59:32', '2015-06-16 16:59:32'),
(44, 6, 2, 1, '200', '16 de junio - 11:59', 'martes, 16 de junio de 2015, Hora 11:59', '2015-06-16 16:59:35', '2015-06-16 16:59:35'),
(45, 6, 2, 1, '200', '16 de junio - 11:59', 'martes, 16 de junio de 2015, Hora 11:59', '2015-06-16 16:59:36', '2015-06-16 16:59:36'),
(46, 7, 2, 1, '100', '16 de junio - 12:01', 'martes, 16 de junio de 2015, Hora 12:01', '2015-06-16 17:01:08', '2015-06-16 17:01:08'),
(47, 7, 2, 1, '100', '16 de junio - 12:01', 'martes, 16 de junio de 2015, Hora 12:01', '2015-06-16 17:01:10', '2015-06-16 17:01:10'),
(48, 8, 2, 1, '100', '16 de junio - 12:18', 'martes, 16 de junio de 2015, Hora 12:18', '2015-06-16 17:18:55', '2015-06-16 17:18:55'),
(49, 8, 2, 1, '200', '16 de junio - 12:18', 'martes, 16 de junio de 2015, Hora 12:18', '2015-06-16 17:18:58', '2015-06-16 17:18:58'),
(50, 8, 2, 1, '100', '16 de junio - 12:18', 'martes, 16 de junio de 2015, Hora 12:18', '2015-06-16 17:18:59', '2015-06-16 17:18:59'),
(51, 8, 2, 1, '100', '16 de junio - 12:19', 'martes, 16 de junio de 2015, Hora 12:19', '2015-06-16 17:19:01', '2015-06-16 17:19:01'),
(52, 8, 2, 1, '200', '16 de junio - 12:19', 'martes, 16 de junio de 2015, Hora 12:19', '2015-06-16 17:19:02', '2015-06-16 17:19:02'),
(53, 9, 2, 1, '100', '16 de junio - 12:20', 'martes, 16 de junio de 2015, Hora 12:20', '2015-06-16 17:20:43', '2015-06-16 17:20:43'),
(54, 9, 2, 1, '100', '16 de junio - 12:20', 'martes, 16 de junio de 2015, Hora 12:20', '2015-06-16 17:20:47', '2015-06-16 17:20:47'),
(55, 9, 2, 1, '100', '16 de junio - 12:20', 'martes, 16 de junio de 2015, Hora 12:20', '2015-06-16 17:20:50', '2015-06-16 17:20:50'),
(56, 9, 2, 1, '200', '16 de junio - 12:20', 'martes, 16 de junio de 2015, Hora 12:20', '2015-06-16 17:20:53', '2015-06-16 17:20:53'),
(57, 10, 2, 1, '100', '16 de junio - 12:26', 'martes, 16 de junio de 2015, Hora 12:26', '2015-06-16 17:26:43', '2015-06-16 17:26:43'),
(58, 10, 2, 1, '100', '16 de junio - 12:26', 'martes, 16 de junio de 2015, Hora 12:26', '2015-06-16 17:26:49', '2015-06-16 17:26:49'),
(59, 11, 2, 1, '200', '16 de junio - 12:31', 'martes, 16 de junio de 2015, Hora 12:31', '2015-06-16 17:31:14', '2015-06-16 17:31:14'),
(60, 11, 2, 1, '100', '16 de junio - 12:31', 'martes, 16 de junio de 2015, Hora 12:31', '2015-06-16 17:31:19', '2015-06-16 17:31:19'),
(61, 12, 2, 1, '100', '16 de junio - 12:33', 'martes, 16 de junio de 2015, Hora 12:33', '2015-06-16 17:33:25', '2015-06-16 17:33:25'),
(62, 12, 2, 1, '100', '16 de junio - 12:33', 'martes, 16 de junio de 2015, Hora 12:33', '2015-06-16 17:33:32', '2015-06-16 17:33:32'),
(63, 12, 2, 1, '100', '16 de junio - 12:33', 'martes, 16 de junio de 2015, Hora 12:33', '2015-06-16 17:33:38', '2015-06-16 17:33:38'),
(64, 13, 2, 1, '200', '16 de junio - 12:34', 'martes, 16 de junio de 2015, Hora 12:34', '2015-06-16 17:34:57', '2015-06-16 17:34:57'),
(65, 13, 2, 1, '100', '16 de junio - 12:35', 'martes, 16 de junio de 2015, Hora 12:35', '2015-06-16 17:35:03', '2015-06-16 17:35:03'),
(66, 14, 2, 1, '200', '16 de junio - 12:38', 'martes, 16 de junio de 2015, Hora 12:38', '2015-06-16 17:38:28', '2015-06-16 17:38:28'),
(67, 14, 2, 1, '200', '16 de junio - 12:38', 'martes, 16 de junio de 2015, Hora 12:38', '2015-06-16 17:38:37', '2015-06-16 17:38:37'),
(68, 14, 2, 1, '100', '16 de junio - 12:38', 'martes, 16 de junio de 2015, Hora 12:38', '2015-06-16 17:38:38', '2015-06-16 17:38:38'),
(69, 14, 2, 1, '200', '16 de junio - 12:38', 'martes, 16 de junio de 2015, Hora 12:38', '2015-06-16 17:38:39', '2015-06-16 17:38:39'),
(70, 14, 2, 1, '100', '16 de junio - 12:38', 'martes, 16 de junio de 2015, Hora 12:38', '2015-06-16 17:38:41', '2015-06-16 17:38:41'),
(71, 15, 2, 1, '200', '16 de junio - 12:45', 'martes, 16 de junio de 2015, Hora 12:45', '2015-06-16 17:45:06', '2015-06-16 17:45:06'),
(72, 15, 2, 1, '200', '16 de junio - 12:45', 'martes, 16 de junio de 2015, Hora 12:45', '2015-06-16 17:45:13', '2015-06-16 17:45:13'),
(73, 15, 2, 1, '100', '16 de junio - 12:45', 'martes, 16 de junio de 2015, Hora 12:45', '2015-06-16 17:45:23', '2015-06-16 17:45:23'),
(74, 15, 2, 1, '100', '16 de junio - 12:45', 'martes, 16 de junio de 2015, Hora 12:45', '2015-06-16 17:45:24', '2015-06-16 17:45:24'),
(75, 16, 2, 1, '1000', '16 de junio - 14:09', 'martes, 16 de junio de 2015, Hora 14:09', '2015-06-16 19:09:10', '2015-06-16 19:09:10'),
(76, 16, 2, 1, '100', '16 de junio - 14:09', 'martes, 16 de junio de 2015, Hora 14:09', '2015-06-16 19:09:12', '2015-06-16 19:09:12'),
(77, 16, 2, 1, '200', '16 de junio - 14:09', 'martes, 16 de junio de 2015, Hora 14:09', '2015-06-16 19:09:13', '2015-06-16 19:09:13'),
(78, 16, 2, 1, '100', '16 de junio - 14:09', 'martes, 16 de junio de 2015, Hora 14:09', '2015-06-16 19:09:16', '2015-06-16 19:09:16'),
(79, 16, 2, 1, '200', '16 de junio - 14:09', 'martes, 16 de junio de 2015, Hora 14:09', '2015-06-16 19:09:17', '2015-06-16 19:09:17'),
(80, 16, 2, 1, '200', '16 de junio - 14:09', 'martes, 16 de junio de 2015, Hora 14:09', '2015-06-16 19:09:19', '2015-06-16 19:09:19'),
(81, 16, 2, 1, '100', '16 de junio - 14:09', 'martes, 16 de junio de 2015, Hora 14:09', '2015-06-16 19:09:21', '2015-06-16 19:09:21'),
(82, 17, 2, 1, '200', '16 de junio - 14:44', 'martes, 16 de junio de 2015, Hora 14:44', '2015-06-16 19:44:38', '2015-06-16 19:44:38'),
(83, 17, 2, 1, '200', '16 de junio - 14:44', 'martes, 16 de junio de 2015, Hora 14:44', '2015-06-16 19:44:40', '2015-06-16 19:44:40'),
(84, 17, 2, 1, '200', '16 de junio - 14:44', 'martes, 16 de junio de 2015, Hora 14:44', '2015-06-16 19:44:40', '2015-06-16 19:44:40'),
(85, 18, 2, 1, '200', '16 de junio - 14:50', 'martes, 16 de junio de 2015, Hora 14:50', '2015-06-16 19:50:20', '2015-06-16 19:50:20'),
(86, 19, 2, 1, '100', '16 de junio - 16:34', 'martes, 16 de junio de 2015, Hora 16:34', '2015-06-16 21:34:16', '2015-06-16 21:34:16'),
(87, 19, 2, 1, '200', '16 de junio - 16:34', 'martes, 16 de junio de 2015, Hora 16:34', '2015-06-16 21:34:17', '2015-06-16 21:34:17'),
(88, 19, 2, 1, '100', '16 de junio - 16:34', 'martes, 16 de junio de 2015, Hora 16:34', '2015-06-16 21:34:24', '2015-06-16 21:34:24'),
(89, 19, 2, 1, '100', '16 de junio - 16:34', 'martes, 16 de junio de 2015, Hora 16:34', '2015-06-16 21:34:25', '2015-06-16 21:34:25'),
(90, 19, 2, 1, '1000', '16 de junio - 16:34', 'martes, 16 de junio de 2015, Hora 16:34', '2015-06-16 21:34:30', '2015-06-16 21:34:30'),
(91, 19, 2, 1, '100', '16 de junio - 16:34', 'martes, 16 de junio de 2015, Hora 16:34', '2015-06-16 21:34:36', '2015-06-16 21:34:36'),
(92, 19, 2, 1, '200', '16 de junio - 16:34', 'martes, 16 de junio de 2015, Hora 16:34', '2015-06-16 21:34:38', '2015-06-16 21:34:38'),
(93, 20, 2, 1, '200', '16 de junio - 16:42', 'martes, 16 de junio de 2015, Hora 16:42', '2015-06-16 21:42:50', '2015-06-16 21:42:50'),
(94, 20, 2, 1, '100', '16 de junio - 16:42', 'martes, 16 de junio de 2015, Hora 16:42', '2015-06-16 21:42:53', '2015-06-16 21:42:53'),
(95, 20, 2, 1, '200', '16 de junio - 16:42', 'martes, 16 de junio de 2015, Hora 16:42', '2015-06-16 21:42:54', '2015-06-16 21:42:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alcancias`
--

CREATE TABLE IF NOT EXISTS `alcancias` (
`id` int(10) unsigned NOT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alcancias`
--

INSERT INTO `alcancias` (`id`, `referencia`, `nombre`, `ubicacion`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '123abc', 'Piggy 1.0', 'Trigger', 'Piggy@algo.es', '$2y$10$ZfMVsi8B.AwL1xjnNTgCK.X5IOu9XvNtC4Mp5c2817ua4iOO49Q56', 'rowU0F2C6RM5rXn6vpIbCnYtu8Ro09VHVSOnX9vqjANyjXfKDQEgTg0kzxwm', '2015-06-04 22:21:13', '2015-06-04 22:24:55'),
(2, '123abc', 'Piggy G ', 'Zona G', 'zonag@algo.es', '$2y$10$ZfMVsi8B.AwL1xjnNTgCK.X5IOu9XvNtC4Mp5c2817ua4iOO49Q56', 'rowU0F2C6RM5rXn6vpIbCnYtu8Ro09VHVSOnX9vqjANyjXfKDQEgTg0kzxwm', '2015-06-04 22:21:13', '2015-06-04 22:24:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Users', '{"admin":1,"users":1}', '2015-06-04 22:29:56', '2015-06-04 22:29:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_06_02_221346_create_users_table', 1),
('2015_06_04_171109_create_table_alcancias', 2),
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 3),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 3),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 3),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 3),
('2015_06_04_175312_create_table_ahorro', 4),
('2015_06_09_142556_create_portafolios_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolios`
--

CREATE TABLE IF NOT EXISTS `portafolios` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `portafolios`
--

INSERT INTO `portafolios` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Sin riesgo', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Conservador', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Moderado', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Agresivo', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `throttle`
--

CREATE TABLE IF NOT EXISTS `throttle` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 2, '::1', 0, 0, 0, NULL, NULL, NULL),
(2, 2, '192.168.1.21', 0, 0, 0, NULL, NULL, NULL),
(3, 2, '192.168.1.21', 0, 0, 0, NULL, NULL, NULL),
(4, 2, '192.168.1.10', 0, 0, 0, NULL, NULL, NULL),
(5, 2, '192.168.1.10', 0, 0, 0, NULL, NULL, NULL),
(6, 3, '192.168.1.10', 0, 0, 0, NULL, NULL, NULL),
(7, 3, '192.168.1.21', 0, 0, 0, NULL, NULL, NULL),
(8, 2, '192.168.1.17', 0, 0, 0, '2015-06-09 14:37:33', NULL, NULL),
(9, 2, '192.168.1.17', 1, 0, 0, '2015-06-09 14:36:48', NULL, NULL),
(10, 10, '192.168.1.17', 4, 0, 0, '2015-06-10 22:18:56', NULL, NULL),
(11, 10, '192.168.1.17', 1, 0, 0, '2015-06-09 19:02:48', NULL, NULL),
(12, 2, '192.168.1.16', 0, 0, 0, NULL, NULL, NULL),
(13, 28, '192.168.1.16', 0, 0, 0, NULL, NULL, NULL),
(14, 34, '192.168.1.16', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `portafolio_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `tag`, `portafolio_id`, `first_name`, `last_name`, `email`, `cedula`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `created_at`, `updated_at`) VALUES
(2, '1491825229', 4, 'Jefferson', 'Rivera', 'jefersonpatino@yahoo.es', '', '$2y$10$Goq5HMfIgJfzwjCIjJUCU.bQ4RQQ3pIAEGNqNJM2Zh6WPc81v/vwW', NULL, 1, NULL, NULL, '2015-06-16 17:10:19', '$2y$10$DhUZRTtLUCVaho0CpYu9a.GWqzdYwvnVSShFI2JEZM1/5NPqZBhq2', NULL, '2015-06-04 22:31:09', '2015-06-16 17:10:19'),
(3, '5197231978', 0, 'Alberto', 'Gonzales', 'a@b.c', '', '$2y$10$fzRT0VAbOxCKGSkHOTU25ehjpuhxpCcMUA/5TfdStLhko9Le3z.Jy', NULL, 1, NULL, NULL, '2015-06-05 15:43:28', '$2y$10$aQMXvljIhPfywbFx7pKtNOLL2Z.08ZEG5SQt0U6sNL5fEqS8uM/B6', NULL, '2015-06-04 21:35:20', '2015-06-05 15:43:28'),
(10, '', 0, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.com', '1032461591', '$2y$10$N5A9AZtdb66paxaMoMlORuH0Cs2WoLp0ih1wP/.GQibQdruMEJjJ2', NULL, 1, NULL, NULL, '2015-06-05 16:47:21', '$2y$10$Vlix.VNi7O0qVkXvEwfu2eQCilVvAWd.Dg/MutXAXy1dK6hsjO8uW', NULL, '2015-06-05 16:47:21', '2015-06-05 16:47:21'),
(11, '', 0, 'juan', 'gomez', 'jg@gg.com', '1239', '$2y$10$PbS4CG358pGXbsFwxycoW.VMasa7SlRV2Bb8o5GGTOdS7gArd2hle', NULL, 1, NULL, NULL, '2015-06-05 19:59:32', '$2y$10$Q.4dyKGCtejp3vFmC6.ZEOJb64GgWbfKcJbSQNCy28tZlJ1a3FnNW', NULL, '2015-06-05 19:59:32', '2015-06-05 19:59:32'),
(12, '', 0, 'dfdf', 'dfdf', 'admin@opiniofy.com', '34344', '$2y$10$DOuuXDtU0ZeT3jDyH/PTxuHFxcQebgwM..LZRHNP/nPwd35UWO7qm', NULL, 1, NULL, NULL, '2015-06-05 21:14:19', '$2y$10$axMsUW7USZdkt.i9iP/thuDSCmme2T0qIC7e3F0rjMrc1n/.LXclu', NULL, '2015-06-05 21:14:19', '2015-06-05 21:14:19'),
(13, '', 0, 'ghcn', 'gbbv', 'hjg@ghhg.vg', '123654', '$2y$10$Xg1eHXl4snSjuOWqVRpoXeACU4ki8.ZAd29qkvxocrh9up/H0GcJm', NULL, 1, NULL, NULL, '2015-06-05 21:18:10', '$2y$10$ADunPgRbfaLqaAWthZaZyeiXca3xAJhzPQ4djLqYuV9pbSfUF72Di', NULL, '2015-06-05 21:18:10', '2015-06-05 21:18:10'),
(14, '', 0, 'Angie', 'Diaz Galeano', 'admin@opiniofy.coma', '3232323', '$2y$10$Wtc93XZ8DLTVrokwssB9KuHhAgRklPMEtUTXfmscwP6JnUimNAgbG', NULL, 1, NULL, NULL, '2015-06-05 21:55:52', '$2y$10$3l4yYYW1UEUZiw/NBVGez.rg5e.dPXpJMDVGjXNthrYJmGZbr4JVG', NULL, '2015-06-05 21:55:51', '2015-06-05 21:55:52'),
(15, '', 0, 'gjg', 'ghjj', 'gjg@ghj.com', '55878', '$2y$10$536z6kDybIR6YopJP5Ws3O41.a6fj4wWsPW5n1hyb3KNqtnJjat/O', NULL, 1, NULL, NULL, '2015-06-05 22:31:56', '$2y$10$qZYVuKNrCxlJSXEfWIJ0Z.STaFjRRNc7EStTwuESPRVKhuEeuscI2', NULL, '2015-06-05 22:31:55', '2015-06-05 22:31:56'),
(16, '', 0, 'Angie', 'Diaz Galeano', 'riverajefer3@gmail.com', '1032461591', '$2y$10$fLI9JFk.XR91ZRw0uaNBn.IYnUexmmRxrmyy2M/VzlhrPB/Kjvv.e', NULL, 1, NULL, NULL, '2015-06-09 15:20:48', '$2y$10$lu7IfTqrIkblppnEPjqWB.5Egt.bFbwir/Ofcas9a3LTa2Tmdokfq', NULL, '2015-06-09 15:20:48', '2015-06-09 15:20:48'),
(17, '', 0, 'vjg', 'gjgg', 'cjh@gh.g', '5688988', '$2y$10$OndOJ92Srpa2My7BZ2laZ./75XluzXwW9yJe5eNu.tMWZWaJkzSe.', NULL, 1, NULL, NULL, '2015-06-09 18:48:07', '$2y$10$XPJpnn4gyNDTINHUETH4cuHvHQT6flW8lV7Vuc0Q1Mk7SqtQIdKgK', NULL, '2015-06-09 18:48:07', '2015-06-09 18:48:07'),
(18, '', 0, 'Jose', 'Ruiz', 'jruiz@gmail.com', '9988774', '$2y$10$zUmvAaqEW5menaNNwHtGhOp.fUrvG32q./ohgYU6w24GsladPr.8i', NULL, 1, NULL, NULL, '2015-06-09 19:14:00', '$2y$10$LRaPLEcFjzaScubbg4T0HOnctV/Ri0bqupAwc9fiqkqG0fc5ihyCa', NULL, '2015-06-09 19:13:59', '2015-06-09 19:14:00'),
(19, '', 0, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.come', '1032461591', '$2y$10$WyyWHrAcXN1e4QrsT41RjemOjOIfrRfOQKyy8gGhgcERNzuc8w.Wq', NULL, 1, NULL, NULL, '2015-06-09 23:12:44', '$2y$10$hg0NC6WbUvDLvr.dtIG3recgpq/ypemnhgCn9kW.MT2gwCpCnR88.', NULL, '2015-06-09 23:12:43', '2015-06-09 23:12:44'),
(20, '', 0, 'Jose', 'Lopez', 'jefersonpatino@yahoo.es2', '1032461591', '$2y$10$SIK6JrhxXC.rgNDgMYB0NuTU538mXVm889gE7QPTCVxfX/3vef5eq', NULL, 1, NULL, NULL, '2015-06-09 23:14:53', '$2y$10$Hqt573zNM9ikPZLuhg5EDu.K7Ky6mIlFLxYJe9C0zGV/5VLlzwVDu', NULL, '2015-06-09 23:14:52', '2015-06-09 23:14:53'),
(21, '', 2, 'Jose', 'Gomez', 'riverajefer@gmail.com.co', '1032461591', '$2y$10$qKxG3wnraRLK1efPBjXsOOo03RV099Eivp5AQ.TBIOl8nSFE1lzUa', NULL, 1, NULL, NULL, '2015-06-09 23:16:16', '$2y$10$FVS9orcGPEckCQxmSsTAjeWerKguEaXD.eMsT0q/RJRdEayuhKzoO', NULL, '2015-06-09 23:16:16', '2015-06-09 23:16:37'),
(22, '', 2, 'Juan', 'Ruiz', 'a@b.d', '123688488', '$2y$10$rEsxIRkGAMSt/Rmam2CIdeHM6e.Mtp8MCJyuw/GRqC3PZeNwDYK6G', NULL, 1, NULL, NULL, '2015-06-09 23:32:34', '$2y$10$KVB5lOsVtMuK6g465mw83.Ea.7czBUVjdDL8erCGDS2g07wB4gQO2', NULL, '2015-06-09 23:32:34', '2015-06-09 23:32:43'),
(23, '1234567898', 4, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.com6', '4545454', '$2y$10$yH2vDMn3sx.DYHdkznB6se9cN9s/alFAU12DTunUdl0zLWyqaAqfW', NULL, 1, NULL, NULL, '2015-06-10 14:45:36', '$2y$10$CWpDivpWjubNlcQVUHrCkeBPdTQBRVcu.6AO/YAkyXfT.DDtQg3lu', NULL, '2015-06-10 14:45:36', '2015-06-10 15:30:58'),
(24, '123456789', 3, 'Jhon', 'Doe', 'doe@gmail.com', '123456789', '$2y$10$6mVna4lHGbgEWXsJC6VAjuphFynBy3yo5oxowboAG.UEBAFOfWQU2', NULL, 1, NULL, NULL, '2015-06-10 15:31:59', '$2y$10$/F4Jt1AWRLP/I7h2blAIheFzSMfzDgbONb8fN656Cf0ZGw.qFU8m6', NULL, '2015-06-10 15:31:58', '2015-06-10 15:32:09'),
(25, '123456', 3, 'Jhon', 'Doe', 'jhon@yahoo.es', '123456789', '$2y$10$aEJC8ZI3c4pAJHyqp993tePBpeHPmww/XaXLm/VvJ91sZXRmS7qo6', NULL, 1, NULL, NULL, '2015-06-10 15:36:23', '$2y$10$AL692TYLqDkSczSKV02jS.UgpxXZRjHZ5sghNZl1y05yxKyzGEFby', NULL, '2015-06-10 15:36:22', '2015-06-10 15:36:35'),
(26, '1234567898222', 1, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comsa', '2121212121', '$2y$10$KPIHXOwVWFWNG2ZfT3XsH.So.jRlw4rKnRzwwYEMeLMsim4IiXICK', NULL, 1, NULL, NULL, '2015-06-10 15:38:44', '$2y$10$z5pDLi/D0Ua2wpJokanzLu6BRizrbxNji9PRqUSsmLfFKtqvlkmlW', NULL, '2015-06-10 15:38:43', '2015-06-10 15:51:35'),
(27, '1234567891', 1, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comw', '21545134', '$2y$10$t.HPvCIexk7qh7ndJoyFdO7pbVbF5sZEmvUbFS1286rMzdxdp92R6', NULL, 1, NULL, NULL, '2015-06-10 15:52:54', '$2y$10$/UhJIwQ/vnwP6k2lTcpbDOIeaZwxUWaeT6.qoXOnYmYowH7qpJL.G', NULL, '2015-06-10 15:52:54', '2015-06-10 15:59:49'),
(29, '1364171145', 3, 'Carlos', 'Gomez', 'cgomez@yahoo.es', '12236874', '$2y$10$prfDIVgWWwJ1.b7Puwh5B.lTma9v8tkocBccpE.sU3IQY/B3xWGI2', NULL, 1, NULL, NULL, '2015-06-10 17:28:02', '$2y$10$4EcN.KXV6K2A579.bdkEweGA3mJFJoIAVWQVmXBsTTh92N7Mu/d7e', NULL, '2015-06-10 17:28:01', '2015-06-10 17:28:17'),
(30, '', 0, 'Jhon', 'Doe', 'jd@yahoo.es', '123654', '$2y$10$D.ZMvG9tvvj2ZqkyBmJZbOrG0X2Ly7iY.8Ty5n4/WAw/6MZqIecyW', NULL, 1, NULL, NULL, '2015-06-10 20:58:48', '$2y$10$wrxxLUpJpWtMeNg1hXk/lexG5acCKGL/nZLK/2UqZk82VoUTn6Mxi', NULL, '2015-06-10 20:58:48', '2015-06-10 20:58:48'),
(31, '', 0, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comww', '1032461591', '$2y$10$pv1XswjEpE/Olh7GILR1V.Sn3T0CrtzMmkn1uGFcib1s8x/d4i3jW', NULL, 1, NULL, NULL, '2015-06-10 21:01:01', '$2y$10$9pQGAbT8aAZqBUxawORPAO5OdTCzOqcFVW/OVtaKkh2.5gjmxKpKq', NULL, '2015-06-10 21:01:01', '2015-06-10 21:01:01'),
(32, '245545454', 3, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comq', '1032461591', '$2y$10$z4rs1WP4DD.BRI10fAPwuO1i9uyDMzLuDSYy6dmLLR2kky8/45hCe', NULL, 1, NULL, NULL, '2015-06-10 21:02:27', '$2y$10$lBscZBIvAsTSps66zhyDTuWcNJ8yhjcR5eStdh6bWl35j4A4V50sy', NULL, '2015-06-10 21:02:26', '2015-06-10 21:02:36'),
(33, '12236557', 2, 'Lucas', 'Perez', 'hfg@ghg.hh', '1236874', '$2y$10$vvN8.ZiCnlJFg1dWTGXjl.GAL0oV4krHS.ijhjz2CVHkdD9FjDo1a', NULL, 1, NULL, NULL, '2015-06-10 21:04:13', '$2y$10$wHkwWzIkM9FNJnNOhExezOcVfjIVduDTAXJOoUD6bOE1AuzLFGKgK', NULL, '2015-06-10 21:04:13', '2015-06-10 21:04:31'),
(34, '519723197', 4, 'Jose', 'Gomez', 'jg@yahoo.es', '122366544', '$2y$10$vba4ChqAKMM8.WufeL8VruEbW2KR301uGOGzZwXeXuLypj0KSptGe', NULL, 1, NULL, NULL, '2015-06-10 21:10:52', '$2y$10$gmGBqf9ExvWvoyH/i2hO8.AZUIT0vm1430.itXw4IiSOlh2ibENAq', NULL, '2015-06-10 21:05:31', '2015-06-10 21:10:52'),
(35, '2112430212', 2, 'Richard', 'Sewards', 'rso@bb.cim', '80186587', '$2y$10$nhnVhw/r.XOKy8JzD66.ee/lTqj9VVjWk85DP/0MoiqsWB2KcBbxG', NULL, 1, NULL, NULL, '2015-06-10 21:28:00', '$2y$10$swCoUOmJpJbzH9F4I4eL7.LRWmmSQIn5shGshlomEuyWXeAe/8Pd2', NULL, '2015-06-10 21:28:00', '2015-06-10 21:28:27'),
(36, '1234567890', 0, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comwewewe', '1032461591', '$2y$10$OhAU4n6PFf/OMV2QOVQJcugHJy3Zz9d5OxEFe9YLn22lqF3M/Ix8O', NULL, 1, NULL, NULL, '2015-06-10 21:42:23', '$2y$10$spSoOUPyR8E.Fpjojn8dnu5W3E1DFZMcEdTdY1ZoHpWGcTnW7LQjS', NULL, '2015-06-10 21:42:23', '2015-06-10 21:42:40'),
(37, '123478', 3, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comqqqqq', '12121212', '$2y$10$Pak8zBI65Y.ifzjL2lLXL.zpbpoKhvyVrTWRkbZrKhGO609Siwucm', NULL, 1, NULL, NULL, '2015-06-10 21:43:58', '$2y$10$FODZmE6dBJulJU.VvqyEq.fEwyUQn20Qjszpf7HhV5Y0E.g1Y3t8O', NULL, '2015-06-10 21:43:58', '2015-06-10 21:44:07'),
(38, '123423232323', 2, 'Lucas', 'Perez', 'kkjsd@asas.com', '1726712162', '$2y$10$KXeTO3Ga0/sX7KmFhvjBqebj4l7AIrVBDJEVAGxYzl5KgRv3WdDM6', NULL, 1, NULL, NULL, '2015-06-10 22:04:30', '$2y$10$Ubukl1zmM5RKLaCEpmDak.zicjt63Pw2B.V2hL8boWZ8yvcNMoWIu', NULL, '2015-06-10 22:04:30', '2015-06-10 22:04:39'),
(39, '123455432456', 1, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comrr', '1032461591', '$2y$10$98r4EhNfMs1KgWMlggF0zeBMpk6nnEI4mmOSH5IwAIsoRBCIVNWa2', NULL, 1, NULL, NULL, '2015-06-11 15:14:49', '$2y$10$./MNHzPvBNyjxP8QjUFbWeTZZoTEqcI1.puiON0ciaevEIaFzKT6O', NULL, '2015-06-11 15:14:48', '2015-06-11 15:16:09'),
(40, '485542', 0, 'gjhg', 'bhgg', 'bbv@gh.gf', '55555', '$2y$10$0kjrlT4s7rTvCEbG./9wbuUx1f08sQ7iZg2f1J3jmDsblxm9AUwKG', NULL, 1, NULL, NULL, '2015-06-11 15:18:59', '$2y$10$Snrhis1shZto87BNSXxfP.jSORzS.hHXVpfETXTtqiPmLY6VYnRRK', NULL, '2015-06-11 15:18:58', '2015-06-11 15:19:03'),
(41, '9999999', 0, 'cbbvg', 'cbvc', 'vjh@ghh.hf', '17584', '$2y$10$Lq0hCFcm/0mKZd1ibFsg1uHer5uvVz7chXX/KdXDqN/DJ6gM3./7C', NULL, 1, NULL, NULL, '2015-06-11 15:21:30', '$2y$10$ejDWpKxM0Te3FqhrcB.q3.IrPQ6vDb3QrXAHlHoJlRWAotQ0H0luK', NULL, '2015-06-11 15:21:30', '2015-06-11 15:21:34'),
(42, '4545454545', 0, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.cossm', '1032461591', '$2y$10$NYofjUlsM/vCxpXfXoVx4en/ADHiKVhp9OkHRXq.1vAj.YrqeXO4G', NULL, 1, NULL, NULL, '2015-06-11 15:34:20', '$2y$10$.zJkL8rhnrAQAr.FqXqeWO1PxD3mH1s4FP4ZXLQeUzbowBkU7kp1S', NULL, '2015-06-11 15:34:20', '2015-06-11 15:34:24'),
(43, '34343434', 1, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comeee', '1032461591', '$2y$10$TKhcUzLbbK9kMev353g.weHczIspHsoUZw5egMsyQwwPdKaMjr6Y6', NULL, 1, NULL, NULL, '2015-06-11 15:48:24', '$2y$10$0DkZwgF.s2UnkkS2EF5UzOOBYxrmyb9XfHjx0cA/7n/SeVWHtFOjm', NULL, '2015-06-11 15:48:24', '2015-06-11 16:53:47'),
(44, '545545444', 2, 'fhgff', 'gjgg', 'gh@gh.g', '455444', '$2y$10$YgOwtY71i7FPr7j7TycOzOhv11X7ymKoSsAMnyq/sOZc86wS479Li', NULL, 1, NULL, NULL, '2015-06-11 15:59:17', '$2y$10$2pQTvbkQGOnrVU9PQuzSj..IgwfNx4ctQ1MHh6Jkp07ztoDpVT1qi', NULL, '2015-06-11 15:59:17', '2015-06-11 16:03:00'),
(45, '1212121212', 2, 'sdsd', 'Diaz Galeano', 'riverajefer@gmddfail.com', '1032461591', '$2y$10$rGW36Ec02kP2Mday6Jsdk.VU8Si5W4HDGN4BNbLxNa7xOSk42HzD6', NULL, 1, NULL, NULL, '2015-06-11 17:33:18', '$2y$10$buSR.V.xot.9POpUHBn0jeALBLAzuj.X7CIMk6KJPPcIiNdfBBEpe', NULL, '2015-06-11 17:33:17', '2015-06-11 17:33:29'),
(46, '12345874', 4, 'Angie', 'Diaz Galeano', 'riverajefer@gmail.comp', '1032461591', '$2y$10$akhAUQhOcNob1fEkFlYqluuk.fcN4a3lt2B/2ATD9X8rXWKUDGld.', NULL, 1, NULL, NULL, '2015-06-16 16:04:25', '$2y$10$X8dXXuCT9e/WCEZKNM.pG.vTuLFpSvgQ.vAhP0KzaSZ1MTdUeRJL.', NULL, '2015-06-16 16:04:24', '2015-06-16 16:04:38'),
(47, '8554668', 3, 'Lucas', 'Gomez', 'lucas@gmail.com', '1158454587', '$2y$10$AxIurdPeUuCYgmhbLGvkou3QsF7qSrTZwXGuL6hDPAfK2DwIC25yi', NULL, 1, NULL, NULL, '2015-06-16 17:09:52', '$2y$10$8hOLNOPdLwGKT5tRFbWbbesw10afBCnezOeoGTapusdU4m6rEYhua', NULL, '2015-06-16 17:09:52', '2015-06-16 17:09:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(2, 1),
(3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ahorro`
--
ALTER TABLE `ahorro`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alcancias`
--
ALTER TABLE `alcancias`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alcancias_email_unique` (`email`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indices de la tabla `portafolios`
--
ALTER TABLE `portafolios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `throttle`
--
ALTER TABLE `throttle`
 ADD PRIMARY KEY (`id`), ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `users_activation_code_index` (`activation_code`), ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indices de la tabla `users_groups`
--
ALTER TABLE `users_groups`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ahorro`
--
ALTER TABLE `ahorro`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT de la tabla `alcancias`
--
ALTER TABLE `alcancias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `portafolios`
--
ALTER TABLE `portafolios`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `throttle`
--
ALTER TABLE `throttle`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
