-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 01:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `availableflights`
--

CREATE TABLE `availableflights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_date` date NOT NULL,
  `from_dest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_dest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricing` int(11) NOT NULL,
  `departure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` time NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availableflights`
--

INSERT INTO `availableflights` (`id`, `flight_company`, `flight_date`, `from_dest`, `to_dest`, `flight_type`, `trip_type`, `pricing`, `departure`, `duration`, `from_time`, `to_time`, `created_at`, `updated_at`) VALUES
(1, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/AI.png', '2022-01-01', 'rajkot', 'ahmedabad', 'firstclass', 'oneway', 20000, 'RJAMD123', '01:00:00', '04:20:00', '05:20:00', NULL, NULL),
(2, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/AI.png', '2022-01-19', 'ahmedabad', 'rajkot', 'economy', 'oneway', 21000, 'AMDRJ123', '01:00:00', '05:20:00', '06:20:00', NULL, NULL),
(3, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/6E.png', '2022-01-29', 'rajkot', 'mumbai', 'business', 'oneway', 30000, 'RJMB123', '02:30:00', '12:00:00', '02:30:00', NULL, NULL),
(4, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/6E.png', '2022-02-25', 'mumbai', 'rajkot', 'premiumeconomy', 'oneway', 29000, 'MBRJ123', '02:30:00', '09:00:00', '11:30:00', NULL, NULL),
(5, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/G8.png', '2022-01-01', 'rajkot', 'dubai', 'business', 'oneway', 120000, 'RAJDXB', '08:00:00', '01:00:00', '09:00:00', NULL, NULL),
(6, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/G8.png', '2022-02-15', 'dubai', 'rajkot', 'business', 'oneway', 130000, 'DXBRAJ', '08:30:00', '12:00:00', '08:30:00', NULL, NULL),
(7, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/G8.png', '2022-02-04', 'dubai', 'rajkot', 'firstclass', 'oneway', 140000, 'DXBRAJ', '08:00:00', '12:00:00', '08:00:00', NULL, NULL),
(8, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/AI.png', '2022-02-04', 'rajkot', 'surat', 'business', 'oneway', 25000, 'RJXSR123', '02:00:00', '12:00:00', '02:00:00', NULL, NULL),
(9, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/6E.png', '2022-02-01', 'rajkot', 'miami', 'premiumeconomy', 'oneway', 200000, 'RJXMI123', '12:00:00', '12:00:00', '12:00:00', NULL, NULL),
(10, 'https://imgak.mmtcdn.com/flights/assets/media/dt/common/icons/UK.png?v=7', '2022-02-01', 'rajkot', 'dubai', 'business', 'oneway', 160000, 'RAJDXB', '08:00:00', '12:00:00', '08:00:00', NULL, NULL),
(11, 'https://imgak.goibibo.com/flights-gi-assets/images/v2/app-img/6E.png', '2022-01-25', 'dubai', 'rajkot', 'business', 'oneway', 200000, 'DXBRAJ', '07:30:00', '12:00:00', '07:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flight_name`, `created_at`, `updated_at`) VALUES
(1, 'rajkot', NULL, NULL),
(2, 'ahmedabad', NULL, NULL),
(3, 'dubai', NULL, NULL),
(4, 'mumbai', NULL, NULL),
(5, 'surat', NULL, NULL),
(6, 'miami', NULL, NULL);

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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2022_01_25_100215_create_flights_table', 1),
(24, '2022_01_25_100408_create_availableflights_table', 1);

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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availableflights`
--
ALTER TABLE `availableflights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `availableflights`
--
ALTER TABLE `availableflights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
