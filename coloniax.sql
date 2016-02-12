-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2016 a las 19:39:21
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `coloniax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', 'Lindsay', '2016-02-12 16:58:23', '2016-02-12 16:58:23'),
(2, 'Miss', 'Leatha', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(3, 'Laila', 'O''Reilly', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(4, 'Dr.', 'Haleigh', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(5, 'Cordell', 'Ondricka', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(6, 'Charlie', 'Monahan', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(7, 'Narciso', 'Labadie', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(8, 'Kacey', 'Deckow', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(9, 'Mr.', 'Anastacio', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(10, 'Elva', 'Reynolds', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(11, 'Mr.', 'Hardy', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(12, 'Ms.', 'Katelynn', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(13, 'Dr.', 'Clara', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(14, 'Dr.', 'Kyleigh', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(15, 'Maybelle', 'Mueller', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(16, 'Prof.', 'Roberto', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(17, 'Ms.', 'Susie', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(18, 'Jena', 'Dickinson', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(19, 'Celestino', 'Moore', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(20, 'Mr.', 'Gideon', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(21, 'Prof.', 'Orpha', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(22, 'Gudrun', 'Mraz', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(23, 'Prof.', 'Brandt', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(24, 'Kaitlyn', 'Connelly', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(25, 'Carolyn', 'Reilly', '2016-02-12 16:58:24', '2016-02-12 16:58:24'),
(26, 'Lowell', 'Armstrong', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(27, 'Felipa', 'Schaefer', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(28, 'Ivory', 'Tremblay', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(29, 'Miss', 'Suzanne', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(30, 'Xavier', 'Zieme', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(31, 'Kaitlin', 'Homenick', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(32, 'Mr.', 'Demetrius', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(33, 'Prof.', 'Enola', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(34, 'Wallace', 'Ledner', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(35, 'Keven', 'Ankunding', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(36, 'Kevin', 'King', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(37, 'Santina', 'Daniel', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(38, 'Carter', 'Wyman', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(39, 'Scottie', 'O''Connell', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(40, 'Dr.', 'Carmelo', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(41, 'Sandra', 'Herzog', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(42, 'Prof.', 'Eleazar', '2016-02-12 16:58:25', '2016-02-12 16:58:25'),
(43, 'Dina', 'Reichel', '2016-02-12 16:58:26', '2016-02-12 16:58:26'),
(44, 'Gerda', 'Wyman', '2016-02-12 16:58:26', '2016-02-12 16:58:26'),
(45, 'Cale', 'Schimmel', '2016-02-12 16:58:26', '2016-02-12 16:58:26'),
(46, 'Mrs.', 'Rosemary', '2016-02-12 16:58:26', '2016-02-12 16:58:26'),
(47, 'Tyson', 'Ward', '2016-02-12 16:58:26', '2016-02-12 16:58:26'),
(48, 'Miss', 'Alverta', '2016-02-12 16:58:26', '2016-02-12 16:58:26'),
(49, 'Alice', 'Hegmann', '2016-02-12 16:58:26', '2016-02-12 16:58:26'),
(50, 'Jarod', 'Adams', '2016-02-12 16:58:26', '2016-02-12 16:58:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_to_invoices`
--

CREATE TABLE IF NOT EXISTS `clients_to_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `invoice_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clients_to__invoices_client_id_foreign` (`client_id`),
  KEY `clients_to__invoices_invoice_id_foreign` (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `clients_to_invoices`
--

INSERT INTO `clients_to_invoices` (`id`, `client_id`, `invoice_id`, `created_at`, `updated_at`) VALUES
(1, 22, 1, '2016-02-12 16:59:55', '2016-02-12 16:59:55'),
(2, 50, 2, '2016-02-12 17:13:57', '2016-02-12 17:13:57'),
(3, 27, 3, '2016-02-12 18:23:07', '2016-02-12 18:23:07'),
(4, 27, 4, '2016-02-12 18:23:35', '2016-02-12 18:23:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(10,4) NOT NULL,
  `status` enum('Pendiente','Pago','Adeudado') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoices_code_unique` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `invoices`
--

INSERT INTO `invoices` (`id`, `code`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, '$2y$10$yWchMZyhKSNf/o7TaYTX8.CXkQcS1nGrYYlHaZ.MKnQwODgaLptv2', 2500.9900, 'Pendiente', '2016-02-12 16:59:55', '2016-02-12 16:59:55'),
(2, '$2y$10$en1TghBboPwBB3dJ2dWdyem1lHJjEQxMHtFosHe5jWmVK3pvVeGOG', 500.0000, 'Pendiente', '2016-02-12 17:13:57', '2016-02-12 17:13:57'),
(3, '$2y$10$Jk45QubwSb2yRIctBvNMXOZNdMlXhiQq8pTjIpX5E2AgJRZiyMqWe', 1000.2000, 'Pendiente', '2016-02-12 18:23:07', '2016-02-12 18:23:07'),
(4, '$2y$10$BZ5fjne6KtWhzrFbFpTf/.FZ0/6ikJAc8ZQd7MWAI1jpEBEP4a94a', 200.1000, 'Pendiente', '2016-02-12 18:23:35', '2016-02-12 18:23:35');

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
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_11_173223_create_clients_table', 1),
('2016_02_11_173321_create_invoices_table', 1),
('2016_02_11_173339_create_clients_to_invoices_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('Admin','DataEntry','Cajero','Cliente') COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@coloniaexpress.com', 'Admin', '$2y$10$p9E1sDx8sY3Tm0wG1OD3suZ3WLEn24fM7fb6aSGfB5dzYe7WIWH/m', 'UsMzrNOAAmCyKl8EXeeyR8oIJH0iWul0AWMcficF362OO7VBokvTbxnqwXfE', '2016-02-12 18:36:28', '2016-02-12 18:37:42');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clients_to_invoices`
--
ALTER TABLE `clients_to_invoices`
  ADD CONSTRAINT `clients_to__invoices_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `clients_to__invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
