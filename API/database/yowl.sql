-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 07 déc. 2021 à 08:54
-- Version du serveur :  8.0.27-0ubuntu0.20.04.1
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yowl`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `auteur`, `contenu`, `date`, `id_post`, `created_at`, `updated_at`) VALUES
(2, 'Pierre', 'Nancy évidemment! lol', '05/12/2021', '1', '2021-12-05 10:13:34', '2021-12-05 10:13:34');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2020_05_21_100000_create_teams_table', 1),
(31, '2020_05_21_200000_create_team_user_table', 1),
(32, '2020_05_21_300000_create_team_invitations_table', 1),
(33, '2021_12_01_102057_create_sessions_table', 1),
(34, '2021_12_02_101822_create_comments_table', 1),
(35, '2021_12_02_101835_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'authToken', 'a4dee1b2913c330697433b8cdf01936ce52678f48791694a097b33eee55d8491', '[\"*\"]', NULL, '2021-12-06 08:58:40', '2021-12-06 08:58:40'),
(2, 'App\\Models\\User', 4, 'authToken', 'b1b86520ae4c40384ac016b54f96afc42bf14a9041b10585eb8431f06ed12ba7', '[\"*\"]', NULL, '2021-12-06 13:44:36', '2021-12-06 13:44:36'),
(3, 'App\\Models\\User', 4, 'authToken', '6b37cad316240e3e4d27d71b9337f13348cc7b45a9db05bc1e9ad69247a7b6f7', '[\"*\"]', NULL, '2021-12-06 13:45:08', '2021-12-06 13:45:08'),
(4, 'App\\Models\\User', 4, 'authToken', 'ab10dedbebf1fc82cbd3c72aab703a652ba71638cbda1f0e23f774a3f64387c9', '[\"*\"]', NULL, '2021-12-06 14:02:35', '2021-12-06 14:02:35'),
(5, 'App\\Models\\User', 4, 'authToken', '42be171a0c368b2b4c79fc79832f83f9cac591e32d84e7f70987d30dc7ae877a', '[\"*\"]', NULL, '2021-12-06 14:02:43', '2021-12-06 14:02:43'),
(6, 'App\\Models\\User', 4, 'authToken', 'b797f05f6f8eeb263e1314942459922ce0b1344e005358d269763d9596af8c90', '[\"*\"]', NULL, '2021-12-06 14:08:15', '2021-12-06 14:08:15'),
(7, 'App\\Models\\User', 4, 'authToken', '9b661d9682dd25f0333fecd8e564d3bbe1182fad02d981f252edea1c3fd2ca26', '[\"*\"]', NULL, '2021-12-06 14:08:42', '2021-12-06 14:08:42'),
(8, 'App\\Models\\User', 4, 'authToken', 'c12f1ced2d5308d96263d19ff4cb028ebaf03f9523005ff23738d95f7743cc8e', '[\"*\"]', NULL, '2021-12-06 14:09:08', '2021-12-06 14:09:08'),
(9, 'App\\Models\\User', 4, 'authToken', 'bad5e15be0b2c7ce30ee2c9d8dbbdea1c6014648f83f158839c176b6e0952347', '[\"*\"]', NULL, '2021-12-06 14:09:27', '2021-12-06 14:09:27'),
(10, 'App\\Models\\User', 4, 'authToken', '6483454c2707502a8f3b861978aebed22e2da1c76947277baaf82e24ccce33ed', '[\"*\"]', NULL, '2021-12-06 14:17:13', '2021-12-06 14:17:13'),
(11, 'App\\Models\\User', 4, 'authToken', '81851a17e6c564a80efe75d8beea0a9bbc1752cfb92d6ae522dc02a1f685b4d1', '[\"*\"]', NULL, '2021-12-06 14:19:03', '2021-12-06 14:19:03'),
(12, 'App\\Models\\User', 4, 'authToken', '789db6b84f7e9aaece9be1e1964e6c8a7482b3b9e2672c0b6bf97f9ce29fa1e1', '[\"*\"]', NULL, '2021-12-06 14:22:21', '2021-12-06 14:22:21'),
(13, 'App\\Models\\User', 4, 'authToken', '690b80515a91f9f6b1a968b325ff4ed87773a6adca985ec86ff25f8a8e6f85cb', '[\"*\"]', NULL, '2021-12-06 14:47:52', '2021-12-06 14:47:52');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `titre`, `theme`, `date`, `auteur`, `contenu`, `created_at`, `updated_at`) VALUES
(1, 'Saint Nicolas', 'Evènements', '05/12/2021', 'Paul', 'Quelle est la ville avec le plus grand défilé?', '2021-12-05 09:52:50', '2021-12-05 09:52:50');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('j3EyAmlTbH46yh9DUm3Pgyxx6kd0j1Pz58j6bmk6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ253YkVoTmZxckdxaktCRHd4RGFyZ2dPb1JhWkRGb0FhTWNrNXA1aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638866216),
('mbCtZ90Z0Ap4FT9nhgDYNcpNb2ykx7WyEDEgl6bv', NULL, '127.0.0.1', 'PostmanRuntime/7.28.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVZiUGJtR0xCZnQxSHZKb3lEQmpUQWxHMVY1Y3loVDdxMEdYWlhjVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638704883),
('OIWyIqMFflZIrC72PQftXlLeMiPh787TNAE9cCZ5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlRJc2JpOU5XTVZEQlJYSWthRGhFU3lpTkloZzZrODRkYUFDbUE3cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638799120),
('qemCcwcwoqII4B7SY4pE1GC67tDCmpsiHqO03Keb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1c3ZnJaRVI2TmF2clRPNVViZGNXSVpBTGdFajhqZU1oNHhUWWx5YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638786345),
('WifjbuOHr4TfkEEko1XfxQtG0QGCW6y0GpxOQ9X7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2x1bGx4MERBQU1oUEpPTWdiZENOV0pRU0VkWFJJQlNHYTFKQ0NuWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638801341);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team_invitations`
--

