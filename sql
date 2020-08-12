-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: http://satoruosada.sakura.ne.jp
-- Generation Time: Jul 13, 2020 at 08:39 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `stadium`
--

-- --------------------------------------------------------

--
-- Table structure for table `bord`
--

DROP TABLE IF EXISTS `bord`;
CREATE TABLE `bord` (
`id` int(11) NOT NULL,
`sale_user` int(11) NOT NULL,
`buy_user` int(11) NOT NULL,
`delete_flg` tinyint(4) DEFAULT '0',
`create_date` datetime NOT NULL,
`product_id` int(11) NOT NULL,
`update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bord`
--

INSERT INTO `bord` (`id`, `sale_user`, `buy_user`, `delete_flg`, `create_date`, `product_id`, `update_date`) VALUES
(88, 29, 29, 0, '2019-09-17 18:13:08', 174, '2019-09-17 09:13:08'),
(89, 21, 31, 0, '2019-09-18 14:37:54', 177, '2019-09-18 05:37:54'),
(90, 21, 21, 0, '2019-10-02 11:52:32', 176, '2019-10-02 02:52:32'),
(91, 21, 21, 0, '2019-10-02 11:52:47', 177, '2019-10-02 02:52:47'),
(92, 29, 21, 0, '2019-10-02 11:52:57', 174, '2019-10-02 02:52:57'),
(93, 33, 21, 0, '2019-10-09 20:41:59', 180, '2019-10-09 11:41:59'),
(94, 29, 21, 0, '2019-11-12 22:25:01', 174, '2019-11-12 13:25:01'),
(95, 31, 21, 0, '2019-11-15 13:34:42', 178, '2019-11-15 04:34:42'),
(96, 21, 21, 0, '2019-12-05 10:47:51', 176, '2019-12-05 01:47:51'),
(97, 32, 21, 0, '2019-12-05 10:48:09', 179, '2019-12-05 01:48:09'),
(98, 31, 21, 0, '2019-12-05 10:48:23', 178, '2019-12-05 01:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
`id` int(11) NOT NULL,
`name` varchar(255) NOT NULL,
`delete_flg` tinyint(4) NOT NULL,
`create_date` datetime NOT NULL,
`update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `delete_flg`, `create_date`, `update_date`) VALUES
(1, 'JAPAN(Jリーグ)', 0, '2019-08-28 00:00:00', '2019-08-28 08:13:11'),
(2, 'GERMANY(ブンデスリーガ)', 0, '2019-08-28 00:00:00', '2019-08-28 08:15:00'),
(3, 'ITALY（セリエA）', 0, '2019-08-28 00:00:00', '2019-08-28 08:15:00'),
(4, 'INGLAND(プレミアリーグ)', 0, '2019-08-28 00:00:00', '2019-08-28 08:16:31'),
(5, 'SPAIN（リーガエスパニョーラ）', 0, '2019-08-28 00:00:00', '2019-08-28 08:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
CREATE TABLE `like` (
`id` int(11) NOT NULL,
`product_id` int(11) DEFAULT NULL,
`user_id` int(11) NOT NULL,
`delete_flg` tinyint(4) DEFAULT '0',
`create_date` datetime DEFAULT NULL,
`update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `product_id`, `user_id`, `delete_flg`, `create_date`, `update_date`) VALUES
(13, 174, 29, 0, '2019-09-17 18:13:05', '2019-09-17 09:13:05'),
(14, 177, 31, 0, '2019-09-18 14:37:50', '2019-09-18 05:37:50'),
(16, 174, 21, 0, '2019-11-12 22:24:59', '2019-11-12 13:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
`id` int(11) NOT NULL,
`bord_id` int(11) DEFAULT NULL,
`send_date` datetime DEFAULT NULL,
`to_user` int(11) DEFAULT NULL,
`from_user` int(11) DEFAULT NULL,
`msg` varchar(255) DEFAULT NULL,
`delete_flg` tinyint(4) DEFAULT '0',
`create_date` datetime DEFAULT NULL,
`update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `bord_id`, `send_date`, `to_user`, `from_user`, `msg`, `delete_flg`, `create_date`, `update_date`) VALUES
(26, 88, '2019-09-17 18:13:20', 29, 29, 'こんにちは！', 0, '2019-09-17 18:13:20', '2019-09-17 09:13:20'),
(27, 88, '2019-09-17 18:13:28', 29, 29, '買います！', 0, '2019-09-17 18:13:28', '2019-09-17 09:13:28'),
(28, 89, '2019-09-18 14:38:10', 21, 31, 'こんにちは！', 0, '2019-09-18 14:38:10', '2019-09-18 05:38:10'),
(29, 89, '2019-09-18 14:38:20', 21, 31, '買います', 0, '2019-09-18 14:38:20', '2019-09-18 05:38:20'),
(30, 89, '2019-09-18 14:38:47', 21, 31, '連絡ありがとうございます', 0, '2019-09-18 14:38:47', '2019-09-18 05:38:47'),
(31, 89, '2019-10-04 12:00:21', 31, 21, 'aaaa', 0, '2019-10-04 12:00:21', '2019-10-04 03:00:21'),
(32, 89, '2019-10-04 12:00:33', 31, 21, 'お願いします\r\n', 0, '2019-10-04 12:00:33', '2019-10-04 03:00:33'),
(33, 94, '2019-11-12 22:25:23', 29, 21, 'aaaa', 0, '2019-11-12 22:25:23', '2019-11-12 13:25:23'),
(34, 94, '2019-11-12 22:25:27', 29, 21, 'sss', 0, '2019-11-12 22:25:27', '2019-11-12 13:25:27'),
(35, 94, '2019-11-12 22:25:53', 29, 21, 'aaa', 0, '2019-11-12 22:25:53', '2019-11-12 13:25:53'),
(36, 89, '2019-11-12 22:26:07', 31, 21, 'aaaa', 0, '2019-11-12 22:26:07', '2019-11-12 13:26:07'),
(37, 98, '2019-12-05 10:48:34', 31, 21, 'こんにちは！', 0, '2019-12-05 10:48:34', '2019-12-05 01:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`id` int(11) NOT NULL,
`name` varchar(255) DEFAULT NULL,
`category_id` int(11) DEFAULT NULL,
`comment` varchar(255) DEFAULT NULL,
`price` int(11) DEFAULT NULL,
`pic1` varchar(255) DEFAULT NULL,
`pic2` varchar(255) DEFAULT NULL,
`pic3` varchar(255) DEFAULT NULL,
`user_id` int(11) NOT NULL,
`delete_flg` tinyint(4) DEFAULT '0',
`create_date` datetime DEFAULT NULL,
`update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `comment`, `price`, `pic1`, `pic2`, `pic3`, `user_id`, `delete_flg`, `create_date`, `update_date`) VALUES
(174, 'アーセナル', 4, '', 100000, 'uploads/f8230ec84892082ad3cf8bee234f598a7bb5f645.jpeg', '', '', 29, 0, '2019-09-17 18:12:54', '2019-09-17 09:12:54'),
(175, 'アーセナル', 4, 'ロンドンのチーム', 19000, 'uploads/f8230ec84892082ad3cf8bee234f598a7bb5f645.jpeg', 'uploads/95ffac5475ce7cd89978f1c2067f4f29d8104ba8.jpeg', '', 21, 0, '2019-09-18 14:29:50', '2019-09-18 05:29:50'),
(176, 'バルセロナ', 5, '', 20000, 'uploads/605df02cef28921c72c3112b8e8ef21c785e6317.jpeg', 'uploads/b8257d25b51c4ecd28c62288be6b5cc701b07475.jpeg', '', 21, 0, '2019-09-18 14:30:47', '2019-09-18 05:30:47'),
(177, 'ユベントス', 3, '', 30000, 'uploads/2aa4a13f3cc432f3051ab55566854477a1d2ad5e.jpeg', '', '', 21, 0, '2019-09-18 14:34:00', '2019-09-18 05:34:00'),
(178, 'ユベントス', 3, '', 200000, 'uploads/600378c6d5bcd9d15191b125853285ed1c05a589.jpeg', '', '', 31, 0, '2019-09-18 14:37:15', '2019-09-18 05:37:15'),
(179, '清水エスパルス', 1, '', 20000, 'uploads/19f3d7bc5ea4a11c61c532a4f5e908ec744e4d4e.jpeg', '', '', 32, 0, '2019-10-09 17:11:09', '2019-10-09 08:11:09'),
(180, 'FC東京', 1, '', 28000, 'uploads/67dc03b085a557817968b7542ba1c59745fdc121.jpeg', '', '', 33, 0, '2019-10-09 17:13:26', '2019-10-09 08:13:26'),
(181, 'シャルケ', 2, '', 70000, 'uploads/9ce06e8fa95cc1efdf5e7eb54f04b7cb431a0e7c.jpeg', '', '', 21, 0, '2019-10-09 20:40:16', '2019-10-09 11:40:16'),
(182, 'チェルシー', 4, '', 50000, 'uploads/49a6d5b032d31be2f245258c22e88c85ef115700.jpeg', '', '', 21, 0, '2019-10-09 20:41:05', '2019-10-09 11:41:05'),
(183, 'ユベントス', 3, 'イタリアのチーム', 8000, 'uploads/c99b7bea388d6ffb8cec033d6aaa558fdce3e0e9.jpeg', '', '', 35, 0, '2019-12-05 10:55:00', '2019-12-05 01:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id` int(11) NOT NULL,
`username` varchar(255) DEFAULT NULL,
`age` int(11) DEFAULT NULL,
`tel` varchar(255) DEFAULT NULL,
`zip` text,
`addr` varchar(255) DEFAULT NULL,
`email` varchar(255) NOT NULL,
`password` varchar(255) DEFAULT NULL,
`pic` varchar(255) DEFAULT NULL,
`delete_flg` tinyint(4) DEFAULT '0',
`create_date` datetime DEFAULT NULL,
`update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`login_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `age`, `tel`, `zip`, `addr`, `email`, `password`, `pic`, `delete_flg`, `create_date`, `update_date`, `login_time`) VALUES
(21, '長田諭', 1, '08011933060', '4250074', ' 焼津市柳新屋', 'satoru.5714@gmail.com', '$2y$10$OKLGxnimTKNm8arrc7Dj3u3/yzc/ALzQ3tGTc/8DewsgxIFzKI492', 'uploads/38e8bae3d3616e18a697212139cc34781e37e88e.jpeg', 0, '2019-09-12 15:36:21', '2019-11-12 13:27:02', '2019-09-12 15:36:21'),
(23, 'さとる', 2, '08011933060', '4222222', '清水', 'osada.s@gmail.com', '$2y$10$IPU2Z/tXG5bbwoTda7ZKIuKPdbmWuCT12vWoSVCRLg0Gq.WGM1fG2', '', 0, '2019-09-12 17:32:15', '2019-09-12 08:32:59', '2019-09-12 17:32:15'),
(24, NULL, NULL, NULL, NULL, NULL, 'taku@gmail.com', '$2y$10$WbfLZzKRn/Npa2VgSMdMgexayr2Xii3LEzOTgdR4.VIgSZIFdycIa', NULL, 1, '2019-09-13 14:46:13', '2019-09-13 05:52:57', '2019-09-13 14:46:13'),
(25, NULL, NULL, NULL, NULL, NULL, 'taku@gmail.com', '$2y$10$2jnaH2nsuqOmhR5zH9Y.X.TB7iCXbJcrevez8of3jWgl23DUgsUfO', NULL, 0, '2019-09-13 14:53:20', '2019-09-13 05:53:20', '2019-09-13 14:53:20'),
(26, NULL, NULL, NULL, NULL, NULL, 'osada@gmail.com', '$2y$10$EZEO25.n64UX8FVS4iH10OP8i5hYSlD9vPdh6GMDr1oAYjM2DC1Ey', NULL, 0, '2019-09-17 17:52:23', '2019-09-17 08:52:23', '2019-09-17 17:52:23'),
(27, '長田諭', 10, '08011933060', '4250074', ' 焼津市柳新屋', 'satoru@gmail.com', '$2y$10$HFbetWgHoIFg.GRv3GOJjug9omtMHce4MQ0S/H9VCL84W5PdHQ2GC', 'uploads/10b3c54f7edf30ddb820f8089a9b7ccb87ed5d49.png', 0, '2019-09-17 18:05:18', '2019-09-17 09:05:40', '2019-09-17 18:05:18'),
(28, '長田諭', 11, '08011933060', '4250074', ' 焼津市柳新屋', 'satoru.@gmail.com', '$2y$10$zddKa.Eyo8CrAFRBqYGY6OmiKe9bwuH9hXF9WD4X.Wt6HNkmg1Js2', 'uploads/10b3c54f7edf30ddb820f8089a9b7ccb87ed5d49.png', 1, '2019-09-17 18:08:02', '2019-09-17 09:08:46', '2019-09-17 18:08:02'),
(29, '長田諭', 10, '08011933060', '4250074', ' 焼津市柳新屋', 'osada1@gmail.com', '$2y$10$hejd.9Z2.yf0euuWr8qF.OYmrZrsJjfrYJt2oNWrqXwUkGUJMJuA.', 'uploads/10b3c54f7edf30ddb820f8089a9b7ccb87ed5d49.png', 0, '2019-09-17 18:11:41', '2019-09-17 09:12:14', '2019-09-17 18:11:41'),
(30, NULL, NULL, NULL, NULL, NULL, 'satoru14@gmail.com', '$2y$10$s.PH6/xoA2ON9i1BQD5K1.vT8UaDAq9kzZjcul5PQWzkvDXy/LTi6', NULL, 0, '2019-09-18 14:33:08', '2019-09-18 05:33:08', '2019-09-18 14:33:08'),
(31, '長田諭', 15, '08011933060', '4250074', '柳新屋246-1', 'osa@gmail.com', '$2y$10$BKCnIwmYVxA/PweADdfvIOuUdj344zvmg61i7b2FWRXsSOOd7vBEe', 'uploads/10b3c54f7edf30ddb820f8089a9b7ccb87ed5d49.png', 0, '2019-09-18 14:35:48', '2019-09-18 05:36:44', '2019-09-18 14:35:48'),
(32, NULL, NULL, NULL, NULL, NULL, 'oo@yahoo.co.jp', '$2y$10$k6Q4NqP5B482v/hSdcv7suTmXLHCsPx74IzPkgptTBIu.9dNAYcXe', NULL, 0, '2019-10-09 17:09:07', '2019-10-09 08:09:07', '2019-10-09 17:09:07'),
(33, NULL, NULL, NULL, NULL, NULL, 'ss@yahoo.co.jp', '$2y$10$BNQQUfsI4cnEsNz/ndq7c.rvJik3rpV7W3.3zfXWwCI.OnhQdaBCG', NULL, 0, '2019-10-09 17:11:44', '2019-10-09 08:11:44', '2019-10-09 17:11:44'),
(34, NULL, NULL, NULL, NULL, NULL, 'oooo@yahooo', '$2y$10$GXMQmuV.N/XNGHIQeRG5A.FiZFGAOHzdHoulJvgZhUbBUBvFF35tC', NULL, 0, '2019-11-24 11:28:47', '2019-11-24 02:28:47', '2019-11-24 11:28:47'),
(35, 'おかま', 1, '08011933060', '4250074', '柳新屋246-1', 'ssatoru@gmail.com', '$2y$10$sTXoNC1zfJ6ikGBw.6PyB.XBrq6KcAb818T14p3N73yjxIr15dsJa', 'uploads/10b3c54f7edf30ddb820f8089a9b7ccb87ed5d49.png', 0, '2019-12-05 10:53:59', '2019-12-05 01:57:00', '2019-12-05 10:53:59'),
(36, NULL, NULL, NULL, NULL, NULL, 'lll@yahoo.co.jp', '$2y$10$b8AA1rU95yxWe7QolLq5IuNgYssP1IrmLmYJSS8LTha2nyXKS0gla', NULL, 0, '2019-12-05 11:00:51', '2019-12-05 02:00:51', '2019-12-05 11:00:51'),
(37, NULL, NULL, NULL, NULL, NULL, 'osadacchi@nine.sc', '$2y$10$qI6kjy/wfo2JCJ3I6ULBfu1OaIp2Ka8p9hYormTHIEbpqI7.Ehp8.', NULL, 0, '2020-01-09 17:41:56', '2020-01-09 08:41:56', '2020-01-09 17:41:56'),
(38, NULL, NULL, NULL, NULL, NULL, 'unko@gmail.com', '$2y$10$9kqpS0MNshQ4IFhMe4LFaeGwZiBsqWdK0KLVYg08766tcELYYgstC', NULL, 0, '2020-03-05 19:33:03', '2020-03-05 10:33:03', '2020-03-05 19:33:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bord`
--
ALTER TABLE `bord`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bord`
--
ALTER TABLE `bord`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
