-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2015 a las 00:43:19
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rejected`
--

INSERT INTO `rejected` (`id`, `user_alcancia_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2015-09-07 22:24:47', '2015-09-07 22:24:47'),
(2, 2, '2015-09-07 22:24:49', '2015-09-07 22:24:49'),
(3, 2, '2015-09-07 22:24:51', '2015-09-07 22:24:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `api_token`, `expires_on`, `client`, `created_at`, `updated_at`) VALUES
(1, 1, '8a5db8fcf07c77b48dc467ce5c02d2322f93861b0cb27dcf95e77d894219c009', '2015-10-07 22:13:35', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-07 22:13:35', '2015-09-07 22:13:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE IF NOT EXISTS `transacciones` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `valor` decimal(19,2) NOT NULL,
  `origen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transferencia_id` int(11) NOT NULL,
  `transferencia_banco_id` int(11) NOT NULL,
  `user_alcancia_id` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `user_id`, `tipo`, `valor`, `origen`, `transferencia_id`, `transferencia_banco_id`, `user_alcancia_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1950.00', 'Trigger', 0, 0, 1, 1, '2015-09-07 22:15:18', '2015-09-07 22:19:00'),
(2, 1, 1, '2250.00', 'Trigger', 0, 0, 2, 1, '2015-09-07 22:16:42', '2015-09-07 22:24:55'),
(3, 1, 1, '2400.00', 'Trigger', 0, 0, 3, 1, '2015-09-07 22:31:19', '2015-09-07 22:31:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `tag`, `portafolio_id`, `first_name`, `last_name`, `email`, `cedula`, `pin`, `sexo`, `fecha_nacimiento`, `habilitar_pin`, `porcentaje`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `created_at`, `updated_at`) VALUES
(1, '1491825229', 0, 'Jefferson', 'Rivera Patiño', 'jefersonpatino@yahoo.es', 1012320542, '1234', '', '0000-00-00', 0, 0.05, '$2y$10$zXbC4aLlQt9DUNJDeluFpOIgKwCn96Xy9Z.bRBpyaB9Dk7TFxX.fC', NULL, 1, NULL, NULL, '2015-09-07 22:39:13', '$2y$10$2kvQCEfDplGI239I2yuZFeuat8K3ejSClGwOLdO42waHC1/GZOeVO', NULL, '2015-09-07 22:13:34', '2015-09-07 22:39:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_alcancia`
--

INSERT INTO `users_alcancia` (`id`, `user_id`, `alcancia_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2015-09-07 22:18:41', '2015-09-07 22:18:41'),
(2, 1, 1, '2015-09-07 22:24:40', '2015-09-07 22:24:40'),
(3, 1, 1, '2015-09-07 22:31:14', '2015-09-07 22:31:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_alcancia_deposito`
--

CREATE TABLE IF NOT EXISTS `users_alcancia_deposito` (
`id` int(10) unsigned NOT NULL,
  `user_alcancia_id` int(11) NOT NULL,
  `moneda` decimal(19,2) NOT NULL,
  `fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_corta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_alcancia_deposito`
--

INSERT INTO `users_alcancia_deposito` (`id`, `user_alcancia_id`, `moneda`, `fecha`, `fecha_corta`, `created_at`, `updated_at`) VALUES
(1, 1, '100.00', 'lunes, 07 de septiembre de 2015, Hora 17:18', '07 de septiembre - 17:18', '2015-09-07 22:18:48', '2015-09-07 22:18:48'),
(2, 1, '1000.00', 'lunes, 07 de septiembre de 2015, Hora 17:18', '07 de septiembre - 17:18', '2015-09-07 22:18:55', '2015-09-07 22:18:55'),
(3, 1, '50.00', 'lunes, 07 de septiembre de 2015, Hora 17:18', '07 de septiembre - 17:18', '2015-09-07 22:18:59', '2015-09-07 22:18:59'),
(4, 1, '100.00', 'lunes, 07 de septiembre de 2015, Hora 17:19', '07 de septiembre - 17:19', '2015-09-07 22:19:00', '2015-09-07 22:19:00'),
(5, 2, '1000.00', 'lunes, 07 de septiembre de 2015, Hora 17:24', '07 de septiembre - 17:24', '2015-09-07 22:24:45', '2015-09-07 22:24:45'),
(6, 2, '50.00', 'lunes, 07 de septiembre de 2015, Hora 17:24', '07 de septiembre - 17:24', '2015-09-07 22:24:47', '2015-09-07 22:24:47'),
(7, 2, '200.00', 'lunes, 07 de septiembre de 2015, Hora 17:24', '07 de septiembre - 17:24', '2015-09-07 22:24:53', '2015-09-07 22:24:53'),
(8, 2, '500.00', 'lunes, 07 de septiembre de 2015, Hora 17:24', '07 de septiembre - 17:24', '2015-09-07 22:24:54', '2015-09-07 22:24:54'),
(9, 3, '1000.00', 'lunes, 07 de septiembre de 2015, Hora 17:31', '07 de septiembre - 17:31', '2015-09-07 22:31:19', '2015-09-07 22:31:19'),
(10, 3, '500.00', 'lunes, 07 de septiembre de 2015, Hora 17:31', '07 de septiembre - 17:31', '2015-09-07 22:31:24', '2015-09-07 22:31:24'),
(11, 3, '500.00', 'lunes, 07 de septiembre de 2015, Hora 17:31', '07 de septiembre - 17:31', '2015-09-07 22:31:25', '2015-09-07 22:31:25'),
(12, 3, '200.00', 'lunes, 07 de septiembre de 2015, Hora 17:31', '07 de septiembre - 17:31', '2015-09-07 22:31:27', '2015-09-07 22:31:27'),
(13, 3, '200.00', 'lunes, 07 de septiembre de 2015, Hora 17:31', '07 de septiembre - 17:31', '2015-09-07 22:31:28', '2015-09-07 22:31:28');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `throttle`
--
ALTER TABLE `throttle`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `tokens`
--
ALTER TABLE `tokens`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users_alcancia`
--
ALTER TABLE `users_alcancia`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users_alcancia_deposito`
--
ALTER TABLE `users_alcancia_deposito`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `users_bancos`
--
ALTER TABLE `users_bancos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users_bancos_transferencias`
--
ALTER TABLE `users_bancos_transferencias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios_bancoink`
--
ALTER TABLE `usuarios_bancoink`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios_bancoink_transferencias`
--
ALTER TABLE `usuarios_bancoink_transferencias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
