-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2015 a las 00:19:54
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Users', '{"admin":1,"users":1}', '2015-06-04 22:29:56', '2015-06-04 22:29:56'),
(2, 'Administrador', '{"admin":1,"users":0}', '2015-09-22 20:19:16', '2015-09-22 20:19:16');

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
('2015_09_07_110407_create_users_alcancia_deposito', 21),
('2015_09_28_144111_create_table_users_device', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queue`
--

CREATE TABLE IF NOT EXISTS `queue` (
  `ID` bigint(20) unsigned NOT NULL,
  `queue_name` varchar(255) NOT NULL,
  `status` enum('deleted','pending','running') NOT NULL,
  `attempts` int(10) unsigned NOT NULL,
  `payload` longtext NOT NULL,
  `fireon` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `queue`
--

INSERT INTO `queue` (`ID`, `queue_name`, `status`, `attempts`, `payload`, `fireon`) VALUES
(0, 'default', 'pending', 1, '{"job":"mailer@handleQueuedMessage","data":{"view":"emails.resetpw","data":{"codigo":"cFvNC"},"callback":"C:38:\\"Illuminate\\\\Support\\\\SerializableClosure\\":2769:{a:2:{i:0;s:167:\\"function ($message) use($user) {\\n    $message->from(''info@bancoink.com'', ''Bancoink'');\\n    $message->to($user->email, $user->first_name)->subject(''Reset Password!'');\\n};\\";i:1;a:1:{s:4:\\"user\\";O:36:\\"Cartalyst\\\\Sentry\\\\Users\\\\Eloquent\\\\User\\":24:{s:8:\\"\\u0000*\\u0000table\\";s:5:\\"users\\";s:9:\\"\\u0000*\\u0000hidden\\";a:4:{i:0;s:8:\\"password\\";i:1;s:19:\\"reset_password_code\\";i:2;s:15:\\"activation_code\\";i:3;s:12:\\"persist_code\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:3:{i:0;s:19:\\"reset_password_code\\";i:1;s:15:\\"activation_code\\";i:2;s:12:\\"persist_code\\";}s:21:\\"\\u0000*\\u0000hashableAttributes\\";a:2:{i:0;s:8:\\"password\\";i:1;s:12:\\"persist_code\\";}s:27:\\"\\u0000*\\u0000allowedPermissionsValues\\";a:3:{i:0;i:-1;i:1;i:0;i:2;i:1;}s:13:\\"\\u0000*\\u0000userGroups\\";N;s:20:\\"\\u0000*\\u0000mergedPermissions\\";N;s:13:\\"\\u0000*\\u0000connection\\";N;s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:12:\\"incrementing\\";b:1;s:10:\\"timestamps\\";b:1;s:13:\\"\\u0000*\\u0000attributes\\";a:22:{s:2:\\"id\\";i:1;s:3:\\"tag\\";s:10:\\"1491825229\\";s:13:\\"portafolio_id\\";i:0;s:10:\\"first_name\\";s:9:\\"Jefferson\\";s:9:\\"last_name\\";s:14:\\"Rivera Pati\\u00f1o\\";s:5:\\"email\\";s:23:\\"jefersonpatino@yahoo.es\\";s:6:\\"cedula\\";i:1012320542;s:3:\\"pin\\";s:4:\\"1234\\";s:4:\\"sexo\\";s:1:\\"m\\";s:16:\\"fecha_nacimiento\\";s:10:\\"1986-05-13\\";s:13:\\"habilitar_pin\\";i:0;s:10:\\"porcentaje\\";d:0.05000000000000000277555756156289135105907917022705078125;s:8:\\"password\\";s:60:\\"$2y$10$zXbC4aLlQt9DUNJDeluFpOIgKwCn96Xy9Z.bRBpyaB9Dk7TFxX.fC\\";s:11:\\"permissions\\";N;s:9:\\"activated\\";i:1;s:15:\\"activation_code\\";N;s:12:\\"activated_at\\";N;s:10:\\"last_login\\";s:19:\\"2015-09-15 12:35:24\\";s:12:\\"persist_code\\";s:60:\\"$2y$10$0OimLmJHN42Ztz4bPwqqfegOGOm6JFaaP2YZFe\\/UJJwFm4LmxOqvS\\";s:19:\\"reset_password_code\\";s:5:\\"cFvNC\\";s:10:\\"created_at\\";s:19:\\"2015-09-07 17:13:34\\";s:10:\\"updated_at\\";s:19:\\"2015-09-15 12:38:30\\";}s:11:\\"\\u0000*\\u0000original\\";a:22:{s:2:\\"id\\";i:1;s:3:\\"tag\\";s:10:\\"1491825229\\";s:13:\\"portafolio_id\\";i:0;s:10:\\"first_name\\";s:9:\\"Jefferson\\";s:9:\\"last_name\\";s:14:\\"Rivera Pati\\u00f1o\\";s:5:\\"email\\";s:23:\\"jefersonpatino@yahoo.es\\";s:6:\\"cedula\\";i:1012320542;s:3:\\"pin\\";s:4:\\"1234\\";s:4:\\"sexo\\";s:1:\\"m\\";s:16:\\"fecha_nacimiento\\";s:10:\\"1986-05-13\\";s:13:\\"habilitar_pin\\";i:0;s:10:\\"porcentaje\\";d:0.05000000000000000277555756156289135105907917022705078125;s:8:\\"password\\";s:60:\\"$2y$10$zXbC4aLlQt9DUNJDeluFpOIgKwCn96Xy9Z.bRBpyaB9Dk7TFxX.fC\\";s:11:\\"permissions\\";N;s:9:\\"activated\\";i:1;s:15:\\"activation_code\\";N;s:12:\\"activated_at\\";N;s:10:\\"last_login\\";s:19:\\"2015-09-15 12:35:24\\";s:12:\\"persist_code\\";s:60:\\"$2y$10$0OimLmJHN42Ztz4bPwqqfegOGOm6JFaaP2YZFe\\/UJJwFm4LmxOqvS\\";s:19:\\"reset_password_code\\";s:5:\\"cFvNC\\";s:10:\\"created_at\\";s:19:\\"2015-09-07 17:13:34\\";s:10:\\"updated_at\\";s:19:\\"2015-09-15 12:38:30\\";}s:12:\\"\\u0000*\\u0000relations\\";a:0:{}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:0:{}s:8:\\"\\u0000*\\u0000dates\\";a:0:{}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:13:\\"\\u0000*\\u0000morphClass\\";N;s:6:\\"exists\\";b:1;}}}}"}}', 1442338710),
(0, 'default', 'pending', 1, '{"job":"mailer@handleQueuedMessage","data":{"view":"emails.resetpw","data":{"codigo":"H3Cmw"},"callback":"C:38:\\"Illuminate\\\\Support\\\\SerializableClosure\\":2769:{a:2:{i:0;s:167:\\"function ($message) use($user) {\\n    $message->from(''info@bancoink.com'', ''Bancoink'');\\n    $message->to($user->email, $user->first_name)->subject(''Reset Password!'');\\n};\\";i:1;a:1:{s:4:\\"user\\";O:36:\\"Cartalyst\\\\Sentry\\\\Users\\\\Eloquent\\\\User\\":24:{s:8:\\"\\u0000*\\u0000table\\";s:5:\\"users\\";s:9:\\"\\u0000*\\u0000hidden\\";a:4:{i:0;s:8:\\"password\\";i:1;s:19:\\"reset_password_code\\";i:2;s:15:\\"activation_code\\";i:3;s:12:\\"persist_code\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:3:{i:0;s:19:\\"reset_password_code\\";i:1;s:15:\\"activation_code\\";i:2;s:12:\\"persist_code\\";}s:21:\\"\\u0000*\\u0000hashableAttributes\\";a:2:{i:0;s:8:\\"password\\";i:1;s:12:\\"persist_code\\";}s:27:\\"\\u0000*\\u0000allowedPermissionsValues\\";a:3:{i:0;i:-1;i:1;i:0;i:2;i:1;}s:13:\\"\\u0000*\\u0000userGroups\\";N;s:20:\\"\\u0000*\\u0000mergedPermissions\\";N;s:13:\\"\\u0000*\\u0000connection\\";N;s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:12:\\"incrementing\\";b:1;s:10:\\"timestamps\\";b:1;s:13:\\"\\u0000*\\u0000attributes\\";a:22:{s:2:\\"id\\";i:1;s:3:\\"tag\\";s:10:\\"1491825229\\";s:13:\\"portafolio_id\\";i:0;s:10:\\"first_name\\";s:9:\\"Jefferson\\";s:9:\\"last_name\\";s:14:\\"Rivera Pati\\u00f1o\\";s:5:\\"email\\";s:23:\\"jefersonpatino@yahoo.es\\";s:6:\\"cedula\\";i:1012320542;s:3:\\"pin\\";s:4:\\"1234\\";s:4:\\"sexo\\";s:1:\\"m\\";s:16:\\"fecha_nacimiento\\";s:10:\\"1986-05-13\\";s:13:\\"habilitar_pin\\";i:0;s:10:\\"porcentaje\\";d:0.05000000000000000277555756156289135105907917022705078125;s:8:\\"password\\";s:60:\\"$2y$10$mMugmDxEHkxIT1L\\/3\\/FwH.HacAIMFOmx306NXtaCY3q\\/9fT.qXD1y\\";s:11:\\"permissions\\";N;s:9:\\"activated\\";i:1;s:15:\\"activation_code\\";N;s:12:\\"activated_at\\";N;s:10:\\"last_login\\";s:19:\\"2015-09-16 11:08:28\\";s:12:\\"persist_code\\";s:60:\\"$2y$10$l5pv6BnFlUx.uK\\/2m17mHO4Po1gkH9Un6LHaPGAOLFz6IarzgcQ6O\\";s:19:\\"reset_password_code\\";s:5:\\"H3Cmw\\";s:10:\\"created_at\\";s:19:\\"2015-09-07 17:13:34\\";s:10:\\"updated_at\\";s:19:\\"2015-09-16 11:09:08\\";}s:11:\\"\\u0000*\\u0000original\\";a:22:{s:2:\\"id\\";i:1;s:3:\\"tag\\";s:10:\\"1491825229\\";s:13:\\"portafolio_id\\";i:0;s:10:\\"first_name\\";s:9:\\"Jefferson\\";s:9:\\"last_name\\";s:14:\\"Rivera Pati\\u00f1o\\";s:5:\\"email\\";s:23:\\"jefersonpatino@yahoo.es\\";s:6:\\"cedula\\";i:1012320542;s:3:\\"pin\\";s:4:\\"1234\\";s:4:\\"sexo\\";s:1:\\"m\\";s:16:\\"fecha_nacimiento\\";s:10:\\"1986-05-13\\";s:13:\\"habilitar_pin\\";i:0;s:10:\\"porcentaje\\";d:0.05000000000000000277555756156289135105907917022705078125;s:8:\\"password\\";s:60:\\"$2y$10$mMugmDxEHkxIT1L\\/3\\/FwH.HacAIMFOmx306NXtaCY3q\\/9fT.qXD1y\\";s:11:\\"permissions\\";N;s:9:\\"activated\\";i:1;s:15:\\"activation_code\\";N;s:12:\\"activated_at\\";N;s:10:\\"last_login\\";s:19:\\"2015-09-16 11:08:28\\";s:12:\\"persist_code\\";s:60:\\"$2y$10$l5pv6BnFlUx.uK\\/2m17mHO4Po1gkH9Un6LHaPGAOLFz6IarzgcQ6O\\";s:19:\\"reset_password_code\\";s:5:\\"H3Cmw\\";s:10:\\"created_at\\";s:19:\\"2015-09-07 17:13:34\\";s:10:\\"updated_at\\";s:19:\\"2015-09-16 11:09:08\\";}s:12:\\"\\u0000*\\u0000relations\\";a:0:{}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:0:{}s:8:\\"\\u0000*\\u0000dates\\";a:0:{}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:13:\\"\\u0000*\\u0000morphClass\\";N;s:6:\\"exists\\";b:1;}}}}"}}', 1442419751);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rejected`
--

CREATE TABLE IF NOT EXISTS `rejected` (
`id` int(10) unsigned NOT NULL,
  `user_alcancia_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(61, 16, '2015-09-11 16:21:40', '2015-09-11 16:21:40'),
(62, 32, '2015-09-15 15:39:56', '2015-09-15 15:39:56'),
(63, 32, '2015-09-15 15:39:59', '2015-09-15 15:39:59'),
(64, 40, '2015-09-22 17:02:32', '2015-09-22 17:02:32'),
(65, 40, '2015-09-22 17:02:33', '2015-09-22 17:02:33'),
(66, 40, '2015-09-22 17:02:39', '2015-09-22 17:02:39'),
(67, 48, '2015-09-23 22:37:29', '2015-09-23 22:37:29'),
(68, 50, '2015-09-24 18:25:41', '2015-09-24 18:25:41'),
(69, 51, '2015-09-24 22:44:18', '2015-09-24 22:44:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '192.168.1.14', 0, 0, 0, NULL, NULL, NULL),
(2, 2, '192.168.1.14', 0, 0, 0, NULL, NULL, NULL),
(3, 5, '::1', 0, 0, 0, NULL, NULL, NULL),
(4, 1, '192.168.1.16', 0, 0, 0, NULL, NULL, NULL),
(5, 8, NULL, 0, 0, 0, NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `api_token`, `expires_on`, `client`, `created_at`, `updated_at`) VALUES
(1, 1, '8a5db8fcf07c77b48dc467ce5c02d2322f93861b0cb27dcf95e77d894219c009', '2015-10-07 22:13:35', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-07 22:13:35', '2015-09-07 22:13:35'),
(2, 2, '024b92014359aae7752dcf6afb9c199b88c71c7f538128a4f8b6cc2cb7ba4052', '2015-10-08 14:43:15', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-08 14:43:15', '2015-09-08 14:43:15'),
(3, 1, 'd266761e86cfde90841749daf819ec59966d4a76766451ba7e99b42a7bea91c8', '2015-10-08 16:55:13', '1||||Safari|4|||AndroidOS||||||A|3|1', '2015-09-08 16:55:13', '2015-09-08 16:55:13'),
(4, 3, '2d44cc1f509759291f98953c72c2e7993636b57e4a8e0ad20d82c044ca2d7dbe', '2015-10-15 17:42:23', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-15 17:42:23', '2015-09-15 17:42:23'),
(5, 3, 'e7306ab4e41cc822bac72e954cf1fa09be65a75ac61283061e389cca682e93ea', '2015-10-15 17:51:27', '1||||Safari|4|||AndroidOS||||||A|3|1', '2015-09-15 17:51:27', '2015-09-15 17:51:27'),
(6, 1, '6a4834b6ab3f9743f1dc61c128b5a84be5bfd0b788409a3aac639b07b68d1ae7', '2015-10-15 20:11:16', '1||||Safari||||iOS||||iPhone|iPhone|A|3|1', '2015-09-15 20:11:16', '2015-09-15 20:11:16'),
(7, 4, 'f9216eb957e866da78d9e15cfc3df8d79972baf26b77246582199fd173166062', '2015-10-16 16:04:43', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-16 16:04:43', '2015-09-16 16:04:43'),
(8, 1, '99f6b60e158f5ee0f96c65be5d8a67f270cbb4d317872b9669ae42c266e0027a', '2015-10-16 17:01:44', '||1||Chrome||||Win8|||||||1|1', '2015-09-16 17:01:44', '2015-09-16 17:01:44'),
(9, 6, '9deaf90a1bebc7da85d8d8b19889cf018da28a5987d43e7a6ee69100975f62e2', '2015-10-28 15:51:48', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-28 15:51:48', '2015-09-28 15:51:48'),
(10, 7, 'cfd0170961cc034675f02d4498231d4e5147dbc74d39e6d35343ff6a99596162', '2015-10-28 16:13:20', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-28 16:13:20', '2015-09-28 16:13:20'),
(11, 8, '48eacf64b8fcddf6a2e1e61d2275dc694cb3977d3934cc5a2fe99dc898f8ac94', '2015-10-28 20:54:50', '||1||Chrome||||Win8.1|||||||1|1', '2015-09-28 20:54:50', '2015-09-28 20:54:50');

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
  `fecha` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `user_id`, `tipo`, `valor`, `origen`, `movimiento`, `transferencia_id`, `transferencia_banco_id`, `user_alcancia_id`, `estado`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2565, 'Trigger', 'Deposito', 0, 0, 1, 1, '2015-09-07', '2015-09-07 21:52:07', '2015-09-08 21:52:12'),
(2, 1, 1, 2232.5, 'Trigger', 'Deposito', 0, 0, 2, 1, '2015-09-08', '2015-09-08 21:55:27', '2015-09-08 21:55:33'),
(3, 1, 3, -1500, 'Usuario Bancoink', 'Transferencia Bancoink', 1, 0, 0, 1, '2015-09-08', '2015-09-08 21:58:51', '2015-09-08 21:58:51'),
(4, 2, 2, 1500, 'Usuario Bancoink', 'Transferencia Bancoink', 1, 0, 0, 1, '2015-09-08', '2015-09-08 21:58:51', '2015-09-08 21:58:51'),
(5, 1, 1, 2327.5, 'Trigger', 'Deposito', 0, 0, 3, 1, '2015-09-08', '2015-09-08 22:02:13', '2015-09-08 22:02:20'),
(6, 1, 4, -2500, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 1, 0, 1, '2015-09-08', '2015-09-08 22:07:59', '2015-09-08 22:07:59'),
(7, 1, 1, 1805, 'Trigger', 'Deposito', 0, 0, 4, 1, '2015-09-08', '2015-09-08 22:09:37', '2015-09-08 22:09:40'),
(8, 2, 1, 3895, 'Trigger', 'Deposito', 0, 0, 6, 1, '2015-09-08', '2015-09-08 22:10:52', '2015-09-08 22:11:04'),
(9, 2, 3, -3000, 'Usuario Bancoink', 'Transferencia Bancoink', 2, 0, 0, 1, '2015-09-08', '2015-09-08 22:11:20', '2015-09-08 22:11:20'),
(10, 1, 2, 3000, 'Usuario Bancoink', 'Transferencia Bancoink', 2, 0, 0, 1, '2015-09-08', '2015-09-08 22:11:20', '2015-09-08 22:11:20'),
(11, 1, 1, 2327.5, 'Trigger', 'Deposito', 0, 0, 7, 1, '2015-09-08', '2015-09-08 22:19:33', '2015-09-08 22:20:13'),
(12, 1, 1, 2090, 'Trigger', 'Deposito', 0, 0, 8, 1, '2015-09-10', '2015-09-10 14:36:25', '2015-09-10 14:36:30'),
(13, 1, 3, -1800, 'Usuario Bancoink', 'Transferencia Bancoink', 3, 0, 0, 1, '2015-09-10', '2015-09-10 14:41:24', '2015-09-10 14:41:24'),
(14, 2, 2, 1800, 'Usuario Bancoink', 'Transferencia Bancoink', 3, 0, 0, 1, '2015-09-10', '2015-09-10 14:41:24', '2015-09-10 14:41:24'),
(15, 1, 4, -2700, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 2, 0, 1, '2015-09-10', '2015-09-10 14:51:19', '2015-09-10 14:51:19'),
(16, 1, 4, -5000, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 3, 0, 1, '2015-09-10', '2015-09-10 19:36:26', '2015-09-10 19:36:26'),
(17, 1, 1, 475, 'Trigger', 'Deposito', 0, 0, 9, 1, '2015-09-10', '2015-09-10 19:45:41', '2015-09-10 19:45:41'),
(18, 1, 1, 142.5, 'Trigger', 'Deposito', 0, 0, 11, 1, '2015-09-10', '2015-09-10 19:50:09', '2015-09-10 19:50:11'),
(19, 1, 1, 3325, 'Trigger', 'Deposito', 0, 0, 12, 1, '2015-09-10', '2015-09-10 19:51:44', '2015-09-10 19:52:13'),
(20, 1, 1, 1900, 'Trigger', 'Deposito', 0, 0, 13, 1, '2015-09-10', '2015-09-10 21:39:07', '2015-09-10 21:39:09'),
(21, 1, 1, 3705, 'Trigger', 'Deposito', 0, 0, 14, 1, '2015-09-10', '2015-09-10 22:40:15', '2015-09-10 22:40:25'),
(22, 1, 1, 3135, 'Trigger', 'Deposito', 0, 0, 16, 1, '2015-09-11', '2015-09-11 16:21:42', '2015-09-11 16:21:48'),
(23, 1, 3, -2000, 'UsuarioBancoink', 'Transferencia Bancoink', 4, 0, 0, 1, '2015-09-11', '2015-09-11 16:42:41', '2015-09-11 16:42:41'),
(24, 2, 2, 2000, 'UsuarioBancoink', 'Transferencia Bancoink', 4, 0, 0, 1, '2015-09-11', '2015-09-11 16:42:41', '2015-09-11 16:42:41'),
(25, 1, 1, 1425, 'Trigger', 'Deposito', 0, 0, 17, 1, '2015-09-11', '2015-09-11 16:50:08', '2015-09-11 16:50:11'),
(26, 1, 1, 950, 'Trigger', 'Deposito', 0, 0, 23, 1, '2015-09-11', '2015-09-11 20:32:48', '2015-09-11 20:32:48'),
(27, 1, 1, 1472.5, 'Trigger', 'Deposito', 0, 0, 24, 1, '2015-09-14', '2015-09-14 14:42:31', '2015-09-14 14:42:35'),
(28, 1, 1, 1425, 'Trigger', 'Deposito', 0, 0, 27, 1, '2015-09-14', '2015-09-14 16:18:43', '2015-09-14 16:18:46'),
(29, 1, 1, 950, 'Trigger', 'Deposito', 0, 0, 28, 1, '2015-09-14', '2015-09-14 17:02:02', '2015-09-14 17:02:02'),
(30, 1, 1, 475, 'Trigger', 'Deposito', 0, 0, 29, 1, '2015-09-14', '2015-09-14 20:20:07', '2015-09-14 20:20:07'),
(31, 1, 1, 95, 'Trigger', 'Deposito', 0, 0, 30, 1, '2015-09-14', '2015-09-14 20:38:58', '2015-09-14 20:38:58'),
(32, 1, 1, 190, 'Trigger', 'Deposito', 0, 0, 31, 1, '2015-09-14', '2015-09-14 20:39:54', '2015-09-14 20:39:54'),
(33, 1, 1, 2090, 'Trigger', 'Deposito', 0, 0, 32, 1, '2015-09-15', '2015-09-15 15:39:55', '2015-09-15 15:40:02'),
(34, 1, 3, -1000, 'UsuarioBancoink', 'Transferencia Bancoink', 5, 0, 0, 1, '2015-09-15', '2015-09-15 17:30:53', '2015-09-15 17:30:53'),
(35, 2, 2, 1000, 'UsuarioBancoink', 'Transferencia Bancoink', 5, 0, 0, 1, '2015-09-15', '2015-09-15 17:30:53', '2015-09-15 17:30:53'),
(36, 3, 1, 2090, 'Trigger', 'Deposito', 0, 0, 34, 1, '2015-09-15', '2015-09-15 17:49:34', '2015-09-15 17:49:38'),
(37, 3, 3, -850, 'UsuarioBancoink', 'Transferencia Bancoink', 6, 0, 0, 1, '2015-09-15', '2015-09-15 17:53:07', '2015-09-15 17:53:07'),
(38, 1, 2, 850, 'UsuarioBancoink', 'Transferencia Bancoink', 6, 0, 0, 1, '2015-09-15', '2015-09-15 17:53:07', '2015-09-15 17:53:07'),
(39, 3, 3, -850, 'UsuarioBancoink', 'Transferencia Bancoink', 7, 0, 0, 1, '2015-09-15', '2015-09-15 17:53:17', '2015-09-15 17:53:17'),
(40, 1, 2, 850, 'UsuarioBancoink', 'Transferencia Bancoink', 7, 0, 0, 1, '2015-09-15', '2015-09-15 17:53:17', '2015-09-15 17:53:17'),
(41, 1, 3, -1850, 'UsuarioBancoink', 'Transferencia Bancoink', 8, 0, 0, 1, '2015-09-15', '2015-09-15 17:59:00', '2015-09-15 17:59:00'),
(42, 3, 2, 1850, 'UsuarioBancoink', 'Transferencia Bancoink', 8, 0, 0, 1, '2015-09-15', '2015-09-15 17:59:00', '2015-09-15 17:59:00'),
(43, 1, 1, 3040, 'Trigger', 'Deposito', 0, 0, 38, 1, '2015-09-16', '2015-09-16 15:11:22', '2015-09-16 15:11:27'),
(44, 1, 3, -1500, 'UsuarioBancoink', 'Transferencia Bancoink', 9, 0, 0, 1, '2015-09-17', '2015-09-17 22:19:58', '2015-09-17 22:19:58'),
(45, 2, 2, 1500, 'UsuarioBancoink', 'Transferencia Bancoink', 9, 0, 0, 1, '2015-09-17', '2015-09-17 22:19:58', '2015-09-17 22:19:58'),
(46, 1, 3, -1200, 'UsuarioBancoink', 'Transferencia Bancoink', 10, 0, 0, 1, '2015-09-17', '2015-09-17 22:24:46', '2015-09-17 22:24:46'),
(47, 4, 2, 1200, 'UsuarioBancoink', 'Transferencia Bancoink', 10, 0, 0, 1, '2015-09-17', '2015-09-17 22:24:46', '2015-09-17 22:24:46'),
(48, 1, 3, -1000, 'UsuarioBancoink', 'Transferencia Bancoink', 11, 0, 0, 1, '2015-09-17', '2015-09-17 22:28:29', '2015-09-17 22:28:29'),
(49, 2, 2, 1000, 'UsuarioBancoink', 'Transferencia Bancoink', 11, 0, 0, 1, '2015-09-17', '2015-09-17 22:28:29', '2015-09-17 22:28:29'),
(50, 1, 4, -1400, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 4, 0, 1, '2015-09-17', '2015-09-17 22:31:03', '2015-09-17 22:31:03'),
(51, 1, 1, 2375, 'Trigger', 'Deposito', 0, 0, 39, 1, '2015-09-21', '2015-09-21 15:20:08', '2015-09-21 15:20:13'),
(52, 1, 4, -1800, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 5, 0, 1, '2015-09-22', '2015-09-22 15:29:41', '2015-09-22 16:58:52'),
(53, 1, 1, 1805, 'Trigger', 'Deposito', 0, 0, 40, 1, '2015-09-22', '2015-09-22 17:02:28', '2015-09-22 17:02:42'),
(54, 1, 4, -1300, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 6, 0, 1, '2015-09-22', '2015-09-22 17:04:42', '2015-09-22 17:05:23'),
(55, 1, 4, -1000, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 7, 0, 1, '2015-09-22', '2015-09-22 17:10:01', '2015-09-22 17:10:51'),
(56, 1, 4, -1400, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 8, 0, 1, '2015-09-23', '2015-09-23 15:28:51', '2015-09-23 15:29:09'),
(57, 1, 3, -500, 'UsuarioBancoink', 'Transferencia Bancoink', 12, 0, 0, 1, '2015-09-23', '2015-09-23 20:11:07', '2015-09-23 20:11:07'),
(58, 4, 2, 500, 'UsuarioBancoink', 'Transferencia Bancoink', 12, 0, 0, 1, '2015-09-23', '2015-09-23 20:11:07', '2015-09-23 20:11:07'),
(59, 1, 1, 1472.5, 'Trigger', 'Deposito', 0, 0, 47, 1, '2015-09-23', '2015-09-23 21:31:46', '2015-09-23 21:31:51'),
(60, 1, 3, -4050, 'UsuarioBancoink', 'Transferencia Bancoink', 13, 0, 0, 1, '2015-09-23', '2015-09-23 21:54:16', '2015-09-23 21:54:16'),
(61, 3, 2, 4050, 'UsuarioBancoink', 'Transferencia Bancoink', 13, 0, 0, 1, '2015-09-23', '2015-09-23 21:54:16', '2015-09-23 21:54:16'),
(66, 1, 1, 3277.5, 'Trigger', 'Deposito', 0, 0, 48, 1, '2015-09-23', '2015-09-23 22:37:23', '2015-09-23 22:37:34'),
(67, 1, 1, 2327.5, 'Trigger', 'Deposito', 0, 0, 49, 1, '2015-09-24', '2015-09-24 18:24:36', '2015-09-24 18:24:43'),
(68, 1, 1, 3182.5, 'Trigger', 'Deposito', 0, 0, 50, 1, '2015-09-24', '2015-09-24 18:25:38', '2015-09-24 18:25:48'),
(69, 1, 1, 2945, 'Trigger', 'Deposito', 0, 0, 51, 1, '2015-09-24', '2015-09-24 22:44:11', '2015-09-24 22:44:20'),
(70, 1, 1, 2992.5, 'Trigger', 'Deposito', 0, 0, 52, 1, '2015-09-24', '2015-09-24 22:50:17', '2015-09-24 22:50:30'),
(71, 1, 1, 3325, 'Trigger', 'Deposito', 0, 0, 54, 1, '2015-09-24', '2015-09-24 22:51:32', '2015-09-24 22:51:54'),
(72, 1, 3, -1500, 'UsuarioBancoink', 'Transferencia Bancoink', 14, 0, 0, 1, '2015-09-24', '2015-09-24 22:55:17', '2015-09-24 22:55:17'),
(73, 3, 2, 1500, 'UsuarioBancoink', 'Transferencia Bancoink', 14, 0, 0, 1, '2015-09-24', '2015-09-24 22:55:17', '2015-09-24 22:55:17'),
(74, 1, 4, -5000, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 9, 0, 1, '2015-09-24', '2015-09-24 22:58:21', '2015-09-24 22:58:49'),
(75, 1, 3, -8000, 'UsuarioBancoink', 'Transferencia Bancoink', 15, 0, 0, 1, '2015-09-24', '2015-09-24 23:00:40', '2015-09-24 23:00:40'),
(76, 4, 2, 8000, 'UsuarioBancoink', 'Transferencia Bancoink', 15, 0, 0, 1, '2015-09-24', '2015-09-24 23:00:40', '2015-09-24 23:00:40'),
(77, 1, 4, -5000, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 10, 0, 1, '2015-09-24', '2015-09-24 23:04:31', '2015-09-24 23:05:17'),
(78, 1, 1, 2802.5, 'Trigger', 'Deposito', 0, 0, 55, 1, '2015-09-24', '2015-09-24 23:06:29', '2015-09-24 23:06:47'),
(79, 1, 1, 1425, 'Trigger', 'Deposito', 0, 0, 56, 1, '2015-09-25', '2015-09-25 15:17:21', '2015-09-25 15:17:26'),
(80, 1, 1, 1995, 'Trigger', 'Deposito', 0, 0, 57, 1, '2015-09-25', '2015-09-25 15:18:07', '2015-09-25 15:18:17'),
(81, 1, 1, 2375, 'Trigger', 'Deposito', 0, 0, 58, 1, '2015-09-25', '2015-09-25 15:24:07', '2015-09-25 15:24:21'),
(82, 1, 4, -17000, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 11, 0, 1, '2015-09-25', '2015-09-25 15:39:25', '2015-09-25 15:42:27'),
(83, 1, 3, -500, 'UsuarioBancoink', 'Transferencia Bancoink', 16, 0, 0, 1, '2015-09-25', '2015-09-25 15:45:59', '2015-09-25 15:45:59'),
(84, 2, 2, 500, 'UsuarioBancoink', 'Transferencia Bancoink', 16, 0, 0, 1, '2015-09-25', '2015-09-25 15:45:59', '2015-09-25 15:45:59'),
(85, 1, 1, 3325, 'Trigger', 'Deposito', 0, 0, 59, 1, '2015-09-25', '2015-09-25 16:12:15', '2015-09-25 16:12:23'),
(86, 1, 1, 2090, 'Trigger', 'Deposito', 0, 0, 60, 1, '2015-09-25', '2015-09-25 16:33:08', '2015-09-25 16:33:25'),
(87, 2, 4, -2500, 'Transferencia Bancaria', 'Transferencia Bancaria', 0, 12, 0, 1, '2015-09-28', '2015-09-28 16:35:03', '2015-09-28 16:35:18'),
(88, 2, 3, -500, 'UsuarioBancoink', 'Transferencia Bancoink', 17, 0, 0, 1, '2015-09-28', '2015-09-28 17:45:07', '2015-09-28 17:45:07'),
(89, 4, 2, 500, 'UsuarioBancoink', 'Transferencia Bancoink', 17, 0, 0, 1, '2015-09-28', '2015-09-28 17:45:07', '2015-09-28 17:45:07'),
(90, 2, 3, -1500, 'UsuarioBancoink', 'Transferencia Bancoink', 18, 0, 0, 1, '2015-09-28', '2015-09-28 17:46:59', '2015-09-28 17:46:59'),
(91, 1, 2, 1500, 'UsuarioBancoink', 'Transferencia Bancoink', 18, 0, 0, 1, '2015-09-28', '2015-09-28 17:47:00', '2015-09-28 17:47:00'),
(92, 2, 3, -2000, 'UsuarioBancoink', 'Transferencia Bancoink', 19, 0, 0, 1, '2015-09-28', '2015-09-28 17:49:17', '2015-09-28 17:49:17'),
(93, 6, 2, 2000, 'UsuarioBancoink', 'Transferencia Bancoink', 19, 0, 0, 1, '2015-09-28', '2015-09-28 17:49:17', '2015-09-28 17:49:17'),
(94, 2, 3, -800, 'UsuarioBancoink', 'Transferencia Bancoink', 20, 0, 0, 1, '2015-09-28', '2015-09-28 17:49:43', '2015-09-28 17:49:43'),
(95, 3, 2, 800, 'UsuarioBancoink', 'Transferencia Bancoink', 20, 0, 0, 1, '2015-09-28', '2015-09-28 17:49:43', '2015-09-28 17:49:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
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
  `admin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `tag`, `first_name`, `last_name`, `email`, `celular`, `cedula`, `pin`, `sexo`, `fecha_nacimiento`, `habilitar_pin`, `porcentaje`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `admin`, `created_at`, `updated_at`) VALUES
(1, '1491825229', 'Jefferson', 'Rivera Patiño', 'jefersonpatino@yahoo.es', '3118322699', '1012320542', '1234', 'm', '1986-05-13', 0, 0.05, '$2y$10$C/XELuAt.i2cC3Z17AlzAegb4YTnHECvpBHfouKLJbYDSwJr.Cs9u', NULL, 1, NULL, NULL, '2015-09-28 22:18:32', '$2y$10$J1bqprReanxcnow9WZLADuWoJdcdxb0Nnui3QdZk3kDQHKqC2uJW2', NULL, 0, '2015-09-07 22:13:34', '2015-09-28 22:18:32'),
(2, '519723197', 'Jhon', 'Doe', 'doe@yahoo.es', '0', '321545454', '1234', '', '0000-00-00', 0, 0.05, '$2y$10$VxVh2apELP.tigdvdzQJ3ucsjF40Poo8IBLNc7uGD7Ph7lCGlzdvi', NULL, 1, NULL, NULL, '2015-09-28 17:49:44', '$2y$10$DuwyQ9.5kcdZrC.R3.i.zeIN0aeNhzv.z4nzZ91ZB7CI0xD7VJK6m', NULL, 0, '2015-09-08 14:43:14', '2015-09-28 17:49:44'),
(3, '1364203139', 'Pedro', 'Martinez', 'pm@yahoo.es', '0', '215454548', '1234', 'm', '1987-06-19', 0, 0.05, '$2y$10$.it6Tt560XsRolwS6kU24OZFW11EEHPpfA1.y1I2AIhtUrOgq8qc6', NULL, 1, NULL, NULL, '2015-09-17 22:42:52', '$2y$10$P8tjRHLOMYTl2Gj4eqsm1eXDNaROR2oWO74YV0mJ2VjO9tmdvoAse', NULL, 0, '2015-09-15 17:42:23', '2015-09-17 22:42:52'),
(4, '123456', 'Lucas', 'Gonzales', 'lg@yahoo.es', '0', '12415454', '1234', '', '0000-00-00', 0, 0.05, '$2y$10$mPpJBIwfTXMOCpVZwtzHjOhquEu8HJQPESMhmNhRFljcSNNOvyJSO', NULL, 0, NULL, NULL, '2015-09-16 16:05:05', '$2y$10$ll9TE9PlUZJ/BSOxtfDg5.usAR09dmy9a0tLMnAEGjHCUsxTa6M2m', NULL, 0, '2015-09-16 16:04:43', '2015-09-16 16:05:05'),
(5, '', NULL, NULL, 'admin@gmail.com', '0', '0', '', '', '0000-00-00', 0, 0, '$2y$10$e3o6kiEbAGYBdyhF1J6uf.YewWTF.tmH5PuT6CCBJ4GD10gm17xDa', NULL, 1, NULL, NULL, '2015-09-28 16:34:10', '$2y$10$ptfyHDrH775tQPjtlYarIuW5nfeosCtua15UJsN7I9GMyGX.XTYx6', NULL, 1, '2015-09-22 20:20:29', '2015-09-28 16:34:10'),
(6, NULL, 'Jhon Doe', 'Doe', 'd@sdsd.es', '0', '1214545', '1234', '', '0000-00-00', 0, 0.05, '$2y$10$9QQ3GhpHpcbjs494TKlP8uuKsmwIHsDlRSoKiXuzxEgKYN/3d3VoO', NULL, 1, NULL, NULL, '2015-09-28 15:54:34', '$2y$10$uvgKbvWF7GSYj2.ec/qzHOMI/E5SO0qZ9TPOXEY9ZdFC0O9ICDo5O', NULL, 0, '2015-09-28 15:51:48', '2015-09-28 15:54:34'),
(7, '343434', 'Jhon Doe', 'fgfgf', 'jefersonpatino@yahoo.es9', '0', '454545', '1234', '', '0000-00-00', 0, 0.05, '$2y$10$6pGYHalknt.Z/eUZfl4LtuH16q21OmtF3OO5szh0f5GPd1kuEbFGu', NULL, 1, NULL, NULL, '2015-09-28 16:13:25', '$2y$10$aDPFLnkd6SGO4gFIFpEfbueQ.F/5ZpURUlN7f/GWw.NaPQ4b0c4wW', NULL, 0, '2015-09-28 16:13:20', '2015-09-28 16:13:25'),
(8, '2232323', 'Jhon Doe', 'Gomez', 'jefersonpatino@yahoo.esw', '3118322698', '1012320541', '1234', '', '0000-00-00', 0, 0.05, '$2y$10$H81STmqBr8KM3L4AX5Lvpe/OWHfXNN.HPOxOmVC7OkX6qScdRBzuW', NULL, 1, NULL, NULL, '2015-09-28 20:54:55', '$2y$10$jBpc89X7HVCrbPCpLRgNK.oF1kQE2omxnhjjc652b5TbhI3THQFYO', NULL, 0, '2015-09-28 20:54:50', '2015-09-28 20:54:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(23, 1, 1, '2015-09-11 20:32:39', '2015-09-11 20:32:39'),
(24, 1, 1, '2015-09-14 14:42:25', '2015-09-14 14:42:25'),
(25, 1, 1, '2015-09-14 15:07:28', '2015-09-14 15:07:28'),
(26, 1, 1, '2015-09-14 15:07:59', '2015-09-14 15:07:59'),
(27, 1, 1, '2015-09-14 16:18:38', '2015-09-14 16:18:38'),
(28, 1, 1, '2015-09-14 17:01:57', '2015-09-14 17:01:57'),
(29, 1, 1, '2015-09-14 20:19:59', '2015-09-14 20:19:59'),
(30, 1, 1, '2015-09-14 20:38:53', '2015-09-14 20:38:53'),
(31, 1, 1, '2015-09-14 20:39:49', '2015-09-14 20:39:49'),
(32, 1, 1, '2015-09-15 15:39:49', '2015-09-15 15:39:49'),
(33, 1, 1, '2015-09-15 15:44:56', '2015-09-15 15:44:56'),
(34, 3, 1, '2015-09-15 17:49:18', '2015-09-15 17:49:18'),
(35, 2, 1, '2015-09-15 18:02:14', '2015-09-15 18:02:14'),
(36, 1, 1, '2015-09-15 18:02:29', '2015-09-15 18:02:29'),
(37, 1, 1, '2015-09-15 20:21:00', '2015-09-15 20:21:00'),
(38, 1, 1, '2015-09-16 15:11:12', '2015-09-16 15:11:12'),
(39, 1, 1, '2015-09-21 15:19:51', '2015-09-21 15:19:51'),
(40, 1, 1, '2015-09-22 17:02:15', '2015-09-22 17:02:15'),
(41, 1, 1, '2015-09-23 15:00:13', '2015-09-23 15:00:13'),
(42, 1, 1, '2015-09-23 15:00:49', '2015-09-23 15:00:49'),
(43, 1, 1, '2015-09-23 15:02:29', '2015-09-23 15:02:29'),
(44, 1, 1, '2015-09-23 15:02:56', '2015-09-23 15:02:56'),
(45, 1, 1, '2015-09-23 21:31:01', '2015-09-23 21:31:01'),
(46, 1, 1, '2015-09-23 21:31:28', '2015-09-23 21:31:28'),
(47, 1, 1, '2015-09-23 21:31:39', '2015-09-23 21:31:39'),
(48, 1, 1, '2015-09-23 22:37:11', '2015-09-23 22:37:11'),
(49, 1, 1, '2015-09-24 18:24:26', '2015-09-24 18:24:26'),
(50, 1, 1, '2015-09-24 18:25:32', '2015-09-24 18:25:32'),
(51, 1, 1, '2015-09-24 22:43:58', '2015-09-24 22:43:58'),
(52, 1, 1, '2015-09-24 22:50:11', '2015-09-24 22:50:11'),
(53, 1, 1, '2015-09-24 22:51:17', '2015-09-24 22:51:17'),
(54, 1, 1, '2015-09-24 22:51:28', '2015-09-24 22:51:28'),
(55, 1, 1, '2015-09-24 23:06:23', '2015-09-24 23:06:23'),
(56, 1, 1, '2015-09-25 15:17:16', '2015-09-25 15:17:16'),
(57, 1, 1, '2015-09-25 15:17:58', '2015-09-25 15:17:58'),
(58, 1, 1, '2015-09-25 15:23:54', '2015-09-25 15:23:54'),
(59, 1, 1, '2015-09-25 16:12:10', '2015-09-25 16:12:10'),
(60, 1, 1, '2015-09-25 16:33:02', '2015-09-25 16:33:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(78, 23, '1000.00', '950.00', 'viernes, 11 de septiembre de 2015, Hora 15:32', '11 de septiembre - 15:32', '2015-09-11 20:32:48', '2015-09-11 20:32:48'),
(79, 24, '500.00', '475.00', 'lunes, 14 de septiembre de 2015, Hora 09:42', '14 de septiembre - 09:42', '2015-09-14 14:42:31', '2015-09-14 14:42:31'),
(80, 24, '50.00', '47.50', 'lunes, 14 de septiembre de 2015, Hora 09:42', '14 de septiembre - 09:42', '2015-09-14 14:42:32', '2015-09-14 14:42:32'),
(81, 24, '500.00', '475.00', 'lunes, 14 de septiembre de 2015, Hora 09:42', '14 de septiembre - 09:42', '2015-09-14 14:42:34', '2015-09-14 14:42:34'),
(82, 24, '500.00', '475.00', 'lunes, 14 de septiembre de 2015, Hora 09:42', '14 de septiembre - 09:42', '2015-09-14 14:42:35', '2015-09-14 14:42:35'),
(83, 27, '500.00', '475.00', 'lunes, 14 de septiembre de 2015, Hora 11:18', '14 de septiembre - 11:18', '2015-09-14 16:18:43', '2015-09-14 16:18:43'),
(84, 27, '500.00', '475.00', 'lunes, 14 de septiembre de 2015, Hora 11:18', '14 de septiembre - 11:18', '2015-09-14 16:18:44', '2015-09-14 16:18:44'),
(85, 27, '500.00', '475.00', 'lunes, 14 de septiembre de 2015, Hora 11:18', '14 de septiembre - 11:18', '2015-09-14 16:18:46', '2015-09-14 16:18:46'),
(86, 28, '1000.00', '950.00', 'lunes, 14 de septiembre de 2015, Hora 12:02', '14 de septiembre - 12:02', '2015-09-14 17:02:02', '2015-09-14 17:02:02'),
(87, 29, '500.00', '475.00', 'lunes, 14 de septiembre de 2015, Hora 15:20', '14 de septiembre - 15:20', '2015-09-14 20:20:07', '2015-09-14 20:20:07'),
(88, 30, '100.00', '95.00', 'lunes, 14 de septiembre de 2015, Hora 15:38', '14 de septiembre - 15:38', '2015-09-14 20:38:58', '2015-09-14 20:38:58'),
(89, 31, '200.00', '190.00', 'lunes, 14 de septiembre de 2015, Hora 15:39', '14 de septiembre - 15:39', '2015-09-14 20:39:54', '2015-09-14 20:39:54'),
(90, 32, '1000.00', '950.00', 'martes, 15 de septiembre de 2015, Hora 10:39', '15 de septiembre - 10:39', '2015-09-15 15:39:55', '2015-09-15 15:39:55'),
(91, 32, '500.00', '475.00', 'martes, 15 de septiembre de 2015, Hora 10:39', '15 de septiembre - 10:39', '2015-09-15 15:39:57', '2015-09-15 15:39:57'),
(92, 32, '500.00', '475.00', 'martes, 15 de septiembre de 2015, Hora 10:39', '15 de septiembre - 10:39', '2015-09-15 15:39:58', '2015-09-15 15:39:58'),
(93, 32, '200.00', '190.00', 'martes, 15 de septiembre de 2015, Hora 10:40', '15 de septiembre - 10:40', '2015-09-15 15:40:02', '2015-09-15 15:40:02'),
(94, 34, '1000.00', '950.00', 'martes, 15 de septiembre de 2015, Hora 12:49', '15 de septiembre - 12:49', '2015-09-15 17:49:33', '2015-09-15 17:49:33'),
(95, 34, '500.00', '475.00', 'martes, 15 de septiembre de 2015, Hora 12:49', '15 de septiembre - 12:49', '2015-09-15 17:49:35', '2015-09-15 17:49:35'),
(96, 34, '500.00', '475.00', 'martes, 15 de septiembre de 2015, Hora 12:49', '15 de septiembre - 12:49', '2015-09-15 17:49:36', '2015-09-15 17:49:36'),
(97, 34, '200.00', '190.00', 'martes, 15 de septiembre de 2015, Hora 12:49', '15 de septiembre - 12:49', '2015-09-15 17:49:38', '2015-09-15 17:49:38'),
(98, 38, '200.00', '190.00', 'miércoles, 16 de septiembre de 2015, Hora 10:11', '16 de septiembre - 10:11', '2015-09-16 15:11:22', '2015-09-16 15:11:22'),
(99, 38, '500.00', '475.00', 'miércoles, 16 de septiembre de 2015, Hora 10:11', '16 de septiembre - 10:11', '2015-09-16 15:11:23', '2015-09-16 15:11:23'),
(100, 38, '1000.00', '950.00', 'miércoles, 16 de septiembre de 2015, Hora 10:11', '16 de septiembre - 10:11', '2015-09-16 15:11:24', '2015-09-16 15:11:24'),
(101, 38, '500.00', '475.00', 'miércoles, 16 de septiembre de 2015, Hora 10:11', '16 de septiembre - 10:11', '2015-09-16 15:11:25', '2015-09-16 15:11:25'),
(102, 38, '500.00', '475.00', 'miércoles, 16 de septiembre de 2015, Hora 10:11', '16 de septiembre - 10:11', '2015-09-16 15:11:27', '2015-09-16 15:11:27'),
(103, 38, '500.00', '475.00', 'miércoles, 16 de septiembre de 2015, Hora 10:11', '16 de septiembre - 10:11', '2015-09-16 15:11:27', '2015-09-16 15:11:27'),
(104, 39, '500.00', '475.00', 'lunes, 21 de septiembre de 2015, Hora 10:20', '21 de septiembre - 10:20', '2015-09-21 15:20:08', '2015-09-21 15:20:08'),
(105, 39, '500.00', '475.00', 'lunes, 21 de septiembre de 2015, Hora 10:20', '21 de septiembre - 10:20', '2015-09-21 15:20:10', '2015-09-21 15:20:10'),
(106, 39, '1000.00', '950.00', 'lunes, 21 de septiembre de 2015, Hora 10:20', '21 de septiembre - 10:20', '2015-09-21 15:20:11', '2015-09-21 15:20:11'),
(107, 39, '500.00', '475.00', 'lunes, 21 de septiembre de 2015, Hora 10:20', '21 de septiembre - 10:20', '2015-09-21 15:20:12', '2015-09-21 15:20:12'),
(108, 40, '100.00', '95.00', 'martes, 22 de septiembre de 2015, Hora 12:02', '22 de septiembre - 12:02', '2015-09-22 17:02:28', '2015-09-22 17:02:28'),
(109, 40, '500.00', '475.00', 'martes, 22 de septiembre de 2015, Hora 12:02', '22 de septiembre - 12:02', '2015-09-22 17:02:29', '2015-09-22 17:02:29'),
(110, 40, '500.00', '475.00', 'martes, 22 de septiembre de 2015, Hora 12:02', '22 de septiembre - 12:02', '2015-09-22 17:02:30', '2015-09-22 17:02:30'),
(111, 40, '500.00', '475.00', 'martes, 22 de septiembre de 2015, Hora 12:02', '22 de septiembre - 12:02', '2015-09-22 17:02:31', '2015-09-22 17:02:31'),
(112, 40, '100.00', '95.00', 'martes, 22 de septiembre de 2015, Hora 12:02', '22 de septiembre - 12:02', '2015-09-22 17:02:37', '2015-09-22 17:02:37'),
(113, 40, '200.00', '190.00', 'martes, 22 de septiembre de 2015, Hora 12:02', '22 de septiembre - 12:02', '2015-09-22 17:02:42', '2015-09-22 17:02:42'),
(114, 47, '500.00', '475.00', 'miércoles, 23 de septiembre de 2015, Hora 16:31', '23 de septiembre - 16:31', '2015-09-23 21:31:46', '2015-09-23 21:31:46'),
(115, 47, '500.00', '475.00', 'miércoles, 23 de septiembre de 2015, Hora 16:31', '23 de septiembre - 16:31', '2015-09-23 21:31:47', '2015-09-23 21:31:47'),
(116, 47, '500.00', '475.00', 'miércoles, 23 de septiembre de 2015, Hora 16:31', '23 de septiembre - 16:31', '2015-09-23 21:31:50', '2015-09-23 21:31:50'),
(117, 47, '50.00', '47.50', 'miércoles, 23 de septiembre de 2015, Hora 16:31', '23 de septiembre - 16:31', '2015-09-23 21:31:51', '2015-09-23 21:31:51'),
(118, 48, '1000.00', '950.00', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:23', '2015-09-23 22:37:23'),
(119, 48, '500.00', '475.00', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:25', '2015-09-23 22:37:25'),
(120, 48, '500.00', '475.00', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:26', '2015-09-23 22:37:26'),
(121, 48, '200.00', '190.00', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:27', '2015-09-23 22:37:27'),
(122, 48, '200.00', '190.00', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:29', '2015-09-23 22:37:29'),
(123, 48, '500.00', '475.00', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:32', '2015-09-23 22:37:32'),
(124, 48, '50.00', '47.50', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:33', '2015-09-23 22:37:33'),
(125, 48, '500.00', '475.00', 'miércoles, 23 de septiembre de 2015, Hora 17:37', '23 de septiembre - 17:37', '2015-09-23 22:37:33', '2015-09-23 22:37:33'),
(126, 49, '1000.00', '950.00', 'jueves, 24 de septiembre de 2015, Hora 13:24', '24 de septiembre - 13:24', '2015-09-24 18:24:35', '2015-09-24 18:24:35'),
(127, 49, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 13:24', '24 de septiembre - 13:24', '2015-09-24 18:24:38', '2015-09-24 18:24:38'),
(128, 49, '200.00', '190.00', 'jueves, 24 de septiembre de 2015, Hora 13:24', '24 de septiembre - 13:24', '2015-09-24 18:24:39', '2015-09-24 18:24:39'),
(129, 49, '50.00', '47.50', 'jueves, 24 de septiembre de 2015, Hora 13:24', '24 de septiembre - 13:24', '2015-09-24 18:24:41', '2015-09-24 18:24:41'),
(130, 49, '200.00', '190.00', 'jueves, 24 de septiembre de 2015, Hora 13:24', '24 de septiembre - 13:24', '2015-09-24 18:24:42', '2015-09-24 18:24:42'),
(131, 49, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 13:24', '24 de septiembre - 13:24', '2015-09-24 18:24:43', '2015-09-24 18:24:43'),
(132, 50, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:38', '2015-09-24 18:25:38'),
(133, 50, '50.00', '47.50', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:39', '2015-09-24 18:25:39'),
(134, 50, '200.00', '190.00', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:40', '2015-09-24 18:25:40'),
(135, 50, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:43', '2015-09-24 18:25:43'),
(136, 50, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:44', '2015-09-24 18:25:44'),
(137, 50, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:45', '2015-09-24 18:25:45'),
(138, 50, '1000.00', '950.00', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:46', '2015-09-24 18:25:46'),
(139, 50, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 13:25', '24 de septiembre - 13:25', '2015-09-24 18:25:48', '2015-09-24 18:25:48'),
(140, 51, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:44', '24 de septiembre - 17:44', '2015-09-24 22:44:11', '2015-09-24 22:44:11'),
(141, 51, '1000.00', '950.00', 'jueves, 24 de septiembre de 2015, Hora 17:44', '24 de septiembre - 17:44', '2015-09-24 22:44:13', '2015-09-24 22:44:13'),
(142, 51, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:44', '24 de septiembre - 17:44', '2015-09-24 22:44:14', '2015-09-24 22:44:14'),
(143, 51, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:44', '24 de septiembre - 17:44', '2015-09-24 22:44:15', '2015-09-24 22:44:15'),
(144, 51, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:44', '24 de septiembre - 17:44', '2015-09-24 22:44:17', '2015-09-24 22:44:17'),
(145, 51, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:44', '24 de septiembre - 17:44', '2015-09-24 22:44:19', '2015-09-24 22:44:19'),
(146, 52, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:17', '2015-09-24 22:50:17'),
(147, 52, '200.00', '190.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:19', '2015-09-24 22:50:19'),
(148, 52, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:21', '2015-09-24 22:50:21'),
(149, 52, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:22', '2015-09-24 22:50:22'),
(150, 52, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:23', '2015-09-24 22:50:23'),
(151, 52, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:24', '2015-09-24 22:50:24'),
(152, 52, '1000.00', '950.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:26', '2015-09-24 22:50:26'),
(153, 52, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:27', '2015-09-24 22:50:27'),
(154, 52, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:29', '2015-09-24 22:50:29'),
(155, 52, '50.00', '47.50', 'jueves, 24 de septiembre de 2015, Hora 17:50', '24 de septiembre - 17:50', '2015-09-24 22:50:30', '2015-09-24 22:50:30'),
(156, 54, '1000.00', '950.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:32', '2015-09-24 22:51:32'),
(157, 54, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:36', '2015-09-24 22:51:36'),
(158, 54, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:37', '2015-09-24 22:51:37'),
(159, 54, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:40', '2015-09-24 22:51:40'),
(160, 54, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:41', '2015-09-24 22:51:41'),
(161, 54, '200.00', '190.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:44', '2015-09-24 22:51:44'),
(162, 54, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:51', '2015-09-24 22:51:51'),
(163, 54, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:52', '2015-09-24 22:51:52'),
(164, 54, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 17:51', '24 de septiembre - 17:51', '2015-09-24 22:51:54', '2015-09-24 22:51:54'),
(165, 55, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:29', '2015-09-24 23:06:29'),
(166, 55, '1000.00', '950.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:30', '2015-09-24 23:06:30'),
(167, 55, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:33', '2015-09-24 23:06:33'),
(168, 55, '50.00', '47.50', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:34', '2015-09-24 23:06:34'),
(169, 55, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:37', '2015-09-24 23:06:37'),
(170, 55, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:38', '2015-09-24 23:06:38'),
(171, 55, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:44', '2015-09-24 23:06:44'),
(172, 55, '500.00', '475.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:45', '2015-09-24 23:06:45'),
(173, 55, '100.00', '95.00', 'jueves, 24 de septiembre de 2015, Hora 18:06', '24 de septiembre - 18:06', '2015-09-24 23:06:47', '2015-09-24 23:06:47'),
(174, 56, '1000.00', '950.00', 'viernes, 25 de septiembre de 2015, Hora 10:17', '25 de septiembre - 10:17', '2015-09-25 15:17:21', '2015-09-25 15:17:21'),
(175, 56, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 10:17', '25 de septiembre - 10:17', '2015-09-25 15:17:26', '2015-09-25 15:17:26'),
(176, 57, '1000.00', '950.00', 'viernes, 25 de septiembre de 2015, Hora 10:18', '25 de septiembre - 10:18', '2015-09-25 15:18:07', '2015-09-25 15:18:07'),
(177, 57, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 10:18', '25 de septiembre - 10:18', '2015-09-25 15:18:10', '2015-09-25 15:18:10'),
(178, 57, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 10:18', '25 de septiembre - 10:18', '2015-09-25 15:18:13', '2015-09-25 15:18:13'),
(179, 57, '100.00', '95.00', 'viernes, 25 de septiembre de 2015, Hora 10:18', '25 de septiembre - 10:18', '2015-09-25 15:18:17', '2015-09-25 15:18:17'),
(180, 58, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 10:24', '25 de septiembre - 10:24', '2015-09-25 15:24:07', '2015-09-25 15:24:07'),
(181, 58, '1000.00', '950.00', 'viernes, 25 de septiembre de 2015, Hora 10:24', '25 de septiembre - 10:24', '2015-09-25 15:24:11', '2015-09-25 15:24:11'),
(182, 58, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 10:24', '25 de septiembre - 10:24', '2015-09-25 15:24:18', '2015-09-25 15:24:18'),
(183, 58, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 10:24', '25 de septiembre - 10:24', '2015-09-25 15:24:21', '2015-09-25 15:24:21'),
(184, 59, '1000.00', '950.00', 'viernes, 25 de septiembre de 2015, Hora 11:12', '25 de septiembre - 11:12', '2015-09-25 16:12:15', '2015-09-25 16:12:15'),
(185, 59, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 11:12', '25 de septiembre - 11:12', '2015-09-25 16:12:17', '2015-09-25 16:12:17'),
(186, 59, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 11:12', '25 de septiembre - 11:12', '2015-09-25 16:12:18', '2015-09-25 16:12:18'),
(187, 59, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 11:12', '25 de septiembre - 11:12', '2015-09-25 16:12:20', '2015-09-25 16:12:20'),
(188, 59, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 11:12', '25 de septiembre - 11:12', '2015-09-25 16:12:21', '2015-09-25 16:12:21'),
(189, 59, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 11:12', '25 de septiembre - 11:12', '2015-09-25 16:12:23', '2015-09-25 16:12:23'),
(190, 60, '1000.00', '950.00', 'viernes, 25 de septiembre de 2015, Hora 11:33', '25 de septiembre - 11:33', '2015-09-25 16:33:08', '2015-09-25 16:33:08'),
(191, 60, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 11:33', '25 de septiembre - 11:33', '2015-09-25 16:33:14', '2015-09-25 16:33:14'),
(192, 60, '500.00', '475.00', 'viernes, 25 de septiembre de 2015, Hora 11:33', '25 de septiembre - 11:33', '2015-09-25 16:33:20', '2015-09-25 16:33:20'),
(193, 60, '200.00', '190.00', 'viernes, 25 de septiembre de 2015, Hora 11:33', '25 de septiembre - 11:33', '2015-09-25 16:33:24', '2015-09-25 16:33:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_bancos`
--

INSERT INTO `users_bancos` (`id`, `user_id`, `banco_id`, `numero_cuenta`, `tipo_cuenta`, `titular`, `cedula`, `estado`, `msg_estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '795212541', 'Ahorros', 'Jefferson Rivera', '1013216454', 1, 'Activa', '2015-09-08 22:06:05', '2015-09-08 22:06:05'),
(2, 1, 2, '8797878', 'Corriente', 'Jhon', '2156454', 1, 'Activa', '2015-09-10 19:35:29', '2015-09-10 19:35:29'),
(3, 3, 5, '21545454', 'Corriente', 'Antonio', '12145454', 1, 'Activa', '2015-09-15 17:48:07', '2015-09-21 21:39:54'),
(4, 1, 4, '787845425454', 'Corriente', 'Carlos', '21545445454', 1, 'Activa', '2015-09-17 22:21:30', '2015-09-22 17:03:47'),
(5, 1, 3, '8745451578', 'Corriente', 'Luis', '24541545', 1, 'Activa', '2015-09-17 22:29:38', '2015-09-17 22:29:38'),
(6, 1, 1, '878751575147', 'Corriente', 'Antonio Perez', '12154514548', 1, 'Activa', '2015-09-22 17:08:27', '2015-09-22 17:09:32'),
(7, 1, 4, '7487442587', 'Corriente', 'Juan', '45454874', 1, 'Activa', '2015-09-23 15:30:41', '2015-09-23 15:31:10'),
(8, 1, 2, '57874878', 'Corriente', 'Carlos', '248548787', 1, 'Activa', '2015-09-24 21:28:50', '2015-09-24 22:57:51'),
(9, 1, 2, '45454545', 'Corriente', 'Carlos', '52454545', 1, 'Activa', '2015-09-24 22:57:18', '2015-09-24 23:32:02'),
(10, 1, 1, '545454', 'Corriente', 'Juan', '5454545', 1, 'Activa', '2015-09-24 23:03:12', '2015-09-24 23:03:43'),
(11, 1, 3, '451578', 'Corriente', 'Andres', '15454', 1, 'Activa', '2015-09-25 16:07:23', '2015-09-25 16:07:40'),
(12, 2, 1, '4878787', 'Corriente', 'Juan Carlos', '12154', 1, 'Activa', '2015-09-28 16:33:46', '2015-09-28 16:34:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_bancos_transferencias`
--

INSERT INTO `users_bancos_transferencias` (`id`, `userbanco_id`, `descripcion`, `valor`, `estado`, `msg_estado`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur impedit, ', '2500.0000', 1, 'Realizada', '2015-09-08 22:07:59', '2015-09-22 16:59:48'),
(2, 1, 'Holaaaaaa', '2700.0000', 1, 'Realizada', '2015-09-10 14:51:19', '2015-09-10 14:51:19'),
(3, 2, 'sdgsghdshgd', '5000.0000', 1, 'Realizada', '2015-09-10 19:36:26', '2015-09-10 19:36:26'),
(4, 5, 'Holaaaa', '1400.0000', 1, 'Realizada', '2015-09-17 22:31:03', '2015-09-17 22:31:03'),
(5, 2, 'holaaaaaaaa', '1800.0000', 1, 'Realizada', '2015-09-22 15:29:41', '2015-09-22 16:58:52'),
(6, 4, 'Holaaaaaaaa', '1300.0000', 1, 'Realizada', '2015-09-22 17:04:42', '2015-09-22 17:05:23'),
(7, 6, 'Holaaaa', '1000.0000', 1, 'Realizada', '2015-09-22 17:10:01', '2015-09-22 17:10:51'),
(8, 1, 'Holaaaaaa', '1400.0000', 1, 'Realizada', '2015-09-23 15:28:51', '2015-09-23 15:29:09'),
(9, 8, 'hghgxhgdc', '5000.0000', 1, 'Realizada', '2015-09-24 22:58:21', '2015-09-24 22:58:49'),
(10, 10, 'hiiu', '5000.0000', 1, 'Realizada', '2015-09-24 23:04:31', '2015-09-24 23:05:17'),
(11, 4, 'Holaaa', '10000.0000', 1, 'Realizada', '2015-09-25 15:39:25', '2015-09-25 15:42:27'),
(12, 12, 'Holaaa', '2500.0000', 1, 'Realizada', '2015-09-28 16:35:03', '2015-09-28 16:35:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_device`
--

CREATE TABLE IF NOT EXISTS `users_device` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cordova` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users_device`
--

INSERT INTO `users_device` (`id`, `user_id`, `device`, `cordova`, `model`, `platform`, `uuid`, `version`, `created_at`, `updated_at`) VALUES
(2, 1, '1 Android 4.2.2 c96ced2eac3a3316 4.0.2 HUAWEI Y511-U251 HUAWEI', '4.0.2', 'HUAWEI Y511-U251', 'Android', 'c96ced2eac3a3316', '4.2.2', '2015-09-28 20:41:39', '2015-09-28 20:41:39');

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
(5, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_bancoink`
--

INSERT INTO `usuarios_bancoink` (`id`, `user_id`, `user_id_t`, `alias`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Jhon Doe', '2015-09-08 21:58:14', '2015-09-08 21:58:14'),
(2, 2, 1, 'Jefferson Rivera Patiño', '2015-09-08 22:10:11', '2015-09-08 22:10:11'),
(3, 3, 1, 'Jefferson Rivera Patiño', '2015-09-15 17:46:41', '2015-09-15 17:46:41'),
(4, 1, 3, 'Pedro Martinez', '2015-09-15 17:57:47', '2015-09-15 17:57:47'),
(5, 1, 4, 'Lucas Gonzales', '2015-09-17 22:23:58', '2015-09-17 22:23:58'),
(7, 2, 4, 'Lucas Gonzales', '2015-09-28 17:41:11', '2015-09-28 17:41:11'),
(8, 2, 3, 'Pedro Martinez', '2015-09-28 17:46:46', '2015-09-28 17:46:46'),
(9, 2, 6, 'Jhon Doe Doe', '2015-09-28 17:48:53', '2015-09-28 17:48:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_bancoink_transferencias`
--

INSERT INTO `usuarios_bancoink_transferencias` (`id`, `usuariobancoink_id`, `descripcion`, `valor`, `created_at`, `updated_at`) VALUES
(1, 1, 'Realizing this answered long ago', '1500.0000', '2015-09-08 21:58:51', '2015-09-08 21:58:51'),
(2, 2, 'Hola Mundo', '3000.0000', '2015-09-08 22:11:19', '2015-09-08 22:11:19'),
(3, 1, 'Holaaaaaa', '1800.0000', '2015-09-10 14:41:24', '2015-09-10 14:41:24'),
(4, 1, 'Holaaaaa', '2000.0000', '2015-09-11 16:42:41', '2015-09-11 16:42:41'),
(5, 1, 'hola', '1000.0000', '2015-09-15 17:30:53', '2015-09-15 17:30:53'),
(6, 3, 'holaaaa', '850.0000', '2015-09-15 17:53:07', '2015-09-15 17:53:07'),
(7, 3, 'holaaaa', '850.0000', '2015-09-15 17:53:17', '2015-09-15 17:53:17'),
(8, 4, 'hijffffgb hgffg', '1850.0000', '2015-09-15 17:59:00', '2015-09-15 17:59:00'),
(9, 1, 'hola', '1500.0000', '2015-09-17 22:19:57', '2015-09-17 22:19:57'),
(10, 5, 'Hola', '1200.0000', '2015-09-17 22:24:46', '2015-09-17 22:24:46'),
(11, 1, 'hola', '1000.0000', '2015-09-17 22:28:29', '2015-09-17 22:28:29'),
(12, 5, 'Holaaa', '500.0000', '2015-09-23 20:11:07', '2015-09-23 20:11:07'),
(13, 4, 'holaaaaa', '4050.0000', '2015-09-23 21:54:16', '2015-09-23 21:54:16'),
(14, 4, 'hjhjh', '1500.0000', '2015-09-24 22:55:17', '2015-09-24 22:55:17'),
(15, 5, 'Hpñaaa', '8000.0000', '2015-09-24 23:00:40', '2015-09-24 23:00:40'),
(16, 1, 'Holaaa', '500.0000', '2015-09-25 15:45:59', '2015-09-25 15:45:59'),
(17, 7, 'holaaa', '500.0000', '2015-09-28 17:45:07', '2015-09-28 17:45:07'),
(18, 2, 'holdlfdlf', '1500.0000', '2015-09-28 17:46:59', '2015-09-28 17:46:59'),
(19, 9, 'holaaa', '2000.0000', '2015-09-28 17:49:17', '2015-09-28 17:49:17'),
(20, 8, 'Holaaaa', '800.0000', '2015-09-28 17:49:43', '2015-09-28 17:49:43');

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
-- Indices de la tabla `users_device`
--
ALTER TABLE `users_device`
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `rejected`
--
ALTER TABLE `rejected`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT de la tabla `throttle`
--
ALTER TABLE `throttle`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tokens`
--
ALTER TABLE `tokens`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `users_alcancia`
--
ALTER TABLE `users_alcancia`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `users_alcancia_deposito`
--
ALTER TABLE `users_alcancia_deposito`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT de la tabla `users_bancos`
--
ALTER TABLE `users_bancos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `users_bancos_transferencias`
--
ALTER TABLE `users_bancos_transferencias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `users_device`
--
ALTER TABLE `users_device`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios_bancoink`
--
ALTER TABLE `usuarios_bancoink`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuarios_bancoink_transferencias`
--
ALTER TABLE `usuarios_bancoink_transferencias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
