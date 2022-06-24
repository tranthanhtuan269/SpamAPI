-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2022 lúc 12:57 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `spamcallblocker`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'jobname 0', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(2, 'jobname 1', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(3, 'jobname 2', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(4, 'jobname 3', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(5, 'jobname 4', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(6, 'jobname 5', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(7, 'jobname 6', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(8, 'jobname 7', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(9, 'jobname 8', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(10, 'jobname 9', 5, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(11, 'jobname 10', 5, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(12, 'jobname 11', 9, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(13, 'jobname 12', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(14, 'jobname 13', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(15, 'jobname 14', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(16, 'jobname 15', 8, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(17, 'jobname 16', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(18, 'jobname 17', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(19, 'jobname 18', 5, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(20, 'jobname 19', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(21, 'jobname 20', 5, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(22, 'jobname 21', 5, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(23, 'jobname 22', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(24, 'jobname 23', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(25, 'jobname 24', 9, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(26, 'jobname 25', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(27, 'jobname 26', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(28, 'jobname 27', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(29, 'jobname 28', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(30, 'jobname 29', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(31, 'jobname 30', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(32, 'jobname 31', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(33, 'jobname 32', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(34, 'jobname 33', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(35, 'jobname 34', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(36, 'jobname 35', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(37, 'jobname 36', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(38, 'jobname 37', 9, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(39, 'jobname 38', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(40, 'jobname 39', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(41, 'jobname 40', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(42, 'jobname 41', 8, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(43, 'jobname 42', 5, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(44, 'jobname 43', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(45, 'jobname 44', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(46, 'jobname 45', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(47, 'jobname 46', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(48, 'jobname 47', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(49, 'jobname 48', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(50, 'jobname 49', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(51, 'jobname 50', 5, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(52, 'jobname 51', 9, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(53, 'jobname 52', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(54, 'jobname 53', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(55, 'jobname 54', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(56, 'jobname 55', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(57, 'jobname 56', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(58, 'jobname 57', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(59, 'jobname 58', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(60, 'jobname 59', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(61, 'jobname 60', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(62, 'jobname 61', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(63, 'jobname 62', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(64, 'jobname 63', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(65, 'jobname 64', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(66, 'jobname 65', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(67, 'jobname 66', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(68, 'jobname 67', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(69, 'jobname 68', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(70, 'jobname 69', 8, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(71, 'jobname 70', 8, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(72, 'jobname 71', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(73, 'jobname 72', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(74, 'jobname 73', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(75, 'jobname 74', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(76, 'jobname 75', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(77, 'jobname 76', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(78, 'jobname 77', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(79, 'jobname 78', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(80, 'jobname 79', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(81, 'jobname 80', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(82, 'jobname 81', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(83, 'jobname 82', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(84, 'jobname 83', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(85, 'jobname 84', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(86, 'jobname 85', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(87, 'jobname 86', 8, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(88, 'jobname 87', 0, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(89, 'jobname 88', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(90, 'jobname 89', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(91, 'jobname 90', 8, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(92, 'jobname 91', 1, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(93, 'jobname 92', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(94, 'jobname 93', 3, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(95, 'jobname 94', 8, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(96, 'jobname 95', 4, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(97, 'jobname 96', 6, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(98, 'jobname 97', 10, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(99, 'jobname 98', 2, '2022-06-24 01:48:37', '2022-06-24 01:48:37'),
(100, 'jobname 99', 7, '2022-06-24 01:48:37', '2022-06-24 01:48:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(103, '2014_10_12_000000_create_users_table', 1),
(104, '2014_10_12_100000_create_password_resets_table', 1),
(105, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(106, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(107, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(108, '2016_06_01_000004_create_oauth_clients_table', 1),
(109, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(110, '2019_08_19_000000_create_failed_jobs_table', 1),
(111, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(112, '2022_06_22_100908_tags', 1),
(113, '2022_06_22_100928_reports', 1),
(114, '2022_06_22_100938_spam', 1),
(115, '2022_06_22_104305_job', 1),
(116, '2022_06_23_035909_country', 1),
(117, '2022_06_23_043251_city', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1f8b99b24a989c826c326d6380484dd9fb66666fafa649db9ca9e293dd404474b96b91823d96a8d5', 1, 2, NULL, '[]', 0, '2022-06-24 01:49:02', '2022-06-24 01:49:02', '2023-06-24 08:49:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'GlRCiK7F99izzf1c1PQ3vwgjcgsmwJ9bo7i4M7mV', NULL, 'http://localhost', 1, 0, 0, '2022-06-24 01:48:22', '2022-06-24 01:48:22'),
(2, NULL, 'Laravel Password Grant Client', 'YOa5Co9FFnqaBKz4QqJDTusQbLlYmJmCmi6DnCGr', 'users', 'http://localhost', 0, 1, 0, '2022-06-24 01:48:22', '2022-06-24 01:48:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-24 01:48:22', '2022-06-24 01:48:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('fd9fe9650edb82c902327bfedf697b49a811ac3dcb7d6bf05504e3b34c004aa9e7e1f0f933230feb', '1f8b99b24a989c826c326d6380484dd9fb66666fafa649db9ca9e293dd404474b96b91823d96a8d5', 0, '2023-06-24 08:49:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `spam_id` int(11) NOT NULL,
  `reporter_id` int(11) NOT NULL,
  `reported_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spam_type` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `suggest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reports`
--

INSERT INTO `reports` (`id`, `spam_id`, `reporter_id`, `reported_id`, `comment`, `spam_type`, `user_type`, `suggest_name`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 87, 77, 83, 'abc', 1, 5, NULL, 33, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(2, 58, 57, 9, 'abc', 2, 5, NULL, 41, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(3, 36, 29, 92, 'abc', 1, 1, NULL, 90, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(4, 66, 46, 49, 'abc', 1, 4, NULL, 85, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(5, 90, 9, 63, 'abc', 2, 4, NULL, 19, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(6, 23, 39, 10, 'abc', 2, 3, NULL, 68, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(7, 71, 81, 86, 'abc', 1, 5, NULL, 10, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(8, 94, 1, 78, 'abc', 2, 4, NULL, 29, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(9, 16, 82, 57, 'abc', 1, 3, NULL, 89, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(10, 75, 54, 8, 'abc', 2, 3, NULL, 7, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(11, 83, 83, 73, 'abc', 1, 4, NULL, 91, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(12, 32, 50, 98, 'abc', 2, 3, NULL, 26, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(13, 59, 74, 55, 'abc', 1, 2, NULL, 26, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(14, 48, 41, 57, 'abc', 1, 5, NULL, 1, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(15, 11, 42, 13, 'abc', 2, 4, NULL, 19, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(16, 99, 65, 73, 'abc', 1, 3, NULL, 94, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(17, 60, 27, 50, 'abc', 2, 4, NULL, 40, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(18, 61, 87, 54, 'abc', 1, 1, NULL, 16, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(19, 96, 87, 27, 'abc', 2, 2, NULL, 13, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(20, 64, 80, 42, 'abc', 1, 5, NULL, 2, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(21, 85, 7, 67, 'abc', 2, 4, NULL, 86, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(22, 32, 15, 79, 'abc', 2, 4, NULL, 18, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(23, 99, 1, 46, 'abc', 1, 3, NULL, 85, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(24, 58, 85, 59, 'abc', 1, 1, NULL, 85, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(25, 59, 65, 78, 'abc', 1, 2, NULL, 72, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(26, 52, 73, 60, 'abc', 1, 2, NULL, 54, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(27, 29, 36, 5, 'abc', 2, 3, NULL, 75, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(28, 65, 17, 36, 'abc', 2, 4, NULL, 24, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(29, 14, 66, 43, 'abc', 2, 1, NULL, 72, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(30, 60, 34, 53, 'abc', 1, 4, NULL, 30, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(31, 38, 90, 70, 'abc', 2, 3, NULL, 47, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(32, 76, 72, 70, 'abc', 2, 5, NULL, 64, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(33, 42, 41, 7, 'abc', 1, 1, NULL, 35, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(34, 29, 13, 73, 'abc', 1, 5, NULL, 46, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(35, 96, 39, 8, 'abc', 1, 4, NULL, 12, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(36, 56, 58, 61, 'abc', 1, 3, NULL, 23, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(37, 26, 11, 42, 'abc', 2, 3, NULL, 71, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(38, 45, 78, 93, 'abc', 1, 2, NULL, 87, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(39, 55, 41, 3, 'abc', 1, 5, NULL, 92, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(40, 48, 32, 77, 'abc', 2, 4, NULL, 56, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(41, 23, 8, 66, 'abc', 1, 1, NULL, 45, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(42, 86, 29, 28, 'abc', 1, 5, NULL, 98, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(43, 100, 71, 34, 'abc', 2, 3, NULL, 75, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(44, 76, 93, 49, 'abc', 1, 2, NULL, 54, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(45, 58, 4, 36, 'abc', 2, 3, NULL, 66, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(46, 82, 70, 70, 'abc', 2, 2, NULL, 2, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(47, 80, 69, 51, 'abc', 1, 3, NULL, 14, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(48, 30, 25, 12, 'abc', 2, 5, NULL, 2, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(49, 34, 98, 85, 'abc', 2, 2, NULL, 42, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(50, 28, 96, 50, 'abc', 1, 4, NULL, 48, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(51, 32, 79, 19, 'abc', 1, 3, NULL, 22, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(52, 7, 89, 17, 'abc', 1, 3, NULL, 93, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(53, 9, 28, 33, 'abc', 2, 5, NULL, 99, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(54, 56, 74, 8, 'abc', 1, 5, NULL, 93, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(55, 60, 32, 33, 'abc', 1, 1, NULL, 26, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(56, 40, 78, 56, 'abc', 1, 5, NULL, 94, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(57, 87, 19, 44, 'abc', 1, 2, NULL, 11, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(58, 37, 54, 85, 'abc', 2, 1, NULL, 11, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(59, 46, 21, 100, 'abc', 1, 2, NULL, 91, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(60, 83, 7, 49, 'abc', 1, 1, NULL, 7, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(61, 60, 53, 90, 'abc', 2, 2, NULL, 93, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(62, 78, 24, 55, 'abc', 1, 4, NULL, 86, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(63, 17, 4, 32, 'abc', 2, 4, NULL, 35, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(64, 41, 23, 62, 'abc', 2, 4, NULL, 47, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(65, 56, 48, 52, 'abc', 2, 4, NULL, 61, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(66, 80, 99, 66, 'abc', 2, 2, NULL, 62, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(67, 48, 2, 18, 'abc', 1, 1, NULL, 74, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(68, 59, 95, 1, 'abc', 1, 5, NULL, 82, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(69, 52, 54, 68, 'abc', 2, 1, NULL, 72, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(70, 72, 62, 75, 'abc', 1, 4, NULL, 96, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(71, 26, 97, 99, 'abc', 1, 1, NULL, 21, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(72, 80, 53, 58, 'abc', 1, 5, NULL, 87, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(73, 34, 11, 29, 'abc', 1, 1, NULL, 33, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(74, 26, 84, 67, 'abc', 1, 3, NULL, 63, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(75, 41, 69, 89, 'abc', 2, 4, NULL, 26, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(76, 62, 99, 58, 'abc', 2, 3, NULL, 36, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(77, 54, 59, 64, 'abc', 2, 1, NULL, 12, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(78, 56, 59, 59, 'abc', 1, 2, NULL, 48, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(79, 95, 38, 72, 'abc', 1, 3, NULL, 70, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(80, 46, 86, 50, 'abc', 2, 2, NULL, 15, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(81, 88, 55, 12, 'abc', 1, 2, NULL, 72, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(82, 54, 18, 12, 'abc', 2, 3, NULL, 24, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(83, 11, 10, 5, 'abc', 1, 1, NULL, 81, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(84, 77, 77, 48, 'abc', 1, 1, NULL, 13, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(85, 10, 16, 74, 'abc', 1, 4, NULL, 76, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(86, 41, 22, 10, 'abc', 1, 3, NULL, 39, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(87, 95, 46, 45, 'abc', 2, 3, NULL, 29, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(88, 76, 5, 56, 'abc', 1, 4, NULL, 51, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(89, 87, 53, 11, 'abc', 2, 1, NULL, 74, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(90, 3, 59, 45, 'abc', 1, 3, NULL, 9, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(91, 12, 85, 2, 'abc', 2, 1, NULL, 10, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(92, 17, 61, 72, 'abc', 1, 2, NULL, 23, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(93, 91, 22, 42, 'abc', 1, 2, NULL, 76, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(94, 59, 62, 31, 'abc', 1, 4, NULL, 61, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(95, 97, 1, 93, 'abc', 2, 5, NULL, 35, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(96, 24, 73, 56, 'abc', 1, 4, NULL, 87, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(97, 95, 15, 72, 'abc', 2, 5, NULL, 88, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(98, 18, 52, 7, 'abc', 2, 4, NULL, 52, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(99, 4, 87, 90, 'abc', 1, 4, NULL, 67, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(100, 4, 65, 72, 'abc', 2, 3, NULL, 66, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(101, 101, 1, 101, NULL, 1, 1, NULL, NULL, '2022-06-24 01:54:40', '2022-06-24 01:54:40'),
(102, 102, 1, 102, NULL, NULL, 1, NULL, NULL, '2022-06-24 02:24:43', '2022-06-24 02:24:43'),
(103, 102, 1, 102, NULL, NULL, 1, NULL, NULL, '2022-06-24 02:31:16', '2022-06-24 02:31:16'),
(104, 102, 1, 102, NULL, NULL, 1, NULL, 1, '2022-06-24 02:48:50', '2022-06-24 02:48:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spams`
--

CREATE TABLE `spams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reported_id` int(11) NOT NULL,
  `reported_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `spam_type` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `spams`
--

INSERT INTO `spams` (`id`, `reported_id`, `reported_name`, `user_type`, `spam_type`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 87, 'usertest0', 2, 5, 79, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(2, 65, 'usertest1', 2, 3, 57, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(3, 19, 'usertest2', 1, 4, 74, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(4, 64, 'usertest3', 2, 5, 57, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(5, 64, 'usertest4', 1, 2, 34, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(6, 93, 'usertest5', 2, 1, 87, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(7, 47, 'usertest6', 1, 3, 12, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(8, 29, 'usertest7', 1, 1, 45, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(9, 51, 'usertest8', 2, 4, 8, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(10, 18, 'usertest9', 2, 3, 60, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(11, 97, 'usertest10', 1, 1, 42, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(12, 35, 'usertest11', 2, 1, 76, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(13, 22, 'usertest12', 2, 3, 98, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(14, 96, 'usertest13', 1, 4, 22, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(15, 82, 'usertest14', 2, 3, 31, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(16, 1, 'usertest15', 1, 3, 34, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(17, 27, 'usertest16', 2, 5, 87, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(18, 65, 'usertest17', 1, 5, 84, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(19, 28, 'usertest18', 1, 5, 54, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(20, 77, 'usertest19', 2, 1, 71, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(21, 32, 'usertest20', 2, 3, 23, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(22, 98, 'usertest21', 1, 3, 41, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(23, 91, 'usertest22', 1, 1, 28, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(24, 63, 'usertest23', 2, 3, 38, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(25, 63, 'usertest24', 2, 3, 45, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(26, 33, 'usertest25', 1, 3, 34, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(27, 52, 'usertest26', 1, 4, 5, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(28, 30, 'usertest27', 2, 5, 66, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(29, 87, 'usertest28', 1, 1, 16, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(30, 62, 'usertest29', 1, 2, 14, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(31, 49, 'usertest30', 2, 3, 8, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(32, 12, 'usertest31', 1, 1, 20, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(33, 69, 'usertest32', 1, 1, 37, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(34, 75, 'usertest33', 1, 4, 37, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(35, 62, 'usertest34', 1, 1, 89, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(36, 55, 'usertest35', 1, 5, 98, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(37, 55, 'usertest36', 1, 4, 31, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(38, 54, 'usertest37', 2, 4, 45, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(39, 53, 'usertest38', 2, 5, 83, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(40, 65, 'usertest39', 2, 5, 51, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(41, 60, 'usertest40', 1, 2, 5, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(42, 50, 'usertest41', 2, 5, 69, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(43, 30, 'usertest42', 1, 5, 46, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(44, 40, 'usertest43', 2, 4, 10, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(45, 25, 'usertest44', 1, 2, 29, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(46, 80, 'usertest45', 2, 5, 73, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(47, 6, 'usertest46', 1, 5, 34, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(48, 99, 'usertest47', 2, 3, 20, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(49, 54, 'usertest48', 2, 1, 37, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(50, 89, 'usertest49', 1, 2, 29, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(51, 85, 'usertest50', 1, 3, 96, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(52, 81, 'usertest51', 1, 2, 2, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(53, 1, 'usertest52', 2, 4, 30, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(54, 25, 'usertest53', 1, 3, 97, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(55, 87, 'usertest54', 2, 4, 41, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(56, 51, 'usertest55', 2, 1, 70, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(57, 20, 'usertest56', 1, 1, 12, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(58, 86, 'usertest57', 1, 4, 74, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(59, 52, 'usertest58', 1, 3, 61, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(60, 33, 'usertest59', 2, 3, 92, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(61, 73, 'usertest60', 2, 5, 82, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(62, 61, 'usertest61', 1, 1, 42, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(63, 39, 'usertest62', 2, 2, 77, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(64, 69, 'usertest63', 1, 3, 18, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(65, 62, 'usertest64', 2, 5, 63, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(66, 72, 'usertest65', 1, 3, 54, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(67, 20, 'usertest66', 2, 3, 88, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(68, 21, 'usertest67', 2, 4, 92, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(69, 65, 'usertest68', 2, 2, 16, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(70, 6, 'usertest69', 1, 2, 57, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(71, 51, 'usertest70', 2, 2, 100, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(72, 75, 'usertest71', 1, 2, 57, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(73, 8, 'usertest72', 2, 2, 95, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(74, 38, 'usertest73', 2, 3, 85, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(75, 51, 'usertest74', 1, 4, 12, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(76, 9, 'usertest75', 1, 4, 98, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(77, 29, 'usertest76', 1, 3, 5, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(78, 77, 'usertest77', 2, 2, 30, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(79, 22, 'usertest78', 1, 4, 82, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(80, 26, 'usertest79', 2, 4, 81, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(81, 31, 'usertest80', 1, 2, 95, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(82, 25, 'usertest81', 1, 1, 5, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(83, 31, 'usertest82', 2, 1, 57, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(84, 67, 'usertest83', 2, 3, 1, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(85, 8, 'usertest84', 1, 1, 72, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(86, 38, 'usertest85', 1, 2, 25, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(87, 70, 'usertest86', 1, 3, 97, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(88, 52, 'usertest87', 1, 5, 11, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(89, 19, 'usertest88', 2, 5, 79, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(90, 91, 'usertest89', 2, 1, 100, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(91, 15, 'usertest90', 2, 3, 92, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(92, 97, 'usertest91', 1, 3, 34, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(93, 46, 'usertest92', 2, 3, 3, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(94, 44, 'usertest93', 2, 2, 55, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(95, 65, 'usertest94', 1, 4, 39, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(96, 52, 'usertest95', 1, 3, 39, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(97, 62, 'usertest96', 2, 1, 93, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(98, 38, 'usertest97', 2, 1, 83, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(99, 58, 'usertest98', 1, 1, 51, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(100, 32, 'usertest99', 2, 5, 93, '2022-06-24 01:48:36', '2022-06-24 01:48:36'),
(101, 101, 'Tran Thanh Tuan', 1, 1, NULL, '2022-06-24 01:54:40', '2022-06-24 01:54:40'),
(102, 102, NULL, 1, NULL, NULL, '2022-06-24 02:24:43', '2022-06-24 02:24:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `second_phone_number`, `first_name`, `last_name`, `birthday`, `gender`, `street`, `city_id`, `company`, `about`, `website`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'usertest0', 'usertest0@gmail.com', NULL, '$2y$10$6Z/k5tNjJzKCKtsCycLE0OnULEJfjOE6LGZC/BNLMK52RksqGe0RW', '097361930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:29', '2022-06-24 01:48:29'),
(2, 'usertest1', 'usertest1@gmail.com', NULL, '$2y$10$eXmq6UBiel7VhkKEPYsr/OLhtiIeAAfsze5ga8XPB2ajIZdA4wndG', '097361931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(3, 'usertest2', 'usertest2@gmail.com', NULL, '$2y$10$wXqyDj0QoqIH8UZ78F3zZeU1perwgFO30HixNCYJ6cgNoB4ODaax.', '097361932', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(4, 'usertest3', 'usertest3@gmail.com', NULL, '$2y$10$cPkwKckiL.b240HhfZcWWeerEVnD1Cg13BkgrYx8XpqX6dbPdWU2m', '097361933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(5, 'usertest4', 'usertest4@gmail.com', NULL, '$2y$10$b.tA8RK2CyuiuLq64/LOf./FKD/Ra7xEycJW4rLbY1auKln3evKYq', '097361934', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(6, 'usertest5', 'usertest5@gmail.com', NULL, '$2y$10$0jnlQfw936vjJq8.K/9vFeY67pt2DwFh/QN3tqgHWPU8of08xyhM6', '097361935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(7, 'usertest6', 'usertest6@gmail.com', NULL, '$2y$10$BE6VTDzUHJB03Y1H9riUOuIC70P8PyF3X.ON2YFk.ye8haoZiv6Ky', '097361936', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(8, 'usertest7', 'usertest7@gmail.com', NULL, '$2y$10$aqQTUt9lGQH4uo0npY9c8.iVq4v0TKMxPe66YGlJnCHZIs03/.v3i', '097361937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(9, 'usertest8', 'usertest8@gmail.com', NULL, '$2y$10$v6MYZNxztZkTRUJuTLRAjeWCVJLCXv82AfM8BpgKOtt2o2BhkfmV6', '097361938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(10, 'usertest9', 'usertest9@gmail.com', NULL, '$2y$10$QU2UQK3VUsQMqb9Ixn8tFuMgyTZCQ6mEHh2qmA9jlgEi2lNrtbusu', '097361939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(11, 'usertest10', 'usertest10@gmail.com', NULL, '$2y$10$HPmT4XNlX2bdBc7ggQtsJ.LBOBjntv1pmN2Zoqm8bfXfqI4z9C4IK', '0973619310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(12, 'usertest11', 'usertest11@gmail.com', NULL, '$2y$10$54ctBXTTB.ZQ6SZ9pn2knutTnGn/lNSP9eCH4w1bxEciSzG3m1c.C', '0973619311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(13, 'usertest12', 'usertest12@gmail.com', NULL, '$2y$10$IAFVzG8BIJ3qoJIuryqu0umqTv4E/D0Q4ThjdFh1ocFwBDwWiRSIO', '0973619312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(14, 'usertest13', 'usertest13@gmail.com', NULL, '$2y$10$wWrMuDy77qeGRUqQFCLY2eNWDrapS0IrJ3nF4BlWbzV7HbvZO0YC6', '0973619313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(15, 'usertest14', 'usertest14@gmail.com', NULL, '$2y$10$NlnZE8hNWorfUjmatG74ueLu0xmQcriP8n7kn4MXmmlngJplXES4O', '0973619314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(16, 'usertest15', 'usertest15@gmail.com', NULL, '$2y$10$I85XaH1dvLx.kAniwCZ44ekQ44KrYLdX.eBpCpd7E.90lznMB88oi', '0973619315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(17, 'usertest16', 'usertest16@gmail.com', NULL, '$2y$10$LyssY4xSVTEi3crmjdwvt.SFxnchZCbaA/CjbqF0yj63Uvwv12WJ6', '0973619316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(18, 'usertest17', 'usertest17@gmail.com', NULL, '$2y$10$xi2H4Zvz6HdyzsR4QF/b6O//43D1IZUM1kxTtZKtzySHs1d1th60y', '0973619317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:30', '2022-06-24 01:48:30'),
(19, 'usertest18', 'usertest18@gmail.com', NULL, '$2y$10$nIqmS97tvCoU8HF1FDVFSeOuGJ0OemK1DDBK.17LnhE0zeBd5CXpq', '0973619318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(20, 'usertest19', 'usertest19@gmail.com', NULL, '$2y$10$72tamZllnOmIpw3bz5jsAugC4n3kcb3.sPIk19d4vpCpD.kMFGuaG', '0973619319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(21, 'usertest20', 'usertest20@gmail.com', NULL, '$2y$10$uQWk8nAKgbPpQ8A/IjRJaeqUINEeIlDvgx3udXi1pI556wBlPgVwm', '0973619320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(22, 'usertest21', 'usertest21@gmail.com', NULL, '$2y$10$iD/uo63oMvxsw8qcGQ4Yu.nngOkg20CrxXz5zyRuA.4LnjJ3Hs7gW', '0973619321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(23, 'usertest22', 'usertest22@gmail.com', NULL, '$2y$10$skZP1hPT/lGtNOybXQU/CumJXlxTUkt53m4Ibmjqi/2hjuZ4CEZly', '0973619322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(24, 'usertest23', 'usertest23@gmail.com', NULL, '$2y$10$d3Bel0vC4xp2EW78a/fdoOhWN.5GhVgvS4P/mJgbiRi5dKU8f.34y', '0973619323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(25, 'usertest24', 'usertest24@gmail.com', NULL, '$2y$10$3GA0G8qr.sluOoh8B1nmN.HZ70kHUoWUC4.i3fh63iz9WTFJTBcX.', '0973619324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(26, 'usertest25', 'usertest25@gmail.com', NULL, '$2y$10$sYGVZNwsMysXG3.dfqOBD.VGMUl69K9TgXgEY6zjTGQ.a4um396Qq', '0973619325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(27, 'usertest26', 'usertest26@gmail.com', NULL, '$2y$10$G0TWCiKEZu.nFkAFSXCE/.qdVbY8Bzr73VUc5z2Nd48xZaNFh81uC', '0973619326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(28, 'usertest27', 'usertest27@gmail.com', NULL, '$2y$10$Knm7eE.Ob6Drtyln3GoVsOn4mxfZylHNLcCh0P9hbXYa/H3EdUlMK', '0973619327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(29, 'usertest28', 'usertest28@gmail.com', NULL, '$2y$10$1YEPkKcPMM5riw1BRjGPjOEW/eGZzw2wnvKH701Vg.SAaOTF6rwBK', '0973619328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(30, 'usertest29', 'usertest29@gmail.com', NULL, '$2y$10$5iYtO81RlLDOpPFoYGeJWOd4lNjCBBh6uV6WpCXKIlbI7j9d8HDeq', '0973619329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(31, 'usertest30', 'usertest30@gmail.com', NULL, '$2y$10$CKDVlJMcUiJ0Xb.BGZad9uRsvoi8PmXIpk3tAFLSZDKZWt9gnOJq6', '0973619330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(32, 'usertest31', 'usertest31@gmail.com', NULL, '$2y$10$rv2OPRvvrG9jUCq/sD65COvERnE1tpC8JDM76jYYNHqWX/o4LVu0y', '0973619331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(33, 'usertest32', 'usertest32@gmail.com', NULL, '$2y$10$UJ.OPCo5KYqncXSDu/kTauj9mPUsG05tqsVdiYs983Jcc3X9IAJ.C', '0973619332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(34, 'usertest33', 'usertest33@gmail.com', NULL, '$2y$10$bsKEALZ.mA8fE5AhgKI04OFXiS6GKv3WPtA.D0rpVzF6W5cL8V196', '0973619333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:31', '2022-06-24 01:48:31'),
(35, 'usertest34', 'usertest34@gmail.com', NULL, '$2y$10$D8oq9P3COdnsEn5pq5GOvuTK55D6.RVWLy8wUpLFKenLZ9T5gqBqG', '0973619334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(36, 'usertest35', 'usertest35@gmail.com', NULL, '$2y$10$JGZ9GzWsBVefJ4c9AmdPyOZK9gaknNMkOVlpfd2aDABW/U3zrhq9O', '0973619335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(37, 'usertest36', 'usertest36@gmail.com', NULL, '$2y$10$Z7lj0jH5d2JIn7lug7AoAuP/V00e5eUe.Okt6YNB6e37A4tYpfDkm', '0973619336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(38, 'usertest37', 'usertest37@gmail.com', NULL, '$2y$10$KmT4VubvO2Hd.D5T0hfaPuRPSuGcWEO/z9b147H.EGQ.f4HsahqsK', '0973619337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(39, 'usertest38', 'usertest38@gmail.com', NULL, '$2y$10$iV/B2yW.t63MVD52mZIpNOnd1EFAtMn7TqK04.7ZIxzgdIPNXbeae', '0973619338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(40, 'usertest39', 'usertest39@gmail.com', NULL, '$2y$10$iwYvDM.SqDlEeocdlbB1fOFpthQBEpHFwaBc9u0BnmSpPhNURWdpK', '0973619339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(41, 'usertest40', 'usertest40@gmail.com', NULL, '$2y$10$.LnLDvqt/D3J1paY2JQ7DeFjWbxK0H/WwYngjsjOdkFxIYS.fP7Qi', '0973619340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(42, 'usertest41', 'usertest41@gmail.com', NULL, '$2y$10$Kvg83zgwcR4M3432fXOGCu5VXK8XrmYoSTiL154ON2edldTTLhBhS', '0973619341', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(43, 'usertest42', 'usertest42@gmail.com', NULL, '$2y$10$PVONMJQuRbeGzHtLunQPdOA3fYuxVvsHebIkNb1gMeCVit.XOTo.q', '0973619342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(44, 'usertest43', 'usertest43@gmail.com', NULL, '$2y$10$Ru5cmGbLIUuCjXd.hCjoyumuSlmL5HGD5h23PBRffpieaWbvoS3XK', '0973619343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(45, 'usertest44', 'usertest44@gmail.com', NULL, '$2y$10$KAhiQio3Uzj2pT2e5yoATe0SCPwYJ3k78/gUv5w7Au8XG1HVmEzx2', '0973619344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(46, 'usertest45', 'usertest45@gmail.com', NULL, '$2y$10$0OvhnSTwlrf5Z1uq9/kig.y9fB3z3hPu31xfV0SBMWvV04LcR1aUq', '0973619345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(47, 'usertest46', 'usertest46@gmail.com', NULL, '$2y$10$nd7JHGvrL.C6x5SDCfSJDeM.zPlncJ39AOhfNM8GaLDWK/lBAbPaK', '0973619346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(48, 'usertest47', 'usertest47@gmail.com', NULL, '$2y$10$Qua5fhV7YcBFD0fhDsLVY.el6nsmmvcJWoM4CLH7KqyycPePDvTCC', '0973619347', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(49, 'usertest48', 'usertest48@gmail.com', NULL, '$2y$10$1P/7oj8kI4tnOEjeN9h53Okh6Wk.wkfXBJlk0rtoLyysqOaLzbOYG', '0973619348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(50, 'usertest49', 'usertest49@gmail.com', NULL, '$2y$10$k8L.bnLOIRKQxQjK2Xt0NemFwOuBgANDbikOZcgbZFTt.JALCUNpO', '0973619349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(51, 'usertest50', 'usertest50@gmail.com', NULL, '$2y$10$s7GTb5HmSceZC6A4P1P9SOl057B2rwXo6mr2tW5K30RkdYghxGUMy', '0973619350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:32', '2022-06-24 01:48:32'),
(52, 'usertest51', 'usertest51@gmail.com', NULL, '$2y$10$EvGnEjWiVrkhemfwts7F1ua1VxF5bLwNYJM7JBihbuVimURml.2Sm', '0973619351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(53, 'usertest52', 'usertest52@gmail.com', NULL, '$2y$10$DRpMrxdlfEwX1rAyWCYZo.ue9K/ALDrB9qJOzmUsa96qahrUUpIUq', '0973619352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(54, 'usertest53', 'usertest53@gmail.com', NULL, '$2y$10$a3lAfM3WP4RTtGUBfyRe7e8wHZ/DrcX4T70UgQKR6NmzQDfgOeoQK', '0973619353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(55, 'usertest54', 'usertest54@gmail.com', NULL, '$2y$10$L0SMKqZiaTk1mj7SHnuUA.YDwDzYLfYjYb8xSKjUYkcNN4SNM5I4.', '0973619354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(56, 'usertest55', 'usertest55@gmail.com', NULL, '$2y$10$E/YJpOG2zXLUVRKwB.xddeoCF0a72BIZ8qSItIsArmoSQwsV4lrlW', '0973619355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(57, 'usertest56', 'usertest56@gmail.com', NULL, '$2y$10$TxTX93VKYWeK/FnvJPuTeuG/6.3pjbZkD19NzEdCa2vllWpkBrw8e', '0973619356', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(58, 'usertest57', 'usertest57@gmail.com', NULL, '$2y$10$ASphZrmC.6esPXTrySTItuXBRD0fJLu2DhzokRgLVshYRqhVyHxnW', '0973619357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(59, 'usertest58', 'usertest58@gmail.com', NULL, '$2y$10$3.BVgUVARU5UKBiGsi2cUOymfxBPSK6f2YEgCd3b6lIiX2W.qFKeC', '0973619358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(60, 'usertest59', 'usertest59@gmail.com', NULL, '$2y$10$EWdtzpJMqaMdUvhIg6/Ks.S9CFrg/5XBrkWUiFejNDNdokLdkb3Lu', '0973619359', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(61, 'usertest60', 'usertest60@gmail.com', NULL, '$2y$10$kliUL1OcQvY4p87Z/R0.v.HuAOMoRIKdzWPuGOueOYavJ3JZA6/7W', '0973619360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(62, 'usertest61', 'usertest61@gmail.com', NULL, '$2y$10$9CFtjTMtuL5UiY0PdYip..O06N1R7HumCWg/ANSpD21hYdpdkOLoe', '0973619361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(63, 'usertest62', 'usertest62@gmail.com', NULL, '$2y$10$zTm5wVHkY35BkSSy96AlX..vtwsL4PZ8rF5fwDUnybCumD7ASP2Zu', '0973619362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(64, 'usertest63', 'usertest63@gmail.com', NULL, '$2y$10$6cHsnTZ684xxISSvrOda8uIyZ09PN7VXgPeyGIA/SugsO6YSMkZBO', '0973619363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(65, 'usertest64', 'usertest64@gmail.com', NULL, '$2y$10$9uHhHpujD8yGypyZ65vOUOHyLlNu52XMndaI4vfPpsGXyeMnKhgKy', '0973619364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(66, 'usertest65', 'usertest65@gmail.com', NULL, '$2y$10$iwwRfr86goAdhlQiSYOr5OpTjnOijiVQm46y2r0TmcLvU740wsJXm', '0973619365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(67, 'usertest66', 'usertest66@gmail.com', NULL, '$2y$10$1MFT0RnAvqm72Oe1k9sYReojkwmrzmfnVvYqgWQVpqycz9aeYGJCC', '0973619366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:33', '2022-06-24 01:48:33'),
(68, 'usertest67', 'usertest67@gmail.com', NULL, '$2y$10$baFT1yktuqX6vHGVudcXU.kk4Zf2pDuGOzIP33rfy2sXUPZRcBRE6', '0973619367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(69, 'usertest68', 'usertest68@gmail.com', NULL, '$2y$10$wSUYbDgDLWH/NgiTN/VxeOsXwHoN/HnoeJ.n0zLEGLcZ5Ij6jtIrm', '0973619368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(70, 'usertest69', 'usertest69@gmail.com', NULL, '$2y$10$dom15pQJ5YZzAKzGFEloAesK0Du5hUx/EdfzKmpy.MU0N8AFMv5cC', '0973619369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(71, 'usertest70', 'usertest70@gmail.com', NULL, '$2y$10$WUL94HLatvhZKzIibP7Q2.el4QRhBPGz.Fy52cMfg67YMkpUf5B32', '0973619370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(72, 'usertest71', 'usertest71@gmail.com', NULL, '$2y$10$AeSxFXtvR80yt8eIFOhY0OX/XFIryVN3xzX3ggJeAWkYq8NCLqB3e', '0973619371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(73, 'usertest72', 'usertest72@gmail.com', NULL, '$2y$10$9zme0pPZqg8takjNMAb.v.Mrk32xggnHewSsMWn4wBwaYKU6.T47u', '0973619372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(74, 'usertest73', 'usertest73@gmail.com', NULL, '$2y$10$6X.Vu8pVeBSuUpg8LEHaVuvA6Uc3qZxlhAmlSHpBT30.9ImqZdRIG', '0973619373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(75, 'usertest74', 'usertest74@gmail.com', NULL, '$2y$10$S2PHNnUZvF3zIo5ANn8Axeh/mpcVj/1JGLwTIG0a/fOMgYi9wk9SS', '0973619374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(76, 'usertest75', 'usertest75@gmail.com', NULL, '$2y$10$6sLd5L5htSCTUin3eV.cQOgEOu94ogkH5qTrfliwL2WOBTONgJaXS', '0973619375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(77, 'usertest76', 'usertest76@gmail.com', NULL, '$2y$10$vxKPI.N75w0St/8fSZ7mJOm/H2jVoWKLEPoSJv81erEH/7zFxgADO', '0973619376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(78, 'usertest77', 'usertest77@gmail.com', NULL, '$2y$10$wTnXALCJ6qiD7TMrPKflR.AjleUfOYOs4LlwWEF/7dq4TAtdm25ey', '0973619377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(79, 'usertest78', 'usertest78@gmail.com', NULL, '$2y$10$09U4nIRsI6eG3hQWOfLVVOsl4Xv2IRWhKhlNYNPk/ZeyVYMkG76TC', '0973619378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(80, 'usertest79', 'usertest79@gmail.com', NULL, '$2y$10$eGY3VCF4KYPt5J2h2szeKulmgtgxHYeURqW1FMMvkuaLo.e5Quem2', '0973619379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(81, 'usertest80', 'usertest80@gmail.com', NULL, '$2y$10$w0IwmtAQSoa/CEd5jwmNL.4THrumtrUfcQdSR8n.N2DMsqILIbequ', '0973619380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(82, 'usertest81', 'usertest81@gmail.com', NULL, '$2y$10$S7Ytu/F0fAhHQUJaCnL2yO3vd2.ZugeZij6aOeUlCL4yj8RYAutdu', '0973619381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(83, 'usertest82', 'usertest82@gmail.com', NULL, '$2y$10$0.tSCYNkSdUP2aAtHR3CCeABm7Gsj8bA.ib9fNDutGQuZFheKbFAG', '0973619382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(84, 'usertest83', 'usertest83@gmail.com', NULL, '$2y$10$yn53GVS9SxYPz2QY0FpKCuZfZLNJ6LgLbkYU55seq7Jjmyn7YHQRy', '0973619383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:34', '2022-06-24 01:48:34'),
(85, 'usertest84', 'usertest84@gmail.com', NULL, '$2y$10$C8qltQJOeXqHy6aR/hpHQepA1NyyYaAj7Ellju5uCC3kHmyhBJCrG', '0973619384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(86, 'usertest85', 'usertest85@gmail.com', NULL, '$2y$10$jsLdeNPrK.x9KEvBxDGSeufW2/fdq5Dyj9cnLToAxOw2izBbwSvCS', '0973619385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(87, 'usertest86', 'usertest86@gmail.com', NULL, '$2y$10$Qpv/Z4hDEhwc9VV/c5cG1eDZwtGYzd7lmXC44jJehrtSGZTMok3hO', '0973619386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(88, 'usertest87', 'usertest87@gmail.com', NULL, '$2y$10$Ouxaf4UHPtNLnvOdtnHqFeNK8IiJcdRALRT8l..hjR9T6C1ndELt6', '0973619387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(89, 'usertest88', 'usertest88@gmail.com', NULL, '$2y$10$5GKa8CXG55EhnW1KWzkJJeIQIMa.Cth3KEO/sQiXTQDszvXwElVk2', '0973619388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(90, 'usertest89', 'usertest89@gmail.com', NULL, '$2y$10$/gF0Mar/t9EjFEuA1qGXGuPHxwj./v0WD9U9r1jJxZn8lvqf/JdqW', '0973619389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(91, 'usertest90', 'usertest90@gmail.com', NULL, '$2y$10$G1rmnGrlxJFxo/SyOC2Cn.Rg8e0G3w3CdFgOABa3VlxkpHoYu9cCi', '0973619390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(92, 'usertest91', 'usertest91@gmail.com', NULL, '$2y$10$xrrH56Xs8TUd1vYtnDntNO7Fqtk71CPK6gApY.y4OFuNoPzL1.Y8G', '0973619391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(93, 'usertest92', 'usertest92@gmail.com', NULL, '$2y$10$055eNrp0NB9iI..5ycSdAelHexaLFvhJKAK7bEVcwSWt8I4yL0rYK', '0973619392', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(94, 'usertest93', 'usertest93@gmail.com', NULL, '$2y$10$O6Pnf.1C8NQ6SFmQLzx4reCiMXeJz8hwZjCb19Pgm36slNu4oOubi', '0973619393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(95, 'usertest94', 'usertest94@gmail.com', NULL, '$2y$10$.uIx0hToroWU.BO4yfyfWOEgKVEZTn/1YVitjEJ5p.TqCXQFLBCTa', '0973619394', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(96, 'usertest95', 'usertest95@gmail.com', NULL, '$2y$10$qoHN9XC89rXgXL4RnX92LuIFGEHWmbv6OJfAOIhzzD2bbMoEUpYnO', '0973619395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(97, 'usertest96', 'usertest96@gmail.com', NULL, '$2y$10$mj52w4xOkgfiu1LEy7r7ouS1FVZY5TIEG5Vj92tekSxgXWTwaZwGy', '0973619396', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(98, 'usertest97', 'usertest97@gmail.com', NULL, '$2y$10$9LpDUPiZtqxlXSLBi/ShAe9PN0HsozZ4NqYvDjc3WKy9.B.ELH9YG', '0973619397', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(99, 'usertest98', 'usertest98@gmail.com', NULL, '$2y$10$0.aTAMrav4G0/23h3cJFbOZg6qeOSpzuKBVkZfi2RQAhnl7rr4ezi', '0973619398', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(100, 'usertest99', 'usertest99@gmail.com', NULL, '$2y$10$fMduyVPl.S7ZWWAuLsVaa.F9FYYimx2n5zN5VIRhnel/ws63p4ZdG', '0973619399', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:48:35', '2022-06-24 01:48:35'),
(101, '', '', NULL, '$2y$10$fz/38BPWHolUNv5UTj6nzu1ztbhPBhJsgfE0iM2jxwoJaQcSxA8iq', '097319398', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 01:50:14', '2022-06-24 01:50:14'),
(102, '', '', NULL, '$2y$10$AOZTyy47tyumQJW7oN7dgOH9/tog4NH3Rex2bw0VyfLr3L5/HlqRy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 02:24:43', '2022-06-24 02:24:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `spams`
--
ALTER TABLE `spams`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `spams`
--
ALTER TABLE `spams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
