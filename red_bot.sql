-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2018 at 11:56 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lhwb`
--

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `word` varchar(13) NOT NULL DEFAULT '',
  `lastUsed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `counter` bigint(20) NOT NULL DEFAULT '0',
  `user` varchar(32) NOT NULL,
  `userID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`word`, `lastUsed`, `counter`, `user`, `userID`) VALUES
('oof', '2018-06-13 22:53:47', 0, 'User', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playcount` int(255) DEFAULT NULL,
  `album` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `albumart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `name`, `path`, `type`, `playcount`, `album`, `albumart`) VALUES
(3, 'Viva La Vida', 'Viva La Vida.mp3', 'released', 1137, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(4, 'Wildest Dreams Grammys', 'Wildest Dreams Grammys.mp3', 'released', 1153, 'Grammy Museum', 'https://i.imgur.com/i1QDoZR.jpg'),
(5, 'Blank Space Grammys', 'Blank Space Grammys.mp3', 'released', 1114, 'Grammy Museum', 'https://i.imgur.com/i1QDoZR.jpg'),
(6, 'I Wish You Would', 'I Wish You Would.mp3', 'released', 1189, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(7, '22', '22.mp3', 'released', 1239, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(8, 'This Love', 'This Love.mp3', 'released', 1189, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(9, 'New Romantics', 'New Romantics.mp3', 'released', 1204, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(10, 'Style', 'Style.mp3', 'released', 1201, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(11, 'Safe & Sound', 'Safe & Sound.mp3', 'released', 1154, 'The Hunger Games Soundtrack', 'https://i.imgur.com/KvcKd6Y.jpg'),
(12, 'Sweet Tea And God\'s Graces', 'Sweet Tea And God\'s Graces.mp3', 'unreleased', 6, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(13, 'A Perfectly Good Heart', 'A Perfectly Good Heart.mp3', 'released', 1194, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(14, 'A Place In This World', 'A Place In This World.mp3', 'released', 1157, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(15, 'All Too Well Grammys', 'All Too Well Grammys.mp3', 'released', 1173, 'Grammy Awards', 'http://i.imgur.com/as6dlgi.jpg'),
(16, 'All Too Well', 'All Too Well.mp3', 'released', 1186, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(17, 'All You Had To Do Was Stay', 'All You Had To Do Was Stay.mp3', 'released', 1221, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(18, 'Am I Ready For Love', 'Am I Ready For Love.mp3', 'unreleased', 3, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(19, 'American Girl', 'American Girl.mp3', 'released', 1185, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(20, 'Angelina', 'Angelina.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(21, 'Back To December Acoustic', 'Back To December Acoustic.mp3', 'released', 1127, 'Speak Now Acoustic', 'https://i.imgur.com/TNKbt8Y.jpg'),
(22, 'Back To December', 'Back To December.mp3', 'released', 1141, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(23, 'Beautiful Eyes', 'Beautiful Eyes.mp3', 'released', 1100, 'Beautiful Eyes EP', 'https://i.imgur.com/7q3N0F6.jpg'),
(24, 'Begin Again', 'Begin Again.mp3', 'released', 1167, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(25, 'Being With My Baby Acoustic', 'Being With My Baby Acoustic.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(26, 'Better Off', 'Better Off.mp3', 'unreleased', 8, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(27, 'Blank Space - Voice Memos', 'Blank Space - Voice Memos.mp3', 'unreleased', 1, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(28, 'Blank Space', 'Blank Space.mp3', 'released', 1184, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(29, 'Brand New World', 'Brand New World.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(30, 'Breathless', 'Breathless.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(31, 'Brought Up That Way', 'Brought Up That Way.mp3', 'unreleased', 5, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(32, 'By The Way', 'By The Way.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(33, 'Change', 'Change.mp3', 'released', 1179, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(34, 'Check Out This View', 'Check Out This View.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(35, 'Clean Live', 'Clean Live.mp3', 'released', 1179, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(36, 'Closest To A Cowboy', 'Closest To A Cowboy.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(37, 'Come In With The Rain', 'Come In With The Rain.mp3', 'released', 1151, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(38, 'Cross My Heart', 'Cross My Heart.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(39, 'Didn\'t They', 'Didn\'t They.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(40, 'Don\'t Hate Me For Loving You', 'Don\'t Hate Me For Loving You.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(41, 'Drops Of Jupiter Live', 'Drops Of Jupiter Live.mp3', 'released', 1150, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(42, 'Everything Has Changed', 'Everything Has Changed.mp3', 'released', 1190, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(43, 'Eyes Open', 'Eyes Open.mp3', 'released', 1200, 'The Hunger Games', 'https://i.imgur.com/FIQdRNK.jpg'),
(44, 'Fall Back On You', 'Fall Back On You.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(45, 'Fearless', 'Fearless.mp3', 'released', 1212, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(46, 'Firefly', 'Firefly.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(47, 'For You', 'For You.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(48, 'Forever & Always Piano', 'Forever & Always Piano.mp3', 'released', 1126, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(49, 'Half Of My Heart', 'Half Of My Heart.mp3', 'released', 1150, 'Battle Studies - Feature', 'https://i.imgur.com/Bs34TEr.jpg'),
(50, 'Haunted Live', 'Haunted Live.mp3', 'released', 1154, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(51, 'Here You Come Again', 'Here You Come Again.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(52, 'Highway Don\'t Care', 'Highway Don\'t Care.mp3', 'released', 1143, 'Two Lanes of Freedom - Feature', 'https://i.imgur.com/6Dxgc9J.jpg'),
(53, 'Holy Ground', 'Holy Ground.mp3', 'released', 1159, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(54, 'How You Get The Girl', 'How You Get The Girl.mp3', 'released', 1215, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(55, 'Hysteria ft. Def Leppard', 'Hysteria ft. Def Leppard.mp3', 'unreleased', 27, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(56, 'I Don\'t Wanna Live Forever', 'I Don\'t Wanna Live Forever.mp3', 'released', 1194, 'Fifty Shades Darker Soundtrack', 'https://i.imgur.com/Etkvhn0.jpg'),
(57, 'I Knew You Were Trouble.', 'I Knew You Were Trouble..mp3', 'released', 1115, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(58, 'I Knew You Were Trouble', 'I Knew You Were Trouble..mp3', 'released', 1115, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(59, 'IKYWT', 'I Knew You Were Trouble..mp3', 'released', 1115, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(60, 'I Know What I Want', 'I Know What I Want.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(61, 'I Want You Back Live', 'I Want You Back Live.mp3', 'released', 1219, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(62, 'I Want You Back', 'I Want You Back.mp3', 'released', 1181, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(63, 'I\'d Lie', 'I\'d Lie.mp3', 'unreleased', 34, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(64, 'In The Pouring Rain', 'In The Pouring Rain.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(65, 'Invisible', 'Invisible.mp3', 'released', 1186, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(66, 'Last Christmas', 'Last Christmas.mp3', 'unreleased', 3, 'Sounds of the Season', 'https://i.imgur.com/Gov7vXz.jpg'),
(67, 'Last Kiss Live', 'Last Kiss Live.mp3', 'released', 1205, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(68, 'Live For The Little Things', 'Live For The Little Things.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(69, 'Long Live Live', 'Long Live Live.mp3', 'released', 1133, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(70, 'Long Time Coming', 'Long Time Coming.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(71, 'Love Story 1989', 'Love Story 1989.mp3', 'released', 1197, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(72, 'Love Story Live', 'Love Story Live.mp3', 'released', 1173, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(73, 'Love They Haven\'t Thought Of Yet', 'Love They Haven\'t Thought Of Yet.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(74, 'Lucky You', 'Lucky You.mp3', 'unreleased', 10, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(75, 'Mandolin', 'Mandolin.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(76, 'Mary\'s Song Oh My My My', 'Mary\'s Song Oh My My My.mp3', 'released', 1158, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(77, 'Me And Britney', 'Me And Britney.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(78, 'Mean Live', 'Mean Live.mp3', 'released', 1167, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(79, 'Mine', 'Mine.mp3', 'released', 1238, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(80, 'My Cure', 'My Cure.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(81, 'My Turn To Be Me', 'My Turn To Be Me.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(82, 'Nashville', 'Nashville.mp3', 'released', 1220, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(83, 'Need You Now', 'Need You Now.mp3', 'unreleased', 6, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(84, 'Never Mind', 'Never Mind.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(85, 'Oh My My My Demo', 'Oh My My My Demo.mp3', 'released', 1066, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(86, 'One Thing Studio', 'One Thing Studio.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(87, 'One Thing', 'One Thing.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(88, 'Our Last Night', 'Our Last Night.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(89, 'Our Song ft. Def Leppard', 'Our Song ft. Def Leppard.mp3', 'unreleased', 34, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(90, 'Our Song Pop Mix', 'Our Song Pop Mix.mp3', 'released', 1190, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(91, 'Out Of The Woods Live', 'Out Of The Woods Live.mp3', 'released', 1172, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(92, 'Out Of The Woods', 'Out Of The Woods.mp3', 'released', 1228, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(93, 'Permanent Marker', 'Permanent Marker.mp3', 'unreleased', 15, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(94, 'Picture To Burn ft. Def Leppard', 'Picture To Burn ft. Def Leppard.mp3', 'unreleased', 23, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(95, 'Pour Some Sugar On Me ft. Def Leppard', 'Pour Some Sugar On Me ft. Def Leppard.mp3', 'unreleased', 29, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(96, 'Rain Song', 'Rain Song.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(97, 'Red', 'Red.mp3', 'released', 1252, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(98, 'Sad Beautiful Tragic', 'Sad Beautiful Tragic.mp3', 'released', 1210, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(99, 'Same Girl', 'Same Girl.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(100, 'Shake It Off Acoustic', 'Shake It Off Acoustic.mp3', 'released', 1155, '1989 Acoustic', 'https://i.imgur.com/i1QDoZR.jpg'),
(101, 'Shake It Off', 'Shake It Off.mp3', 'released', 1174, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(102, 'Should\'ve Said No US', 'Should\'ve Said No US.mp3', 'released', 1185, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(103, 'Sparks Fly Original Lyrics', 'Sparks Fly Original Lyrics.mp3', 'released', 1259, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(104, 'Sparks Fly Live', 'Sparks Fly Live.mp3', 'released', 1203, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(105, 'Starlight', 'Starlight.mp3', 'released', 1184, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(106, 'Stay Beautiful', 'Stay Beautiful.mp3', 'released', 1131, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(107, 'Stay Stay Stay', 'Stay Stay Stay.mp3', 'released', 1157, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(108, 'Stupid Boy', 'Stupid Boy.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(109, 'Style Live', 'Style Live.mp3', 'released', 1094, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(110, 'Teardrops On My Guitar ft. Def Leppard', 'Teardrops On My Guitar ft. Def Leppard.mp3', 'unreleased', 27, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(111, 'Teardrops On My Guitar Pop', 'Teardrops On My Guitar Pop.mp3', 'released', 1258, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(112, 'Tell Me Why', 'Tell Me Why.mp3', 'released', 1182, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(113, 'Tell Me', 'Tell Me.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(114, 'Ten Dollars And A Six Pack', 'Ten Dollars And A Six Pack.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(115, 'The Last Time', 'The Last Time.mp3', 'released', 1177, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(116, 'The Outside', 'The Outside.mp3', 'released', 1094, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(117, 'The Story Of Us Live', 'The Story Of Us Live.mp3', 'released', 1142, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(118, 'The Way I Loved You', 'The Way I Loved You.mp3', 'released', 1146, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(119, 'Tied Together With A Smile', 'Tied Together With A Smile.mp3', 'released', 1215, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(120, 'Today Was a Fairytale', 'Today Was a Fairytale.mp3', 'released', 1208, 'Valentine\'s Day', 'https://i.imgur.com/8pPGLAG.jpg'),
(121, 'Treacherous', 'Treacherous.mp3', 'released', 1189, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(122, 'Umbrella', 'Umbrella.mp3', 'released', 1154, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(123, 'We Are Never Ever Getting Back Together Live', 'We Are Never Ever Getting Back Together Live.mp3', 'released', 1173, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(124, 'WANEGBT Live', 'We Are Never Ever Getting Back Together Live.mp3', 'released', 1173, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(125, 'We Are Never Ever Getting Back Together Seine', 'We Are Never Ever Getting Back Together Seine.mp3', 'released', 1155, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(126, 'WANEGBT Seine', 'We Are Never Ever Getting Back Together Seine.mp3', 'released', 1155, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(127, 'We Are Never Ever Getting Back Together', 'We Are Never Ever Getting Back Together.mp3', 'released', 1165, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(128, 'WANEGBT', 'We Are Never Ever Getting Back Together.mp3', 'released', 1165, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(129, 'WANGBT', 'We Are Never Ever Getting Back Together.mp3', 'released', 1165, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(130, 'We Are Never Getting Back Together Live', 'We Are Never Getting Back Together Live.mp3', 'released', 1151, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(131, 'WANGBT Live', 'We Are Never Getting Back Together Live.mp3', 'released', 1151, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(132, 'What Do You Say', 'What Do You Say.mp3', 'unreleased', 5, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(133, 'When Daddy Let Me Drive', 'When Daddy Let Me Drive.mp3', 'unreleased', 3, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(134, 'When Love And Hate Collide ft. Def Leppard', 'When Love And Hate Collide ft. Def Leppard.mp3', 'unreleased', 23, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(135, 'White Blank Page', 'White Blank Page.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(136, 'Wonderland', 'Wonderland.mp3', 'released', 1209, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(137, 'You Belong With Me', 'You Belong With Me.mp3', 'released', 1194, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(138, 'Your Anything', 'Your Anything.mp3', 'unreleased', 3, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(139, 'Your Face Acoustic', 'Your Face Acoustic.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(140, 'Your Face', 'Your Face.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(141, 'Mean', 'Mean.mp3', 'released', 1195, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(142, 'Haunted', 'Haunted.mp3', 'released', 1229, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(143, 'Fearless Acoustic', 'Fearless Acoustic.mp3', 'released', 1244, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(144, 'Come Back... Be Here', 'Come Back... Be Here.mp3', 'released', 1192, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(145, 'Honey Baby', 'Honey Baby.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(146, 'I Know Places', 'I Know Places.mp3', 'released', 1191, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(147, 'Just South Of Knowing Why Drive All Night', 'Just South Of Knowing Why Drive All Night.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(148, 'I Heart Question Mark Demo', 'I Heart Question Mark Demo.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(149, 'Haunted Acoustic', 'Haunted Acoustic.mp3', 'released', 1177, 'Speak Now Acoustic', 'https://i.imgur.com/TNKbt8Y.jpg'),
(150, 'Jump Then Fall', 'Jump Then Fall.mp3', 'released', 1095, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(151, 'Clean', 'Clean.mp3', 'released', 1199, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(152, 'Dear John Live', 'Dear John Live.mp3', 'released', 1173, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(153, 'I Heart', 'I Heart.mp3', 'unreleased', 18, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(154, 'If This Was A Movie', 'If This Was A Movie.mp3', 'released', 1144, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(155, 'American Boy', 'American Boy.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(156, 'Fearless Demo', 'Fearless Demo.mp3', 'released', 1188, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(157, 'Matches', 'Matches.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(158, 'Love Story 2.0', 'Love Story 2.0.m4a', 'released', 1160, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(159, 'Bad Blood Remix', 'Bad Blood Remix.mp3', 'released', 1113, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(160, 'Bad Blood', 'Bad Blood.mp3', 'released', 1151, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(161, 'I Wished On A Plane', 'I Wished On A Plane.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(162, 'Love To Lose', 'Love To Lose.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(163, 'Innocent', 'Innocent.mp3', 'released', 1240, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(164, 'Dear John', 'Dear John.mp3', 'released', 1188, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(165, 'Enchanted Live', 'Enchanted Live.mp3', 'released', 1147, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(166, 'Breathe', 'Breathe.mp3', 'released', 1170, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(167, 'All Night Diner', 'All Night Diner.mp3', 'unreleased', 15, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(168, 'Love ft. Def Leppard', 'Love ft. Def Leppard.mp3', 'unreleased', 25, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(169, 'My Songs Know What You Did', 'My Songs Know What You Did.mp3', 'released', 1188, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(170, 'Christmas Must Be Something More', 'Christmas Must Be Something More.mp3', 'unreleased', 2, 'Sounds of the Season', 'https://i.imgur.com/Gov7vXz.jpg'),
(171, 'Better Than Revenge', 'Better Than Revenge.mp3', 'released', 1180, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(172, 'Both Of Us', 'Both Of Us.mp3', 'released', 1214, 'Strange Clouds - Feature', 'https://i.imgur.com/z5gPv3w.jpg'),
(173, 'Our Last Night Acoustic', 'Our Last Night Acoustic.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(174, 'Out Of The Woods Grammys', 'Out Of The Woods Grammys.mp3', 'released', 1153, 'Grammy Museum', 'https://i.imgur.com/i1QDoZR.jpg'),
(175, 'Perfect Have I Loved Acoustic Demo', 'Perfect Have I Loved Acoustic Demo.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(176, 'Picture To Burn', 'Picture To Burn.mp3', 'released', 1148, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(177, 'Point Of View', 'Point Of View.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(178, 'R-E-V-E-N-G-E', 'R-E-V-E-N-G-E.mp3', 'unreleased', 13, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(179, 'Riptide', 'Riptide.mp3', 'released', 1178, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(180, 'Ronan', 'Ronan.mp3', 'unreleased', 26, 'Ronan', 'https://i.imgur.com/BPAffst.jpg'),
(181, 'Santa Baby', 'Santa Baby.mp3', 'unreleased', 3, 'Sounds of the Season', 'https://i.imgur.com/Gov7vXz.jpg'),
(182, 'Shake It Off Live', 'Shake It Off Live.mp3', 'released', 1173, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(183, 'Speak Now Live', 'Speak Now Live.mp3', 'released', 1193, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(184, 'Speak Now', 'Speak Now.mp3', 'released', 1204, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(185, 'State Of Grace', 'State Of Grace.mp3', 'released', 1171, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(186, 'Sugar', 'Sugar.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(187, 'Superman', 'Superman.mp3', 'released', 1176, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(188, 'Superstar', 'Superstar.mp3', 'released', 1159, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(189, 'Teardrops On My Guitar', 'Teardrops On My Guitar.mp3', 'released', 1145, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(190, 'That\'s Life', 'That\'s Life.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(191, 'Thats When', 'Thats When.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(192, 'The Best Day', 'The Best Day.mp3', 'released', 1147, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(193, 'The Diary Of Me', 'The Diary Of Me.mp3', 'unreleased', 4, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(194, 'The Moment I Knew', 'The Moment I Knew.mp3', 'released', 1091, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(195, 'The Story Of Us', 'The Story Of Us.mp3', 'released', 1260, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(196, 'Thirteen Blocks', 'Thirteen Blocks.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(197, 'This Is Really Happening', 'This Is Really Happening.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(198, 'This Love Live', 'This Love Live.mp3', 'released', 1162, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(199, 'Till Brad Pitt Comes Along', 'Till Brad Pitt Comes Along.mp3', 'unreleased', 4, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(200, 'Tim McGraw Acoustic', 'Tim McGraw Acoustic.mp3', 'released', 1222, 'Taylor Swift Acoustic', 'https://i.imgur.com/w0bksSN.jpg'),
(201, 'Tim Mcgraw', 'Tim Mcgraw.mp3', 'released', 1187, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(202, 'Untouchable', 'Untouchable.mp3', 'released', 1149, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(203, 'Wait For Me', 'Wait For Me.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(204, 'We Were Happy', 'We Were Happy.mp3', 'unreleased', 3, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(205, 'Welcome Distraction', 'Welcome Distraction.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(206, 'Welcome To New York', 'Welcome To New York.mp3', 'released', 1210, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(207, 'What To Wear', 'What To Wear.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(208, 'Who I\'ve Always Been', 'Who I\'ve Always Been.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(209, 'Wildest Dreams Acoustic', 'Wildest Dreams Acoustic.mp3', 'released', 1146, '1989 Acoustic', 'https://i.imgur.com/i1QDoZR.jpg'),
(210, 'Wildest Dreams Enchanted Live', 'Wildest Dreams Enchanted Live.mp3', 'released', 1179, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(211, 'Enchanted Wildest Dreams', 'Wildest Dreams Enchanted Live.mp3', 'released', 1179, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(212, 'Enchanted/Wildest Dreams Live', 'Wildest Dreams Enchanted Live.mp3', 'released', 1179, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(213, 'Wildest Dreams', 'Wildest Dreams.mp3', 'released', 1209, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(214, 'You Do', 'You Do.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(215, 'You Don\'t Have To Call Me', 'You Don\'t Have To Call Me.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(216, 'You\'re Not Sorry', 'You\'re Not Sorry.mp3', 'released', 1181, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(217, 'Gracie Acoustic', 'Gracie Acoustic.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(218, 'Can I Go With You', 'Can I Go With You.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(219, 'We Are Coming Undone', 'We Are Coming Undone.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(220, 'Look At You Like That', 'Look At You Like That.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(221, 'Thinking About You', 'Thinking About You.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(222, 'Love Story', 'Love Story.mp3', 'released', 1159, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(223, 'Red Demo', 'Red Demo.mp3', 'released', 1223, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(224, 'Bette Davis Eyes Live', 'Bette Davis Eyes Live.mp3', 'released', 1219, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(225, 'Ours', 'Ours.mp3', 'released', 1143, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(226, 'Back To December Apologize Live', 'Back To December Apologize Live.mp3', 'released', 1138, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(227, 'Hey Stephen', 'Hey Stephen.mp3', 'released', 1195, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(228, 'I Know Places Live', 'I Know Places Live.mp3', 'released', 1153, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(229, 'Last Kiss', 'Last Kiss.mp3', 'released', 1229, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(230, 'Love Story ft. Def Leppard', 'Love Story ft. Def Leppard.mp3', 'unreleased', 38, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(231, 'Just a Dream', 'Just a Dream.m4a', 'unreleased', 5, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(232, 'I Almost Do', 'I Almost Do.mp3', 'released', 1137, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(233, 'Baby Don\'t You Break My Heart Slow', 'Baby Don\'t You Break My Heart Slow.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(234, 'White Christmas', 'White Christmas.mp3', 'unreleased', 1, 'Sounds of the Season', 'https://i.imgur.com/Gov7vXz.jpg'),
(235, 'Spinning Around', 'Spinning Around.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(236, 'Sweeter Than Fiction', 'Sweeter Than Fiction.mp3', 'released', 1184, 'One Chance Soundtrack', 'https://i.imgur.com/zh7m1cn.jpg'),
(237, 'Christmases When You Were Mine', 'Christmases When You Were Mine.mp3', 'unreleased', 4, 'Sounds of the Season', 'https://i.imgur.com/Gov7vXz.jpg'),
(238, 'Smokey Black Nights', 'Smokey Black Nights.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(239, 'Thug Story', 'Thug Story.mp3', 'released', 1235, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(240, 'Enchanted Wildest Dreams Tokyo', 'Enchanted Wildest Dreams Tokyo.mp3', 'unreleased', 776, '1989 World Tour Tokyo', 'https://i.imgur.com/cVP4obR.jpg'),
(241, 'Welcome To New York Live', 'Welcome To New York Live.mp3', 'released', 1120, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(242, 'Cold As You', 'Cold As You.mp3', 'released', 1207, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(243, 'Two Is Better Than One', 'Two Is Better Than One.mp3', 'released', 1100, 'Boys Like Girls - Feature', 'http://i.imgur.com/x0K7vjd.jpg'),
(244, 'Should\'ve Said No', 'Should\'ve Said No.mp3', 'released', 1148, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(245, 'Enchanted', 'Enchanted.mp3', 'released', 1160, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(246, 'Forever & Always', 'Forever & Always.mp3', 'released', 1175, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(247, 'Crazier', 'Crazier.mp3', 'released', 1192, 'Crazier Soundtrack', 'https://i.imgur.com/FEdhdtz.jpg'),
(248, 'Bad Blood Live', 'Bad Blood Live.mp3', 'released', 1113, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(249, 'Treacherous Demo', 'Treacherous Demo.mp3', 'released', 1101, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(250, 'Never Grow Up', 'Never Grow Up.mp3', 'released', 1158, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(251, 'I\'m Every Woman', 'I\'m Every Woman.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(252, 'Silent Night', 'Silent Night.mp3', 'unreleased', 4, 'Sounds of the Season', 'https://i.imgur.com/Gov7vXz.jpg'),
(253, 'New Romantics Live', 'New Romantics Live.mp3', 'released', 1153, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(254, 'Mine Pop Mix', 'Mine Pop Mix.mp3', 'released', 1162, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(255, 'How You Get The Girl Live', 'How You Get The Girl Live.mp3', 'released', 1134, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(256, 'Our Song', 'Our Song.mp3', 'released', 1153, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(257, 'I\'m Only Me When I\'m With You', 'I\'m Only Me When I\'m With You.mp3', 'released', 1164, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(258, 'The Other Side Of The Door', 'The Other Side Of The Door.mp3', 'released', 1142, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(259, 'Fifteen', 'Fifteen.mp3', 'released', 1215, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(260, 'Girl At Home', 'Girl At Home.mp3', 'released', 1206, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(261, 'State Of Grace Acoustic', 'State Of Grace Acoustic.mp3', 'released', 1102, 'RED Acoustic', 'http://i.imgur.com/as6dlgi.jpg'),
(262, 'Under My Head', 'Under My Head.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(263, 'Two Steps Behind ft. Def Leppard', 'Two Steps Behind ft. Def Leppard.mp3', 'unreleased', 30, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(264, 'I Knew You Were Trouble Live', 'I Knew You Were Trouble Live.mp3', 'released', 1235, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(265, 'IKYWT Live', 'I Knew You Were Trouble Live.mp3', 'released', 1235, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(266, 'IKYWT. Live', 'I Knew You Were Trouble Live.mp3', 'released', 1235, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(267, 'Photograph ft. Def Leppard', 'Photograph ft. Def Leppard.mp3', 'unreleased', 32, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(268, 'Run ft. Def Leppard', 'Run ft. Def Leppard.mp3', 'unreleased', 39, 'Def Leppard', 'https://i.imgur.com/Xmmt4tY.jpg'),
(269, 'Sparks Fly', 'Sparks Fly.mp3', 'released', 1179, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(270, 'Better Than Revenge Live', 'Better Than Revenge Live.mp3', 'released', 1159, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(271, 'Dark Blue Tennessee', 'Dark Blue Tennessee.mp3', 'unreleased', 19, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(272, 'I Used To Fly', 'I Used To Fly.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(273, 'The Lucky One', 'The Lucky One.mp3', 'released', 1156, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(274, 'White Horse', 'White Horse.mp3', 'released', 1156, 'Fearless', 'https://i.imgur.com/TPL7mge.jpg'),
(275, 'Never Mind Country', 'Never Mind Country.mp3', 'unreleased', 0, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(276, 'All You Had To Do Was Stay Live', 'All You Had To Do Was Stay Live.mp3', 'released', 1057, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(277, 'I Wish You Would Live', 'I Wish You Would Live.mp3', 'released', 1106, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(278, 'Ours Live', 'Ours Live.mp3', 'released', 1203, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(279, 'Blank Space Live', 'Blank Space Live.mp3', 'released', 1173, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(280, 'Long Live', 'Long Live.mp3', 'released', 1144, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(281, 'Wildest Dreams R3hab', 'Wildest Dreams R3hab.mp3', 'released', 1204, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(282, 'Writing Songs About You', 'Writing Songs About You.mp3', 'unreleased', 2, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(283, 'You Are In Love Live', 'You Are In Love Live.mp3', 'released', 1187, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(284, 'You Are In Love', 'You Are In Love.mp3', 'released', 1226, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(285, 'Random', 'Random.mp3', 'unreleased', 22, 'Random', 'https://i.imgur.com/Yv6xiKL.jpg'),
(286, 'IKYWT.', 'I Knew You Were Trouble..mp3', 'released', 1115, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(287, 'TSOU', 'The Story Of Us.mp3', 'released', 1259, 'Speak Now', 'https://i.imgur.com/TNKbt8Y.jpg'),
(288, 'TSOU Live', 'The Story Of Us Live.mp3', 'released', 1142, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(289, 'WTNY', 'Welcome To New York.mp3', 'released', 1210, '1989', 'https://i.imgur.com/i1QDoZR.jpg'),
(290, 'WTNY Live', 'Welcome To New York Live.mp3', 'released', 1120, '1989 World Tour', 'https://i.imgur.com/cVP4obR.jpg'),
(291, 'Come Back Be Here', 'Come Back... Be Here.mp3', 'released', 1192, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(292, 'Treacherous Acoustic Live', 'Treacherous Acoustic Live.m4a', 'released', 1168, 'RED Acoustic', 'http://i.imgur.com/as6dlgi.jpg'),
(293, 'You All Over Me', 'You All Over Me.mp3', 'unreleased', 9, 'Unreleased', 'https://i.imgur.com/EJDtG33.png'),
(294, 'Revenge', 'R-E-V-E-N-G-E.mp3', 'unreleased', 13, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(295, 'Out Of The Woods Grammy Awards', 'Out of the Woods Grammy Awards.mp3', 'released', 1216, 'Grammy Awards', 'https://i.imgur.com/i1QDoZR.jpg'),
(296, 'Fearless I\'m Yours Hey Soul Sister Live', 'Fearless I\'m Yours Hey Soul Sister Live.mp3', 'released', 1115, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(297, 'Fearless I\'m Yours Live', 'Fearless I\'m Yours Hey Soul Sister Live.mp3', 'released', 1115, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(298, 'Down Came The Rain', 'Down Came The Rain.mp3', 'unreleased', 1, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(299, 'Fifteen Live', 'Fifteen Live.mp3', 'released', 1076, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(300, 'Love Story SN Live', 'Love Story SN Live.mp3', 'released', 1124, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(301, 'Mine Live', 'Mine Live.m4a', 'released', 1192, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(302, 'Our Song Live', 'Our Song Live.mp3', 'released', 1148, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(303, 'Sweet Escape Live', 'Sweet Escape Live.mp3', 'released', 1130, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(304, 'You Belong With Me Live', 'You Belong With Me Live.mp3', 'released', 1127, 'Speak Now World Tour', 'https://i.imgur.com/bywo8nm.jpg'),
(305, 'New Romantics SS Live', 'New Romantics SS Live.mp3', 'released', 1116, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(306, 'IKYWT SS Live', 'I Knew You Were Trouble SS Live.mp3', 'released', 1134, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(307, 'Blank Space SS Live', 'Blank Space SS Live.mp3', 'released', 1171, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(308, 'I Knew You Were Trouble SS Live', 'I Knew You Were Trouble SS Live.mp3', 'released', 1134, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(309, 'I Don\'t Wanna Live Forever SS Live', 'I Don\'t Wanna Live Forever SS Live.mp3', 'released', 1069, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(310, 'IDWLF SS Live', 'I Don\'t Wanna Live Forever SS Live.mp3', 'released', 1069, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(311, 'You Belong With Me SS Live', 'You Belong With Me SS Live.mp3', 'Released', 1117, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(312, 'YBWM SS Live', 'You Belong With Me SS Live.mp3', 'Released', 1117, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(313, 'RED SS Live', 'RED SS Live.mp3', 'Released', 1100, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(314, 'All Too Well SS Live', 'All Too Well SS Live.mp3', 'Released', 1126, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(315, 'Shake It Off SS Live', 'Shake It Off SS Live.mp3', 'Released', 1040, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(316, 'SIO SS Live', 'Shake It Off SS Live.mp3', 'Released', 1040, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(317, 'OOTW SS Live', 'Out Of The Woods SS Live.mp3', 'Released', 1040, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(318, 'Out Of The Woods SS Live', 'Out Of The Woods SS Live.mp3', 'Released', 1040, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(319, 'Bad Blood SS Live', 'Bad Blood SS Live.mp3', 'Released', 999, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(320, 'Look What You Made Me Do', 'Look What You Made Me Do.m4a', 'released', 867, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(322, 'Ready For It', 'Ready For It.m4a', 'released', 892, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(323, 'How You Get The Girl Grammys', 'How You Get The Girl Grammys.m4a', 'released', 821, 'Grammy Museum', 'https://i.imgur.com/i1QDoZR.jpg'),
(324, 'LWYMMD', 'Look What You Made Me Do.m4a', 'released', 867, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(325, 'Gorgeous', 'Gorgeous.m4a', 'released', 790, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(326, 'Marys Song', 'Mary\'s Song Oh My My My.mp3', 'released', 1158, 'Taylor Swift', 'https://i.imgur.com/w0bksSN.jpg'),
(327, 'Call It What You Want', 'Call It What You Want.m4a', 'released', 766, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(328, 'CIWYW', 'Call It What You Want.m4a', 'released', 766, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(330, 'End Game', 'End Game.mp3', 'released', 794, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(331, 'I Did Something Bad', 'I Did Something Bad.mp3', 'released', 753, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(332, 'Dont Blame Me', 'Dont Blame Me.mp3', 'released', 755, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(333, 'Delicate', 'Delicate.mp3', 'released', 801, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(334, 'So It Goes', 'So It Goes.mp3', 'released', 735, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(335, 'Getaway Car', 'Getaway Car.mp3', 'released', 812, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(336, 'King Of My Heart', 'King Of My Heart.mp3', 'released', 733, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(337, 'Dancing With Our Hands Tied', 'Dancing With Our Hands Tied.mp3', 'released', 732, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(338, 'Dress', 'Dress.mp3', 'released', 725, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(339, 'This Is Why We Cant Have Nice Things', 'This Is Why We Cant Have Nice Things.mp3', 'released', 739, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(340, 'New Years Day', 'New Years Day.mp3', 'released', 747, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(341, 'New Years Day Piano', 'New Years Day Piano.mp3', 'released', 801, 'reputation', 'https://i.imgur.com/o2v3b7E.jpg'),
(343, 'Better Man SS Live', 'Better Man SS Live.mp3', 'released', 677, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(344, 'This Is What You Came For SS Live', 'This Is What You Came For SS Live.mp3', 'released', 592, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(345, 'TIWYCF SS Live', 'This Is What You Came For SS Live.mp3', 'released', 592, 'Super Saturday Night', 'http://i.imgur.com/ZyxiSQe.jpg'),
(346, 'Run George Strait', 'Run George Strait.m4a', 'released', 463, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(348, '22 Seine', '22 Seine.mp3', 'released', 453, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(349, 'I Knew You Were Trouble Seine', 'I Knew You Were Trouble Seine.mp3', 'released', 426, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(350, 'Love Story Seine', 'Love Story Seine.mp3', 'released', 456, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(351, 'Red Seine', 'Red Seine.mp3', 'released', 461, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(352, 'You Belong With Me Seine', 'You Belong With Me Seine.mp3', 'released', 446, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(353, 'IKYWT Seine', 'I Knew You Were Trouble Seine.mp3', 'released', 426, 'Live on the Seine', 'http://i.imgur.com/fv5H8w8.jpg'),
(354, 'Delicate Remix', 'Delicate Remix.m4a', 'released', 424, 'reputation', 'https://i.imgur.com/erPJidF.jpg'),
(355, 'Ready for It BloodPop', 'Ready for It BloodPop.mp3', 'released', 433, 'reputation', 'https://i.imgur.com/xjWOsyQ.jpg'),
(356, 'Delicate Acoustic Spotify', 'Delicate Acoustic Spotify.mp3', 'released', 408, 'reputation', 'https://i.imgur.com/xjWOsyQ.jpg'),
(357, 'September Acoustic Spotify', 'September Acoustic Spotify.mp3', 'released', 440, 'Covers', 'https://i.imgur.com/Yv6xiKL.jpg'),
(358, 'New Years Day Piano SXM', 'New Years Day Piano SXM.mp3', 'released', 429, 'reputation Celebration', 'https://i.imgur.com/o2v3b7E.jpg'),
(359, 'Call It What You Want Acoustic SXM', 'Call It What You Want Acoustic SXM.mp3', 'released', 476, 'reputation Celebration', 'https://i.imgur.com/o2v3b7E.jpg'),
(360, 'American Girl Piano SXM', 'American Girl Piano SXM.mp3', 'released', 425, 'reputation Celebration', 'https://i.imgur.com/Yv6xiKL.jpg'),
(361, 'We Are Never Ever Getting Back Together Country Mix', 'We Are Never Ever Getting Back Together Country Mix.mp3', 'released', 400, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(362, 'WANEGBT Country Mix', 'We Are Never Ever Getting Back Together Country Mix.mp3', 'released', 400, 'RED', 'http://i.imgur.com/as6dlgi.jpg'),
(363, 'Delicate Seeb Remix', 'Delicate Seeb Remix.mp3', 'released', 351, 'reputation', 'https://i.imgur.com/erPJidF.jpg'),
(364, 'Delicate Seeb', 'Delicate Seeb Remix.mp3', 'released', 351, 'reputation', 'https://i.imgur.com/erPJidF.jpg'),
(365, 'Let\'s Go', 'Let\'s Go.mp3', 'unreleased', 16, 'Unreleased', 'https://i.imgur.com/EJDtG33.jpg'),
(366, 'Ready For It rep Live', '...Ready For It rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(367, 'RFI rep Live', '...Ready For It rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(368, 'All Too Well rep Live', 'All Too Well rep Live.m4a', 'released', 2, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(369, 'ATW rep Live', 'All Too Well rep Live.m4a', 'released', 2, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(370, 'Bad Blood Should\'ve Said No rep Live', 'Bad Blood Should\'ve Said No rep Live.m4a', 'released', 8, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(371, 'Blank Space rep Live', 'Blank Space rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(372, 'Call It What You Want rep Live', 'Call It What You Want rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(373, 'CIWYW rep Live', 'Call It What You Want rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(374, 'Dancing With Our Hands Tied rep Live', 'Dancing With Our Hands Tied rep Live.m4a', 'released', 7, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(375, 'DWOHT rep Live', 'Dancing With Our Hands Tied rep Live.m4a', 'released', 7, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(376, 'Delicate rep Live', 'Delicate rep Live.m4a', 'released', 2, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(377, 'Don\'t Blame Me rep Live', 'Don\'t Blame Me rep Live.m4a', 'released', 2, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(378, 'Dress rep Live', 'Dress rep Live.m4a', 'released', 10, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(379, 'End Game rep Live', 'End Game rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(380, 'Getaway Car rep Live', 'Getaway Car rep Live.m4a', 'released', 3, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(381, 'Gorgeous rep Live', 'Gorgeous rep Live.m4a', 'released', 9, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(382, 'I Did Something Bad rep Live', 'I Did Something Bad rep Live.m4a', 'released', 10, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(383, 'IDSB rep Live', 'I Did Something Bad rep Live.m4a', 'released', 10, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(384, 'King of My Heart rep Live', 'King of My Heart rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(385, 'KOMH rep Live', 'King of My Heart rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(386, 'Long Live New Year\'s Day rep Live', 'Long Live New Year\'s Day rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(387, 'Long Live NYD rep Live', 'Long Live New Year\'s Day rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(388, 'Look What You Made Me Do Intro rep Live', 'Look What You Made Me Do Intro rep Live.m4a', 'released', 2, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(389, 'LWYMMD Intro rep Live', 'Look What You Made Me Do Intro rep Live.m4a', 'released', 2, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(390, 'Look What You Made Me Do rep Live', 'Look What You Made Me Do rep Live.m4a', 'released', 9, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(391, 'LWYMMD rep Live', 'Look What You Made Me Do rep Live.m4a', 'released', 9, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(392, 'reputation Intro rep Live', 'reputation Intro rep Live.m4a', 'released', 6, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(393, 'Shake It Off rep Live', 'Shake It Off rep Live.m4a', 'released', 4, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(394, 'So It Goes rep Live', 'So It Goes... rep Live.m4a', 'released', 9, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(395, 'Style Love Story You Belong With Me rep Live', 'Style Love Story You Belong With Me rep Live.m4a', 'released', 3, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(396, 'We Are Never Ever Getting Back Together This Is Why We Can\'t Have Nice Things rep Live', 'We Are Never Ever Getting Back Together This Is Why We Can\'t Have Nice Things rep Live.m4a', 'released', 8, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(397, 'WANEGBT TIWWCHNT rep Live', 'We Are Never Ever Getting Back Together This Is Why We Can\'t Have Nice Things rep Live.m4a', 'released', 8, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(398, 'Why She Disappeared rep Live', 'Why She Disappeared rep Live.m4a', 'released', 2, 'reputation Stadium Tour', 'https://i.imgur.com/D3RHbx6.jpg'),
(399, 'Holy Ground F1 Live', 'Holy Ground F1 Live.mp3', 'released', 5, 'COTA Formula 1 Austin', 'https://i.imgur.com/9rBYl44.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recent`
--

CREATE TABLE `recent` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queuedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent`
--

INSERT INTO `recent` (`id`, `name`, `album`, `queuedby`) VALUES
(15, 'Everything Has Changed', 'RED', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `requested`
--

CREATE TABLE `requested` (
  `id` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent`
--
ALTER TABLE `recent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requested`
--
ALTER TABLE `requested`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `recent`
--
ALTER TABLE `recent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `requested`
--
ALTER TABLE `requested`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
