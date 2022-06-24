-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2022 at 06:40 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengajuan`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_14_061639_create_tb_coas_table', 1),
(6, '2022_04_14_062427_create_tb_pengajuans_table', 1),
(7, '2022_04_15_140904_create_tb_pengajuan_items_table', 1),
(8, '2022_05_26_140629_add_ttd_column_to_pengajuan_table', 1),
(9, '2022_05_26_140746_add_status_column_to_coas_table', 1);

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
-- Table structure for table `tb_coas`
--

CREATE TABLE `tb_coas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noakun` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_akun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nominal_anggaran` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('proses','disetujui','ditolak') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_coas`
--

INSERT INTO `tb_coas` (`id`, `noakun`, `nama_akun`, `user_id`, `nominal_anggaran`, `created_at`, `updated_at`, `status`) VALUES
(2, '1', 'a', 1, '12', '2022-06-23 21:09:48', '2022-06-23 21:14:08', 'disetujui'),
(3, '13', 'AA', 2, '12', '2022-06-23 21:11:33', '2022-06-23 21:14:09', 'disetujui'),
(4, '13', 'AA', 2, '12', '2022-06-23 21:13:40', '2022-06-23 21:14:10', 'disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajuans`
--

CREATE TABLE `tb_pengajuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ttd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pengajuans`
--

INSERT INTO `tb_pengajuans` (`id`, `tanggal_pengajuan`, `prodi`, `user_id`, `status`, `created_at`, `updated_at`, `ttd`) VALUES
(2, '2022-06-24', 'Sistem Informasi', 2, 'proses', '2022-06-23 21:14:36', '2022-06-23 21:14:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajuan_items`
--

CREATE TABLE `tb_pengajuan_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `realisasi` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_pengajuan` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengajuan_id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pengajuan_items`
--

INSERT INTO `tb_pengajuan_items` (`id`, `nama_kegiatan`, `realisasi`, `jumlah_pengajuan`, `pengajuan_id`, `coa_id`, `created_at`, `updated_at`) VALUES
(1, 'AS', NULL, '23', 2, 2, '2022-06-23 21:14:36', '2022-06-23 21:14:36'),
(2, 'ad', NULL, '1', 2, 3, '2022-06-23 21:14:36', '2022-06-23 21:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` enum('ppa','wd2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `nama`, `email`, `email_verified_at`, `password`, `notelp`, `jabatan`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '12323123', 'Nia', 'roitonia.panjaitan@si.ukdw.ac.id', NULL, '$2y$10$nsj4cxWwOGu7/4Ew3nfcDeQWt5VdyGTAAmXsiFguzFm81B6EYgCMS', '123123', 'ppa', NULL, '2022-06-23 21:08:03', '2022-06-23 21:08:03'),
(2, '72190270', 'Lenta', 'lenta.kristina@si.ukdw.ac.id', NULL, '$2y$10$ChtNBei/.QZcRz2AbHylje/E5blS3ojyhDO2q3pqbKJB2Ijmkjh/S', '0895337393865', 'wd2', NULL, '2022-06-23 21:10:55', '2022-06-23 21:10:55');

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
-- Indexes for table `tb_coas`
--
ALTER TABLE `tb_coas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_coas_user_id_foreign` (`user_id`);

--
-- Indexes for table `tb_pengajuans`
--
ALTER TABLE `tb_pengajuans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pengajuans_user_id_foreign` (`user_id`);

--
-- Indexes for table `tb_pengajuan_items`
--
ALTER TABLE `tb_pengajuan_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pengajuan_items_pengajuan_id_foreign` (`pengajuan_id`),
  ADD KEY `tb_pengajuan_items_coa_id_foreign` (`coa_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_coas`
--
ALTER TABLE `tb_coas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_pengajuans`
--
ALTER TABLE `tb_pengajuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pengajuan_items`
--
ALTER TABLE `tb_pengajuan_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_coas`
--
ALTER TABLE `tb_coas`
  ADD CONSTRAINT `tb_coas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pengajuans`
--
ALTER TABLE `tb_pengajuans`
  ADD CONSTRAINT `tb_pengajuans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pengajuan_items`
--
ALTER TABLE `tb_pengajuan_items`
  ADD CONSTRAINT `tb_pengajuan_items_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `tb_coas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengajuan_items_pengajuan_id_foreign` FOREIGN KEY (`pengajuan_id`) REFERENCES `tb_pengajuans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
