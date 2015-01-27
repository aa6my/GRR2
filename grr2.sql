-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2015 at 07:01 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grr2`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
`game_id` int(5) NOT NULL,
  `game_title` varchar(100) NOT NULL,
  `game_summary` text NOT NULL,
  `game_content` text NOT NULL,
  `game_requirement` text NOT NULL,
  `game_genre` varchar(50) NOT NULL,
  `game_image` varchar(100) NOT NULL,
  `game_trailer` varchar(50) NOT NULL,
  `game_release` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_title`, `game_summary`, `game_content`, `game_requirement`, `game_genre`, `game_image`, `game_trailer`, `game_release`) VALUES
(1, 'Max Payne', 'Max Payne is a third-person shooter video game developed by Remedy Entertainment and published by Gathering of Developers on July 2001 for Microsoft Windows. Ports created later in the year for the PlayStation 2, Xbox and the Game Boy Advance were published by Rockstar Games. A Mac OS port was published on July 16, 2002 by MacSoft in North America and Feral Interactive in the rest of the world.[2] There were plans for a Dreamcast version of Max Payne, but they were canceled due to the discontinuation of the console.[5] The game was re-released on April 27, 2009 as a downloadable game in the Xbox Originals program for the Xbox 360.[6] The game was also re-released in the spring of 2012 as a downloadable game in the PlayStation Store for the PlayStation 3 under the PS2 classics banner, iOS and on Android.\r\n', 'Max Payne is a third-person shooter video game developed by Remedy Entertainment and published by Gathering of Developers on July 2001 for Microsoft Windows. Ports created later in the year for the PlayStation 2, Xbox and the Game Boy Advance were published by Rockstar Games. A Mac OS port was published on July 16, 2002 by MacSoft in North America and Feral Interactive in the rest of the world.[2] There were plans for a Dreamcast version of Max Payne, but they were canceled due to the discontinuation of the console.[5] The game was re-released on April 27, 2009 as a downloadable game in the Xbox Originals program for the Xbox 360.[6] The game was also re-released in the spring of 2012 as a downloadable game in the PlayStation Store for the PlayStation 3 under the PS2 classics banner, iOS and on Android.\r\n', 'Graphic Card', 'Third Person Shooter', 'maxpayne.jpg', '52vu-uzfbTQ', '2015-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
`review_id` int(5) NOT NULL,
  `game_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `review_title` varchar(50) NOT NULL,
  `review_story` text NOT NULL,
  `review_gameplay` varchar(10) NOT NULL,
  `review_graphic` varchar(10) NOT NULL,
  `review_music` varchar(10) NOT NULL,
  `review_pro` text NOT NULL,
  `review_contra` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `game_id`, `user_id`, `review_title`, `review_story`, `review_gameplay`, `review_graphic`, `review_music`, `review_pro`, `review_contra`) VALUES
(1, 1, 2, 'Test', 'Max Payne has suffered beyond reasonable limits. (It''s all in the name.) Nine years have passed since the last game in the series, yet little has changed for its long-suffering protagonist, who remains deeply traumatised by the death of his wife and child. ‘Trauma’ is the key word – in Greek, it means ‘wound’, and Max is someone who has never let his fully heal. To move on would be to forget – a betrayal of those he loved – and so instead he chooses to wallow in the past and the pain, with the help of brown liquor and white pills.', 'Max Payne ', 'two', 'three', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE IF NOT EXISTS `system_users` (
`id` bigint(20) unsigned NOT NULL,
  `email` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `salt` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `user_role_id` int(10) DEFAULT NULL,
  `last_login` datetime DEFAULT '0000-00-00 00:00:00',
  `last_login_ip` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `reset_request_code` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `reset_request_time` datetime DEFAULT NULL,
  `reset_request_ip` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `verification_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `email`, `password`, `salt`, `user_role_id`, `last_login`, `last_login_ip`, `reset_request_code`, `reset_request_time`, `reset_request_ip`, `verification_status`, `status`, `avatar`) VALUES
(1, 'admin@admin.com', '8e666f12a66c17a952a1d5e273428e478e02d943', '4f6cdddc4979b8.51434094', 1, '2015-01-25 12:23:25', '::1', NULL, NULL, NULL, 1, 1, ''),
(2, 'adminah@admin.com', '8e666f12a66c17a952a1d5e273428e478e02d943', '4f6cdddc4979b8.51434094', 1, '2015-01-25 12:23:25', '::1', NULL, NULL, NULL, 1, 1, 'Panda_Icon_by_cheepers.gif');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_map`
--

CREATE TABLE IF NOT EXISTS `user_access_map` (
  `user_role_id` int(10) NOT NULL,
  `controller` varchar(255) COLLATE utf8_bin NOT NULL,
  `permission` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_access_map`
--

INSERT INTO `user_access_map` (`user_role_id`, `controller`, `permission`) VALUES
(1, 'admin/welcome', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE IF NOT EXISTS `user_meta` (
  `user_id` bigint(20) unsigned NOT NULL,
  `first_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
`id` int(5) unsigned NOT NULL,
  `role_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `default_access` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_name`, `default_access`) VALUES
(1, 'Admin', '11111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
 ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
 ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_map`
--
ALTER TABLE `user_access_map`
 ADD PRIMARY KEY (`user_role_id`,`controller`);

--
-- Indexes for table `user_autologin`
--
ALTER TABLE `user_autologin`
 ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
MODIFY `game_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
MODIFY `review_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
