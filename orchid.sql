-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Лип 22 2018 р., 10:14
-- Версія сервера: 5.6.37
-- Версія PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `orchid`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
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
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-06-25 10:16:17', '2018-06-25 10:16:17');

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Vegatable', 'vegatable', NULL, NULL),
(2, 'Meat', 'meat', NULL, NULL),
(3, 'Fruits', 'fruits', NULL, NULL),
(4, 'Bestseller', 'bestseller', NULL, NULL),
(5, 'Organic Food', 'organic_food', NULL, NULL),
(6, 'Healthy Benefit', 'healthy_benefit', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 2, 4, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 4, NULL, NULL),
(8, 8, 6, NULL, NULL),
(9, 9, 5, NULL, NULL),
(10, 10, 4, NULL, NULL),
(11, 11, 3, NULL, NULL),
(12, 12, 4, NULL, NULL),
(13, 13, 3, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 6, NULL, NULL),
(16, 16, 5, NULL, NULL),
(17, 17, 2, NULL, NULL),
(18, 18, 2, NULL, NULL),
(19, 19, 5, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 3, NULL, NULL),
(22, 22, 4, NULL, NULL),
(23, 23, 4, NULL, NULL),
(24, 24, 3, NULL, NULL),
(25, 25, 6, NULL, NULL),
(26, 26, 3, NULL, NULL),
(27, 27, 6, NULL, NULL),
(28, 28, 3, NULL, NULL),
(29, 29, 3, NULL, NULL),
(30, 30, 4, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 2, NULL, NULL),
(33, 33, 3, NULL, NULL),
(34, 34, 6, NULL, NULL),
(35, 35, 5, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 2, NULL, NULL),
(40, 40, 2, NULL, NULL),
(41, 41, 3, NULL, NULL),
(42, 42, 3, NULL, NULL),
(43, 43, 4, NULL, NULL),
(44, 44, 5, NULL, NULL),
(45, 45, 1, NULL, NULL),
(46, 46, 4, NULL, NULL),
(47, 47, 6, NULL, NULL),
(48, 48, 4, NULL, NULL),
(49, 49, 6, NULL, NULL),
(50, 50, 2, NULL, NULL),
(51, 51, 6, NULL, NULL),
(52, 52, 3, NULL, NULL),
(53, 53, 4, NULL, NULL),
(54, 54, 2, NULL, NULL),
(55, 55, 3, NULL, NULL),
(56, 56, 6, NULL, NULL),
(57, 57, 4, NULL, NULL),
(58, 58, 6, NULL, NULL),
(59, 59, 4, NULL, NULL),
(60, 60, 2, NULL, NULL),
(61, 61, 1, NULL, NULL),
(62, 62, 2, NULL, NULL),
(63, 63, 5, NULL, NULL),
(64, 64, 2, NULL, NULL),
(65, 65, 2, NULL, NULL),
(66, 66, 6, NULL, NULL),
(67, 67, 5, NULL, NULL),
(68, 68, 2, NULL, NULL),
(69, 69, 6, NULL, NULL),
(70, 70, 6, NULL, NULL),
(71, 71, 2, NULL, NULL),
(72, 72, 2, NULL, NULL),
(73, 73, 5, NULL, NULL),
(74, 74, 3, NULL, NULL),
(75, 75, 1, NULL, NULL),
(76, 76, 3, NULL, NULL),
(77, 77, 6, NULL, NULL),
(78, 78, 4, NULL, NULL),
(79, 79, 3, NULL, NULL),
(80, 80, 6, NULL, NULL),
(81, 81, 5, NULL, NULL),
(82, 82, 3, NULL, NULL),
(84, 84, 1, NULL, NULL),
(85, 85, 2, NULL, NULL),
(86, 86, 6, NULL, NULL),
(87, 87, 3, NULL, NULL),
(88, 88, 6, NULL, NULL),
(89, 89, 2, NULL, NULL),
(90, 90, 3, NULL, NULL),
(91, 91, 5, NULL, NULL),
(92, 92, 2, NULL, NULL),
(93, 93, 5, NULL, NULL),
(94, 94, 4, NULL, NULL),
(95, 95, 5, NULL, NULL),
(96, 96, 6, NULL, NULL),
(97, 97, 4, NULL, NULL),
(98, 98, 3, NULL, NULL),
(99, 99, 5, NULL, NULL),
(100, 100, 1, NULL, NULL),
(102, 1, 1, '2018-06-25 13:42:08', '2018-06-25 13:42:08'),
(103, 1, 2, '2018-06-25 13:42:08', '2018-06-25 13:42:08'),
(104, 1, 3, '2018-06-25 13:42:08', '2018-06-25 13:42:08'),
(108, 101, 3, '2018-06-25 14:02:06', '2018-06-25 14:02:06'),
(109, 101, 4, '2018-06-25 14:02:06', '2018-06-25 14:02:06'),
(110, 101, 5, '2018-06-25 14:02:06', '2018-06-25 14:02:06'),
(111, 101, 6, '2018-06-25 14:02:06', '2018-06-25 14:02:06'),
(118, 102, 1, '2018-06-25 14:35:26', '2018-06-25 14:35:26'),
(119, 102, 4, '2018-06-25 14:35:26', '2018-06-25 14:35:26'),
(120, 102, 6, '2018-06-25 14:35:26', '2018-06-25 14:35:26'),
(121, 103, 1, '2018-06-28 14:21:45', '2018-06-28 14:21:45'),
(122, 83, 6, '2018-06-29 06:52:18', '2018-06-29 06:52:18');

