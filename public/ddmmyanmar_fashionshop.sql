-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2020 at 09:38 AM
-- Server version: 10.2.31-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddmmyanmar_fashionshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'red', '2020-04-28 23:16:07', '2020-04-28 23:16:07'),
(2, 'green', '2020-04-28 23:16:11', '2020-04-28 23:16:11'),
(4, 'blue', '2020-04-28 23:16:27', '2020-04-28 23:16:27'),
(5, 'Yellow', '2020-04-28 23:16:32', '2020-04-29 08:23:07'),
(7, 'Black', '2020-04-29 07:09:16', '2020-04-29 07:09:16'),
(8, 'White', '2020-04-29 07:11:19', '2020-04-29 07:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `township_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `township_id`, `created_at`, `updated_at`) VALUES
(2, 'Wai Wai', '09876543876', 'Insein', 1, '2020-04-18 04:47:44', '2020-04-18 04:47:44'),
(5, 'Myat Min Paing', '09421102175', 'Yangon', 1, '2020-04-20 15:15:09', '2020-04-20 15:15:09'),
(6, 'Myat Min Paing', '09421102175', 'Testing address from android', 1, '2020-04-21 07:01:43', '2020-04-21 07:01:43'),
(7, 'Satt', '09420143631', 'Test Address', 1, '2020-04-21 09:43:09', '2020-04-21 09:43:09'),
(8, 'Mya Kyi', '09421102175', 'Test Adddress', 1, '2020-04-21 09:45:30', '2020-04-21 09:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'Men\'s', '5ea9342fc8ed6a2.jpg', '2020-04-29 08:00:47', '2020-04-29 08:00:47'),
(6, 'Women\'s', '5ea93467acb8bSpring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', '2020-04-29 08:01:43', '2020-04-29 08:01:43'),
(7, 'Accessories', '5ea936d78917faccessories_icons_set_6813174.jpg', '2020-04-29 08:12:07', '2020-04-29 08:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_04_08_033100_create_townships_table', 1),
(8, '2020_04_08_034618_create_customers_table', 1),
(9, '2020_04_08_035618_create_users_table', 1),
(10, '2020_04_08_044424_create_maincategories_table', 1),
(11, '2020_04_11_110826_create_sub_categories_table', 1),
(12, '2020_04_12_100704_create_products_table', 1),
(13, '2020_04_12_100817_create_productphotos_table', 1),
(14, '2020_04_15_045250_create_orders_table', 1),
(15, '2020_04_15_064506_create_order_products_table', 1),
(16, '2020_04_12_100656_create_colors_table', 2),
(17, '2020_04_12_100700_create_sizes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02f0f09408aa8dd268714ab08091d225fccd2fb473693d7fdbd31ed89ef37b5e5b70c7f0d6664a53', 2, 1, 'Shop', '[]', 0, '2020-04-28 00:23:34', '2020-04-28 00:23:34', '2021-04-28 06:53:34'),
('0b21decc825a9a4f1180ab3a3ffc696217c84f5e1ecaa662e0263fc3dd0d5e75e32e73b675695531', 2, 1, 'Shop', '[]', 0, '2020-04-29 07:52:28', '2020-04-29 07:52:28', '2021-04-29 07:52:28'),
('0c33a534b6f88595f4759b48cfddea3af64299355b52056b61d7c32fbe8ed1c53f74f0c90c25714c', 2, 1, 'Shop', '[]', 0, '2020-04-19 05:03:42', '2020-04-19 05:03:42', '2021-04-19 05:03:42'),
('137d2d4bda89abc8d942f01828f6f36e7b3372e8c256f285c9713e20dd0a5339927f572d35e69196', 2, 1, 'Shop', '[]', 0, '2020-04-18 12:11:27', '2020-04-18 12:11:27', '2021-04-18 12:11:27'),
('147a59c7267bd89ba6a980e9a151e0514ef127f6192dd1dc0a48154bb7e892252416184e3391de4e', 2, 1, 'Shop', '[]', 0, '2020-04-18 12:35:07', '2020-04-18 12:35:07', '2021-04-18 12:35:07'),
('15606cdce5fb7bd00246609c41ef94ee5756d22128092087bbe6757fb4a37ae03e9d98fd5d5778e4', 2, 1, 'Shop', '[]', 0, '2020-04-22 06:07:57', '2020-04-22 06:07:57', '2021-04-22 06:07:57'),
('1f05aff3b2f910058d99bcd9d0a542146dc925e081c436861bae03da593686a9ecdb96f82c62f649', 2, 1, 'Shop', '[]', 0, '2020-04-20 14:30:26', '2020-04-20 14:30:26', '2021-04-20 14:30:26'),
('229bc8b674ad890bf6a555e92bbee065814a7b3efe9fd66f0e682ac3e51b87942d64c47ff0adae71', 11, 1, 'Shop', '[]', 0, '2020-04-23 01:50:56', '2020-04-23 01:50:56', '2021-04-23 01:50:56'),
('2ad76ea507ac5d896a2fc406462050aae5cf71201d7bbdc89885d41efe6d32dc5475f8946f231344', 2, 1, 'Shop', '[]', 0, '2020-04-27 09:49:42', '2020-04-27 09:49:42', '2021-04-27 16:19:42'),
('34b40fa8e7a1a231123f90d39b251d6dc98669529fee9def6c66cc39a312fe8bda796b5135130c52', 2, 1, 'Shop', '[]', 0, '2020-04-29 07:02:56', '2020-04-29 07:02:56', '2021-04-29 07:02:56'),
('39d25c1436af3fc6ec17893db45b88c7c2a0b1f597b523740fdbb9c6b134e6ea09c7825d0b77cb61', 2, 1, 'Shop', '[]', 0, '2020-04-29 06:57:41', '2020-04-29 06:57:41', '2021-04-29 06:57:41'),
('3d1590d9ff9150dd33cd7c07c6dd08eb92348e4f6805b44fbdc6fc0a351e82650117bb2cabcc4ff9', 8, 1, 'Shop', '[]', 0, '2020-04-24 04:08:56', '2020-04-24 04:08:56', '2021-04-24 04:08:56'),
('413c3604db6067a1bea925bc1044c183d02e70208ef008818214d65e1590fe1be12903d26185ea4f', 2, 1, 'Shop', '[]', 0, '2020-04-20 15:19:42', '2020-04-20 15:19:42', '2021-04-20 15:19:42'),
('41cfefb1e001df1f0158b48a818a932993e3b77d0aee7e31b5179f75087ca8ca8d39d7683d6f2987', 11, 1, 'Shop', '[]', 0, '2020-04-23 03:20:30', '2020-04-23 03:20:30', '2021-04-23 03:20:30'),
('4f47d70708766b15c2d3e7352d7c7088a5fbe95a69674e00618a8c45764a3043e400845f12e2e30c', 7, 1, 'Shop', '[]', 0, '2020-04-20 16:04:35', '2020-04-20 16:04:35', '2021-04-20 16:04:35'),
('510beeea8d12905b74b15c538271a75a7eaa3c2662b2f4b40ae37130f72b63a4d90187bbdc4f0687', 8, 1, 'Shop', '[]', 0, '2020-04-21 09:40:22', '2020-04-21 09:40:22', '2021-04-21 09:40:22'),
('56371f9d1189d621ce6785d944d3989191480ed71a22ef1ad5adda9f00b3efcdfc57cb353123a4b1', 7, 1, 'Shop', '[]', 0, '2020-04-20 18:02:24', '2020-04-20 18:02:24', '2021-04-20 18:02:24'),
('571994de05aefa4ebae2cd9b645591d71bd72051e9efcc592eeef30e9d7d61c5c468b4ec999d85ae', 2, 1, 'Shop', '[]', 0, '2020-04-18 04:38:04', '2020-04-18 04:38:04', '2021-04-18 11:08:04'),
('5dcdd84f9109c53cd92f9df515a89458960ef84824ccc0d157be09dbc7cdf7da8416d1700516cb27', 2, 1, 'Shop', '[]', 0, '2020-04-28 22:47:22', '2020-04-28 22:47:22', '2021-04-29 05:17:22'),
('60e4a4075c2f287d63bda49a4b4ea950b77d67ed4350f540ed63e890a6673eaf52b1505698949adb', 2, 1, 'Shop', '[]', 0, '2020-04-27 09:48:56', '2020-04-27 09:48:56', '2021-04-27 16:18:56'),
('663cdd7b86893321da8631e873c03ea767841f604c4f262e6b6e969e63dc003de66a8e21fec53ba1', 8, 1, 'Shop', '[]', 0, '2020-04-23 03:22:27', '2020-04-23 03:22:27', '2021-04-23 03:22:27'),
('664d864c8aa3646b0d119b1a39ac46d06939c7631c554d94258a5497172d0701be7c64e683de5990', 2, 1, 'Shop', '[]', 0, '2020-04-18 04:49:46', '2020-04-18 04:49:46', '2021-04-18 11:19:46'),
('6af266775a49063772de09ac7ade871eaf3a7450d48c6c000f2dfe6942281e289e8cbe798ba1b726', 7, 1, 'Shop', '[]', 0, '2020-04-20 15:15:24', '2020-04-20 15:15:24', '2021-04-20 15:15:24'),
('718260df1c3d846bf1b814f541081b26d3a3f1fbd6410f23c547fc37bda00d47654ab94f6139c1f1', 8, 1, 'Shop', '[]', 0, '2020-04-21 09:15:47', '2020-04-21 09:15:47', '2021-04-21 09:15:47'),
('7aee70c5afc71a941da802ed54c609480b0f18618ba3a75a095f40622552e889cf45b9787b16aa92', 8, 1, 'Shop', '[]', 0, '2020-04-22 21:12:42', '2020-04-22 21:12:42', '2021-04-22 21:12:42'),
('7c70ad469dd03621ce2997635cc9dd808fec84f888e3f4260a49b9f5f8a798aa29f320220698cd86', 8, 1, 'Shop', '[]', 0, '2020-04-21 09:49:35', '2020-04-21 09:49:35', '2021-04-21 09:49:35'),
('8153d84b783d2057aa7048cfc5746ff9a7814a50e14fd5fcf3e8d997aee6676a6dab5a7e13bdc8fd', 8, 1, 'Shop', '[]', 0, '2020-04-21 09:27:55', '2020-04-21 09:27:55', '2021-04-21 09:27:55'),
('96d24e904adb9142a87c682d63c988259007a8b1854bd49fcb02d0d9ecc068737765c32bdf48601a', 2, 1, 'Shop', '[]', 0, '2020-04-29 07:59:40', '2020-04-29 07:59:40', '2021-04-29 07:59:40'),
('9a1f7564514662ca63e5c6c30b66f35063caebc283772e680a2e7cffde043c4f64166f122ccfb790', 8, 1, 'Shop', '[]', 0, '2020-04-23 04:05:52', '2020-04-23 04:05:52', '2021-04-23 04:05:52'),
('a094f9dc9cb69bd0dec0d63b5295072496edc415d0484b46572f0f642039bc1e2f123e93a18a6a74', 8, 1, 'Shop', '[]', 0, '2020-04-23 03:17:46', '2020-04-23 03:17:46', '2021-04-23 03:17:46'),
('a3c4451bf9d6f8b8b367035261a8f6db0438d3461803b8246cf3f6e790154790ed389634c07f785e', 8, 1, 'Shop', '[]', 0, '2020-04-21 09:37:22', '2020-04-21 09:37:22', '2021-04-21 09:37:22'),
('b3b702f7b3f29d13ada9183773f48269299bb90caa2b50557c6727832cc3667e36ace30e8a0ed34d', 11, 1, 'Shop', '[]', 0, '2020-04-23 01:50:19', '2020-04-23 01:50:19', '2021-04-23 01:50:19'),
('bd8589500836f4771262a611dfc15180f020b7d2adc76932ee1b61df8c50481afcc54913c7e22d54', 8, 1, 'Shop', '[]', 0, '2020-04-23 01:52:32', '2020-04-23 01:52:32', '2021-04-23 01:52:32'),
('bfd898d04db3452dcfd4406e1cdebbf8f501e7c377b65dc9175d2bc043a1f8698d7e7810e7323756', 11, 1, 'Shop', '[]', 0, '2020-04-23 03:20:31', '2020-04-23 03:20:31', '2021-04-23 03:20:31'),
('c2329eb735580cf71b33b72d376f5737120ae53e49483401766872f97d9c7da616c0312a53f97997', 2, 1, 'Shop', '[]', 0, '2020-04-28 00:21:59', '2020-04-28 00:21:59', '2021-04-28 06:51:59'),
('c2a1f46f7bd31099c80d6f347092958e54e4a0ec1af11e84798ffc34c187605b0e4e8d630169f72a', 8, 1, 'Shop', '[]', 0, '2020-04-22 04:43:16', '2020-04-22 04:43:16', '2021-04-22 04:43:16'),
('d0e9706a0ce0c0e9d7e812512a96150e40d15af64d92babda322ab54880e9019aff986220b06a269', 8, 1, 'Shop', '[]', 0, '2020-04-21 09:30:23', '2020-04-21 09:30:23', '2021-04-21 09:30:23'),
('e19ff6b2b518cd4906891a681be91246741c62ba6e6ebd299761346fada599959ee72bbe6db6ebc0', 11, 1, 'Shop', '[]', 0, '2020-04-23 01:47:19', '2020-04-23 01:47:19', '2021-04-23 01:47:19'),
('f119b55276fff173fbf7687b8c7765a49cd65f4efa67ff0856db9ec569eb79dd416b961e31c164e4', 11, 1, 'Shop', '[]', 0, '2020-04-23 03:20:55', '2020-04-23 03:20:55', '2021-04-23 03:20:55'),
('fb12f1c1c75c0d609e4cd5e6c0e56f4c686d6e5afde1c9b183c7d5fd3bd475d99ac5e355711b0b3a', 8, 1, 'Shop', '[]', 0, '2020-04-21 07:52:27', '2020-04-21 07:52:27', '2021-04-21 07:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'NIiZ21i39DYiLX4QIZbEMzO2QegpOypvY732rOVx', 'http://localhost', 1, 0, 0, '2020-04-18 04:28:53', '2020-04-18 04:28:53'),
(2, NULL, 'Laravel Password Grant Client', 'KOTghiABr5MmVS6QWE0KCoP8EtcBSs2uq6h3faOW', 'http://localhost', 0, 1, 0, '2020-04-18 04:28:53', '2020-04-18 04:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-18 04:28:53', '2020-04-18 04:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `township_id` bigint(20) UNSIGNED NOT NULL,
  `receive_date` date NOT NULL,
  `receive_time` time NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `township_id`, `receive_date`, `receive_time`, `address`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, '2020-04-22', '11:11:01', 'Tamwe', 8, 'pending', '2020-04-22 05:21:12', '2020-04-22 05:21:12'),
(8, 1, '2020-03-23', '06:05:00', 'ygn', 8, 'pending', '2020-04-22 23:36:28', '2020-04-22 23:36:28'),
(10, 1, '2020-03-23', '06:28:00', 'suth', 8, 'pending', '2020-04-22 23:57:15', '2020-04-22 23:57:15'),
(11, 1, '2020-03-23', '06:32:00', 'add', 8, 'pending', '2020-04-23 00:00:33', '2020-04-23 00:00:33'),
(14, 1, '2020-03-23', '06:40:00', 'tharkayta', 8, 'pending', '2020-04-23 00:08:15', '2020-04-23 00:08:15'),
(18, 1, '2020-03-23', '06:46:00', 'add2', 8, 'pending', '2020-04-23 00:14:07', '2020-04-23 00:14:07'),
(19, 1, '2020-03-23', '07:10:00', 'add3', 8, 'pending', '2020-04-23 00:37:33', '2020-04-23 00:37:33'),
(20, 1, '2020-03-23', '07:11:00', 'add3', 8, 'pending', '2020-04-23 00:40:47', '2020-04-23 00:40:47'),
(21, 1, '2020-03-23', '07:30:00', 'add5', 8, 'pending', '2020-04-23 00:58:35', '2020-04-23 00:58:35'),
(22, 1, '2020-03-23', '07:32:00', 'add6', 8, 'pending', '2020-04-23 00:59:15', '2020-04-23 00:59:15'),
(23, 1, '2020-03-23', '07:38:00', 'mdy', 8, 'accept', '2020-04-23 01:06:14', '2020-04-27 11:03:24'),
(24, 1, '2020-03-23', '08:23:00', 'address99', 8, 'accept', '2020-04-23 01:50:27', '2020-04-27 11:03:20'),
(25, 1, '2020-03-23', '08:34:00', 'address98', 8, 'pending', '2020-04-23 02:01:44', '2020-04-23 02:01:44'),
(26, 1, '2020-03-23', '05:35:00', 'addrrss97', 8, 'pending', '2020-04-23 02:02:59', '2020-04-23 02:02:59'),
(27, 1, '2020-03-23', '09:05:00', 'address9', 8, 'accept', '2020-04-23 02:33:00', '2020-04-27 11:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(11) NOT NULL DEFAULT 1,
  `size_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_photos`
--

CREATE TABLE `product_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'S (small)', '2020-04-29 07:12:52', '2020-04-29 07:12:52'),
(9, 'M (medium)', '2020-04-29 07:13:06', '2020-04-29 07:13:06'),
(10, 'L (large)', '2020-04-29 07:13:17', '2020-04-29 07:13:17'),
(11, 'XL', '2020-04-29 07:13:28', '2020-04-29 07:13:28'),
(12, 'XXL', '2020-04-29 07:13:38', '2020-04-29 07:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_category_id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `main_category_id`, `photo`, `created_at`, `updated_at`) VALUES
(8, 'Tees', 5, '5ea937156061ab6b5fb06cc1ab0b997b4b457a76c2503.jpg', '2020-04-29 08:13:09', '2020-04-29 08:13:09'),
(9, 'Jackets', 5, '5ea9382c5e94fMANTLCONX-Newest-Solid-Autumn-Mens-Jackets-Male-Casual-Zipper-Summer-Jacket-Men-Spring-Casual-Outwear-Men.jpg.webp', '2020-04-29 08:17:48', '2020-04-29 08:17:48'),
(11, 'Hoodies+ Sweatshirts', 5, '5ea9393ea2debindex.jpg', '2020-04-29 08:22:22', '2020-04-29 08:22:22'),
(12, 'Sweater', 5, '5ea939d6179fcindex.jpg', '2020-04-29 08:24:54', '2020-04-29 08:24:54'),
(13, 'Pants', 5, '5ea93a5eda1e72.jpg', '2020-04-29 08:27:10', '2020-04-29 08:27:10'),
(14, 'Jean Pants', 5, '5ea93aa0e14e83.jpg', '2020-04-29 08:28:16', '2020-04-29 08:28:16'),
(16, 'Sweat Pants & Joggers', 5, '5ea93b9cdf140images.jpg', '2020-04-29 08:32:28', '2020-04-29 08:32:28'),
(17, 'Dresses', 6, '5ea93c03bd9784.jpg', '2020-04-29 08:34:11', '2020-04-29 08:34:11'),
(18, 'Jackets', 6, '5ea93c4265d105.jpg', '2020-04-29 08:35:14', '2020-04-29 08:35:14'),
(19, 'Tees', 6, '5ea93c87db9886.jpg', '2020-04-29 08:36:23', '2020-04-29 08:36:23'),
(20, 'Denim', 6, '5ea93cf8522f07.jpg', '2020-04-29 08:38:16', '2020-04-29 08:38:16'),
(21, 'Short pants', 5, '5ea93db8698458.jpg', '2020-04-29 08:41:28', '2020-04-29 08:41:28'),
(22, 'Short pants', 6, '5ea93de9a38859.jpg', '2020-04-29 08:42:17', '2020-04-29 08:42:17'),
(23, 'Jeans Pants', 6, '5ea93e2ba70c610.jpg', '2020-04-29 08:43:23', '2020-04-29 08:43:23'),
(24, 'Skirts', 6, '5ea93e684d83a11.jpg', '2020-04-29 08:44:24', '2020-04-29 08:44:24'),
(25, 'Hoodies+ Sweatshirts', 6, '5ea93eb0c900012.jpg', '2020-04-29 08:45:36', '2020-04-29 08:45:36'),
(26, 'Sweat Pants', 6, '5ea93f63c1c9e13.jpg', '2020-04-29 08:48:35', '2020-04-29 08:48:35'),
(27, 'Pants', 6, '5ea93fb41d49e14.jpg', '2020-04-29 08:49:56', '2020-04-29 08:49:56'),
(29, 'Tops', 6, '5ea9413183d6e15.jpg', '2020-04-29 08:56:17', '2020-04-29 08:56:17'),
(30, 'Tops', 5, '5ea9417c3dbf816.jpg', '2020-04-29 08:57:32', '2020-04-29 08:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Insein', '2020-04-18 04:38:45', '2020-04-29 09:10:05'),
(4, 'BoTaHtaung', '2020-04-18 04:39:35', '2020-04-29 09:09:38'),
(10, 'Lanmadaw', '2020-04-18 04:41:16', '2020-04-29 09:08:33'),
(12, 'BaHan', '2020-04-18 04:41:30', '2020-04-29 09:08:09'),
(17, 'YanKhin', '2020-04-18 04:42:19', '2020-04-29 09:05:04'),
(18, 'Thar Kay Ta', '2020-04-18 04:42:25', '2020-04-29 09:04:54'),
(19, 'Latha', '2020-04-18 04:42:29', '2020-04-29 09:04:45'),
(20, 'Mayangone', '2020-04-18 04:42:31', '2020-04-29 09:04:31'),
(21, 'North Dagon', '2020-04-18 04:42:35', '2020-04-29 09:04:22'),
(22, 'South Dagon', '2020-04-18 04:42:41', '2020-04-29 09:04:11'),
(23, 'Hlaing', '2020-04-18 04:42:45', '2020-04-29 09:04:01'),
(24, 'Kyimyinding', '2020-04-18 04:42:51', '2020-04-29 09:03:51'),
(25, 'Ahlone', '2020-04-18 04:42:56', '2020-04-29 09:03:42'),
(27, 'HtanTaPin', '2020-04-18 04:43:10', '2020-04-29 09:03:23'),
(29, 'Samchaung', '2020-04-29 09:05:16', '2020-04-29 09:05:16'),
(30, 'North Ookalapa', '2020-04-29 09:07:02', '2020-04-29 09:07:02'),
(31, 'South Ookalapa', '2020-04-29 09:07:23', '2020-04-29 09:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `user_type`, `customer_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin@shop.com', 'admin', NULL, NULL, '$2y$10$IB16rvnC70xQTRIoCZiDg.RvMsp0AgklQYWBFGL1silPlFN9g6RMS', NULL, NULL, NULL),
(4, 'wai@gmail.com', 'customer', 2, NULL, '$2y$10$nRlbDK.V2iI12yBk0ULA4.wODFBBEA1zDttkmuspDEnjq7UJ.yuIi', NULL, '2020-04-18 04:47:45', '2020-04-18 04:47:45'),
(7, 'myat@gmail.com', 'customer', 5, NULL, '$2y$10$yziLFHIoE2OopeZvnILIN.V30gDbfimu4mxI/rcQ1jHcPZF7RkE32', NULL, '2020-04-20 15:15:09', '2020-04-20 15:15:09'),
(8, 'myatmin@gmail.com', 'customer', 6, NULL, '$2y$10$eiatXGoZIVIJTXb9Yh250O/i20JGzA2r/BMNqzyhr1Muo7Pb9pyOK', NULL, '2020-04-21 07:01:43', '2020-04-21 07:01:43'),
(9, 'satt@gmail.com', 'customer', 7, NULL, '$2y$10$1cMmKBX8mYg6uxGllO7AreStLXDvzlMHtISDJHeq0Zg7hXbB1ZGH.', NULL, '2020-04-21 09:43:09', '2020-04-21 09:43:09'),
(10, 'mya@gmail.com', 'customer', 8, NULL, '$2y$10$1QzEkSU.4/RWIQpDU.bMJO2UQ4cjUQr4YrW.W1PGNaiCfFq5Ibm/.', NULL, '2020-04-21 09:45:31', '2020-04-21 09:45:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_township_id_foreign` (`township_id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_township_id_foreign` (`township_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_product_id_foreign` (`product_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_main_category_id_foreign` (`main_category_id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_township_id_foreign` FOREIGN KEY (`township_id`) REFERENCES `townships` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_township_id_foreign` FOREIGN KEY (`township_id`) REFERENCES `townships` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD CONSTRAINT `product_photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_main_category_id_foreign` FOREIGN KEY (`main_category_id`) REFERENCES `main_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
