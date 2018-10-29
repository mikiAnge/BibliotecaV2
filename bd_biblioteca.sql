-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-10-2018 a las 14:43:13
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` text COLLATE utf8mb4_unicode_ci,
  `codigo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio` int(11) NOT NULL,
  `editorial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edicion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejemplares` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `category_id`, `codigo`, `titulo`, `autor`, `pais`, `anio`, `editorial`, `edicion`, `ejemplares`, `image`, `descripcion`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'MAtematicas', 'ads45632', 'Calculo I', 'Chungara', 'Bolivia', 2013, 'Leonardo', 'Segunda Edicion', 2, 'books/October2018/alUvHpvRnw1Qm8eXQMS3.jpg', 'Libro de Matematicas Calculo I de Chungara, contiene hoja de formulario', 'calculoi', '2018-10-15 10:25:48', '2018-10-15 10:25:48'),
(2, 'MAtematicas', 'D3784c', 'CCNA Exploration', 'Hector Delgado', 'Mexico', 2009, 'Macro', 'Primera', 2, 'books/October2018/GNgUjwrHE3mP0dYrI4QE.jpg', 'Libro de practicas para switching y routing', 'ccna', '2018-10-15 18:25:20', '2018-10-15 18:25:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'Matematicas', 'matematicas', '2018-10-15 04:16:58', '2018-10-15 04:16:58'),
(4, NULL, 1, 'Química', 'quimica', '2018-10-15 04:17:40', '2018-10-15 04:17:40'),
(5, NULL, 1, 'Fisica', 'fisica', '2018-10-15 04:17:51', '2018-10-15 04:17:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 9, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 9, 'category_id', 'select_dropdown', 'Category', 0, 0, 1, 1, 1, 0, '{\"default\":\"Seleccione una de la lista\",\"options\":{\"MAtematicas\":\"Matemáticas\",\"Quimica\":\"Química\",\"Fisica\":\"Física\"}}', 2),
(59, 9, 'codigo', 'text', 'Codigo', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 9, 'titulo', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, NULL, 4),
(61, 9, 'autor', 'text', 'Autor', 1, 1, 1, 1, 1, 1, NULL, 5),
(62, 9, 'pais', 'text', 'Pais', 1, 1, 1, 1, 1, 1, NULL, 6),
(63, 9, 'anio', 'number', 'Año', 1, 1, 1, 1, 1, 1, NULL, 7),
(64, 9, 'editorial', 'text', 'Editorial', 1, 1, 1, 1, 1, 1, NULL, 8),
(65, 9, 'edicion', 'text', 'Edicion', 1, 1, 1, 1, 1, 1, NULL, 9),
(66, 9, 'ejemplares', 'number', 'Ejemplares', 1, 1, 1, 1, 1, 1, NULL, 10),
(67, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 11),
(68, 9, 'descripcion', 'text_area', 'Descripcion', 1, 0, 1, 1, 1, 1, NULL, 12),
(69, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 13),
(70, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, NULL, 14),
(71, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 15),
(72, 10, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(73, 10, 'titulo', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, NULL, 2),
(74, 10, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, NULL, 3),
(75, 10, 'cicu', 'text', 'Cicu', 1, 1, 1, 1, 1, 1, NULL, 4),
(76, 10, 'category_id', 'select_dropdown', 'Categoria', 1, 0, 1, 1, 1, 0, '{\"default\":\"Seleccione una de la lista\",\"options\":{\"MAtematicas\":\"Matemáticas\",\"Quimica\":\"Química\",\"Fisica\":\"Física\"}}', 5),
(77, 10, 'direccion', 'text', 'Direccion', 1, 1, 1, 1, 1, 1, NULL, 6),
(78, 10, 'numerocelular', 'text', 'Numerocelular', 1, 1, 1, 1, 1, 1, NULL, 7),
(79, 10, 'fechasolicitud', 'date', 'Fechasolicitud', 1, 0, 1, 1, 1, 0, NULL, 8),
(80, 10, 'fechaentrega', 'date', 'Fechaentrega', 1, 0, 1, 1, 1, 0, NULL, 9),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, NULL, 10),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-10-12 06:48:52', '2018-10-12 06:48:52'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-10-12 06:48:53', '2018-10-12 06:48:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-10-12 06:48:53', '2018-10-12 06:48:53'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-10-12 06:49:02', '2018-10-12 06:49:02'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-10-12 06:49:03', '2018-10-12 06:49:03'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(8, 'book', 'book', 'Book', 'Books', 'voyager-book', 'App\\Book', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-15 09:13:37', '2018-10-15 09:13:37'),
(9, 'books', 'books', 'Book', 'Books', 'voyager-book', 'App\\Book', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-15 09:21:09', '2018-10-15 09:21:09'),
(10, 'loans', 'loans', 'Loan', 'Loans', NULL, 'App\\Loan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-15 16:30:02', '2018-10-15 16:30:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loans`
--

