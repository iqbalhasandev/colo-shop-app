-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2021 at 02:13 PM
-- Server version: 8.0.21
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-12-11 07:36:43', '2021-12-11 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'shot_dec', 'text_area', 'Shot Dec', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'long_dec', 'rich_text_box', 'Long Dec', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'current_price', 'number', 'Current Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'descount_price', 'number', 'Descount Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(63, 7, 'img1', 'image', 'Img1', 1, 1, 1, 1, 1, 1, '{}', 8),
(64, 7, 'img2', 'image', 'Img2', 1, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'img3', 'image', 'Img3', 1, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 11),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(68, 7, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-12-11 07:36:42', '2021-12-11 07:36:42'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-12-11 07:36:42', '2021-12-11 07:36:42'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-12-11 07:36:42', '2021-12-11 07:36:42'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-11 07:41:32', '2021-12-11 07:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-12-11 07:36:42', '2021-12-11 07:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-12-11 07:36:42', '2021-12-11 07:36:42', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 2, '2021-12-11 07:36:42', '2021-12-11 07:42:28', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2021-12-11 07:36:42', '2021-12-11 07:42:41', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 3, '2021-12-11 07:36:42', '2021-12-11 07:42:41', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2021-12-11 07:36:42', '2021-12-11 07:42:41', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 4, '2021-12-11 07:36:42', '2021-12-11 07:42:41', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 5, '2021-12-11 07:36:42', '2021-12-11 07:42:41', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 6, '2021-12-11 07:36:42', '2021-12-11 07:42:41', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 7, '2021-12-11 07:36:42', '2021-12-11 07:42:41', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2021-12-11 07:36:42', '2021-12-11 07:42:41', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 4, '2021-12-11 07:36:43', '2021-12-11 07:42:42', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 5, 1, '2021-12-11 07:36:43', '2021-12-11 07:42:41', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 3, '2021-12-11 07:36:43', '2021-12-11 07:42:40', 'voyager.pages.index', NULL),
(14, 1, 'Products', '', '_self', 'voyager-shop', '#000000', NULL, 5, '2021-12-11 07:41:32', '2021-12-11 07:43:30', 'voyager.products.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2021_12_10_090846_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-12-11 07:36:43', '2021-12-11 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(2, 'browse_bread', NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(3, 'browse_database', NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(4, 'browse_media', NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(5, 'browse_compass', NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(6, 'browse_menus', 'menus', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(7, 'read_menus', 'menus', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(8, 'edit_menus', 'menus', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(9, 'add_menus', 'menus', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(10, 'delete_menus', 'menus', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(11, 'browse_roles', 'roles', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(12, 'read_roles', 'roles', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(13, 'edit_roles', 'roles', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(14, 'add_roles', 'roles', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(15, 'delete_roles', 'roles', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(16, 'browse_users', 'users', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(17, 'read_users', 'users', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(18, 'edit_users', 'users', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(19, 'add_users', 'users', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(20, 'delete_users', 'users', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(21, 'browse_settings', 'settings', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(22, 'read_settings', 'settings', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(23, 'edit_settings', 'settings', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(24, 'add_settings', 'settings', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(25, 'delete_settings', 'settings', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(26, 'browse_categories', 'categories', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(27, 'read_categories', 'categories', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(28, 'edit_categories', 'categories', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(29, 'add_categories', 'categories', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(30, 'delete_categories', 'categories', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(31, 'browse_posts', 'posts', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(32, 'read_posts', 'posts', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(33, 'edit_posts', 'posts', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(34, 'add_posts', 'posts', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(35, 'delete_posts', 'posts', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(36, 'browse_pages', 'pages', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(37, 'read_pages', 'pages', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(38, 'edit_pages', 'pages', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(39, 'add_pages', 'pages', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(40, 'delete_pages', 'pages', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(41, 'browse_products', 'products', '2021-12-11 07:41:32', '2021-12-11 07:41:32'),
(42, 'read_products', 'products', '2021-12-11 07:41:32', '2021-12-11 07:41:32'),
(43, 'edit_products', 'products', '2021-12-11 07:41:32', '2021-12-11 07:41:32'),
(44, 'add_products', 'products', '2021-12-11 07:41:32', '2021-12-11 07:41:32'),
(45, 'delete_products', 'products', '2021-12-11 07:41:32', '2021-12-11 07:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
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
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-11 07:36:43', '2021-12-11 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shot_dec` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_dec` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_price` int NOT NULL,
  `descount_price` int NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `img1` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `shot_dec`, `long_dec`, `current_price`, `descount_price`, `category_id`, `img1`, `img2`, `img3`, `created_at`, `updated_at`) VALUES
(1, 'Wide T-shirt', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78974</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 2</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 88, 59, 1, 'products\\December2021\\XtGBETJb9dBAQ3EaCW9P.jpg', 'products\\December2021\\OPKIENiYYPMat6Zmpl4E.jpg', 'products\\December2021\\1TR1Zq2JNfTysc2VjKVr.jpg', '2021-12-11 07:52:36', '2021-12-11 07:54:13'),
(2, 'Gray jacket with image variant', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78963</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 2</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 100, 88, 1, 'products\\December2021\\WG6QksaCY4GcyEyA0Om6.jpg', 'products\\December2021\\c7RciL0tk9GHysrBJRJf.jpg', 'products\\December2021\\eTDD7pEwIBL7RcfNU3bo.jpg', '2021-12-11 07:56:18', '2021-12-11 07:56:18'),
(3, 'Long sleeves', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78974</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 1</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 100, 88, 1, 'products\\December2021\\Vp5fZfnyICSgxzF7LlOJ.jpg', 'products\\December2021\\x5irJsilYtXHaFWD7i46.jpg', 'products\\December2021\\SjlFellLY3lLwqVViEqJ.jpg', '2021-12-11 07:57:33', '2021-12-11 07:57:33'),
(4, 'Winter Coat with Hat', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78963</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 3</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 90, 78, 2, 'products\\December2021\\RCuTmG8lEuBXXckFIPDX.jpg', 'products\\December2021\\ld0xCSW4lUJM3FiOF6qZ.jpg', 'products\\December2021\\lrdCRzaoZrmRkSRggNYG.jpg', '2021-12-11 07:58:44', '2021-12-11 07:58:44'),
(5, 'Men’s Bermuda Shorts', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78965</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 3</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 88, 56, 2, 'products\\December2021\\CoOBjkXjCkCcyjqZrCPH.jpg', 'products\\December2021\\A95Lz9h6TUTWFBurIzM4.jpg', 'products\\December2021\\EUZEriitpRaKqiCPVWkJ.jpg', '2021-12-11 07:59:54', '2021-12-11 07:59:54'),
(6, 'Men’s Bermuda Shorts', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78963</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 2</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 88, 78, 1, 'products\\December2021\\pwqlItqIZ1AzZkAhzMuC.jpg', 'products\\December2021\\8zOmUTYTg1gg3RmhsE1p.jpg', 'products\\December2021\\RaKojVSwp5kctDvX9OQy.jpg', '2021-12-11 08:01:00', '2021-12-11 08:01:00'),
(7, 'Men’s Bermuda Shorts', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78963</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 3</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 56, 40, 2, 'products\\December2021\\24Kw8n5YUbZIbE49NpoF.jpg', 'products\\December2021\\OMgI2YBgxJlMFFRVrFFq.jpg', 'products\\December2021\\l2CNbnVzKbnSWn58yYvh.jpg', '2021-12-11 08:05:13', '2021-12-11 08:05:13'),
(8, 'Men’s office t-shirts', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78963</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 1</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 90, 86, 2, 'products\\December2021\\rLGxCMHiIwf3ojCXFkak.jpg', 'products\\December2021\\Goq96x82PU2L4av0gF8I.jpg', 'products\\December2021\\EUUgTzJ5J0KlDMYbyhZ5.jpg', '2021-12-11 08:06:25', '2021-12-11 08:06:25'),
(9, 'Men’s office t-shirts', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78974</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 3</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 40, 39, 1, 'products\\December2021\\ccomH24HNbu9fks8ByN9.jpg', 'products\\December2021\\YgHyB5NcTzRJcqvVv9ms.jpg', 'products\\December2021\\p027THZU6NPZHbIhlNs3.jpg', '2021-12-11 08:07:19', '2021-12-11 08:07:19'),
(10, 'Men’s office t-shirts', 'A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit—plus cargo pockets and hammer loop for an original look.', '<div class=\"product-info-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #888888; font-family: Poppins, sans-serif;\"><label class=\"desc-label\" style=\"box-sizing: inherit; display: block; margin: 0px 0px 14px; font-size: 12px; line-height: 1.8; color: #999999; text-transform: uppercase;\">DETAIL</label>\r\n<ul class=\"product-info-list\" style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-sku\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Product code: :&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-sku=\"\">CA78963</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-vendor\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Vendor:</span>&nbsp;<span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\">VENDOR 1</span></div>\r\n</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px; color: #555555;\">\r\n<div class=\"product-info-item product-inventory\" style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px;\"><span class=\"product-info-title\" style=\"box-sizing: inherit;\">Available:&nbsp;</span><span class=\"product-info-text\" style=\"box-sizing: inherit; text-transform: uppercase;\" data-product-inventory=\"\" data-in-stock=\"In Stock\" data-out-stock=\"Out stock\">IN STOCK</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-short-desc\" style=\"box-sizing: inherit; margin: 0px 0px 1.1875rem; padding: 0px; color: #555555; line-height: 1.6; font-family: Poppins, sans-serif;\">\r\n<div class=\"description-update\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 14px; padding: 0px; font-weight: 400; color: #999999; text-rendering: optimizelegibility; font-size: 12px; line-height: 1.4; text-transform: uppercase;\">DESCRIPTION</h3>\r\n<ul style=\"box-sizing: inherit; margin: 0px 0px 23px 1.25rem; padding: 0px 0px 0px 8px; list-style-position: outside; line-height: 1.6;\">\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Model is 5</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Wearing size 2</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">100% Cotton</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Machine wash cold with like colors, tumble dry low</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Made in Jiangmen, ChinaSee the factory</li>\r\n<li style=\"box-sizing: inherit; margin: 0px 0px 6px; padding: 0px; font-size: 12px;\">Questions about fit?Email fit@everlane.com</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1rem; padding: 0px; font-size: 12px; line-height: 1.6; text-rendering: optimizelegibility;\">A pant that just works. Made from a 100% non-stretch cotton, the Carpenter Pant has a flattering high-rise, relaxed straight leg, and slightly cropped fit&mdash;plus cargo pockets and hammer loop for an original look.</p>\r\n</div>\r\n</div>', 99, 96, 1, 'products\\December2021\\8lOovOY0MAmmQXo7iJ9i.jpg', 'products\\December2021\\u2dBAv2iYyq8lzIr3ROe.jpg', 'products\\December2021\\5QimwVq2EuX11WQ9M7t5.jpg', '2021-12-11 08:08:20', '2021-12-11 08:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(2, 'user', 'Normal User', '2021-12-11 07:36:43', '2021-12-11 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Colo-shop', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'ColoShop is a free Bootstrap eCommerce website template that you can use to sell any goods online. This template can be ported to a platform of your choice or as a standalone website. ColoShop is one of the most versatile free eCommerce website templates you will find today. It rivals most premium offerings.', '', 'text', 2, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Colo-shop', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'ColoShop is a free Bootstrap eCommerce website template that you can use to sell any goods online. This template can be ported to a platform of your choice or as a standalone website. ColoShop is one of the most versatile free eCommerce website templates you will find today. It rivals most premium offerings.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.banner_image', 'Banner Image', 'settings\\December2021\\bZwVhNpn0wg4ORHZVrxy.jpg', NULL, 'image', 6, 'Site'),
(12, 'site.banner_subtitle', 'Banner Sub Title', 'SPRING / SUMMER COLLECTION 2021', NULL, 'text', 7, 'Site'),
(13, 'site.banner_title', 'Banner Title', 'Get up to 30% Off New Arrivals', NULL, 'text', 8, 'Site'),
(14, 'site.phone', 'Phone', '(800) 686-6688', NULL, 'text', 9, 'Site'),
(15, 'site.email', 'Email', 'info.colo.shop@gmail.com', NULL, 'text', 10, 'Site'),
(16, 'site.opening_date', 'Opening Date', 'Open hours: 8.00-18.00 Mon-Fri  Sunday: Closed', NULL, 'text', 11, 'Site'),
(17, 'site.map', 'Map URL', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1080.4176082016186!2d88.60679775455874!3d24.378618557976317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbee4db10be455%3A0xc6ee56098bd61ee9!2sRajshahi%20Polytechnic%20Institute!5e0!3m2!1sen!2sbd!4v1639115389456!5m2!1sen!2sbd', NULL, 'text', 12, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-12-11 07:36:43', '2021-12-11 07:36:43'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-12-11 07:36:43', '2021-12-11 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$Qs6seD1nXCSjZt8DlD5xHexNFks2D8WBO7mrR/E6mqbmf8Xp1ahDK', 'CyvVSZ1YsXfhLDFC8W27xyihqTG4rOIX6wzJQYLsSNWIAqJsZOkIdEOk7BiZ', NULL, '2021-12-11 07:36:43', '2021-12-11 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
