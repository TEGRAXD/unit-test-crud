-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2023 at 02:45 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paw_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Fakultas Teknik', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `program_studi_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `jenis_kelamin`, `alamat`, `fakultas_id`, `program_studi_id`, `created_at`, `updated_at`) VALUES
(1, 'Edi Situmorang', '8731671735', 'L', 'Gresik', 1, 6, '2023-06-03 20:35:14', '2023-06-07 00:28:56'),
(3, 'mila', '1462000973', 'P', 'Sidoarjo', 1, 5, '2023-07-03 20:36:26', '2023-06-03 20:36:26'),
(4, 'kurniawan', '14234564', 'L', 'Sidoarjo', 1, 3, '2023-08-03 20:36:58', '2023-06-03 20:36:58'),
(5, 'irfan', '14323435', 'L', 'Surabaya', 1, 6, '2023-09-03 20:37:28', '2023-06-03 20:37:28'),
(6, 'tegar', '1462100043', 'L', 'Sidoarjo', 1, 5, '2023-06-06 22:59:51', '2023-06-06 22:59:51'),
(7, 'Ika Pratiwi M.TI.', '1783772018', 'L', 'Sidoarjo', 1, 1, '2023-06-06 23:47:36', '2023-06-06 23:47:36'),
(8, 'Raden Firgantoro', '1183431431', 'P', 'Sidoarjo', 1, 5, '2023-06-06 23:48:01', '2023-06-06 23:48:01'),
(9, 'Zelda Usamah', '3697631944', 'L', 'Bandung', 1, 5, '2023-06-06 23:52:26', '2023-06-06 23:52:26'),
(10, 'Raisa Kezia Haryanti', '5447826344', 'P', 'Bandung', 1, 5, '2023-06-06 23:52:53', '2023-06-06 23:52:53'),
(11, 'Salsabila Halimah', '1879804859', 'P', 'Sidoarjo', 1, 5, '2023-06-06 23:53:52', '2023-06-06 23:53:52'),
(12, 'Novi Fujiati', '3774982714', 'P', 'Gresik', 1, 5, '2023-06-06 23:54:15', '2023-06-06 23:54:15'),
(13, 'Tira Nurdiyanti', '9400969611', 'L', 'Surabaya', 1, 5, '2023-06-06 23:54:57', '2023-06-06 23:54:57'),
(14, 'Jail Permadi', '5492536169', 'P', 'Surabaya', 1, 5, '2023-06-06 23:55:12', '2023-06-06 23:55:12'),
(15, 'Novi Haryanti', '6790675337', 'L', 'Bandung', 1, 5, '2023-06-06 23:55:30', '2023-06-06 23:55:30'),
(16, 'Halima Yolanda', '9511894834', 'L', 'Sidoarjo', 1, 5, '2023-06-06 23:55:48', '2023-06-06 23:55:48'),
(17, 'Drajat Adriansyah', '5309125265', 'P', 'Bandung', 1, 5, '2023-06-06 23:55:56', '2023-06-06 23:55:56'),
(18, 'Tari Farida', '9350390832', 'L', 'Sidoarjo', 1, 5, '2023-06-07 00:00:08', '2023-06-07 00:00:08'),
(19, 'Ismail Mahmud Waskita S.T.', '2347385000', 'L', 'Bandung', 1, 5, '2023-06-07 00:00:30', '2023-06-07 00:00:30'),
(20, 'Mulya Ramadan', '8571858895', 'P', 'Bandung', 1, 5, '2023-06-07 00:00:42', '2023-06-07 00:00:42'),
(30, 'Halima Devi Pudjiastuti', '4537162034', 'L', 'Surabaya', 1, 5, '2023-06-07 00:24:01', '2023-06-07 00:24:01'),
(32, 'Ajeng Zulaika', '6514058836', 'P', 'Gresik', 1, 5, '2023-06-07 00:24:14', '2023-06-07 00:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_05_15_083521_create_fakultas', 1),
(13, '2023_05_15_083601_create_program_studi', 1),
(14, '2023_05_15_083630_create_mahasiswa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fakultas_model_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`id`, `nama`, `fakultas_model_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Industri', 1, NULL, NULL),
(2, 'Teknik Sipil', 1, NULL, NULL),
(3, 'Teknik Mesin', 1, NULL, NULL),
(4, 'Teknik Arsitektur', 1, NULL, NULL),
(5, 'Teknik Informatika', 1, NULL, NULL),
(6, 'Teknik Elektro', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dimas', 'dimas@gmail.com', 'user', NULL, '$2y$10$EFuNujZRIV7WdyjPsW8v4OfoI1ZHb89ZE344CKFcJMns3mlyRqFMq', NULL, NULL, NULL),
(2, 'wahyu', 'wahyu@gmail.com', 'admin', NULL, '$2y$10$KdHU5pVjJHKSGjES4jw1m.rvhkLJRuOD.znEk25Hp6TObiMomavWC', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_fakultas_id_foreign` (`fakultas_id`),
  ADD KEY `mahasiswa_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_studi_fakultas_model_id_foreign` (`fakultas_model_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mahasiswa_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `program_studi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `program_studi_fakultas_model_id_foreign` FOREIGN KEY (`fakultas_model_id`) REFERENCES `fakultas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
