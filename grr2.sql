-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2015 at 05:09 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

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
  `game_title` varchar(50) NOT NULL,
  `game_release` date NOT NULL,
  `game_content` text NOT NULL,
  `game_image` text NOT NULL,
  `game_trailer` text NOT NULL,
  `game_summary` text NOT NULL,
  `game_requirement` text NOT NULL,
  `game_genre` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_title`, `game_release`, `game_content`, `game_image`, `game_trailer`, `game_summary`, `game_requirement`, `game_genre`) VALUES
(1, 'max payne', '2015-01-07', '<p>\r\n	Max Payne is a third-person shooter video game developed by Remedy Entertainment and published by Gathering of Developers on July 2001 for Microsoft Windows. Ports created later in the year for the PlayStation 2, Xbox and the Game Boy Advance were published by Rockstar Games. A Mac OS port was published on July 16, 2002 by MacSoft in North America and Feral Interactive in the rest of the world.[2] There were plans for a Dreamcast version of Max Payne, but they were canceled due to the discontinuation of the console.[5] The game was re-released on April 27, 2009 as a downloadable game in the Xbox Originals program for the Xbox 360.[6] The game was also re-released in the spring of 2012 as a downloadable game in the PlayStation Store for the PlayStation 3 under the PS2 classics banner, iOS and on Android.The game centers on the NYPD Detective Max Payne, who attempts to avenge the murder of his family. It features a gritty neo-noir style and uses graphic novel panels (with voice-overs) in place of animated cutscenes to narrate the game, as it draws inspiration from hard-boiled detective novels by authors like Mickey Spillane. The game contains many allusions to Norse mythology, particularly the myth of Ragnar&ouml;k, and several of the names used in the game are those of the Norse gods and mythos. The gameplay is heavily influenced by the Hong Kong action cinema genre, particularly the work of director John Woo,[7][8][9] and it was one the first games to feature the bullet time effect popularized by The Matrix.Max Payne received very positive reviews and was praised for its exciting gunplay and use of noir storytelling devices. The game won a large number of accolades,[10] including the BAFTA Award.[11] As of 2011, the Max Payne game franchise has sold over 7.5 million copies.[12] It also inspired a feature film under the same title.</p>\r\n', '7d828-maxpayne.jpg', 'emtu-pteUgw', '<p>\r\n	Max Payne is a third-person shooter in which the player assumes the role of its titular character, Max Payne. Almost all the gameplay involves bullet time-based gun-fights and levels are generally straightforward, occasionally incorporating platforming and puzzle-solving elements. The game&#39;s storyline is advanced by the player following Max&#39;s internal monologue as the character determines what his next steps should be. Several of the game&#39;s levels involve surrealistic nightmares and drug-related hallucinations of Payne.Initially, the player&#39;s only weapon is a semi-automatic pistol. As the player progresses, access to other firearms is given, including melee and hand-thrown weapons. Some of the game&#39;s weapons can be dual wielded. Max regains health by taking painkillers, which the player collects. The game&#39;s AI is heavily dependent on pre-scripted commands: most of the apparently intelligent behavior exhibited by enemies (such as taking cover, retreating from the player, or throwing grenades) actually is pre-scripted.</p>\r\n', '<p>\r\n	RAM</p>\r\n', '<p>\r\n	Third-person shooter</p>\r\n'),
(2, 'Tomb Raider', '2015-02-24', '<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	<span style="color:#fff0f5;"><i><b>Tomb Raider</b></i>&nbsp;is a&nbsp;</span><a href="http://en.wikipedia.org/wiki/Media_franchise" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Media franchise"><span style="color:#fff0f5;">media franchise</span></a><span style="color:#fff0f5;">&nbsp;that began as a video game series and includes comic books, novels, theme park rides, and movies, centering around the adventures of the British archaeologist&nbsp;</span><a href="http://en.wikipedia.org/wiki/Lara_Croft" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Lara Croft"><span style="color:#fff0f5;">Lara Croft</span></a><span style="color:#fff0f5;">. The first six games in the series were&nbsp;</span><a href="http://en.wikipedia.org/wiki/Video_game_developer" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Video game developer"><span style="color:#fff0f5;">developed</span></a><span style="color:#fff0f5;">&nbsp;by</span><a href="http://en.wikipedia.org/wiki/Core_Design" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Core Design"><span style="color:#fff0f5;">Core Design</span></a><span style="color:#fff0f5;">, while&nbsp;</span><a href="http://en.wikipedia.org/wiki/Crystal_Dynamics" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Crystal Dynamics"><span style="color:#fff0f5;">Crystal Dynamics</span></a><span style="color:#fff0f5;">&nbsp;developed the latest five. Two movies&mdash;</span><i><a href="http://en.wikipedia.org/wiki/Lara_Croft:_Tomb_Raider" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Lara Croft: Tomb Raider"><span style="color:#fff0f5;">Lara Croft: Tomb Raider</span></a></i><span style="color:#fff0f5;">&nbsp;and&nbsp;</span><i><a href="http://en.wikipedia.org/wiki/Lara_Croft_Tomb_Raider:_The_Cradle_of_Life" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Lara Croft Tomb Raider: The Cradle of Life"><span style="color:#fff0f5;">Lara Croft Tomb Raider: The Cradle of Life</span></a></i><span style="color:#fff0f5;">&mdash;have been produced, starring actress&nbsp;</span><a href="http://en.wikipedia.org/wiki/Angelina_Jolie" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Angelina Jolie"><span style="color:#fff0f5;">Angelina Jolie</span></a><span style="color:#fff0f5;">&nbsp;as Lara Croft, the first of which is still the highest-grossing film adaptation of a video game ever released in the US, and third worldwide.</span></p>\r\n<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	<span style="color:#fff0f5;">Since the release of the original&nbsp;</span><i><a href="http://en.wikipedia.org/wiki/Tomb_Raider_(1996_video_game)" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Tomb Raider (1996 video game)"><span style="color:#fff0f5;">Tomb Raider</span></a></i><span style="color:#fff0f5;">&nbsp;in 1996, notable for its female protagonist, the series developed into a lucrative</span><a href="http://en.wikipedia.org/wiki/Media_franchise" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Media franchise"><span style="color:#fff0f5;">franchise</span></a><span style="color:#fff0f5;">&nbsp;of related media, and Lara became a major icon of the virtual gaming industry. In 2006, Lara Croft was inducted into the</span><a href="http://en.wikipedia.org/wiki/Walk_of_Game" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Walk of Game"><span style="color:#fff0f5;">Walk of Game</span></a><span style="color:#fff0f5;">&nbsp;and&nbsp;</span><i><a href="http://en.wikipedia.org/wiki/Guinness_World_Records" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Guinness World Records"><span style="color:#fff0f5;">Guinness World Records</span></a></i><span style="color:#fff0f5;">&nbsp;has recognised her as the &quot;Most Successful Human Virtual Game&nbsp;</span><a class="mw-redirect" href="http://en.wikipedia.org/wiki/Heroine" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Heroine"><span style="color:#fff0f5;">Heroine</span></a></p>\r\n', 'd6e55-0303s_04.jpg', 'HQ4OkyvfFBw', '<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	<span style="color:#fff0f5;"><i><b>Tomb Raider</b></i>&nbsp;is a&nbsp;</span><a href="http://en.wikipedia.org/wiki/Media_franchise" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Media franchise"><span style="color:#fff0f5;">media franchise</span></a><span style="color:#fff0f5;">&nbsp;that began as a video game series and includes comic books, novels, theme park rides, and movies, centering around the adventures of the British archaeologist&nbsp;</span><a href="http://en.wikipedia.org/wiki/Lara_Croft" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Lara Croft"><span style="color:#fff0f5;">Lara Croft</span></a><span style="color:#fff0f5;">. The first six games in the series were&nbsp;</span><a href="http://en.wikipedia.org/wiki/Video_game_developer" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Video game developer"><span style="color:#fff0f5;">developed</span></a><span style="color:#fff0f5;">&nbsp;by</span><a href="http://en.wikipedia.org/wiki/Core_Design" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Core Design"><span style="color:#fff0f5;">Core Design</span></a><span style="color:#fff0f5;">, while&nbsp;</span><a href="http://en.wikipedia.org/wiki/Crystal_Dynamics" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Crystal Dynamics"><span style="color:#fff0f5;">Crystal Dynamics</span></a><span style="color:#fff0f5;">&nbsp;developed the latest five. Two movies&mdash;</span><i><a href="http://en.wikipedia.org/wiki/Lara_Croft:_Tomb_Raider" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Lara Croft: Tomb Raider"><span style="color:#fff0f5;">Lara Croft: Tomb Raider</span></a></i><span style="color:#fff0f5;">&nbsp;and&nbsp;</span><i><a href="http://en.wikipedia.org/wiki/Lara_Croft_Tomb_Raider:_The_Cradle_of_Life" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Lara Croft Tomb Raider: The Cradle of Life"><span style="color:#fff0f5;">Lara Croft Tomb Raider: The Cradle of Life</span></a></i><span style="color:#fff0f5;">&mdash;have been produced, starring actress&nbsp;</span><a href="http://en.wikipedia.org/wiki/Angelina_Jolie" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Angelina Jolie"><span style="color:#fff0f5;">Angelina Jolie</span></a><span style="color:#fff0f5;">&nbsp;as Lara Croft, the first of which is still the highest-grossing film adaptation of a video game ever released in the US, and third worldwide.</span></p>\r\n<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	<span style="color:#fff0f5;">Since the release of the original&nbsp;</span><i><a href="http://en.wikipedia.org/wiki/Tomb_Raider_(1996_video_game)" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Tomb Raider (1996 video game)"><span style="color:#fff0f5;">Tomb Raider</span></a></i><span style="color:#fff0f5;">&nbsp;in 1996, notable for its female protagonist, the series developed into a lucrative</span><a href="http://en.wikipedia.org/wiki/Media_franchise" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Media franchise"><span style="color:#fff0f5;">franchise</span></a><span style="color:#fff0f5;">&nbsp;of related media, and Lara became a major icon of the virtual gaming industry. In 2006, Lara Croft was inducted into the</span><a href="http://en.wikipedia.org/wiki/Walk_of_Game" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Walk of Game"><span style="color:#fff0f5;">Walk of Game</span></a><span style="color:#fff0f5;">&nbsp;and&nbsp;</span><i><a href="http://en.wikipedia.org/wiki/Guinness_World_Records" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Guinness World Records"><span style="color:#fff0f5;">Guinness World Records</span></a></i><span style="color:#fff0f5;">&nbsp;has recognised her as the &quot;Most Successful Human Virtual Game&nbsp;</span><a class="mw-redirect" href="http://en.wikipedia.org/wiki/Heroine" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Heroine"><span style="color:#fff0f5;">Heroine</span></a></p>\r\n', '<p>\r\n	xxxxxxxxxxxxxx</p>\r\n', '<p>\r\n	asdasdasdas asdasdasd</p>\r\n'),
(3, 'Bubble shooter', '2015-02-12', '<p>\r\n	<span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">Bubble Shooter&quot; is clone of the&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/Puzzle_Bobble_2" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Puzzle Bobble 2"><span style="color:#fff0f5;">Puzzle Bobble 2</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;game created by&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/Taito_Corporation" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Taito Corporation"><span style="color:#fff0f5;">Taito Corporation</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;in 1995. The first Bubble Shooter game for Windows PC was released on March 26, 2001</span></span><sup class="reference" id="cite_ref-1" style="line-height: 1; unicode-bidi: -webkit-isolate; font-size: 11.1999998092651px; color: rgb(37, 37, 37); font-family: sans-serif;"><a href="http://en.wikipedia.org/wiki/Bubble_Shooter#cite_note-1" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;"><span style="color:#fff0f5;">[1]</span></a></sup><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">by a casual game developer and publisher Absolutist (It should be noted that the game&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/Snood_(video_game)" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Snood (video game)"><span style="color:#fff0f5;">Snood</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;was created and playable on other platforms before this date, but the date Snood became available for windows PC may be later than this date.). The game had been considered as a product for children for a long time. But addictive mechanics of the game won a wider audience of teens and adults. Due to its simplicity, the game quickly spread to portable devices. Short game sessions made Bubble Shooter popular on many sites and is used to generate traffic and audience for advertising. A free flash version of the game found its place on the major gaming portals like&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/GameHouse" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="GameHouse"><span style="color:#fff0f5;">GameHouse</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">,&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/WildTangent" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="WildTangent"><span style="color:#fff0f5;">WildTangent</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">, SpilGames, Kaisergames</span></span></p>\r\n', 'a9dfc-bubble-shooter.jpg', 'MrG4IoFuArU\r\n', '<p>\r\n	<span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">Bubble Shooter&quot; is clone of the&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/Puzzle_Bobble_2" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Puzzle Bobble 2"><span style="color:#fff0f5;">Puzzle Bobble 2</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;game created by&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/Taito_Corporation" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Taito Corporation"><span style="color:#fff0f5;">Taito Corporation</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;in 1995. The first Bubble Shooter game for Windows PC was released on March 26, 2001</span></span><sup class="reference" id="cite_ref-1" style="line-height: 1; unicode-bidi: -webkit-isolate; font-size: 11.1999998092651px; color: rgb(37, 37, 37); font-family: sans-serif;"><a href="http://en.wikipedia.org/wiki/Bubble_Shooter#cite_note-1" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;"><span style="color:#fff0f5;">[1]</span></a></sup><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">by a casual game developer and publisher Absolutist (It should be noted that the game&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/Snood_(video_game)" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="Snood (video game)"><span style="color:#fff0f5;">Snood</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;was created and playable on other platforms before this date, but the date Snood became available for windows PC may be later than this date.). The game had been considered as a product for children for a long time. But addictive mechanics of the game won a wider audience of teens and adults. Due to its simplicity, the game quickly spread to portable devices. Short game sessions made Bubble Shooter popular on many sites and is used to generate traffic and audience for advertising. A free flash version of the game found its place on the major gaming portals like&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/GameHouse" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="GameHouse"><span style="color:#fff0f5;">GameHouse</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">,&nbsp;</span></span><a href="http://en.wikipedia.org/wiki/WildTangent" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" title="WildTangent"><span style="color:#fff0f5;">WildTangent</span></a><span style="color:#fff0f5;"><span style="font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">, SpilGames, Kaisergames</span></span></p>\r\n', '<p>\r\n	ram 7GB</p>\r\n', '<p>\r\n	Family</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
`review_id` int(5) NOT NULL,
  `game_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL COMMENT 'system_users table',
  `review_title` varchar(50) NOT NULL,
  `review_story` text NOT NULL,
  `review_gameplay` varchar(50) NOT NULL COMMENT 'rating',
  `review_graphic` varchar(50) NOT NULL COMMENT 'rating',
  `review_music` varchar(50) NOT NULL COMMENT 'rating',
  `review_pro` text NOT NULL,
  `review_contra` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `game_id`, `user_id`, `review_title`, `review_story`, `review_gameplay`, `review_graphic`, `review_music`, `review_pro`, `review_contra`) VALUES
