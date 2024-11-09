-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 07:31 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel11`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `datePublished` date NOT NULL,
  `genre` enum('fiction','nonfiction','fantasy','mystery','science_fiction','biography') COLLATE utf8mb4_unicode_ci NOT NULL,
  `onlineLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalogue_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'book'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publisher`, `description`, `price`, `stock`, `datePublished`, `genre`, `onlineLink`, `catalogue_type`) VALUES
(1, 'A Hunger for More', 'Amy DiMarcangelo', 'Crossway', 'Many Christians—especially those who have grown up in the church—seem to have “good” lives, free from extreme hardship and scandalous sin. Yet even this good life leaves them longing. Regardless of our backgrounds and circumstances, all of us have a deep hunger that only Jesus can satisfy. In this book, Amy DiMarcangelo invites readers to feast at the table of grace, where they will find God’s vast glory and intimate care, his strength made perfect in weakness, and his gifts of joy and comfort. Even the most hungry Christians will be encouraged that they “may be filled with all the fullness of God” (Ephesians 3:19).', 100000, 3, '2022-01-10', 'nonfiction', 'https://www.amazon.com/Hunger-More-Finding-Satisfaction-Coalition/dp/1433575108', 'book'),
(2, 'Becoming', 'Michelle Obama', 'Crown Publishing Group', 'An intimate, powerful, and inspiring memoir by the former First Lady of the United States. In a life filled with meaning and accomplishment, Michelle Obama has emerged as one of the most iconic and compelling women of our era.', 200000, 4, '2018-11-13', 'biography', 'https://www.amazon.com/Becoming-Michelle-Obama/dp/1524763136', 'book'),
(3, 'The Midnight Library', 'Matt Haig', 'Canongate Books', 'Between life and death there is a library, and within that library, the shelves go on forever. Every book provides a chance to try another life you could have lived. To see how things would be if you had made other choices. Would you have done anything different, if you had the chance to undo your regrets?', 120000, 6, '2020-08-13', 'fiction', 'https://www.amazon.com/Midnight-Library-Novel-Matt-Haig/dp/0525559477', 'book');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_d_s`
--

CREATE TABLE `c_d_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `datePublished` date NOT NULL,
  `genre` enum('fiction','nonfiction','fantasy','mystery','science_fiction','biography') COLLATE utf8mb4_unicode_ci NOT NULL,
  `onlineLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalogue_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_d_s`
--

INSERT INTO `c_d_s` (`id`, `title`, `author`, `publisher`, `description`, `price`, `stock`, `datePublished`, `genre`, `onlineLink`, `catalogue_type`) VALUES
(1, 'The Lion King Soundtrack', 'Hans Zimmer, Elton John, Tim Rice', 'Walt Disney Records', 'The soundtrack for the 1994 animated classic, featuring music by Hans Zimmer and iconic songs by Elton John and Tim Rice.', 200000, 10, '1994-05-31', 'fiction', 'https://example.com/the-lion-king-soundtrack', 'CD'),
(2, 'Frozen', 'Kristen Anderson-Lopez, Robert Lopez', 'Walt Disney Records', 'The soundtrack for the animated hit film Frozen, featuring the Oscar-winning song \"Let It Go.\"', 180000, 8, '2013-11-19', 'fiction', 'https://example.com/frozen-soundtrack', 'CD'),
(3, 'Guardians of the Galaxy Awesome Mix Vol. 1', 'Various Artists', 'Marvel Music', 'The soundtrack album featuring classic songs from the 1970s and 1980s featured in the blockbuster film Guardians of the Galaxy.', 150000, 12, '2014-07-29', 'fiction', 'https://example.com/guardians-of-the-galaxy-awesome-mix', 'CD');

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
-- Table structure for table `final_year_projects`
--

CREATE TABLE `final_year_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `datePublished` date NOT NULL,
  `onlineLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalogue_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'final year project'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_year_projects`
--

