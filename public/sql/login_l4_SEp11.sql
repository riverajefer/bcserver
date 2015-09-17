-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2015 a las 23:53:02
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
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE IF NOT EXISTS `bancos` (
`id` int(10) unsigned NOT NULL,
  `banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `banco`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Banco de Bogotá', 'bogota.gif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Banco Popular', 'popular.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Banco CorpBanca', 'corpbanca.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bancolombia', 'bancolombia.gif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Citibank', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Banco GNB Sudameris', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'BBVA Colombia', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Banco de Occidente', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'BCSC S.A.', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Davivienda', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Colpatria Red Multibanca', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Banagrario', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'AV Villas', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Procredit', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bancamía S.A.', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'WWB S.A.', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bancoomeva', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Finandina', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Banco Falabella S.A.', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Banco Pichincha S.A.', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Coopcentral', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Banco Santander', 'banco.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
('2015_06_09_142556_create_portafolios_table', 5),
('2015_06_22_100105_create_tokens_table', 6),
('2015_06_22_104807_add_api_token_users_table', 7),
('2015_06_25_165851_crate_table_estado_puerta', 8),
('2015_07_01_121240_create_rentabilidad_table', 9),
('2015_07_14_153215_create_porcentaje_general_table', 10),
('2015_07_14_153325_create_users_porcentaje_table', 11),
('2015_07_22_105131_create_failed_jobs_table', 12),
('2014_10_09_212439_create_queue_table', 13),
('2015_08_10_104751_create_table_rejected', 14),
('2015_08_26_185526_create_table_transferencias_users', 15),
('2015_08_27_143741_create_table_usuarios_bancoink_transferencias', 16),
('2015_08_28_113018_create_transacciones_table', 17),
('2015_09_01_160530_create_table_bancos', 18),
('2015_09_02_154233_create_table_users_bancos', 19),
('2015_09_02_170202_create_table_users_bancos_transferencias', 20),
('2015_09_07_110347_create_users_alcancia', 21),
('2015_09_07_110407_create_users_alcancia_deposito', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rejected`
--

CREATE TABLE IF NOT EXISTS `rejected` (
`id` int(10) unsigned NOT NULL,
  `user_alcancia_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rejected`
--

INSERT INTO `rejected` (`id`, `user_alcancia_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2015-09-07 22:24:47', '2015-09-07 22:24:47'),
(2, 2, '2015-09-07 22:24:49', '2015-09-07 22:24:49'),
(3, 2, '2015-09-07 22:24:51', '2015-09-07 22:24:51'),
(4, 10, '2015-09-08 21:46:29', '2015-09-08 21:46:29'),
(5, 6, '2015-09-08 22:10:57', '2015-09-08 22:10:57'),
(6, 7, '2015-09-08 22:19:33', '2015-09-08 22:19:33'),
(7, 7, '2015-09-08 22:19:51', '2015-09-08 22:19:51'),
(8, 7, '2015-09-08 22:19:54', '2015-09-08 22:19:54'),
(9, 7, '2015-09-08 22:19:57', '2015-09-08 22:19:57'),
(10, 9, '2015-09-10 19:45:44', '2015-09-10 19:45:44'),
(11, 9, '2015-09-10 19:45:48', '2015-09-10 19:45:48'),
(12, 9, '2015-09-10 19:45:51', '2015-09-10 19:45:51'),
(13, 12, '2015-09-10 19:52:17', '2015-09-10 19:52:17'),
(14, 12, '2015-09-10 19:52:17', '2015-09-10 19:52:17'),
(15, 12, '2015-09-10 19:52:18', '2015-09-10 19:52:18'),
(16, 12, '2015-09-10 19:52:18', '2015-09-10 19:52:18'),
(17, 12, '2015-09-10 19:52:18', '2015-09-10 19:52:18'),
(18, 12, '2015-09-10 19:52:18', '2015-09-10 19:52:18'),
(19, 12, '2015-09-10 19:52:19', '2015-09-10 19:52:19'),
(20, 12, '2015-09-10 19:52:19', '2015-09-10 19:52:19'),
(21, 12, '2015-09-10 19:52:19', '2015-09-10 19:52:19'),
(22, 12, '2015-09-10 19:52:19', '2015-09-10 19:52:19'),
(23, 12, '2015-09-10 19:52:20', '2015-09-10 19:52:20'),
(24, 12, '2015-09-10 19:52:20', '2015-09-10 19:52:20'),
(25, 12, '2015-09-10 19:52:20', '2015-09-10 19:52:20'),
(26, 12, '2015-09-10 19:52:20', '2015-09-10 19:52:20'),
(27, 12, '2015-09-10 19:52:21', '2015-09-10 19:52:21'),
(28, 12, '2015-09-10 19:52:21', '2015-09-10 19:52:21'),
(29, 12, '2015-09-10 19:52:21', '2015-09-10 19:52:21'),
(30, 12, '2015-09-10 19:52:21', '2015-09-10 19:52:21'),
(31, 12, '2015-09-10 19:52:22', '2015-09-10 19:52:22'),
(32, 12, '2015-09-10 19:52:22', '2015-09-10 19:52:22'),
(33, 12, '2015-09-10 19:52:22', '2015-09-10 19:52:22'),
(34, 12, '2015-09-10 19:52:22', '2015-09-10 19:52:22'),
(35, 12, '2015-09-10 19:52:23', '2015-09-10 19:52:23'),
(36, 12, '2015-09-10 19:52:23', '2015-09-10 19:52:23'),
(37, 12, '2015-09-10 19:52:23', '2015-09-10 19:52:23'),
(38, 12, '2015-09-10 19:52:23', '2015-09-10 19:52:23'),
(39, 12, '2015-09-10 19:52:24', '2015-09-10 19:52:24'),
(40, 12, '2015-09-10 19:52:24', '2015-09-10 19:52:24'),
(41, 12, '2015-09-10 19:52:24', '2015-09-10 19:52:24'),
(42, 12, '2015-09-10 19:52:24', '2015-09-10 19:52:24'),
(43, 12, '2015-09-10 19:52:25', '2015-09-10 19:52:25'),
(44, 12, '2015-09-10 19:52:25', '2015-09-10 19:52:25'),
(45, 12, '2015-09-10 19:52:25', '2015-09-10 19:52:25'),
(46, 12, '2015-09-10 19:52:25', '2015-09-10 19:52:25'),
(47, 12, '2015-09-10 19:52:26', '2015-09-10 19:52:26'),
(48, 12, '2015-09-10 19:52:26', '2015-09-10 19:52:26'),
(49, 12, '2015-09-10 19:52:26', '2015-09-10 19:52:26'),
(50, 12, '2015-09-10 19:52:26', '2015-09-10 19:52:26'),
(51, 12, '2015-09-10 19:52:27', '2015-09-10 19:52:27'),
(52, 12, '2015-09-10 19:52:27', '2015-09-10 19:52:27'),
(53, 12, '2015-09-10 19:52:27', '2015-09-10 19:52:27'),
(54, 12, '2015-09-10 19:52:27', '2015-09-10 19:52:27'),
(55, 12, '2015-09-10 19:52:28', '2015-09-10 19:52:28'),
(56, 12, '2015-09-10 19:52:28', '2015-09-10 19:52:28'),
(57, 12, '2015-09-10 19:52:28', '2015-09-10 19:52:28'),
(58, 12, '2015-09-10 19:52:28', '2015-09-10 19:52:28'),
(59, 14, '2015-09-10 22:40:20', '2015-09-10 22:40:20'),
(60, 14, '2015-09-10 22:40:21', '2015-09-10 22:40:21'),
(61, 16, '2015-09-11 16:21:40', '2015-09-11 16:21:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(14, 34, '192.168.1.16', 0, 0, 0, NULL, NULL, NULL),
(15, 49, '192.168.1.10', 0, 0, 0, NULL, NULL, NULL),
(16, 49, '192.168.1.17', 0, 0, 0, NULL, NULL, NULL),
(17, 2, '192.168.1.29', 0, 0, 0, NULL, NULL, NULL),
(18, 2, '192.168.1.22', 0, 0, 0, NULL, NULL, NULL),
(19, 57, NULL, 0, 0, 0, NULL, NULL, NULL),
(20, 55, '192.168.1.21', 0, 0, 0, NULL, NULL, NULL),
(21, 55, '192.168.1.22', 0, 0, 0, NULL, NULL, NULL),
(22, 58, NULL, 0, 0, 0, NULL, NULL, NULL),
(23, 60, NULL, 0, 0, 0, NULL, NULL, NULL),
(24, 61, NULL, 0, 0, 0, NULL, NULL, NULL),
(25, 62, NULL, 0, 0, 0, NULL, NULL, NULL),
(26, 63, NULL, 0, 0, 0, NULL, NULL, NULL),
(27, 64, NULL, 0, 0, 0, NULL, NULL, NULL),
(28, 65, NULL, 0, 0, 0, NULL, NULL, NULL),
(29, 66, NULL, 0, 0, 0, NULL, NULL, NULL),
(30, 2, '192.168.1.12', 0, 0, 0, NULL, NULL, NULL),
(31, 2, '192.168.1.34', 0, 0, 0, NULL, NULL, NULL),
(32, 67, NULL, 0, 0, 0, NULL, NULL, NULL),
(33, 2, '192.168.1.57', 0, 0, 0, NULL, NULL, NULL),
(34, 2, '192.168.1.18', 0, 0, 0, NULL, NULL, NULL),
(35, 2, '192.168.1.11', 0, 0, 0, NULL, NULL, NULL),
(36, 68, NULL, 0, 0, 0, NULL, NULL, NULL),
(37, 70, NULL, 0, 0, 0, NULL, NULL, NULL),
(38, 71, NULL, 0, 0, 0, NULL, NULL, NULL),
(39, 72, NULL, 0, 0, 0, NULL, NULL, NULL),
(40, 2, '192.168.1.27', 0, 0, 0, NULL, NULL, NULL),
(41, 2, '192.168.1.26', 0, 0, 0, NULL, NULL, NULL),
(42, 73, NULL, 0, 0, 0, NULL, NULL, NULL),
(43, 74, NULL, 0, 0, 0, NULL, NULL, NULL),
(44, 75, NULL, 0, 0, 0, NULL, NULL, NULL),
(45, 2, '192.168.1.68', 0, 0, 0, NULL, NULL, NULL),
(46, 2, '192.168.1.13', 0, 0, 0, NULL, NULL, NULL),
(47, 2, '192.168.1.32', 0, 0, 0, NULL, NULL, NULL),
(48, 76, NULL, 0, 0, 0, NULL, NULL, NULL),
(49, 77, NULL, 0, 0, 0, NULL, NULL, NULL),
(50, 78, NULL, 0, 0, 0, NULL, NULL, NULL),
(51, 1, NULL, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `api_token` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `expires_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `api_token`, `expires_on`, `client`, `created_at`, `updated_at`) VALUES
(1, 1, '8a5db8fcf07c77b48dc467ce5c02d2322f93861b0cb27dcf95e77d894219c009', '2015-10-07 22:13:35', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-07 22:13:35', '2015-09-07 22:13:35'),
(2, 2, '024b92014359aae7752dcf6afb9c199b88c71c7f538128a4f8b6cc2cb7ba4052', '2015-10-08 14:43:15', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-08 14:43:15', '2015-09-08 14:43:15'),
(3, 1, 'd266761e86cfde90841749daf819ec59966d4a76766451ba7e99b42a7bea91c8', '2015-10-08 16:55:13', '1||||Safari|4|||AndroidOS||||||A|3|1', '2015-09-08 16:55:13', '2015-09-08 16:55:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE IF NOT EXISTS `transacciones` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `valor` float NOT NULL,
  `origen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `movimiento` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `transferencia_id` int(11) NOT NULL,
  `transferencia_banco_id` int(11) NOT NULL,
  `user_alcancia_id` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `user_id`, `tipo`, `valor`, `origen`, `movimiento`, `transferencia_id`, `transferencia_banco_id`, `user_alcancia_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2565, 'Trigger', 'Deposito', 0, 0, 1, 1, '2015-09-08 21:52:07', '2015-09-08 21:52:12'),
(2, 1, 1, 2232.5, 'Trigger', 'Deposito', 0, 0, 2, 1, '2015-09-08 21:55:27', '2015-09-08 21:55:33'),
(3, 1, 3, -1500, 'Usuario Bancoink', 'Transferencia Bancoink', 1, 0, 0, 1, '2015-09-08 21:58:51', '2015-09-08 21:58:51'),
(4, 2, 2, 1500, 'Usuario Bancoink', 'Transferencia Bancoink', 1, 0, 0, 1, '2015-09-08 21:58:51', '2015-09-08 21:58:51'),
(5, 1, 1, 2327.5, 'Trigger', 'Deposito', 0, 0, 3, 1, '2015-09-08 22:02:13', '2015-09-08 22:02:20'),
(6, 1, 4, -2500, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 1, 0, 1, '2015-09-08 22:07:59', '2015-09-08 22:07:59'),
(7, 1, 1, 1805, 'Trigger', 'Deposito', 0, 0, 4, 1, '2015-09-08 22:09:37', '2015-09-08 22:09:40'),
(8, 2, 1, 3895, 'Trigger', 'Deposito', 0, 0, 6, 1, '2015-09-08 22:10:52', '2015-09-08 22:11:04'),
(9, 2, 3, -3000, 'Usuario Bancoink', 'Transferencia Bancoink', 2, 0, 0, 1, '2015-09-08 22:11:20', '2015-09-08 22:11:20'),
(10, 1, 2, 3000, 'Usuario Bancoink', 'Transferencia Bancoink', 2, 0, 0, 1, '2015-09-08 22:11:20', '2015-09-08 22:11:20'),
(11, 1, 1, 2327.5, 'Trigger', 'Deposito', 0, 0, 7, 1, '2015-09-08 22:19:33', '2015-09-08 22:20:13'),
(12, 1, 1, 2090, 'Trigger', 'Deposito', 0, 0, 8, 1, '2015-09-10 14:36:25', '2015-09-10 14:36:30'),
(13, 1, 3, -1800, 'Usuario Bancoink', 'Transferencia Bancoink', 3, 0, 0, 1, '2015-09-10 14:41:24', '2015-09-10 14:41:24'),
(14, 2, 2, 1800, 'Usuario Bancoink', 'Transferencia Bancoink', 3, 0, 0, 1, '2015-09-10 14:41:24', '2015-09-10 14:41:24'),
(15, 1, 4, -2700, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 2, 0, 1, '2015-09-10 14:51:19', '2015-09-10 14:51:19'),
(16, 1, 4, -5000, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 3, 0, 1, '2015-09-10 19:36:26', '2015-09-10 19:36:26'),
(17, 1, 1, 475, 'Trigger', 'Deposito', 0, 0, 9, 1, '2015-09-10 19:45:41', '2015-09-10 19:45:41'),
(18, 1, 1, 142.5, 'Trigger', 'Deposito', 0, 0, 11, 1, '2015-09-10 19:50:09', '2015-09-10 19:50:11'),
(19, 1, 1, 3325, 'Trigger', 'Deposito', 0, 0, 12, 1, '2015-09-10 19:51:44', '2015-09-10 19:52:13'),
(20, 1, 1, 1900, 'Trigger', 'Deposito', 0, 0, 13, 1, '2015-09-10 21:39:07', '2015-09-10 21:39:09'),
(21, 1, 1, 3705, 'Trigger', 'Deposito', 0, 0, 14, 1, '2015-09-10 22:40:15', '2015-09-10 22:40:25'),
(22, 1, 1, 3135, 'Trigger', 'Deposito', 0, 0, 16, 1, '2015-09-11 16:21:42', '2015-09-11 16:21:48'),
(23, 1, 3, -2000, 'UsuarioBancoink', 'Transferencia Bancoink', 4, 0, 0, 1, '2015-09-11 16:42:41', '2015-09-11 16:42:41'),
(24, 2, 2, 2000, 'UsuarioBancoink', 'Transferencia Bancoink', 4, 0, 0, 1, '2015-09-11 16:42:41', '2015-09-11 16:42:41'),
(25, 1, 1, 1425, 'Trigger', 'Deposito', 0, 0, 17, 1, '2015-09-11 16:50:08', '2015-09-11 16:50:11'),
(26, 1, 1, 950, 'Trigger', 'Deposito', 0, 0, 23, 1, '2015-09-11 20:32:48', '2015-09-11 20:32:48');

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
  `cedula` int(11) NOT NULL,
  `pin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `habilitar_pin` tinyint(1) NOT NULL,
  `porcentaje` float NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `tag`, `portafolio_id`, `first_name`, `last_name`, `email`, `cedula`, `pin`, `sexo`, `fecha_nacimiento`, `habilitar_pin`, `porcentaje`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `created_at`, `updated_at`) VALUES
(1, '1491825229', 0, 'Jefferson', 'Rivera Patiño', 'jefersonpatino@yahoo.es', 1012320542, '1234', '', '0000-00-00', 0, 0.05, '$2y$10$zXbC4aLlQt9DUNJDeluFpOIgKwCn96Xy9Z.bRBpyaB9Dk7TFxX.fC', NULL, 1, NULL, NULL, '2015-09-11 21:48:37', '$2y$10$SpiKBVQfwPDXRdGYzo.Xeu1un6tKZ/1avpCQN.JJIWmsP7V/Axu7C', NULL, '2015-09-07 22:13:34', '2015-09-11 21:48:37'),
(2, '519723197', 0, 'Jhon', 'Doe', 'doe@yahoo.es', 321545454, '1234', '', '0000-00-00', 0, 0.05, '$2y$10$VxVh2apELP.tigdvdzQJ3ucsjF40Poo8IBLNc7uGD7Ph7lCGlzdvi', NULL, 1, NULL, NULL, '2015-09-08 22:11:27', '$2y$10$JWZdjj0O6dXz50jJahPh9OE8MjPZMwfRM2Uyem0vK1iVF.9lUL3E.', NULL, '2015-09-08 14:43:14', '2015-09-08 22:11:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_alcancia`
--

CREATE TABLE IF NOT EXISTS `users_alcancia` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `alcancia_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_alcancia`
--

INSERT INTO `users_alcancia` (`id`, `user_id`, `alcancia_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2015-09-08 21:52:02', '2015-09-08 21:52:02'),
(2, 1, 1, '2015-09-08 21:55:23', '2015-09-08 21:55:23'),
(3, 1, 1, '2015-09-08 22:02:01', '2015-09-08 22:02:01'),
(4, 1, 1, '2015-09-08 22:09:29', '2015-09-08 22:09:29'),
(5, 1, 1, '2015-09-08 22:10:28', '2015-09-08 22:10:28'),
(6, 2, 1, '2015-09-08 22:10:38', '2015-09-08 22:10:38'),
(7, 1, 1, '2015-09-08 22:19:29', '2015-09-08 22:19:29'),
(8, 1, 1, '2015-09-10 14:36:20', '2015-09-10 14:36:20'),
(9, 1, 1, '2015-09-10 19:45:35', '2015-09-10 19:45:35'),
(10, 1, 1, '2015-09-10 19:49:47', '2015-09-10 19:49:47'),
(11, 1, 1, '2015-09-10 19:50:00', '2015-09-10 19:50:00'),
(12, 1, 1, '2015-09-10 19:51:37', '2015-09-10 19:51:37'),
(13, 1, 1, '2015-09-10 21:38:56', '2015-09-10 21:38:56'),
(14, 1, 1, '2015-09-10 22:40:10', '2015-09-10 22:40:10'),
(15, 2, 1, '2015-09-11 14:43:05', '2015-09-11 14:43:05'),
(16, 1, 1, '2015-09-11 16:21:34', '2015-09-11 16:21:34'),
(17, 1, 1, '2015-09-11 16:50:03', '2015-09-11 16:50:03'),
(18, 1, 1, '2015-09-11 20:16:42', '2015-09-11 20:16:42'),
(19, 1, 1, '2015-09-11 20:17:55', '2015-09-11 20:17:55'),
(20, 1, 1, '2015-09-11 20:18:52', '2015-09-11 20:18:52'),
(21, 1, 1, '2015-09-11 20:29:50', '2015-09-11 20:29:50'),
(22, 1, 1, '2015-09-11 20:32:27', '2015-09-11 20:32:27'),
(23, 1, 1, '2015-09-11 20:32:39', '2015-09-11 20:32:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_alcancia_deposito`
--

CREATE TABLE IF NOT EXISTS `users_alcancia_deposito` (
`id` int(10) unsigned NOT NULL,
  `user_alcancia_id` int(11) NOT NULL,
  `moneda` decimal(19,2) NOT NULL,
  `moneda_des` decimal(19,2) NOT NULL,
  `fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_corta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_alcancia_deposito`
--

INSERT INTO `users_alcancia_deposito` (`id`, `user_alcancia_id`, `moneda`, `moneda_des`, `fecha`, `fecha_corta`, `created_at`, `updated_at`) VALUES
(1, 1, '1000.00', '950.00', 'martes, 08 de septiembre de 2015, Hora 16:52', '08 de septiembre - 16:52', '2015-09-08 21:52:07', '2015-09-08 21:52:07'),
(2, 1, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 16:52', '08 de septiembre - 16:52', '2015-09-08 21:52:09', '2015-09-08 21:52:09'),
(3, 1, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 16:52', '08 de septiembre - 16:52', '2015-09-08 21:52:10', '2015-09-08 21:52:10'),
(4, 1, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 16:52', '08 de septiembre - 16:52', '2015-09-08 21:52:11', '2015-09-08 21:52:11'),
(5, 1, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 16:52', '08 de septiembre - 16:52', '2015-09-08 21:52:12', '2015-09-08 21:52:12'),
(6, 2, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 16:55', '08 de septiembre - 16:55', '2015-09-08 21:55:27', '2015-09-08 21:55:27'),
(7, 2, '100.00', '95.00', 'martes, 08 de septiembre de 2015, Hora 16:55', '08 de septiembre - 16:55', '2015-09-08 21:55:29', '2015-09-08 21:55:29'),
(8, 2, '50.00', '47.50', 'martes, 08 de septiembre de 2015, Hora 16:55', '08 de septiembre - 16:55', '2015-09-08 21:55:30', '2015-09-08 21:55:30'),
(9, 2, '1000.00', '950.00', 'martes, 08 de septiembre de 2015, Hora 16:55', '08 de septiembre - 16:55', '2015-09-08 21:55:31', '2015-09-08 21:55:31'),
(10, 2, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 16:55', '08 de septiembre - 16:55', '2015-09-08 21:55:32', '2015-09-08 21:55:32'),
(11, 2, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 16:55', '08 de septiembre - 16:55', '2015-09-08 21:55:33', '2015-09-08 21:55:33'),
(12, 3, '100.00', '95.00', 'martes, 08 de septiembre de 2015, Hora 17:02', '08 de septiembre - 17:02', '2015-09-08 22:02:13', '2015-09-08 22:02:13'),
(13, 3, '100.00', '95.00', 'martes, 08 de septiembre de 2015, Hora 17:02', '08 de septiembre - 17:02', '2015-09-08 22:02:14', '2015-09-08 22:02:14'),
(14, 3, '1000.00', '950.00', 'martes, 08 de septiembre de 2015, Hora 17:02', '08 de septiembre - 17:02', '2015-09-08 22:02:15', '2015-09-08 22:02:15'),
(15, 3, '50.00', '47.50', 'martes, 08 de septiembre de 2015, Hora 17:02', '08 de septiembre - 17:02', '2015-09-08 22:02:17', '2015-09-08 22:02:17'),
(16, 3, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 17:02', '08 de septiembre - 17:02', '2015-09-08 22:02:18', '2015-09-08 22:02:18'),
(17, 3, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:02', '08 de septiembre - 17:02', '2015-09-08 22:02:19', '2015-09-08 22:02:19'),
(18, 3, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:02', '08 de septiembre - 17:02', '2015-09-08 22:02:20', '2015-09-08 22:02:20'),
(19, 4, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 17:09', '08 de septiembre - 17:09', '2015-09-08 22:09:37', '2015-09-08 22:09:37'),
(20, 4, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:09', '08 de septiembre - 17:09', '2015-09-08 22:09:38', '2015-09-08 22:09:38'),
(21, 4, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:09', '08 de septiembre - 17:09', '2015-09-08 22:09:39', '2015-09-08 22:09:39'),
(22, 4, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:09', '08 de septiembre - 17:09', '2015-09-08 22:09:39', '2015-09-08 22:09:39'),
(23, 4, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 17:09', '08 de septiembre - 17:09', '2015-09-08 22:09:40', '2015-09-08 22:09:40'),
(24, 6, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:10', '08 de septiembre - 17:10', '2015-09-08 22:10:51', '2015-09-08 22:10:51'),
(25, 6, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:10', '08 de septiembre - 17:10', '2015-09-08 22:10:53', '2015-09-08 22:10:53'),
(26, 6, '1000.00', '950.00', 'martes, 08 de septiembre de 2015, Hora 17:10', '08 de septiembre - 17:10', '2015-09-08 22:10:54', '2015-09-08 22:10:54'),
(27, 6, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:10', '08 de septiembre - 17:10', '2015-09-08 22:10:55', '2015-09-08 22:10:55'),
(28, 6, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 17:10', '08 de septiembre - 17:10', '2015-09-08 22:10:56', '2015-09-08 22:10:56'),
(29, 6, '50.00', '47.50', 'martes, 08 de septiembre de 2015, Hora 17:10', '08 de septiembre - 17:10', '2015-09-08 22:10:58', '2015-09-08 22:10:58'),
(30, 6, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 17:11', '08 de septiembre - 17:11', '2015-09-08 22:11:00', '2015-09-08 22:11:00'),
(31, 6, '50.00', '47.50', 'martes, 08 de septiembre de 2015, Hora 17:11', '08 de septiembre - 17:11', '2015-09-08 22:11:01', '2015-09-08 22:11:01'),
(32, 6, '100.00', '95.00', 'martes, 08 de septiembre de 2015, Hora 17:11', '08 de septiembre - 17:11', '2015-09-08 22:11:02', '2015-09-08 22:11:02'),
(33, 6, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:11', '08 de septiembre - 17:11', '2015-09-08 22:11:03', '2015-09-08 22:11:03'),
(34, 6, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:11', '08 de septiembre - 17:11', '2015-09-08 22:11:04', '2015-09-08 22:11:04'),
(35, 7, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 17:19', '08 de septiembre - 17:19', '2015-09-08 22:19:33', '2015-09-08 22:19:33'),
(36, 7, '200.00', '190.00', 'martes, 08 de septiembre de 2015, Hora 17:19', '08 de septiembre - 17:19', '2015-09-08 22:19:36', '2015-09-08 22:19:36'),
(37, 7, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:19', '08 de septiembre - 17:19', '2015-09-08 22:19:37', '2015-09-08 22:19:37'),
(38, 7, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:19', '08 de septiembre - 17:19', '2015-09-08 22:19:38', '2015-09-08 22:19:38'),
(39, 7, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:19', '08 de septiembre - 17:19', '2015-09-08 22:19:40', '2015-09-08 22:19:40'),
(40, 7, '50.00', '47.50', 'martes, 08 de septiembre de 2015, Hora 17:19', '08 de septiembre - 17:19', '2015-09-08 22:19:49', '2015-09-08 22:19:49'),
(41, 7, '500.00', '475.00', 'martes, 08 de septiembre de 2015, Hora 17:20', '08 de septiembre - 17:20', '2015-09-08 22:20:13', '2015-09-08 22:20:13'),
(42, 8, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 09:36', '10 de septiembre - 09:36', '2015-09-10 14:36:25', '2015-09-10 14:36:25'),
(43, 8, '1000.00', '950.00', 'jueves, 10 de septiembre de 2015, Hora 09:36', '10 de septiembre - 09:36', '2015-09-10 14:36:27', '2015-09-10 14:36:27'),
(44, 8, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 09:36', '10 de septiembre - 09:36', '2015-09-10 14:36:29', '2015-09-10 14:36:29'),
(45, 8, '200.00', '190.00', 'jueves, 10 de septiembre de 2015, Hora 09:36', '10 de septiembre - 09:36', '2015-09-10 14:36:30', '2015-09-10 14:36:30'),
(46, 9, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 14:45', '10 de septiembre - 14:45', '2015-09-10 19:45:41', '2015-09-10 19:45:41'),
(47, 11, '50.00', '47.50', 'jueves, 10 de septiembre de 2015, Hora 14:50', '10 de septiembre - 14:50', '2015-09-10 19:50:08', '2015-09-10 19:50:08'),
(48, 11, '100.00', '95.00', 'jueves, 10 de septiembre de 2015, Hora 14:50', '10 de septiembre - 14:50', '2015-09-10 19:50:11', '2015-09-10 19:50:11'),
(49, 12, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 14:51', '10 de septiembre - 14:51', '2015-09-10 19:51:44', '2015-09-10 19:51:44'),
(50, 12, '200.00', '190.00', 'jueves, 10 de septiembre de 2015, Hora 14:51', '10 de septiembre - 14:51', '2015-09-10 19:51:46', '2015-09-10 19:51:46'),
(51, 12, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 14:51', '10 de septiembre - 14:51', '2015-09-10 19:51:48', '2015-09-10 19:51:48'),
(52, 12, '1000.00', '950.00', 'jueves, 10 de septiembre de 2015, Hora 14:51', '10 de septiembre - 14:51', '2015-09-10 19:51:50', '2015-09-10 19:51:50'),
(53, 12, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 14:51', '10 de septiembre - 14:51', '2015-09-10 19:51:53', '2015-09-10 19:51:53'),
(54, 12, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 14:52', '10 de septiembre - 14:52', '2015-09-10 19:52:03', '2015-09-10 19:52:03'),
(55, 12, '200.00', '190.00', 'jueves, 10 de septiembre de 2015, Hora 14:52', '10 de septiembre - 14:52', '2015-09-10 19:52:06', '2015-09-10 19:52:06'),
(56, 12, '100.00', '95.00', 'jueves, 10 de septiembre de 2015, Hora 14:52', '10 de septiembre - 14:52', '2015-09-10 19:52:13', '2015-09-10 19:52:13'),
(57, 13, '1000.00', '950.00', 'jueves, 10 de septiembre de 2015, Hora 16:39', '10 de septiembre - 16:39', '2015-09-10 21:39:07', '2015-09-10 21:39:07'),
(58, 13, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 16:39', '10 de septiembre - 16:39', '2015-09-10 21:39:08', '2015-09-10 21:39:08'),
(59, 13, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 16:39', '10 de septiembre - 16:39', '2015-09-10 21:39:09', '2015-09-10 21:39:09'),
(60, 14, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:15', '2015-09-10 22:40:15'),
(61, 14, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:16', '2015-09-10 22:40:16'),
(62, 14, '200.00', '190.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:17', '2015-09-10 22:40:17'),
(63, 14, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:18', '2015-09-10 22:40:18'),
(64, 14, '1000.00', '950.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:19', '2015-09-10 22:40:19'),
(65, 14, '200.00', '190.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:22', '2015-09-10 22:40:22'),
(66, 14, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:24', '2015-09-10 22:40:24'),
(67, 14, '500.00', '475.00', 'jueves, 10 de septiembre de 2015, Hora 17:40', '10 de septiembre - 17:40', '2015-09-10 22:40:25', '2015-09-10 22:40:25'),
(68, 16, '200.00', '190.00', 'viernes, 11 de septiembre de 2015, Hora 11:21', '11 de septiembre - 11:21', '2015-09-11 16:21:42', '2015-09-11 16:21:42'),
(69, 16, '500.00', '475.00', 'viernes, 11 de septiembre de 2015, Hora 11:21', '11 de septiembre - 11:21', '2015-09-11 16:21:43', '2015-09-11 16:21:43'),
(70, 16, '1000.00', '950.00', 'viernes, 11 de septiembre de 2015, Hora 11:21', '11 de septiembre - 11:21', '2015-09-11 16:21:44', '2015-09-11 16:21:44'),
(71, 16, '500.00', '475.00', 'viernes, 11 de septiembre de 2015, Hora 11:21', '11 de septiembre - 11:21', '2015-09-11 16:21:45', '2015-09-11 16:21:45'),
(72, 16, '100.00', '95.00', 'viernes, 11 de septiembre de 2015, Hora 11:21', '11 de septiembre - 11:21', '2015-09-11 16:21:46', '2015-09-11 16:21:46'),
(73, 16, '500.00', '475.00', 'viernes, 11 de septiembre de 2015, Hora 11:21', '11 de septiembre - 11:21', '2015-09-11 16:21:47', '2015-09-11 16:21:47'),
(74, 16, '500.00', '475.00', 'viernes, 11 de septiembre de 2015, Hora 11:21', '11 de septiembre - 11:21', '2015-09-11 16:21:48', '2015-09-11 16:21:48'),
(75, 17, '500.00', '475.00', 'viernes, 11 de septiembre de 2015, Hora 11:50', '11 de septiembre - 11:50', '2015-09-11 16:50:08', '2015-09-11 16:50:08'),
(76, 17, '500.00', '475.00', 'viernes, 11 de septiembre de 2015, Hora 11:50', '11 de septiembre - 11:50', '2015-09-11 16:50:09', '2015-09-11 16:50:09'),
(77, 17, '500.00', '475.00', 'viernes, 11 de septiembre de 2015, Hora 11:50', '11 de septiembre - 11:50', '2015-09-11 16:50:10', '2015-09-11 16:50:10'),
(78, 23, '1000.00', '950.00', 'viernes, 11 de septiembre de 2015, Hora 15:32', '11 de septiembre - 15:32', '2015-09-11 20:32:48', '2015-09-11 20:32:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_bancos`
--

CREATE TABLE IF NOT EXISTS `users_bancos` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `banco_id` int(11) NOT NULL,
  `numero_cuenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_cuenta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `msg_estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_bancos`
--

INSERT INTO `users_bancos` (`id`, `user_id`, `banco_id`, `numero_cuenta`, `tipo_cuenta`, `titular`, `cedula`, `estado`, `msg_estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '795212541', 'Ahorros', 'Jefferson Rivera', '1013216454', 1, 'Activa', '2015-09-08 22:06:05', '2015-09-08 22:06:05'),
(2, 1, 2, '8797878', 'Corriente', 'Jhon', '2156454', 1, 'Activa', '2015-09-10 19:35:29', '2015-09-10 19:35:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_bancos_transferencias`
--

CREATE TABLE IF NOT EXISTS `users_bancos_transferencias` (
`id` int(10) unsigned NOT NULL,
  `userbanco_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor` decimal(19,4) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `msg_estado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_bancos_transferencias`
--

INSERT INTO `users_bancos_transferencias` (`id`, `userbanco_id`, `descripcion`, `valor`, `estado`, `msg_estado`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur impedit, est mollitia similique maxime deleniti nulla error dicta! Dolor molestias, pariatur. Atque, labore quasi autem, dolor consequatur commodi similique quis!', '2500.0000', 1, 'Realizada', '2015-09-08 22:07:59', '2015-09-08 22:07:59'),
(2, 1, 'Holaaaaaa', '2700.0000', 1, 'Realizada', '2015-09-10 14:51:19', '2015-09-10 14:51:19'),
(3, 2, 'sdgsghdshgd', '5000.0000', 1, 'Realizada', '2015-09-10 19:36:26', '2015-09-10 19:36:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_bancoink`
--

CREATE TABLE IF NOT EXISTS `usuarios_bancoink` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_id_t` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_bancoink`
--

INSERT INTO `usuarios_bancoink` (`id`, `user_id`, `user_id_t`, `alias`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Jhon Doe', '2015-09-08 21:58:14', '2015-09-08 21:58:14'),
(2, 2, 1, 'Jefferson Rivera Patiño', '2015-09-08 22:10:11', '2015-09-08 22:10:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_bancoink_transferencias`
--

CREATE TABLE IF NOT EXISTS `usuarios_bancoink_transferencias` (
`id` int(10) unsigned NOT NULL,
  `usuariobancoink_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor` decimal(19,4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_bancoink_transferencias`
--

INSERT INTO `usuarios_bancoink_transferencias` (`id`, `usuariobancoink_id`, `descripcion`, `valor`, `created_at`, `updated_at`) VALUES
(1, 1, 'Realizing this answered long ago', '1500.0000', '2015-09-08 21:58:51', '2015-09-08 21:58:51'),
(2, 2, 'Hola Mundo', '3000.0000', '2015-09-08 22:11:19', '2015-09-08 22:11:19'),
(3, 1, 'Holaaaaaa', '1800.0000', '2015-09-10 14:41:24', '2015-09-10 14:41:24'),
(4, 1, 'Holaaaaa', '2000.0000', '2015-09-11 16:42:41', '2015-09-11 16:42:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alcancias`
--
ALTER TABLE `alcancias`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alcancias_email_unique` (`email`);

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indices de la tabla `rejected`
--
ALTER TABLE `rejected`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `throttle`
--
ALTER TABLE `throttle`
 ADD PRIMARY KEY (`id`), ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indices de la tabla `tokens`
--
ALTER TABLE `tokens`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `users_activation_code_index` (`activation_code`), ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indices de la tabla `users_alcancia`
--
ALTER TABLE `users_alcancia`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_alcancia_deposito`
--
ALTER TABLE `users_alcancia_deposito`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_bancos`
--
ALTER TABLE `users_bancos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_bancos_transferencias`
--
ALTER TABLE `users_bancos_transferencias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_groups`
--
ALTER TABLE `users_groups`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `usuarios_bancoink`
--
ALTER TABLE `usuarios_bancoink`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_bancoink_transferencias`
--
ALTER TABLE `usuarios_bancoink_transferencias`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alcancias`
--
ALTER TABLE `alcancias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `rejected`
--
ALTER TABLE `rejected`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `throttle`
--
ALTER TABLE `throttle`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `tokens`
--
ALTER TABLE `tokens`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users_alcancia`
--
ALTER TABLE `users_alcancia`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `users_alcancia_deposito`
--
ALTER TABLE `users_alcancia_deposito`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT de la tabla `users_bancos`
--
ALTER TABLE `users_bancos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users_bancos_transferencias`
--
ALTER TABLE `users_bancos_transferencias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios_bancoink`
--
ALTER TABLE `usuarios_bancoink`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios_bancoink_transferencias`
--
ALTER TABLE `usuarios_bancoink_transferencias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
