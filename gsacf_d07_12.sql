-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 12 月 23 日 22:46
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d07_12`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `customer_management_table2`
--

CREATE TABLE `customer_management_table2` (
  `id` int(11) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(13) NOT NULL,
  `adress` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `customer_management_table2`
--

INSERT INTO `customer_management_table2` (`id`, `username`, `age`, `sex`, `tel`, `adress`, `item`) VALUES
(1, '木内　亮太', 34, '男', -6822, '福岡市中央区大名１', 'おせち');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'JSの課題', '2020-12-25', '2020-12-19 15:48:28', '2020-12-19 15:48:28'),
(2, '資料作成', '2020-12-20', '2020-12-19 15:58:07', '2020-12-19 15:58:07'),
(3, '読書', '2020-12-21', '2020-12-19 15:58:38', '2020-12-19 15:58:38'),
(4, '掃除', '2020-12-21', '2020-12-19 15:59:07', '2020-12-19 15:59:07'),
(5, '洗車', '2020-12-20', '2020-12-19 16:00:06', '2020-12-19 16:00:06'),
(6, '飲み会', '2020-12-25', '2020-12-19 16:01:09', '2020-12-19 16:01:09'),
(7, 'クリスマスパーティー', '2020-12-24', '2020-12-19 16:01:37', '2020-12-19 16:01:37'),
(8, '実家', '2020-12-31', '2020-12-19 16:02:01', '2020-12-19 16:02:01'),
(9, 'gs', '2020-12-26', '2020-12-19 16:02:52', '2020-12-19 16:02:52'),
(10, '会議', '2020-12-23', '2020-12-19 16:03:13', '2020-12-19 16:03:13'),
(11, 'テスト', '2020-12-24', '2020-12-19 16:44:23', '2020-12-19 16:44:23'),
(12, 'daoaoaaoa', '2021-01-09', '2020-12-19 17:05:47', '2020-12-19 17:05:47');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `customer_management_table2`
--
ALTER TABLE `customer_management_table2`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `customer_management_table2`
--
ALTER TABLE `customer_management_table2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