DROP TABLE IF EXISTS `team_invitations`;
CREATE TABLE IF NOT EXISTS `team_invitations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team_user`
--

DROP TABLE IF EXISTS `team_user`;
CREATE TABLE IF NOT EXISTS `team_user` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `ville`, `pays`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Paul', 'Paul@gmail.com', NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-05 09:53:35', '2021-12-05 09:53:35'),
(2, 'Pierre', 'Pierre@gmail.com', NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-05 09:55:53', '2021-12-05 09:55:53'),
(4, 'Sarah', 'sarah@gmail.com', NULL, '$2y$10$tZvse98sKKQHed2Rw0OfXu2VLjqzwX5AnwJLgUNbHRcQMgVn7dtf6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 09:49:24', '2021-12-06 09:49:24'),
(5, 'Manon', 'manon@gmail.com', NULL, '$2y$10$CUAXhLN.IIiCUkl8dclqKuIBUqwnhot.Bgr0981R.Y6ThfvJyEhYS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 09:50:37', '2021-12-06 09:50:37'),
(6, 'Jean', 'jean@gmail.com', NULL, '$2y$10$NGrLEpKu6p9EQE5qygtbPOOdzfz3FrHukyDfzVCESyeLTVoozaYNC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 12:19:10', '2021-12-06 12:19:10'),
(7, 'ff', 'ff@gmail.com', NULL, '$2y$10$UAvk8mdlyxEOe/nAvRuZYe/Sd4k68Iy2xI49pl/BLmobOif5nTOJK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 13:01:06', '2021-12-06 13:01:06'),
(8, 'sss', 'dddd@zersf.co', NULL, '$2y$10$t7Ds56lJc6hM9yEAuo9bouAsz.MKa.P/IfRDWwTqUD06K5Ry7u7A2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 13:04:16', '2021-12-06 13:04:16'),
(9, 'sss', 'dddd@zersf.com', NULL, '$2y$10$XDKBoJQq0NlIzR9ZedsaQOj5VC1RyqTpbLMuIP5KJ.3eTH/l7W/4.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 13:04:50', '2021-12-06 13:04:50'),
(10, 'zzz', 'z@d.d', NULL, '$2y$10$Hdv0.ANUpy94fv1vKehPE.zCcYIZVbjjZPlYCJefDyECm7ybsZqYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 13:21:37', '2021-12-06 13:21:37'),
(11, 'xxx', 'z@d.dd', NULL, '$2y$10$bTF.4oj7l1xr09AnOnftf.1UDl80iCuhQuKv.MDrBdP5lZt7HUzqa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 13:22:11', '2021-12-06 13:22:11');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