CREATE TABLE `loans` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cicu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numerocelular` int(11) NOT NULL,
  `fechasolicitud` date NOT NULL,
  `fechaentrega` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `loans`
--

INSERT INTO `loans` (`id`, `titulo`, `nombre`, `cicu`, `category_id`, `direccion`, `numerocelular`, `fechasolicitud`, `fechaentrega`, `created_at`, `updated_at`) VALUES
(1, 'Calculo I', 'Juan Perez', '35-123', 'MAtematicas', 'Calle Camargo #123', 72563122, '2018-10-15', '2018-10-15', '2018-10-15 16:38:04', '2018-10-15 16:38:04'),
(2, 'asdads', 'asdsadasd', 'asdasdas', 'MAtematicas', 'asdasdasda', 243123123, '2018-10-14', '2018-10-10', '2018-10-15 18:41:04', '2018-10-15 18:41:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-10-12 06:48:54', '2018-10-12 06:48:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-10-12 06:48:54', '2018-10-12 06:48:54', 'voyager.dashboard', NULL),
(2, 1, 'Galeria', '', '_self', 'voyager-images', '#000000', NULL, 4, '2018-10-12 06:48:54', '2018-10-15 09:22:49', 'voyager.media.index', 'null'),
(3, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', NULL, 3, '2018-10-12 06:48:54', '2018-10-12 08:49:11', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-10-12 06:48:54', '2018-10-12 06:48:54', 'voyager.roles.index', NULL),
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2018-10-12 06:48:54', '2018-10-12 08:50:50', NULL, ''),
(6, 1, 'Menu', '', '_self', 'voyager-list', '#000000', 5, 1, '2018-10-12 06:48:54', '2018-10-15 09:22:49', 'voyager.menus.index', 'null'),
(7, 1, 'Base de Datos', '', '_self', 'voyager-data', '#000000', 5, 2, '2018-10-12 06:48:54', '2018-10-15 09:22:49', 'voyager.database.index', 'null'),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-10-12 06:48:54', '2018-10-15 09:22:49', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-10-12 06:48:54', '2018-10-15 09:22:49', 'voyager.bread.index', NULL),
(10, 1, 'Configuracion', '', '_self', 'voyager-settings', '#000000', NULL, 10, '2018-10-12 06:48:54', '2018-10-15 18:52:28', 'voyager.settings.index', 'null'),
(11, 1, 'Categorias', '', '_self', 'voyager-categories', '#000000', NULL, 8, '2018-10-12 06:49:03', '2018-10-12 08:50:03', 'voyager.categories.index', 'null'),
(12, 1, 'Publicaciones', '', '_self', 'voyager-news', '#000000', NULL, 6, '2018-10-12 06:49:05', '2018-10-12 08:49:38', 'voyager.posts.index', 'null'),
(13, 1, 'Paginas', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2018-10-12 06:49:06', '2018-10-12 08:49:49', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-10-12 06:49:10', '2018-10-15 09:22:49', 'voyager.hooks', NULL),
(16, 1, 'Libros', '', '_self', 'voyager-book', '#000000', NULL, 5, '2018-10-15 09:21:09', '2018-10-15 18:51:43', 'voyager.books.index', 'null'),
(17, 1, 'Loans', '', '_self', NULL, NULL, NULL, 11, '2018-10-15 16:30:02', '2018-10-15 16:30:02', 'voyager.loans.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 2),
(4, '2016_01_01_000000_create_data_types_table', 2),
(5, '2016_05_19_173453_create_menu_table', 2),
(6, '2016_10_21_190000_create_roles_table', 2),
(7, '2016_10_21_190000_create_settings_table', 2),
(8, '2016_11_30_135954_create_permission_table', 2),
(9, '2016_11_30_141208_create_permission_role_table', 2),
(10, '2016_12_26_201236_data_types__add__server_side', 2),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(12, '2017_01_14_005015_create_translations_table', 2),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(17, '2017_08_05_000000_add_group_to_settings_table', 2),
(18, '2017_11_26_013050_add_user_role_relationship', 2),
(19, '2017_11_26_015000_create_user_roles_table', 2),
(20, '2018_03_11_000000_add_user_settings', 2),
(21, '2018_03_14_000000_add_details_to_data_types_table', 2),
(22, '2018_03_16_000000_make_settings_value_nullable', 2),
(23, '2016_01_01_000000_create_pages_table', 3),
(24, '2016_01_01_000000_create_posts_table', 3),
(25, '2016_02_15_204651_create_categories_table', 3),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 3),
(27, '2018_10_15_034401_create_book_table', 4),
(28, '2018_10_15_034454_create_loan_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-10-12 06:49:06', '2018-10-12 06:49:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(2, 'browse_bread', NULL, '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(3, 'browse_database', NULL, '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(4, 'browse_media', NULL, '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(5, 'browse_compass', NULL, '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(6, 'browse_menus', 'menus', '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(7, 'read_menus', 'menus', '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(8, 'edit_menus', 'menus', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(9, 'add_menus', 'menus', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(10, 'delete_menus', 'menus', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(11, 'browse_roles', 'roles', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(12, 'read_roles', 'roles', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(13, 'edit_roles', 'roles', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(14, 'add_roles', 'roles', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(15, 'delete_roles', 'roles', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(16, 'browse_users', 'users', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(17, 'read_users', 'users', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(18, 'edit_users', 'users', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(19, 'add_users', 'users', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(20, 'delete_users', 'users', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(21, 'browse_settings', 'settings', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(22, 'read_settings', 'settings', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(23, 'edit_settings', 'settings', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(24, 'add_settings', 'settings', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(25, 'delete_settings', 'settings', '2018-10-12 06:48:55', '2018-10-12 06:48:55'),
(26, 'browse_categories', 'categories', '2018-10-12 06:49:03', '2018-10-12 06:49:03'),
(27, 'read_categories', 'categories', '2018-10-12 06:49:03', '2018-10-12 06:49:03'),
(28, 'edit_categories', 'categories', '2018-10-12 06:49:03', '2018-10-12 06:49:03'),
(29, 'add_categories', 'categories', '2018-10-12 06:49:03', '2018-10-12 06:49:03'),
(30, 'delete_categories', 'categories', '2018-10-12 06:49:03', '2018-10-12 06:49:03'),
(31, 'browse_posts', 'posts', '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(32, 'read_posts', 'posts', '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(33, 'edit_posts', 'posts', '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(34, 'add_posts', 'posts', '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(35, 'delete_posts', 'posts', '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(36, 'browse_pages', 'pages', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(37, 'read_pages', 'pages', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(38, 'edit_pages', 'pages', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(39, 'add_pages', 'pages', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(40, 'delete_pages', 'pages', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(41, 'browse_hooks', NULL, '2018-10-12 06:49:10', '2018-10-12 06:49:10'),
(42, 'browse_book', 'book', '2018-10-15 09:13:37', '2018-10-15 09:13:37'),
(43, 'read_book', 'book', '2018-10-15 09:13:37', '2018-10-15 09:13:37'),
(44, 'edit_book', 'book', '2018-10-15 09:13:37', '2018-10-15 09:13:37'),
(45, 'add_book', 'book', '2018-10-15 09:13:37', '2018-10-15 09:13:37'),
(46, 'delete_book', 'book', '2018-10-15 09:13:37', '2018-10-15 09:13:37'),
(47, 'browse_books', 'books', '2018-10-15 09:21:09', '2018-10-15 09:21:09'),
(48, 'read_books', 'books', '2018-10-15 09:21:09', '2018-10-15 09:21:09'),
(49, 'edit_books', 'books', '2018-10-15 09:21:09', '2018-10-15 09:21:09'),
(50, 'add_books', 'books', '2018-10-15 09:21:09', '2018-10-15 09:21:09'),
(51, 'delete_books', 'books', '2018-10-15 09:21:09', '2018-10-15 09:21:09'),
(52, 'browse_loans', 'loans', '2018-10-15 16:30:02', '2018-10-15 16:30:02'),
(53, 'read_loans', 'loans', '2018-10-15 16:30:02', '2018-10-15 16:30:02'),
(54, 'edit_loans', 'loans', '2018-10-15 16:30:02', '2018-10-15 16:30:02'),
(55, 'add_loans', 'loans', '2018-10-15 16:30:02', '2018-10-15 16:30:02'),
(56, 'delete_loans', 'loans', '2018-10-15 16:30:02', '2018-10-15 16:30:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(34, 1),
(34, 3),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-12 06:49:05', '2018-10-12 06:49:05'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-12 06:49:05', '2018-10-12 06:49:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(2, 'user', 'Normal User', '2018-10-12 06:48:54', '2018-10-12 06:48:54'),
(3, 'miembro', 'Miembros', '2018-10-12 08:03:47', '2018-10-12 08:15:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/October2018/aSVKKUj8QRLeHAPHdkuf.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Biblioteca', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Consulta sobre tus libros', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/October2018/eKzZB0FaIYqny8NB6ayo.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/October2018/O8bjjgs62BcRoebtt6mS.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.Image', 'Image', 'settings/October2018/izD798sRe8qfNjmHUCQw.jpg', NULL, 'image', 6, 'Site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-10-12 06:49:06', '2018-10-12 06:49:06'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-10-12 06:49:07', '2018-10-12 06:49:07'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-10-12 06:49:08', '2018-10-12 06:49:08'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-10-12 06:49:08', '2018-10-12 06:49:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Miguel', 'miki@prueba.com', 'users/default.png', NULL, '$2y$10$KVAb4DkcUY1860CS6moqx.S/le7TjduV1tw4DfTcmBJK3/FNaAGg.', 'q0O5JseBHBTHerF1PAACYMNT5LMfIoeRrmKIYnLiDMrITJ8CwIKnis1u9on0', NULL, '2018-10-11 03:21:16', '2018-10-12 06:53:17'),
(2, 3, 'Juan Vega', 'jv@prueba.com', 'users/default.png', NULL, '$2y$10$mDl1oDcseUKNgHrWLUqdh.AyhuY/RQe1huNdEzmSrGlc3Nb59U5.S', 'kvzfkDjrLva9BdsVZO5cGJdTpFR8Lnej86Lj1d1jZkcoKvkyL0AGvGxAnALs', '{\"locale\":\"es\"}', '2018-10-11 07:15:01', '2018-10-12 08:09:03'),
(3, 2, 'Book', 'book@prueba.com', 'users/default.png', NULL, '$2y$10$1y25cUNAPAUfrdiK6SSJFOhw5SlzEqCShJ8f5PYp/2vcBq1ra1mq6', '0Symb52oHV7TeHHqPlysf1dJQ4BTPAwQaVWLM1qDg20NwUqA7kgewpHzHM14', NULL, '2018-10-12 07:52:38', '2018-10-12 07:52:38'),
(4, 3, 'Estudiante', 'estudiante@prueba.com', 'users/default.png', NULL, '$2y$10$Kav5UvcUF0WPgN4SH7BaLuurRn0YjRClWkB5JUkQGAoUGgpDNgLxu', 'Rbpjrn3092AELnX4ks8cOrILxft9txeuGzb1bQnf7y1yER4NqQVkjXMvkZ4P', NULL, '2018-10-12 08:16:30', '2018-10-12 08:16:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `book_slug_unique` (`slug`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
