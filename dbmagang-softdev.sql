-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Agu 2024 pada 18.22
-- Versi server: 8.0.30
-- Versi PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmagang-softdev`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_02_161629_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '0vIzuN6uKiTrVnzG0O2RZPVHIQdcOQUDN0141W7F.jpg', 'Eksplorasi Bali: Pantai Kuta', 'Pantai Kuta adalah salah satu destinasi wisata paling terkenal di Bali. Dengan pasir putihnya yang halus dan ombak yang cocok untuk berselancar, Pantai Kuta adalah tempat yang ideal untuk bersantai dan menikmati keindahan pantai Bali', '2024-08-02 10:58:51', '2024-08-02 10:58:51'),
(2, 'pSeyjd7eKzVkmEN0I1ktj39FSLCGxYNbsnXSBqcx.jpg', 'Keindahan Alam Bandung', 'Bandungterkenal dengan pemandangan alamnya yang menakjubkan, termasuk sawah terasering dan hutan monyet. Pengunjung dapat menikmati suasana tenang dan menjelajahi seni dan budaya Bali di area ini.', '2024-08-02 11:01:07', '2024-08-02 11:01:07'),
(3, 'CcgDLNklwAjuqbqoYc9llKHliiMxfKQMUUlEYp0T.jpg', 'Eksplorasi Candi Borobudur', 'Candi Borobudur adalah salah satu situs warisan dunia UNESCO yang terletak di Jawa Tengah. Dengan arsitektur yang megah dan relief yang indah,', '2024-08-02 11:05:22', '2024-08-02 11:05:22'),
(4, 'p29cDYWcKuDAbcykXlusriDFkFHZY2KDRl6UMBWj.jpg', 'Eksplorasi Candi Borobudur 2', 'Candi Borobudur adalah candi yang termasuk keaaiban dunia', '2024-08-02 11:05:55', '2024-08-02 11:05:55'),
(5, 'rHTZEpzC2FZdZn2vkQIMmf27iUbde0423P2WgdaW.jpg', 'Menikmati Keindahan Pulau Komodo', 'Pulau Komodo dikenal sebagai rumah bagi komodo, hewan purba yang hanya ditemukan di Indonesia. Selain melihat komodo, pengunjung dapat menikmati pantai yang indah dan snorkeling di perairan sekitar', '2024-08-02 11:06:51', '2024-08-02 11:06:51'),
(6, '9JmooNQoVWLeCfthyco8DGnspHYwEBA3ih9HXyCe.jpg', 'Menikmati bandung', 'Bndung merupakan tempat wisata terbaik bagi wsiatawan asing', '2024-08-02 11:08:17', '2024-08-02 11:08:17'),
(7, 'hBfXhAeFqUIdeOkuISdhj4Cywg1zDTx5LzmAOgMU.jpg', 'Menelusuri Keindahan Raja Ampat', 'Raja Ampat, terletak di Papua Barat, dikenal dengan keindahan bawah lautnya yang menakjubkan. Dengan terumbu karang yang berwarna-warni dan kehidupan laut yang kaya, Raja Ampat adalah destinasi snorkeling dan menyelam yang luar biasa', '2024-08-02 11:10:45', '2024-08-02 11:10:45'),
(8, 'Ycr0vfhWw6zw95Qdl2ROzQ1UhpoBDZZd0eJ8ZufA.png', 'Eksplorasi Pulau Nusa Penida', 'Nusa Penida, pulau yang terletak di lepas pantai Bali, menawarkan pantai-pantai yang menakjubkan, tebing-tebing yang dramatis, dan lokasi snorkeling yang luar biasa. Tempat ini adalah destinasi populer untuk mereka yang mencari keindahan alam yang masih alami.', '2024-08-02 11:13:50', '2024-08-02 11:13:50'),
(9, 'vMySHVaXl6SYC0WzMREFrxTkZlQ6GfcN8kc16AGG.jpg', 'Petualangan di Taman Nasional Bromo Tengger Semeru', 'Taman Nasional Bromo Tengger Semeru adalah salah satu tujuan wisata gunung berapi yang paling terkenal di Indonesia. Dengan lanskap vulkanik yang dramatis dan pemandangan matahari terbit yang menakjubkan, ini adalah tempat yang ideal untuk para pecinta alam dan fotografer.', '2024-08-02 11:15:07', '2024-08-02 11:15:07'),
(10, 'gA6zc3dOXLri5uRPhOG1mDf5qILF81jQaipUVZF1.jpg', 'Kecantikan Pantai Pink di Flores', 'Pantai Pink di Pulau Komodo terkenal dengan pasir pantainya yang berwarna pink. Pantai ini merupakan salah satu dari tujuh pantai pink di dunia dan merupakan tempat yang sempurna untuk berenang dan bersantai', '2024-08-02 11:16:13', '2024-08-02 11:16:13'),
(11, 'NbtBFxEYq7i2GHX0os3GDgTGrZzVBbIasV5qbNz0.jpg', 'Wisata Budaya Yogyakarta2', 'Yogyakarta adalah kota budaya di Indonesia yang terkenal dengan keraton dan candi-candinya. Candi Prambanan dan Candi Borobudur yang berdekatan merupakan contoh arsitektur kuno yang luar biasa dan merupakan tujuan wisata utama di daerah ini.', '2024-08-02 11:17:21', '2024-08-02 11:21:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$12$bCfD4KLg0X89bxZVU/7Y5OrPR7D6HvPz7vem.Wr8sQu2ZIWBSBXxG', NULL, '2024-08-02 09:53:39', '2024-08-02 09:53:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
