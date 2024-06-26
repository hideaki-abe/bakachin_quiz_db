-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-06-23 15:55:27
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `php_quiz`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `scores`
--

INSERT INTO `scores` (`id`, `created_at`, `username`, `score`) VALUES
(1, '2024-06-23 13:00:31', 'バカチンガー', 2),
(2, '2024-06-23 13:04:38', 'バカチンガー', 3),
(3, '2024-06-23 13:07:55', 'バカチンガー', 2),
(4, '2024-06-23 13:08:38', 'バカチン花子', 5),
(5, '2024-06-23 13:09:00', 'バカチンガー', 0),
(6, '2024-06-23 13:23:59', 'バカチン太郎', 5),
(7, '2024-06-23 13:45:07', 'バカチン花子', 3),
(8, '2024-06-23 13:45:49', 'バカチン一平', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `created_at`, `username`, `email`, `password`) VALUES
(1, '2024-06-23 13:00:24', 'バカチンガー', 'bakachin@gmail.com', '$2y$10$IFEOV4KPTphq7ShKq5BnsOgxNiJ8g4Eps5wovUBQLkb8B9MfKzFBG'),
(2, '2024-06-23 13:08:24', 'バカチン花子', 'bakachin1@gmail.com', '$2y$10$5o/MWllcPBRCzyvyHd2bNeGBwhWY2uNQZFNaNGWvh5SY9LJ.hi0my'),
(3, '2024-06-23 13:23:38', 'バカチン太郎', 'bakachin2@gmail.com', '$2y$10$d0Nt9jbDITx728sZNxKgZO3DLvPZtl6tENXRktanmMi43RLnqZwLW'),
(4, '2024-06-23 13:45:40', 'バカチン一平', 'bakachin3@gmail.com', '$2y$10$yiL3wVpUyq.vw/ue4TJNTevSnub.Rv2cqo9QgjI7WjAcHt25RrFKq');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