-- --------------------------------------------------------

--
-- Структура таблиці `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', 300, NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(2, 'def456', 'percent', NULL, 50, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(3, 'Dima-coupon', 'fixed', 2000, NULL, '2018-06-30 05:17:40', '2018-06-30 05:17:40');

-- --------------------------------------------------------

--
-- Структура таблиці `data_rows`
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
-- Дамп даних таблиці `data_rows`
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
(31, 5, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(36, 5, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(37, 5, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(38, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(39, 5, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(40, 5, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(41, 5, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(42, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(43, 6, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(44, 6, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(45, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(46, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(47, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(48, 6, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(50, 6, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(51, 6, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(55, 6, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(56, 6, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(57, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(58, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(62, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(63, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(64, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(65, 8, 'details', 'text', 'Details', 1, 1, 1, 1, 1, 1, NULL, 4),
(66, 8, 'price', 'number', 'price', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|regex:/^\\\\d*(\\\\.\\\\d{1,2})?$/\"}}', 5),
(67, 8, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, NULL, 6),
(68, 8, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, NULL, 7),
(69, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 8),
(70, 8, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, NULL, 9),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 10),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(73, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(74, 9, 'product_id', 'number', 'Product Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(75, 9, 'category_id', 'number', 'Category Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(78, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(79, 10, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, NULL, 2),
(80, 10, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, NULL, 3),
(81, 10, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, NULL, 4),
(82, 10, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, NULL, 5),
(83, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(84, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(85, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(86, 11, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(87, 11, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(88, 11, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(89, 11, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, NULL, 5),
(90, 11, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 1, NULL, 6),
(91, 11, 'billing_phone', 'number', 'Billing Phone', 1, 1, 1, 1, 1, 1, NULL, 7),
(92, 11, 'billing_discount', 'number', 'Billing Discount', 1, 1, 1, 1, 1, 1, NULL, 8),
(93, 11, 'billing_discount_code', 'text', 'Billing Discount Code', 0, 1, 1, 1, 1, 1, NULL, 9),
(94, 11, 'billing_subtotal', 'number', 'Billing Subtotal', 1, 1, 1, 1, 1, 1, NULL, 10),
(95, 11, 'billing_tax', 'number', 'Billing Tax', 1, 1, 1, 1, 1, 1, NULL, 11),
(96, 11, 'billing_total', 'number', 'Billing Total', 1, 1, 1, 1, 1, 1, NULL, 12),
(97, 11, 'payment_gatewey', 'text', 'Payment Gatewey', 1, 1, 1, 1, 1, 1, NULL, 13),
(98, 11, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 1, 1, NULL, 14),
(99, 11, 'error', 'text', 'Error', 0, 1, 1, 0, 0, 0, NULL, 15),
(100, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 16),
(101, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 17);

-- --------------------------------------------------------

--
-- Структура таблиці `data_types`
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
-- Дамп даних таблиці `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(5, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(6, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(7, 'category', 'category', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 10:27:11', '2018-06-25 10:27:11'),
(8, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Voyager\\ProductsController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 10:28:42', '2018-06-25 13:10:53'),
(9, 'category_product', 'category-product', 'Category Product', 'Category Products', 'voyager-tag', 'App\\CategoryProduct', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 10:29:43', '2018-06-25 10:29:43'),
(10, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 10:30:37', '2018-06-25 10:30:37'),
(11, 'orders', 'orders', 'Order', 'Orders', 'voyager-basket', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 14:06:18', '2018-06-26 14:10:26');

-- --------------------------------------------------------

--
-- Структура таблиці `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(2, 'main', '2018-06-25 10:19:09', '2018-06-25 10:19:09');

-- --------------------------------------------------------

--
-- Структура таблиці `menu_items`
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
-- Дамп даних таблиці `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-06-25 10:16:17', '2018-06-25 10:16:17', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2018-06-25 10:16:17', '2018-06-26 14:07:47', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2018-06-25 10:16:17', '2018-06-26 14:07:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 10, '2018-06-25 10:16:17', '2018-06-26 14:07:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2018-06-25 10:16:17', '2018-06-26 14:07:47', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-06-25 10:16:17', '2018-06-25 10:31:06', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-06-25 10:16:17', '2018-06-25 10:31:06', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-06-25 10:16:17', '2018-06-25 10:31:06', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-06-25 10:16:17', '2018-06-25 10:31:06', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-06-25 10:16:17', '2018-06-26 14:07:47', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2018-06-25 10:16:17', '2018-06-30 05:55:44', 'voyager.categories.index', NULL),
(12, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 12, '2018-06-25 10:16:17', '2018-06-30 05:55:44', 'voyager.pages.index', NULL),
(13, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2018-06-25 10:16:17', '2018-06-26 14:07:47', 'voyager.posts.index', NULL),
(14, 2, 'Home', '', '_self', NULL, '#000000', NULL, 15, '2018-06-25 10:19:53', '2018-06-25 10:19:53', 'home', NULL),
(15, 2, 'Shop', '', '_self', NULL, '#000000', NULL, 16, '2018-06-25 10:20:35', '2018-07-02 12:57:16', 'shop', 'null'),
(16, 2, 'About', '#', '_self', NULL, '#000000', NULL, 17, '2018-06-25 10:20:54', '2018-06-25 10:20:54', NULL, ''),
(17, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 4, '2018-06-25 10:27:11', '2018-06-26 14:07:47', 'voyager.category.index', NULL),
(18, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 3, '2018-06-25 10:28:42', '2018-06-26 14:07:47', 'voyager.products.index', NULL),
(19, 1, 'Category Products', '', '_self', 'voyager-tag', NULL, NULL, 5, '2018-06-25 10:29:43', '2018-06-26 14:07:47', 'voyager.category-product.index', NULL),
(20, 1, 'Coupons', '', '_self', 'voyager-dollar', NULL, NULL, 6, '2018-06-25 10:30:38', '2018-06-26 14:07:47', 'voyager.coupons.index', NULL),
(21, 1, 'Orders', '', '_self', 'voyager-basket', NULL, NULL, 2, '2018-06-26 14:06:19', '2018-06-26 14:07:46', 'voyager.orders.index', NULL),
(22, 2, 'Wishlist', '', '_self', NULL, '#000000', NULL, 18, '2018-06-30 05:56:56', '2018-06-30 05:57:43', 'wishlist.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(267, '2014_10_12_000000_create_users_table', 1),
(268, '2014_10_12_100000_create_password_resets_table', 1),
(269, '2016_01_01_000000_add_voyager_user_fields', 1),
(270, '2016_01_01_000000_create_data_types_table', 1),
(271, '2016_01_01_000000_create_pages_table', 1),
(272, '2016_01_01_000000_create_posts_table', 1),
(273, '2016_02_15_204651_create_categories_table', 1),
(274, '2016_05_19_173453_create_menu_table', 1),
(275, '2016_10_21_190000_create_roles_table', 1),
(276, '2016_10_21_190000_create_settings_table', 1),
(277, '2016_11_30_135954_create_permission_table', 1),
(278, '2016_11_30_141208_create_permission_role_table', 1),
(279, '2016_12_26_201236_data_types__add__server_side', 1),
(280, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(281, '2017_01_14_005015_create_translations_table', 1),
(282, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(283, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(284, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(285, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(286, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(287, '2017_08_05_000000_add_group_to_settings_table', 1),
(288, '2017_11_26_013050_add_user_role_relationship', 1),
(289, '2017_11_26_015000_create_user_roles_table', 1),
(290, '2018_03_11_000000_add_user_settings', 1),
(291, '2018_03_14_000000_add_details_to_data_types_table', 1),
(292, '2018_03_16_000000_make_settings_value_nullable', 1),
(293, '2018_06_10_160611_create_category_table', 1),
(294, '2018_06_11_183952_create_coupons_table', 1),
(295, '2018_06_20_194633_create_products3_table', 1),
(296, '2018_06_20_195829_create_category_product2_table', 1),
(297, '2018_06_26_134202_create_orders_table', 2),
(298, '2018_06_26_140609_create_order_product_table', 2);

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gatewey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_phone`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gatewey`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'fgfdghghdgdhf', '09876543333', 0, NULL, 4, 2, 6, 'stripe', 1, NULL, '2018-06-26 12:55:21', '2018-06-26 14:56:36'),
(2, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 4025, 401, 4426, 'stripe', 0, NULL, '2018-06-26 13:02:22', '2018-06-26 13:02:22'),
(3, NULL, 'user@mail.ru', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 300, NULL, 526, 241, 767, 'stripe', 0, NULL, '2018-06-26 13:25:25', '2018-06-26 13:25:25'),
(4, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 2044, 'def456', 2043, 404, 2447, 'stripe', 0, 'Your card has expired.', '2018-06-26 14:49:57', '2018-06-26 14:49:57'),
(5, NULL, 'admin@gmail.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 191, 'def456', 191, 219, 410, 'stripe', 0, NULL, '2018-06-27 08:54:17', '2018-06-27 08:54:17'),
(6, NULL, 'admin@gmail.com', 'Dmytro', 'Стара Вижівка', 'fgfdghghdgdhf', '09876543333', 191, 'def456', 191, 219, 410, 'stripe', 0, NULL, '2018-06-27 08:57:50', '2018-06-27 08:57:50'),
(7, NULL, 'admin@gmail.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 191, 'def456', 191, 219, 410, 'stripe', 0, NULL, '2018-06-27 09:04:41', '2018-06-27 09:04:41'),
(8, NULL, 'admin@gmail.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 191, 'def456', 191, 219, 410, 'stripe', 0, NULL, '2018-06-27 09:07:27', '2018-06-27 09:07:27'),
(9, NULL, 'dima@gmail.com', 'Dmytro', 'Стара Вижівка', 'fgfdghghdgdhf', '09876543333', 191, 'def456', 191, 219, 410, 'stripe', 0, NULL, '2018-06-27 09:12:59', '2018-06-27 09:12:59'),
(10, NULL, 'dima@gmail.com', 'Dmytro', 'Стара Вижівка', 'fgfdghghdgdhf', '09876543333', 191, 'def456', 191, 219, 410, 'stripe', 0, NULL, '2018-06-27 09:20:21', '2018-06-27 09:20:21'),
(11, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 382, 219, 601, 'stripe', 0, NULL, '2018-06-27 09:23:33', '2018-06-27 09:23:33'),
(12, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 238, 212, 450, 'stripe', 0, NULL, '2018-06-27 09:32:53', '2018-06-27 09:32:53'),
(13, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 238, 212, 450, 'stripe', 0, NULL, '2018-06-27 09:34:55', '2018-06-27 09:34:55'),
(14, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'fgfdghghdgdhf', '09876543333', 0, NULL, 238, 212, 450, 'stripe', 0, NULL, '2018-06-27 09:36:47', '2018-06-27 09:36:47'),
(15, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 238, 212, 450, 'stripe', 0, NULL, '2018-06-27 09:55:58', '2018-06-27 09:55:58'),
(16, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 444, 222, 666, 'stripe', 0, NULL, '2018-06-27 09:57:39', '2018-06-27 09:57:39'),
(17, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 444, 222, 666, 'stripe', 0, NULL, '2018-06-27 10:08:05', '2018-06-27 10:08:05'),
(18, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 444, 222, 666, 'stripe', 0, NULL, '2018-06-27 10:13:11', '2018-06-27 10:13:11'),
(19, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 444, 222, 666, 'stripe', 0, NULL, '2018-06-27 10:18:25', '2018-06-27 10:18:25'),
(20, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 444, 222, 666, 'stripe', 0, NULL, '2018-06-27 10:18:56', '2018-06-27 10:18:56'),
(21, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 444, 222, 666, 'stripe', 0, NULL, '2018-06-27 10:21:40', '2018-06-27 10:21:40'),
(22, 1, 'admin@admin.com', 'Dmytro', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 444, 222, 666, 'stripe', 0, NULL, '2018-06-27 10:22:20', '2018-06-27 10:22:20'),
(23, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 382, 219, 601, 'stripe', 0, NULL, '2018-06-27 10:26:37', '2018-06-27 10:26:37'),
(24, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 382, 219, 601, 'stripe', 0, NULL, '2018-06-27 10:33:15', '2018-06-27 10:33:15'),
(25, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 300, 'abc123', 4169, 423, 4592, 'stripe', 0, NULL, '2018-06-27 10:34:55', '2018-06-27 10:34:55'),
(26, 1, 'admin@admin.com', 'Dima', 'Стара Вижівка', 'Lutsk', '09876543333', 0, NULL, 238, 212, 450, 'stripe', 0, NULL, '2018-06-27 10:36:26', '2018-06-27 10:36:26');

-- --------------------------------------------------------

--
-- Структура таблиці `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2018-06-26 12:55:21', '2018-06-26 12:55:21'),
(2, 2, 1, 1, '2018-06-26 13:02:22', '2018-06-26 13:02:22'),
(3, 2, 102, 1, '2018-06-26 13:02:22', '2018-06-26 13:02:22'),
(4, 3, 1, 1, '2018-06-26 13:25:25', '2018-06-26 13:25:25'),
(5, 3, 101, 1, '2018-06-26 13:25:25', '2018-06-26 13:25:25'),
(6, 4, 102, 1, '2018-06-26 14:49:57', '2018-06-26 14:49:57'),
(7, 4, 101, 1, '2018-06-26 14:49:58', '2018-06-26 14:49:58'),
(8, 5, 1, 1, '2018-06-27 08:54:17', '2018-06-27 08:54:17'),
(9, 6, 1, 1, '2018-06-27 08:57:50', '2018-06-27 08:57:50'),
(10, 7, 1, 1, '2018-06-27 09:04:41', '2018-06-27 09:04:41'),
(11, 8, 1, 1, '2018-06-27 09:07:27', '2018-06-27 09:07:27'),
(12, 9, 1, 1, '2018-06-27 09:12:59', '2018-06-27 09:12:59'),
(13, 10, 1, 1, '2018-06-27 09:20:21', '2018-06-27 09:20:21'),
(14, 11, 1, 1, '2018-06-27 09:23:33', '2018-06-27 09:23:33'),
(15, 12, 3, 1, '2018-06-27 09:32:53', '2018-06-27 09:32:53'),
(16, 13, 3, 1, '2018-06-27 09:34:55', '2018-06-27 09:34:55'),
(17, 14, 3, 1, '2018-06-27 09:36:47', '2018-06-27 09:36:47'),
(18, 15, 3, 1, '2018-06-27 09:55:58', '2018-06-27 09:55:58'),
(19, 16, 101, 1, '2018-06-27 09:57:39', '2018-06-27 09:57:39'),
(20, 17, 101, 1, '2018-06-27 10:08:05', '2018-06-27 10:08:05'),
(21, 18, 101, 1, '2018-06-27 10:13:11', '2018-06-27 10:13:11'),
(22, 19, 101, 1, '2018-06-27 10:18:25', '2018-06-27 10:18:25'),
(23, 20, 101, 1, '2018-06-27 10:18:56', '2018-06-27 10:18:56'),
(24, 21, 101, 1, '2018-06-27 10:21:40', '2018-06-27 10:21:40'),
(25, 22, 101, 1, '2018-06-27 10:22:20', '2018-06-27 10:22:20'),
(26, 23, 1, 1, '2018-06-27 10:26:37', '2018-06-27 10:26:37'),
(27, 24, 1, 1, '2018-06-27 10:33:15', '2018-06-27 10:33:15'),
(28, 25, 1, 1, '2018-06-27 10:34:55', '2018-06-27 10:34:55'),
(29, 25, 102, 1, '2018-06-27 10:34:55', '2018-06-27 10:34:55'),
(30, 25, 101, 1, '2018-06-27 10:34:55', '2018-06-27 10:34:55'),
(31, 26, 3, 1, '2018-06-27 10:36:26', '2018-06-27 10:36:26');

-- --------------------------------------------------------

--
-- Структура таблиці `pages`
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
-- Дамп даних таблиці `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-06-25 10:16:17', '2018-06-25 10:16:17');

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(2, 'browse_bread', NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(3, 'browse_database', NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(4, 'browse_media', NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(5, 'browse_compass', NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(6, 'browse_menus', 'menus', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(7, 'read_menus', 'menus', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(8, 'edit_menus', 'menus', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(9, 'add_menus', 'menus', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(10, 'delete_menus', 'menus', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(11, 'browse_roles', 'roles', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(12, 'read_roles', 'roles', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(13, 'edit_roles', 'roles', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(14, 'add_roles', 'roles', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(15, 'delete_roles', 'roles', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(16, 'browse_users', 'users', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(17, 'read_users', 'users', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(18, 'edit_users', 'users', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(19, 'add_users', 'users', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(20, 'delete_users', 'users', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(21, 'browse_settings', 'settings', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(22, 'read_settings', 'settings', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(23, 'edit_settings', 'settings', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(24, 'add_settings', 'settings', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(25, 'delete_settings', 'settings', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(26, 'browse_categories', 'categories', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(27, 'read_categories', 'categories', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(28, 'edit_categories', 'categories', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(29, 'add_categories', 'categories', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(30, 'delete_categories', 'categories', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(31, 'browse_pages', 'pages', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(32, 'read_pages', 'pages', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(33, 'edit_pages', 'pages', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(34, 'add_pages', 'pages', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(35, 'delete_pages', 'pages', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(36, 'browse_posts', 'posts', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(37, 'read_posts', 'posts', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(38, 'edit_posts', 'posts', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(39, 'add_posts', 'posts', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(40, 'delete_posts', 'posts', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(41, 'browse_category', 'category', '2018-06-25 10:27:11', '2018-06-25 10:27:11'),
(42, 'read_category', 'category', '2018-06-25 10:27:11', '2018-06-25 10:27:11'),
(43, 'edit_category', 'category', '2018-06-25 10:27:11', '2018-06-25 10:27:11'),
(44, 'add_category', 'category', '2018-06-25 10:27:11', '2018-06-25 10:27:11'),
(45, 'delete_category', 'category', '2018-06-25 10:27:11', '2018-06-25 10:27:11'),
(46, 'browse_products', 'products', '2018-06-25 10:28:42', '2018-06-25 10:28:42'),
(47, 'read_products', 'products', '2018-06-25 10:28:42', '2018-06-25 10:28:42'),
(48, 'edit_products', 'products', '2018-06-25 10:28:42', '2018-06-25 10:28:42'),
(49, 'add_products', 'products', '2018-06-25 10:28:42', '2018-06-25 10:28:42'),
(50, 'delete_products', 'products', '2018-06-25 10:28:42', '2018-06-25 10:28:42'),
(51, 'browse_category_product', 'category_product', '2018-06-25 10:29:43', '2018-06-25 10:29:43'),
(52, 'read_category_product', 'category_product', '2018-06-25 10:29:43', '2018-06-25 10:29:43'),
(53, 'edit_category_product', 'category_product', '2018-06-25 10:29:43', '2018-06-25 10:29:43'),
(54, 'add_category_product', 'category_product', '2018-06-25 10:29:43', '2018-06-25 10:29:43'),
(55, 'delete_category_product', 'category_product', '2018-06-25 10:29:43', '2018-06-25 10:29:43'),
(56, 'browse_coupons', 'coupons', '2018-06-25 10:30:37', '2018-06-25 10:30:37'),
(57, 'read_coupons', 'coupons', '2018-06-25 10:30:37', '2018-06-25 10:30:37'),
(58, 'edit_coupons', 'coupons', '2018-06-25 10:30:37', '2018-06-25 10:30:37'),
(59, 'add_coupons', 'coupons', '2018-06-25 10:30:37', '2018-06-25 10:30:37'),
(60, 'delete_coupons', 'coupons', '2018-06-25 10:30:37', '2018-06-25 10:30:37'),
(61, 'browse_orders', 'orders', '2018-06-26 14:06:19', '2018-06-26 14:06:19'),
(62, 'read_orders', 'orders', '2018-06-26 14:06:19', '2018-06-26 14:06:19'),
(63, 'edit_orders', 'orders', '2018-06-26 14:06:19', '2018-06-26 14:06:19'),
(64, 'add_orders', 'orders', '2018-06-26 14:06:19', '2018-06-26 14:06:19'),
(65, 'delete_orders', 'orders', '2018-06-26 14:06:19', '2018-06-26 14:06:19');

-- --------------------------------------------------------

--
-- Структура таблиці `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `permission_role`
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
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `posts`
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
-- Дамп даних таблиці `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 10:16:17', '2018-06-25 10:16:17');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `status`, `image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Product - 1', 'product-1', '<li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li>', 382, '<p>Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.</p>', 1, 'products\\June2018\\uRxyqNu9nHvtKEctAnWX.jpg', '[\"products\\\\June2018\\\\IsEAWjruJrWi6E23KC1W.jpg\",\"products\\\\June2018\\\\7oPAzsLJgnbY7prOTBcb.jpg\",\"products\\\\June2018\\\\lhd0wlv8yZTxGXmt97jk.jpg\",\"products\\\\June2018\\\\AyLUzlQwcgkWrtJW35Tz.jpg\",\"products\\\\June2018\\\\hSVmMwBfhtXV8TaxtrTe.jpg\",\"products\\\\June2018\\\\zQ5MGC44M6Wq8yTxViU0.jpg\",\"products\\\\June2018\\\\FmfF1hvj8yn3rx18oZfy.jpg\",\"products\\\\June2018\\\\bXbVa2rjqCgWsCeMD7IC.jpg\",\"products\\\\June2018\\\\BWzhotWAuPzB1sjVoEt7.jpg\"]', '2018-06-25 10:16:16', '2018-06-25 10:33:03'),
(2, 'Product - 2', 'product-2', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 694, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(3, 'Product - 3', 'product-3', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 238, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(4, 'Product - 4', 'product-4', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 236, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(5, 'Product - 5', 'product-5', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1386, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(6, 'Product - 6', 'product-6', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 966, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(7, 'Product - 7', 'product-7', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 597, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(8, 'Product - 8', 'product-8', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 813, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(9, 'Product - 9', 'product-9', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 402, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(10, 'Product - 10', 'product-10', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1377, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(11, 'Product - 11', 'product-11', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 899, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(12, 'Product - 12', 'product-12', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 449, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(13, 'Product - 13', 'product-13', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 700, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(14, 'Product - 14', 'product-14', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 342, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(15, 'Product - 15', 'product-15', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 382, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(16, 'Product - 16', 'product-16', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1195, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(17, 'Product - 17', 'product-17', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 546, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(18, 'Product - 18', 'product-18', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 847, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(19, 'Product - 19', 'product-19', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 951, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(20, 'Product - 20', 'product-20', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 282, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(21, 'Product - 21', 'product-21', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 541, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(22, 'Product - 22', 'product-22', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1072, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(23, 'Product - 23', 'product-23', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1238, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(24, 'Product - 24', 'product-24', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1336, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(25, 'Product - 25', 'product-25', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 376, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(26, 'Product - 26', 'product-26', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 801, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(27, 'Product - 27', 'product-27', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 355, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(28, 'Product - 28', 'product-28', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1094, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(29, 'Product - 29', 'product-29', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1071, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(30, 'Product - 30', 'product-30', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 384, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(31, 'Product - 31', 'product-31', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1278, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(32, 'Product - 32', 'product-32', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1485, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(33, 'Product - 33', 'product-33', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 926, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(34, 'Product - 34', 'product-34', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 695, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(35, 'Product - 35', 'product-35', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 760, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(36, 'Product - 36', 'product-36', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 779, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(37, 'Product - 37', 'product-37', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 377, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(38, 'Product - 38', 'product-38', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 351, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(39, 'Product - 39', 'product-39', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 586, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(40, 'Product - 40', 'product-40', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1465, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(41, 'Product - 41', 'product-41', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 356, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(42, 'Product - 42', 'product-42', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1090, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(43, 'Product - 43', 'product-43', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 705, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(44, 'Product - 44', 'product-44', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1179, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(45, 'Product - 45', 'product-45', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 432, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(46, 'Product - 46', 'product-46', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 267, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(47, 'Product - 47', 'product-47', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 672, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(48, 'Product - 48', 'product-48', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1059, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(49, 'Product - 49', 'product-49', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1422, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(50, 'Product - 50', 'product-50', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1411, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(51, 'Product - 51', 'product-51', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1342, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(52, 'Product - 52', 'product-52', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1285, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(53, 'Product - 53', 'product-53', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1352, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(54, 'Product - 54', 'product-54', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 504, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(55, 'Product - 55', 'product-55', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 787, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(56, 'Product - 56', 'product-56', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1190, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(57, 'Product - 57', 'product-57', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1455, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(58, 'Product - 58', 'product-58', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 751, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(59, 'Product - 59', 'product-59', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 893, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(60, 'Product - 60', 'product-60', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 523, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(61, 'Product - 61', 'product-61', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1234, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(62, 'Product - 62', 'product-62', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 306, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(63, 'Product - 63', 'product-63', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 398, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(64, 'Product - 64', 'product-64', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 800, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(65, 'Product - 65', 'product-65', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 636, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(66, 'Product - 66', 'product-66', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 432, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(67, 'Product - 67', 'product-67', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1032, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(68, 'Product - 68', 'product-68', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1057, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(69, 'Product - 69', 'product-69', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 960, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(70, 'Product - 70', 'product-70', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 876, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(71, 'Product - 71', 'product-71', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1033, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(72, 'Product - 72', 'product-72', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 589, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16');
INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `status`, `image`, `images`, `created_at`, `updated_at`) VALUES
(73, 'Product - 73', 'product-73', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 347, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(74, 'Product - 74', 'product-74', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1276, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(75, 'Product - 75', 'product-75', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 432, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(76, 'Product - 76', 'product-76', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 333, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(77, 'Product - 77', 'product-77', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 904, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(78, 'Product - 78', 'product-78', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 988, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(79, 'Product - 79', 'product-79', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1061, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(80, 'Product - 80', 'product-80', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 928, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(81, 'Product - 81', 'product-81', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1193, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(82, 'Product - 82', 'product-82', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1324, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(83, 'Product - 83', 'product-83', '<li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li>', 1497, '<p>Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.</p>', 1, 'products\\June2018\\ypFO1ud1QibMiF4qshLo.jpg', '[\"products\\\\June2018\\\\srYSR2MyQZpnmPbgOUfb.jpg\",\"products\\\\June2018\\\\DfGktkKPWbNiajO8csGC.jpg\",\"products\\\\June2018\\\\70ytKpG5g6ATQEw4iG1y.jpg\",\"products\\\\June2018\\\\BlmB2KEiVKJaastg8syH.jpg\",\"products\\\\June2018\\\\KADTbhWe7lRTF1lTgRkU.jpg\",\"products\\\\June2018\\\\OZklSEWQbGTtmETAHO0u.jpg\",\"products\\\\June2018\\\\neJmW85QIy4mmxiLgHy8.jpg\"]', '2018-06-25 10:16:16', '2018-06-29 06:52:17'),
(84, 'Product - 84', 'product-84', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 926, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(85, 'Product - 85', 'product-85', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 778, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(86, 'Product - 86', 'product-86', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 562, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(87, 'Product - 87', 'product-87', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1242, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(88, 'Product - 88', 'product-88', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 693, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(89, 'Product - 89', 'product-89', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1438, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(90, 'Product - 90', 'product-90', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 829, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(91, 'Product - 91', 'product-91', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 313, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(92, 'Product - 92', 'product-92', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1292, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(93, 'Product - 93', 'product-93', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1087, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(94, 'Product - 94', 'product-94', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 430, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(95, 'Product - 95', 'product-95', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1214, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(96, 'Product - 96', 'product-96', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 569, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(97, 'Product - 97', 'product-97', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 597, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(98, 'Product - 98', 'product-98', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 238, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(99, 'Product - 99', 'product-99', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1271, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(100, 'Product - 100', 'product-100', ' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ', 1350, 'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.', 1, '', NULL, '2018-06-25 10:16:16', '2018-06-25 10:16:16'),
(101, 'Dima', 'dima', 'esdrgftgy', 444, '<p>dvxgf</p>', 1, 'products\\June2018\\rQc2ygwkPCxhgQC2QDUt.jpg', '[\"products\\\\June2018\\\\kEHlJS6wD3xxRsreahvC.jpg\",\"products\\\\June2018\\\\AixL1FoJjhJJZdZMQLy5.jpg\",\"products\\\\June2018\\\\fx8JXy2CBAXps3rkAey3.jpg\",\"products\\\\June2018\\\\RyDfxQm4uKw9PlKrXDtI.jpg\",\"products\\\\June2018\\\\EPrc7DB4tpgtfY4mlzIj.jpg\",\"products\\\\June2018\\\\p7cSxal66LNzWMDhpst8.jpg\",\"products\\\\June2018\\\\zvIftJKuXBCLccNglJ2m.jpg\",\"products\\\\June2018\\\\PrlvCUskGw0fjQy89urn.jpg\",\"products\\\\June2018\\\\xJh8QoKD4FhRrCBESxBt.jpg\"]', '2018-06-25 13:51:00', '2018-06-25 13:51:00'),
(102, 'Дмитро', 'rgtybkn', 'xchb', 3643, '<p>hhhthhcg</p>', 1, 'products\\June2018\\QtxH0yYjtPbpHZGf4PiM.jpg', '[\"products\\\\June2018\\\\ogjJwCuandNNb6QgSKhl.jpg\",\"products\\\\June2018\\\\eVmlfTdzn1BpdK3CL4YX.jpg\",\"products\\\\June2018\\\\bzPGSJcWaH3O8cq15Nj3.jpg\",\"products\\\\June2018\\\\ELIBgKmZMJ2PSPoQuSs1.jpg\",\"products\\\\June2018\\\\PEz6Z8MK6UxXENOUgDWY.jpg\",\"products\\\\June2018\\\\BAV5RRIFSGKsGcJMUg53.jpg\",\"products\\\\June2018\\\\f77WyeuaEnbjbrfAJQVl.jpg\",\"products\\\\June2018\\\\Vn3PHUOc2UPcsAVfbNB8.jpg\",\"products\\\\June2018\\\\vcQSZ15bnM2HinEOvb6P.jpg\"]', '2018-06-25 14:04:24', '2018-06-25 14:35:26'),
(103, 'Kropuva', 'kropuva', 'fddgdhgsbfsfbfbbfc', 55555, '<p>srgggggrggdrdrgdrg</p>', 1, 'products\\June2018\\m4ktCDHwYvjNmlbZCYW0.jpg', '[\"products\\\\June2018\\\\gBjt4oq9XNfJ5MCID400.jpg\",\"products\\\\June2018\\\\e10KTvDy4mp6QVzevOjO.jpg\",\"products\\\\June2018\\\\XL1LnY1UIXK7M68SKIJA.jpg\",\"products\\\\June2018\\\\OwsNZ3xfvOanRfWiu6JI.jpg\",\"products\\\\June2018\\\\YBRZa3N323MUIb2u4Y0H.jpg\",\"products\\\\June2018\\\\SyklZzlV7QCRLKBM6udh.jpg\",\"products\\\\June2018\\\\iJUvICWOKwXNQ3PSd71v.jpg\",\"products\\\\June2018\\\\k3phQLbp6mFVPlMHqdX6.jpg\",\"products\\\\June2018\\\\j841MDamcmGk10x6he7z.jpg\"]', '2018-06-28 14:21:44', '2018-06-28 14:21:44');

-- --------------------------------------------------------

--
-- Структура таблиці `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(2, 'user', 'Normal User', '2018-06-25 10:16:17', '2018-06-25 10:16:17');

-- --------------------------------------------------------

--
-- Структура таблиці `settings`
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
-- Дамп даних таблиці `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблиці `translations`
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
-- Дамп даних таблиці `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 6, 'pt', 'Post', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(2, 'data_types', 'display_name_singular', 5, 'pt', 'Página', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(7, 'data_types', 'display_name_plural', 6, 'pt', 'Posts', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(8, 'data_types', 'display_name_plural', 5, 'pt', 'Páginas', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(25, 'menu_items', 'title', 12, 'pt', 'Páginas', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-06-25 10:16:17', '2018-06-25 10:16:17'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-06-25 10:16:17', '2018-06-25 10:16:17');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$jAUV47JuAF4efMd2pL9G7.V8pVQzbirX0gWzJ5O8Xr.EHAKcUcpju', '5z8A9SizncOSWrBTIG2MLDZQ3gxSATJAgy7FRgnXRTQ60QZmYf16hk0v774D', NULL, '2018-06-25 10:16:17', '2018-06-25 10:16:17');

-- --------------------------------------------------------

--
-- Структура таблиці `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Індекси таблиці `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Індекси таблиці `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Індекси таблиці `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Індекси таблиці `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Індекси таблиці `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Індекси таблиці `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Індекси таблиці `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Індекси таблиці `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Індекси таблиці `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Індекси таблиці `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Індекси таблиці `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Індекси таблиці `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Індекси таблиці `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблиці `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT для таблиці `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблиці `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT для таблиці `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблиці `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблиці `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблиці `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT для таблиці `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT для таблиці `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблиці `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
