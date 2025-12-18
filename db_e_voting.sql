-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2025 at 02:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_e_voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `vision` text DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `vote_count` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `description`, `photo`, `vision`, `mission`, `vote_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Irma dan Iqbal', 'Kandidat dengan pengalaman lebih dari 10 tahun di bidang kepemimpinan', 'uploads/1765957966_883231121bc12c908cd0.jpg', 'Mewujudkan OSIM yang aktif, kreatif, dan berintegritas sebagai wadah pengembangan potensi siswa.', '1. Meningkatkan partisipasi siswa dalam setiap kegiatan OSIM.\r\n2. Mengembangkan program kerja yang kreatif, inovatif, dan bermanfaat.\r\n3. Menumbuhkan sikap disiplin, tanggung jawab, dan kerja sama antar siswa.', 2, 'active', '2025-12-15 06:55:43', '2025-12-18 13:30:32'),
(2, 'Azizah dan Rian', 'Kandidat muda dengan ide-ide inovatif untuk kemajuan bersama', 'uploads/1765893809_8a47d6c60faeb62898b8.jpg', 'Menjadikan OSIM sebagai organisasi yang aspiratif, transparan, dan berprestasi.', '1. Menjadi jembatan aspirasi siswa kepada pihak sekolah.\r\n2. Melaksanakan kegiatan OSIM secara terbuka dan bertanggung jawab.\r\n3. Mendorong prestasi akademik dan non-akademik siswa melalui program OSIM.', 1, 'active', '2025-12-15 06:55:43', '2025-12-18 07:48:08'),
(3, 'Avram dan Grace', 'Kandidat terpilih dengan track record peningkatan ekonomi', 'uploads/1765893826_da93641386d7c0fa555f.jpg', 'Menciptakan lingkungan sekolah yang nyaman, harmonis, dan berkarakter melalui OSIM.', '1. Menyelenggarakan kegiatan yang mempererat kebersamaan antar siswa.\r\n2. Menanamkan nilai sopan santun, kepemimpinan, dan kepedulian sosial.\r\n3. Mendukung terciptanya sekolah yang bersih, aman, dan ramah siswa.', 4, 'active', '2025-12-15 06:55:43', '2025-12-18 08:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-12-15-000001', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1765781673, 1),
(2, '2025-12-15-000002', 'App\\Database\\Migrations\\CreateCandidatesTable', 'default', 'App', 1765781673, 1),
(3, '2025-12-15-000003', 'App\\Database\\Migrations\\CreateVotesTable', 'default', 'App', 1765781673, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `role` enum('admin','voter') NOT NULL DEFAULT 'voter',
  `has_voted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `nik`, `role`, `has_voted`, `created_at`, `updated_at`) VALUES
(9, 'bujang', 'bujang@gmail.com', '$2y$10$9/W0auRtk5BmbTyOhuOmDu1fIWog.h0/0u5U1Y5JBSvACoCo.LoNy', 'bujang hasonangan', '1312131415167890', 'voter', 1, '2025-12-15 07:40:35', '2025-12-15 14:47:16'),
(10, 'admin', 'admin@example.com', '$2y$10$8Vz.ZA.l3QldZ29F2S7No.FuTSO9kLNIT1JJIVjrT0rNtLqlE7sSy', 'Administrator', '0000000000000000', 'admin', 1, '2025-12-16 11:52:07', '2025-12-17 13:09:21'),
(13, 'irma', 'irma@gmail.com', '$2y$10$44cUqN7P4PRayd5rfcVHqeUOE2Vi1eFc7KxhQwJZvL/XOrgXXX4VG', 'irmabest', '3333333333333333', 'voter', 1, '2025-12-16 13:47:54', '2025-12-16 13:48:17'),
(14, 'alumi', 'alumi@gmail.com', '$2y$10$py58nl3glWd0tCnUJjIrXeF84s5.ZqDSNNX7.0t/VRV0WWAbdVMri', 'alumicomel', '4444444444444444', 'voter', 1, '2025-12-16 13:59:06', '2025-12-16 14:02:24'),
(16, 'grace', 'grace@gmail.com', '$2y$10$3Ccl2klOfXLVD7xKPGbzF.DKAmp830DMburdthJf.gZAlWjOHGG2u', 'graceee', '1212121212121212', 'voter', 1, '2025-12-18 07:30:40', '2025-12-18 07:31:19'),
(17, 'uti', 'utiii@gmail.com', '$2y$10$j.4xV8sOI4E/seFzsz9e6OdgjlfSCfYSeT/OfibHNuU6I3pOHG1US', 'utiiiii', '1313131313131313', 'voter', 0, '2025-12-18 07:35:21', '2025-12-18 07:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `users_backup`
--

CREATE TABLE `users_backup` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `role` enum('admin','voter') NOT NULL DEFAULT 'voter',
  `has_voted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_backup`
--

INSERT INTO `users_backup` (`id`, `username`, `email`, `password`, `full_name`, `nik`, `role`, `has_voted`, `created_at`, `updated_at`) VALUES
(10, 'admin', 'admin@example.com', '$2y$10$8Vz.ZA.l3QldZ29F2S7No.FuTSO9kLNIT1JJIVjrT0rNtLqlE7sSy', 'Administrator', '0000000000000000', 'admin', 0, '2025-12-16 11:52:07', '2025-12-16 11:52:07'),
(9, 'bujang', 'bujang@gmail.com', '$2y$10$9/W0auRtk5BmbTyOhuOmDu1fIWog.h0/0u5U1Y5JBSvACoCo.LoNy', 'bujang hasonangan', '1312131415167890', 'voter', 1, '2025-12-15 07:40:35', '2025-12-15 14:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `candidate_id`, `created_at`) VALUES
(1, 9, 2, NULL),
(2, 10, 3, NULL),
(3, 13, 3, NULL),
(4, 14, 3, NULL),
(6, 10, 1, NULL),
(7, 16, 3, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users_backup`
--
ALTER TABLE `users_backup`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `votes_user_id_foreign` (`user_id`),
  ADD KEY `votes_candidate_id_foreign` (`candidate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_backup`
--
ALTER TABLE `users_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
