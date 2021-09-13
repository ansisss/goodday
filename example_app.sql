-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 10:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(12, '2021_09_13_103240_add_image_to_posts', 3),
(56, '2014_10_12_000000_create_users_table', 4),
(57, '2014_10_12_100000_create_password_resets_table', 4),
(58, '2019_08_19_000000_create_failed_jobs_table', 4),
(59, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(60, '2021_09_09_213043_create_posts_table', 4),
(61, '2021_09_13_084810_add_user_id_to_posts', 4),
(62, '2021_09_13_111701_add_cover_image_to_posts', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_credit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quickLoans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lineOfCredit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumerCredit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `first_credit`, `sum`, `age`, `term`, `extra`, `quickLoans`, `lineOfCredit`, `consumerCredit`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(5, 'Credit24', '0% līdz 5000€', '400€  - 5000€', '18-70', '90 d.- 5 gadi', 'KREDĪTBRĪVDIENAS 6.MĒN', 'quickLoans', 'lineOfCredit', 'consumerCredit', '<p>Credit24 kredītlīnijas gada procentu likme (GPL) ir no 19.86%. Tā ir minimālā gada procentu likme un tiek aprēķināta individuāli, pēc pieteikuma iesnieg&scaron;anas, izvērtējot klienta sniegto informāciju. GPL aprēķins ir balstīts uz visām ar produktu saistītajām procentu likmēm un ietver Komisiju par konta apkalpo&scaron;anu (0&euro;) un naudas līdzekļu izmaksu (0&euro;). Credit24 minimālā GPL likme ir 19.86% / maksimālā GPL likme ir 51.98%. Credit24 piedāvā kredītlīniju summā no 50 līdz 5000 &euro; ar atmaksas termiņu 60 mēne&scaron;i.</p>', '2021-09-13 16:16:39', '2021-09-13 16:16:39', 1, 'credit24_1631560599.png'),
(6, 'ferratum', 'līdz 3000€', '500€  - 3000€', '19-75', '90 d.- 5 gadi', 'KREDĪTBRĪVDIENAS 0€', 'Q', 'Q', 'Q', '<p>Uzskatāms piemērs: aizņemoties 300 &euro; uz 12 mēne&scaron;iem, atmaksu veicot 12 maksājumos ar aizņēmuma likmi mēnesī 3.15%. Aizņēmuma likme gadā 37.79%, gada procentu likme 45.10%, kopējā atmaksājamā summa 364.89 &euro;, ja tiek ievēroti līguma noteikumi.</p>', '2021-09-13 17:14:38', '2021-09-13 17:14:38', 1, 'ferratum-uk-ltd-logo-vector_1631564078.png'),
(7, 'SOSCREDIT', '0% līdz 1500€', '50€  - 1500€', '18-75', '62 d.- 5 gadi', '0% KOMISIJA MAKSA', 'quickLoans', 'Q', 'Q', '<p>Piemērs: Ja tiek izņemta summa 200&euro; apmērā, GPL ir <strong>108,69%</strong>, procentu likme gadā ir 81,94% un kopējā atmaksājamā summa ir 292,44&euro;. &Scaron;is piemērs ir balstīts uz pieņēmumu, ka kredīts tiek atmaksāts 14 vienādos maksājumos, mēnesī maksājot 20&euro; un 15. mēnesī 12,44&euro;. GPL ir kredīta kopējās izmaksas, kas izteiktas gada procentos no pie&scaron;ķirtās kredīta kopējās summas. Maksimālā GPL likme ir<strong> 136,85%. </strong></p>', '2021-09-13 17:18:00', '2021-09-13 17:18:00', 1, 'logo_1631564280.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ansis Štrāls', 'stralsansis@inbox.lv', NULL, '$2y$10$sqeraSxeWzV3kxxbMh/.oO3GA1PuQt7mgoQ/ZunxzQOLCQPlcrkhi', NULL, '2021-09-13 15:45:46', '2021-09-13 15:45:46');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
