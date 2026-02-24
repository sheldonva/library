-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2026 at 12:11 PM
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
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` bigint(11) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `date_published` date DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `book_image` varchar(255) DEFAULT NULL,
  `ebook_link` varchar(255) DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `date_stamped` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT 'Available',
  `is_archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `category_id`, `title`, `description`, `author`, `date_published`, `isbn`, `book_image`, `ebook_link`, `date_modified`, `date_stamped`, `status`, `is_archived`, `created_at`, `updated_at`) VALUES
(1, 1, 'The Great Gatsby', 'A classic novel', 'F. Scott Fitzgerald', '1925-04-10', '9780743273565', 'lms_files/book_6916280d42670.jpg', NULL, '2025-11-13 19:15:32', '2025-11-13 18:48:45', 'Available', 0, '2025-11-13 10:48:45', '2025-11-13 11:15:32'),
(2, 3, '69s', 'bastos ako', 'norman bastos', '2025-11-14', '123213123123', 'lms_files/book_69163a6a2cd4c.jpg', NULL, '2025-11-13 20:25:40', '2025-11-13 20:07:06', 'Available', 0, '2025-11-13 12:07:06', '2025-11-13 12:25:40'),
(3, 4, 'Test Book', 'Test', 'Norman', '2025-11-14', '1231321321', 'lms_files/book_691640302d4c1.jpg', 'https://www.audiopub.org/samples-collections-1', '2025-11-13 21:28:37', '2025-11-13 20:31:44', 'Available', 0, '2025-11-13 12:31:44', '2025-11-13 13:28:37'),
(5, 5, 'Test about test', 'test', 'testing', '2025-11-06', '1112121211', 'lms_files/book_695d2be32852e.png', NULL, '2026-01-06 15:37:10', '2026-01-06 15:36:03', 'Available', 0, '2026-01-06 07:36:03', '2026-01-06 07:37:10'),
(6, 5, 'tesss', 'aaaa', 'a', '2026-01-14', '11231231211', NULL, NULL, NULL, '2026-01-06 15:37:50', 'Available', 0, '2026-01-06 07:37:50', '2026-01-06 07:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text DEFAULT NULL,
  `date_stamped` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_edited` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `edited_by` varchar(255) DEFAULT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `date_stamped`, `date_edited`, `edited_by`, `is_archived`, `created_at`, `updated_at`) VALUES
(1, 'Science Fiction', 'Books that explore futuristic concepts and science-based stories.', '2025-11-13 18:33:38', NULL, NULL, 0, '2025-11-13 10:33:38', '2025-11-13 10:33:38'),
(2, 'test', 'this is the test', '2025-11-13 19:59:37', '2025-11-13 20:03:33', NULL, 1, '2025-11-13 11:59:37', '2025-11-13 12:03:33'),
(3, 'Romance', '18+ pure 69 moments', '2025-11-13 20:03:47', '2025-11-13 20:05:15', NULL, 0, '2025-11-13 12:03:47', '2025-11-13 12:05:15'),
(4, 'Testing', 'Test', '2025-11-13 20:29:49', NULL, NULL, 0, '2025-11-13 12:29:49', '2025-11-13 12:29:49'),
(5, 'tes1', 'tess', '2026-01-06 15:34:30', NULL, NULL, 0, '2026-01-06 07:34:30', '2026-01-06 07:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2024_09_04_045307_create_api_logs_table', 1),
(6, '2024_09_15_222531_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '590c5d5c23ddb0a129c86fa72143605c7da74ff836dc437a73fff4874d21281d', '[\"*\"]', NULL, '2025-11-13 10:17:57', '2025-11-13 10:17:57'),
(6, 'App\\Models\\User', 1, 'auth_token', '7607c8fa3844a7e285a3f7abed7b205b6bb3b36ab3783e94ceea94526430ad84', '[\"*\"]', NULL, '2025-11-13 13:20:41', '2025-11-13 13:20:41'),
(7, 'App\\Models\\User', 1, 'auth_token', 'fe881a5d87a386b35e1e451dc5f5c7f11967fbecb66b549c3a2cb22b97987e47', '[\"*\"]', NULL, '2025-11-13 13:24:30', '2025-11-13 13:24:30'),
(8, 'App\\Models\\User', 1, 'auth_token', '92558917807b4129f364e66b84f40d58d7597f0ae93aa1508fdee1a9794d67a6', '[\"*\"]', NULL, '2026-01-06 07:21:53', '2026-01-06 07:21:53'),
(9, 'App\\Models\\User', 1, 'auth_token', '3c770e91cb6350571b331956255cf62246543c6e4c7f688b5971afb9b1126485', '[\"*\"]', NULL, '2026-01-06 07:34:12', '2026-01-06 07:34:12'),
(10, 'App\\Models\\User', 1, 'auth_token', '16ed3ca0cc281316f720d3f914d3de50cff812bebce71e176974b676c86ffe6c', '[\"*\"]', NULL, '2026-01-06 07:47:22', '2026-01-06 07:47:22'),
(13, 'App\\Models\\User', 1, 'auth_token', '0583d0d4e8c9ad377632369e8897dbdebb66082b344833e424c3a4e78b7584cc', '[\"*\"]', NULL, '2026-01-06 08:12:25', '2026-01-06 08:12:25'),
(14, 'App\\Models\\User', 1, 'auth_token', 'd1918cf9eccdfabefff1517b13b4a1396b18d2985783f5d503388f7518e479ba', '[\"*\"]', NULL, '2026-01-06 08:19:10', '2026-01-06 08:19:10'),
(15, 'App\\Models\\User', 1, 'auth_token', 'fad445802c71262f20980ebe6560a4a0e1ee1051c24f42db6f5a156ba7f0cca2', '[\"*\"]', NULL, '2026-01-06 08:19:34', '2026-01-06 08:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_code` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `login_date` datetime NOT NULL,
  `logout_date` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `borrower_name` varchar(255) NOT NULL,
  `borrow_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Borrowed',
  `is_archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `book_id`, `borrower_name`, `borrow_date`, `due_date`, `return_date`, `status`, `is_archived`, `created_at`, `updated_at`) VALUES
(5, 1, 'John Doe', '2025-11-14', '2025-11-21', NULL, 'returned', 0, '2025-11-13 11:11:49', '2025-11-13 11:15:32'),
(6, 2, 'test', '2025-11-07', '2025-11-17', '2025-11-17', 'returned', 0, '2025-11-13 12:21:51', '2025-11-13 12:25:40'),
(7, 3, 'Norman', '2025-11-14', '2025-11-17', '2025-11-17', 'returned', 0, '2025-11-13 12:32:46', '2025-11-13 12:33:05'),
(8, 3, 'aaaa', '2025-11-14', '2025-11-17', '2025-11-17', 'returned', 0, '2025-11-13 13:28:13', '2025-11-13 13:28:37'),
(9, 5, 'nas', '2026-01-06', '2026-01-08', '2026-01-07', 'returned', 0, '2026-01-06 07:36:56', '2026-01-06 07:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$SBB5l6f7sYSpf5dGTvu0yeBgi0AzIKbqNryoWQlS5QqXYscCuO1.G', '2025-11-13 10:12:42', '2025-11-13 10:12:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