INSERT INTO `final_year_projects` (`id`, `title`, `author`, `publisher`, `description`, `stock`, `datePublished`, `onlineLink`, `catalogue_type`) VALUES
(1, 'Design and Implementation of an E-commerce Website', 'John Doe', 'IMT University', 'This project involves the design and development of a fully functional e-commerce website that supports user authentication, product management, and online payment systems.', 5, '2023-10-15', 'https://example.com/project/e-commerce-website', 'final year project'),
(2, 'Artificial Intelligence in Healthcare: Predictive Analytics', 'Jane Smith', 'IMT University', 'This project explores the application of artificial intelligence in healthcare for predictive analytics, focusing on disease detection and patient care optimization.', 3, '2022-06-20', 'https://example.com/project/ai-healthcare-predictive-analytics', 'final year project'),
(3, 'Blockchain Technology in Supply Chain Management', 'Alice Johnson', 'IMT University', 'This project investigates the integration of blockchain technology in supply chain management, enhancing transparency, security, and efficiency.', 4, '2023-05-12', 'https://example.com/project/blockchain-supply-chain', 'final year project');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `datePublished` date NOT NULL,
  `volume` smallint(6) NOT NULL,
  `series` smallint(6) NOT NULL,
  `number` smallint(6) NOT NULL,
  `onlineLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalogue_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'journal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `title`, `author`, `publisher`, `description`, `price`, `stock`, `datePublished`, `volume`, `series`, `number`, `onlineLink`, `catalogue_type`) VALUES
(1, 'Journal of Medical Research', 'Dr. Michael Johnson', 'Medical Research Society', 'A journal dedicated to publishing new and innovative research in medical science and health.', 100000, 15, '2023-10-10', 45, 7, 2, 'https://example.com/journal/medical-research', 'journal'),
(2, 'Environmental Studies Journal', 'Emily Clark', 'Environment Press', 'A journal that focuses on environmental studies, sustainability, and conservation efforts.', 180000, 20, '2023-07-22', 18, 1, 4, 'https://example.com/journal/environmental-studies', 'journal'),
(3, 'Journal of Arts and Culture', 'Prof. Linda Brown', 'Culture Publishing House', 'A journal exploring new research, trends, and articles on art, culture, and society.', 120000, 8, '2023-06-30', 5, 2, 6, 'https://example.com/journal/arts-culture', 'journal');

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
(5, '2024_10_31_004304_create_books_table', 2),
(22, '2024_10_30_075749_create_products_table', 3),
(70, '0001_01_01_000000_create_users_table', 4),
(71, '0001_01_01_000001_create_cache_table', 4),
(72, '0001_01_01_000002_create_jobs_table', 4),
(73, '2024_10_31_005437_create_books_table', 4),
(74, '2024_10_31_005603_create_journals_table', 4),
(75, '2024_11_09_042406_add_catalogue_type_to_books_and_journals', 4),
(76, '2024_11_09_044826_create_c_d_s_table', 4),
(77, '2024_11_09_044842_create_newspapers_table', 4),
(78, '2024_11_09_044852_create_final_year_projects_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newspapers`
--

CREATE TABLE `newspapers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `datePublished` date NOT NULL,
  `onlineLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalogue_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'newspaper'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newspapers`
--

INSERT INTO `newspapers` (`id`, `title`, `author`, `publisher`, `description`, `price`, `stock`, `datePublished`, `onlineLink`, `catalogue_type`) VALUES
(1, 'Global News Weekly', 'Alice Johnson', 'Global Publishing Group', 'A weekly newspaper featuring in-depth analysis of world events, politics, and economic trends.', 10000, 150, '2023-09-20', 'https://example.com/newspaper/global-news-weekly', 'newspaper'),
(2, 'Tech Today', 'Michael Brown', 'Tech Media', 'A specialized newspaper focused on the latest trends in technology, startups, and innovation.', 6000, 50, '2023-11-01', 'https://example.com/newspaper/tech-today', 'newspaper'),
(3, 'Sports World', 'Sarah Davis', 'Sports Media Group', 'A daily sports newspaper covering all major sporting events, player updates, and analysis.', 4000, 120, '2023-10-15', 'https://example.com/newspaper/sports-world', 'newspaper');

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('12G5hXp1g0xvDBiOvhtkxvnayw9PBPLqyLOznhfs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY09IdXZ2SHJrWmxJUW13dzdqMmtlTzhjeTI2dlNaQmxsdnR3T083biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRhbG9ndWVzP2NhdGVnb3J5PSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731133169);

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
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `c_d_s`
--
ALTER TABLE `c_d_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `final_year_projects`
--
ALTER TABLE `final_year_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newspapers`
--
ALTER TABLE `newspapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c_d_s`
--
ALTER TABLE `c_d_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_year_projects`
--
ALTER TABLE `final_year_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `newspapers`
--
ALTER TABLE `newspapers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
