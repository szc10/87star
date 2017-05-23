-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-05-23 11:47:59
-- 服务器版本： 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `87STAR`
--
CREATE DATABASE IF NOT EXISTS `87STAR` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `87STAR`;

-- --------------------------------------------------------

--
-- 表的结构 `attendance`
--

CREATE TABLE `attendance` (
  `id` int(100) NOT NULL,
  `date` varchar(30) COLLATE utf8_bin NOT NULL,
  `machine_hour` int(10) NOT NULL,
  `work_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `off_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `message` char(200) COLLATE utf8_bin NOT NULL,
  `small_order_id` int(100) NOT NULL,
  `machine_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `coins_deal`
--

CREATE TABLE `coins_deal` (
  `id` int(100) NOT NULL,
  `context` varchar(255) COLLATE utf8_bin NOT NULL,
  `coins` int(100) NOT NULL,
  `a_user` int(100) NOT NULL,
  `p_user` int(100) NOT NULL,
  `create_time` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `coins_deal`
--

INSERT INTO `coins_deal` (`id`, `context`, `coins`, `a_user`, `p_user`, `create_time`) VALUES
(1, '这是一个测试', 10, 1, 2, '1234456678');

-- --------------------------------------------------------

--
-- 表的结构 `cost`
--

CREATE TABLE `cost` (
  `id` int(100) NOT NULL,
  `small_order_id` int(100) NOT NULL,
  `start_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `end_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `salary` double(10,2) NOT NULL,
  `subsidy` double(10,2) NOT NULL,
  `insurance` double(10,2) NOT NULL,
  `meal_supple` double(10,2) NOT NULL,
  `accom` double(10,2) NOT NULL,
  `state` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'checking'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `evaluate`
--

CREATE TABLE `evaluate` (
  `id` int(100) NOT NULL,
  `context` text COLLATE utf8_bin NOT NULL,
  `person_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `inf_list`
--

CREATE TABLE `inf_list` (
  `id` int(100) NOT NULL,
  `type` char(30) NOT NULL,
  `title` char(100) NOT NULL,
  `context` text NOT NULL,
  `create_time` varchar(30) NOT NULL,
  `state` char(10) NOT NULL DEFAULT 'sent',
  `user_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `inf_list`
--

INSERT INTO `inf_list` (`id`, `type`, `title`, `context`, `create_time`, `state`, `user_id`) VALUES
(1, '1', '123123', 'sdfvsdhui chneaicte4iutchiecwue87fchew9ifchdasokfhnkcHKUBCAKWECBFACICRYK', '10002585230', 'sent', 2);

-- --------------------------------------------------------

--
-- 表的结构 `machine`
--

CREATE TABLE `machine` (
  `id` int(100) NOT NULL,
  `mark` char(100) COLLATE utf8_bin NOT NULL,
  `machine_hour` int(10) NOT NULL,
  `model_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `master`
--

CREATE TABLE `master` (
  `id` int(100) NOT NULL,
  `name` char(100) COLLATE utf8_bin NOT NULL,
  `card_num` char(30) COLLATE utf8_bin DEFAULT NULL,
  `contacts` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `phone` char(20) COLLATE utf8_bin NOT NULL,
  `type` int(2) NOT NULL,
  `account_name` char(20) COLLATE utf8_bin DEFAULT NULL,
  `bank` char(100) COLLATE utf8_bin DEFAULT NULL,
  `account` int(30) DEFAULT NULL,
  `state` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'checking',
  `photo` char(250) COLLATE utf8_bin DEFAULT NULL,
  `create_time` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE `member` (
  `id` int(100) NOT NULL,
  `name` char(100) COLLATE utf8_bin DEFAULT NULL,
  `card_num` char(30) COLLATE utf8_bin DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `sex` char(10) COLLATE utf8_bin DEFAULT NULL,
  `phone` char(20) COLLATE utf8_bin DEFAULT NULL,
  `province` char(20) COLLATE utf8_bin DEFAULT NULL,
  `city` char(20) COLLATE utf8_bin DEFAULT NULL,
  `post` int(2) DEFAULT NULL,
  `type` char(20) COLLATE utf8_bin DEFAULT NULL,
  `bank` char(100) COLLATE utf8_bin DEFAULT NULL,
  `coins` int(30) DEFAULT NULL,
  `state` char(10) COLLATE utf8_bin DEFAULT '1',
  `photo` char(250) COLLATE utf8_bin DEFAULT NULL,
  `create_time` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `name`, `card_num`, `age`, `sex`, `phone`, `province`, `city`, `post`, `type`, `bank`, `coins`, `state`, `photo`, `create_time`, `password`, `username`) VALUES
(1, 'szc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 200, '1', NULL, NULL, '88919912', 'szc10'),
(2, '游戏', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, 200, '1', 'http://static.googleadsserving.cn/pagead/imgad?id=CICAgKDLj4Kw5wEQoAEY2AQyCH34du-EMK0l', NULL, '123456', 'guke');

-- --------------------------------------------------------

--
-- 表的结构 `model`
--

CREATE TABLE `model` (
  `id` int(100) NOT NULL,
  `model` char(100) COLLATE utf8_bin NOT NULL,
  `master_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE `order` (
  `id` int(100) NOT NULL,
  `province` char(20) COLLATE utf8_bin NOT NULL,
  `city` char(20) COLLATE utf8_bin NOT NULL,
  `address` char(100) COLLATE utf8_bin NOT NULL,
  `start_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `end_time` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `order_cost`
--

CREATE TABLE `order_cost` (
  `id` int(100) NOT NULL,
  `type` int(2) NOT NULL,
  `main_num` int(2) NOT NULL,
  `main_amount` int(10) NOT NULL,
  `vice_num` int(2) NOT NULL,
  `vice_amount` int(10) NOT NULL,
  `stu_num` int(2) NOT NULL,
  `stu_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `rush_order`
--

CREATE TABLE `rush_order` (
  `id` int(100) NOT NULL,
  `second_order_id` int(100) NOT NULL,
  `member_id` int(100) NOT NULL,
  `state` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'checking'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `second_order`
--

CREATE TABLE `second_order` (
  `id` int(100) NOT NULL,
  `order_cost_id` int(100) NOT NULL,
  `model_id` int(100) NOT NULL,
  `state` char(10) COLLATE utf8_bin DEFAULT 'checking'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `shop_custom`
--

CREATE TABLE `shop_custom` (
  `id` int(100) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `custom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `shop_custom`
--

INSERT INTO `shop_custom` (`id`, `shop_id`, `custom_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `small_order`
--

CREATE TABLE `small_order` (
  `id` int(100) NOT NULL,
  `order_cost_id` int(100) NOT NULL,
  `order_id` int(100) NOT NULL,
  `member_id` int(100) NOT NULL,
  `start_time` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `work_days` int(10) NOT NULL,
  `work_hour` int(10) NOT NULL,
  `machine_hour` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `traffic`
--

CREATE TABLE `traffic` (
  `id` int(100) NOT NULL,
  `small_order_id` int(100) NOT NULL,
  `is_return` int(2) NOT NULL,
  `travel_type` char(20) COLLATE utf8_bin NOT NULL,
  `train_type` char(20) COLLATE utf8_bin NOT NULL,
  `start_station` char(20) COLLATE utf8_bin NOT NULL,
  `start_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `end_station` char(20) COLLATE utf8_bin NOT NULL,
  `end_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `ticket` double(10,2) NOT NULL,
  `meal_supple` double(10,2) NOT NULL,
  `accom` double(10,2) NOT NULL,
  `state` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'checking'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coins_deal`
--
ALTER TABLE `coins_deal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inf_list`
--
ALTER TABLE `inf_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cost`
--
ALTER TABLE `order_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rush_order`
--
ALTER TABLE `rush_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_order`
--
ALTER TABLE `second_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_custom`
--
ALTER TABLE `shop_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `small_order`
--
ALTER TABLE `small_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `coins_deal`
--
ALTER TABLE `coins_deal`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `cost`
--
ALTER TABLE `cost`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `inf_list`
--
ALTER TABLE `inf_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `master`
--
ALTER TABLE `master`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `model`
--
ALTER TABLE `model`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `order`
--
ALTER TABLE `order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `order_cost`
--
ALTER TABLE `order_cost`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `rush_order`
--
ALTER TABLE `rush_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `second_order`
--
ALTER TABLE `second_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `shop_custom`
--
ALTER TABLE `shop_custom`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `small_order`
--
ALTER TABLE `small_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