(1, 1, 2, 'test title', 'Max Payne is a third-person shooter video game developed by Remedy Entertainment and published by Gathering of Developers on July 2001 for Microsoft Windows. Ports created later in the year for the PlayStation 2, Xbox and the Game Boy Advance were published by Rockstar Games. A Mac OS port was published on July 16, 2002 by MacSoft in North America and Feral Interactive in the rest of the world.[2] There were plans for a Dreamcast version of Max Payne, but they were canceled due to the discontinuation of the console.[5] The game was re-released on April 27, 2009 as a downloadable game in the Xbox Originals program for the Xbox 360.[6] The game was also re-released in the spring of 2012 as a downloadable game in the PlayStation Store for the PlayStation 3 under the PS2 classics banner, iOS and on Android.', 'two', 'three', 'five', 'good', 'bad'),
(2, 2, 2, 'hjkhjk', '<p>\r\n	fdghfg</p>\r\n', 'three', 'four', 'one', '<p>\r\n	yuiyiy</p>\r\n', '<p>\r\n	jklhkljhkljhkl</p>\r\n');

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
  `avatar` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `email`, `password`, `salt`, `user_role_id`, `last_login`, `last_login_ip`, `reset_request_code`, `reset_request_time`, `reset_request_ip`, `verification_status`, `status`, `avatar`) VALUES
(1, 'admin@admin.com', '8e666f12a66c17a952a1d5e273428e478e02d943', '4f6cdddc4979b8.51434094', 1, '2015-02-23 14:56:26', '::1', NULL, NULL, NULL, 1, 1, ''),
(2, 'adminah@admin.com', '8e666f12a66c17a952a1d5e273428e478e02d943', '4f6cdddc4979b8.51434094', 1, '2015-01-25 19:11:49', '192.168.0.128', NULL, NULL, NULL, 1, 1, 'Panda_Icon_by_cheepers.gif');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

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
MODIFY `game_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
MODIFY `review_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
