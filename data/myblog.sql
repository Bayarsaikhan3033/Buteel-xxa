-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 02:13 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pathh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `pathh`) VALUES
(8, 'HTML5 Notes For Pros', 'books/HTML5 Notes For Pros.pdf'),
(9, 'jQuery', 'books/jQuery Notes For Pros.pdf'),
(10, 'Sass', 'books/Sass.pdf'),
(11, 'ReactJS Notes For Pros', 'books/ReactJS Notes For Pros.pdf'),
(12, 'CSS', 'books/Sass.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `created_at`, `user_id`, `post_id`) VALUES
(1, 'oo tegeel zasaad ywj bn ene comment system nemeh turhsilt ywagdaj bn', '2018-10-31 15:44:35', 1, 8),
(2, 'za amjilt', '2018-10-31 16:37:29', 2, 8),
(3, 'amjilt andaa', '2018-11-01 02:45:00', 7, 8),
(4, 'comment bichlee', '2018-11-01 05:10:57', 3, 8),
(5, 'aaa', '2018-11-02 08:05:59', 1, 8),
(6, 'aaa', '0000-00-00 00:00:00', 1, 8),
(7, 'aaaaaaaaaa', '2018-11-02 08:07:04', 1, 8),
(8, 'aaaaaaaaaa', '2018-11-02 08:07:45', 1, 8),
(9, 'aaaaaaaaaa', '2018-11-02 08:08:45', 1, 8),
(10, 'vbbbb', '2018-11-02 08:09:21', 1, 8),
(11, 'vbbbb', '2018-11-02 08:11:04', 1, 8),
(12, 'cccc', '2018-11-02 08:11:38', 1, 8),
(13, 'hey yu bn\r\n', '2018-11-04 09:31:58', 3, 8),
(14, 'ÑÐ°Ð¹Ð½ Ð±Ð°Ð¹Ð½Ð° ÑƒÑƒ', '2018-11-04 10:05:30', 3, 8),
(15, 'ann tiimuu ', '2018-11-14 04:16:31', 8, 1),
(16, 'Composer gedgiig n tataj awaad suulgadag yum. Youtube - s How to install laravel ged xaigaad uz', '2018-11-14 04:19:27', 3, 22),
(17, 'Za bayrlalaa suulgaj chadsan', '2018-11-14 04:20:03', 8, 22),
(18, 'bn a a a', '2018-11-14 06:36:07', 3, 22),
(19, 'en nem\r\n', '2018-11-14 06:41:40', 3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_phone` varchar(8) NOT NULL,
  `admin_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `admin_email`, `admin_phone`, `admin_address`) VALUES
(1, 'mgl.tuurgatan11@gmail.com', '99479654', 'Ð¡Ð‘Ð” 19-Ñ€ Ñ…Ð¾Ñ€Ð¾Ð¾');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `example` text NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `content`, `body`, `example`, `sort`) VALUES
(6, 'HTML', 'Ð“Ð°Ñ€Ñ‡Ð¸Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ñ…', 'Ð“Ð°Ñ€Ñ‡Ð¸Ð³ Ð½ÑŒ <h1> Ñ…Ò¯Ñ€Ñ‚ÑÐ» <h6> Ñ‚ÑÐ¼Ð´Ð³ÑÑÑ€ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ð³Ð´Ð´Ð¾Ð³.\r\n<h1> Ñ…Ð°Ð¼Ð³Ð¸Ð¹Ð½ Ñ‡ÑƒÑ…Ð°Ð» Ð³Ð°Ñ€Ñ‡Ð³Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾. <h6> Ð¥Ð°Ð¼Ð³Ð¸Ð¹Ð½ Ð±Ð°Ð³Ð°  Ð³Ð°Ñ€Ñ‡Ð³Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n<h1>Heading 1</h1>\r\n<h2>Heading 2</h2>\r\n<h3>Heading 3</h3>\r\n<h4>Heading 4</h4>\r\n<h5>Heading 5</h5>\r\n<h6>Heading 6</h6>\r\n</body>\r\n</html>\r\n', 2),
(7, 'HTML', 'ÐŸÐ°Ñ€Ð°Ð³Ñ€Ð°Ñ„', 'HTML <p> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð¿Ð°Ñ€Ð°Ð³Ð°Ñ€Ñ„ Ð±ÑƒÑŽÑƒ Ð´Ð¾Ð³Ð¾Ð» Ð¼Ó©Ñ€Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n<p>This is a paragraph.</p>\r\n<p>This is a paragraph.</p>\r\n<p>This is a paragraph.</p>\r\n</body>\r\n</html>', 3),
(8, 'HTML', 'Ð—Ð°Ð³Ð²Ð°Ñ€ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ñ…', 'HTML Style Atribute\r\nHTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ð·Ð°Ð³Ð²Ð°Ñ€Ñ‹Ð³ Ñ‚Ð¾Ñ…Ð¸Ñ€ÑƒÑƒÐ»Ð°Ñ… Ð½ÑŒ Ð·Ð°Ð³Ð²Ð°Ñ€Ñ‹Ð½ ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€Ð°Ð°Ñ€ Ñ…Ð¸Ð¹Ð³Ð´Ð´ÑÐ³.\r\n\r\nHTML Ð·Ð°Ð³Ð²Ð°Ñ€Ñ‹Ð½ ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ Ð½ÑŒ Ð´Ð°Ñ€Ð°Ð°Ñ… ÑÐ¸Ð½Ñ‚Ð°ÐºÑÑ‚Ð°Ð¹ Ð±Ð°Ð¹Ð½Ð°:\r\n<tagname style=\"ÑˆÐ¸Ð½Ð¶Ñ‡Ð°Ð½Ð°Ñ€:Ð°Ð²Ð°Ñ… ÑƒÑ‚Ð³Ð°;\">', '<!DOCTYPE html>\r\n<html>\r\n<body style=\"background-color:powderblue;\">\r\n<p>I am normal</p>\r\n<p style=\"color:red;\">I am red</p>\r\n<p style=\"color:blue;\">I am blue</p>\r\n<p style=\"font-size:50px;\">I am big</p>\r\n</body>\r\n</html>', 4),
(9, 'HTML', 'Ð‘Ð¸Ñ‡Ð²ÑÑ€ Ñ…ÑÐ»Ð±ÑÑ€Ð¶Ò¯Ò¯Ð»ÑÑ…', 'Ð‘Ð¸Ñ‡Ð²ÑÑ€ Ñ…ÑÐ»Ð±ÑÑ€Ð¶Ò¯Ò¯Ð»ÑÑ… ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´ Ð½ÑŒ Ñ‚ÑƒÑÐ³Ð°Ð¹ Ñ‚ÐµÐºÑÑ‚Ð¸Ð¹Ð³ Ñ…Ð°Ñ€ÑƒÑƒÐ»Ð°Ñ… Ð·Ð¾Ñ€Ð¸ÑƒÐ»Ð°Ð»Ñ‚Ñ‚Ð°Ð¹\r\n<b> - Bold text\r\n<strong> - Important text\r\n<i> - Italic text\r\n<em> - Emphasized text\r\n<mark> - Marked text\r\n<small> - Small text\r\n<del> - Deleted text\r\n<ins> - Inserted text\r\n<sub> - Subscript text\r\n<sup> - Superscript text\r\n', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n\r\n<p><b>This text is bold</b></p>\r\n<p><i>This text is italic</i></p>\r\n<p>This is<sub> subscript</sub> and <sup>superscript</sup></p>\r\n\r\n</body>\r\n</html>', 5),
(10, 'HTML', 'ÐšÐ¾Ð´Ñ‹Ð½ Ñ‚Ð°Ð¹Ð»Ð±Ð°Ñ€', 'Ð”Ð°Ñ€Ð°Ð°Ñ… ÑÐ¸Ð½Ñ‚Ð°ÐºÑÐ¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½ Ñ‚Ð° Ó©Ó©Ñ€Ð¸Ð¹Ð½ HTML ÑÑ… Ò¯Ò¯ÑÐ²ÑÑ€Ñ‚ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚ Ð½ÑÐ¼ÑÑ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ñ‚Ð¾Ð¹:\r\n<!-- Ð­Ð½Ð´ Ñ‚Ð°Ð¹Ð»Ð±Ð°Ñ€ Ð±Ð°Ð¹Ð½Ð° -->', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n<!-- Ð¢Ð°Ð¹Ð»Ð±Ð°Ñ€ ÑÐ½Ð´ -->\r\n<p>Ð­Ð½Ñ Ð±Ð¾Ð» Ð¿Ð°Ñ€Ð°Ð³Ñ€Ð°Ñ„.</p>\r\n<!-- Ð¼Ó©Ð½ ÑÐ½Ð´ Ñ‚Ð°Ð¹Ð»Ð±Ð°Ñ€ Ð±Ð°Ð¹Ð½Ð° -->\r\n</body>\r\n</html>', 6),
(11, 'HTML', 'Ó¨Ð½Ð³Ó© Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ñ…', 'HTML Ð½ÑŒ 140 ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚ Ó©Ð½Ð³Ó©Ñ‚ Ð½ÑÑ€Ð¸Ð¹Ð³ Ð´ÑÐ¼Ð¶Ð´ÑÐ³. HTML Ó©Ð½Ð³Ó© Ð½ÑŒ ÑƒÑ€ÑŒÐ´Ñ‡Ð¸Ð»Ð°Ð½ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»ÑÐ¾Ð½ Ó©Ð½Ð³Ó©Ð½Ð¸Ð¹ Ð½ÑÑ€Ð¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½ RGB, HEX, HSL, RGBA, HSLA ÑƒÑ‚Ð³ÑƒÑƒÐ´Ñ‹Ð³ Ð·Ð°Ð°Ð´Ð°Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n<h1 style=\"color:Tomato;\">Hello World</h1>\r\n<p style=\"color:DodgerBlue;\">Lorem ipsum...</p>\r\n<p style=\"color:MediumSeaGreen;\">Ut wisi enim...</p>\r\n<h1 style=\"border:2px solid Tomato;\">Hello World</h1>\r\n<h1 style=\"border:2px solid DodgerBlue;\">Hello World</h1>\r\n<h1 style=\"border:2px solid Violet;\">Hello World</h1>\r\n<h1 style=\"background-color:Tomato;\">Tomato</h1>\r\n<h1 style=\"background-color:rgb(255, 99, 71);\">RGB</h1>\r\n<h1 style=\"background-color:#ff6347;\">color</h1>\r\n<h1 style=\"background-color:hsl(9, 100%, 64%);\">HSL</h1>\r\n\r\n<h1 style=\"background-color:rgba(255, 99, 71, 0.5);\">RGBA</h1>\r\n<h1 style=\"background-color:hsla(9, 100%, 64%, 0.5);\">HSLA</h1>\r\n\r\n</body>\r\n</html>\r\n', 7),
(12, 'HTML', 'Ð¡SS', 'CSS Ð½ÑŒ Cascading Style Sheets Ð³ÑÑÑÐ½ Ò¯Ð³ Ð±Ó©Ð³Ó©Ó©Ð´ Ð²ÑÐ± Ñ…ÑƒÑƒÐ´ÑÐ°Ð½Ð´ Ð·Ð°Ð³Ð²Ð°Ñ€ Ð¾Ñ€ÑƒÑƒÐ»Ð°Ñ… Ò¯Ð½Ð´ÑÑÐ½ Ñ…ÑÑ€ÑÐ³ÑÑÐ» ÑŽÐ¼. CSS Ð½ÑŒ Ð²ÑÐ± Ñ…ÑƒÑƒÐ´ÑÑ‹Ð½ HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´Ð¸Ð¹Ð³ Ñ…ÑÑ€Ñ…ÑÐ½ Ñ…Ð°Ñ€ÑƒÑƒÐ»Ð°Ñ…Ñ‹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾. CSS Ð½ÑŒ Ð¼Ð°Ñˆ Ð¾Ð»Ð¾Ð½ Ð°Ð¶Ð»Ñ‹Ð³ Ñ…Ó©Ð½Ð³Ó©Ð²Ñ‡Ð¸Ð»Ð¶ Ó©Ð³Ð´Ó©Ð³. Ð­Ð½Ñ Ð½ÑŒ Ð¾Ð»Ð¾Ð½ Ð²ÐµÐ± Ñ…ÑƒÑƒÐ´ÑÑ‹Ð³ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´Ð¸Ð¹Ð³ Ð½ÑÐ³ Ð´Ð¾Ñ€ ÑƒÐ´Ð¸Ñ€Ð´Ð°Ñ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ñ‚Ð¾Ð¹.\r\n\r\nHTML-Ð¸Ð¹Ð½ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´Ð¸Ð¹Ð³ 3 Ð°Ñ€Ð³Ð°Ð°Ñ€ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð¶ Ð±Ð¾Ð»Ð½Ð¾:\r\nÐ­Ð»ÐµÐ¼ÐµÐ½Ñ‚ÑÐ´ - HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ð·Ð°Ð³Ð²Ð°Ñ€Ñ‹Ð½ ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€Ñ‹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ñ…\r\n         <h1 style=\"color:blue;\">This is a Blue Heading</h1>\r\nÐ”Ð¾Ñ‚Ð¾Ð¾Ð´ - <head> Ñ…ÑÑÑÐ³Ñ‚ <style> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ñ…\r\n         Ð¶Ð¸ÑˆÑÑÐ½ ÐºÐ¾Ð´Ñ‹Ð³ Ñ…Ð°Ñ€Ð½Ð° ÑƒÑƒ\r\nÐ“Ð°Ð´Ð°Ð°Ð´ -  Ð³Ð°Ð´Ð°Ð°Ð´ CSS Ñ„Ð°Ð¹Ð»Ñ‹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ñ…\r\n         CSS ÐºÐ¾Ð´Ñ‹Ð³ Ó©Ó©Ñ€ Ñ„Ð°Ð¹Ð»Ð´ Ð±Ð¸Ñ‡ÑÑÐ´ *.css Ó©Ñ€Ð³Ó©Ñ‚Ð³Ó©Ð»Ñ‚ÑÐ¹ Ñ…Ð°Ð´Ð³Ð°Ð»Ð¶ head \r\n          Ñ…ÑÑÑÐ³Ñ‚ Ð´Ð°Ñ€Ð°Ð°Ñ… ÐºÐ¾Ð´Ñ‹Ð³ Ð±Ð¸Ñ‡Ð¸Ð¶ Ð¾Ñ€ÑƒÑƒÐ»Ð½Ð°.\r\n         <link rel=\"stylesheet\" href=\"styles.css\">\r\n\r\nCSS Ð°ÑˆÐ¸Ð³Ð»Ð°Ñ… Ñ…Ð°Ð¼Ð³Ð¸Ð¹Ð½ Ñ‚Ò¯Ð³ÑÑÐ¼ÑÐ» Ð°Ñ€Ð³Ð° Ð½ÑŒ ÐºÐ¾Ð´Ñ‹Ð³ Ð½ÑŒ Ó©Ó©Ñ€ CSS Ñ„Ð°Ð¹Ð»Ð´ Ñ…Ð°Ð´Ð³Ð°Ð»Ð°Ñ… ÑÐ²Ð´Ð°Ð» ÑŽÐ¼. Ð“ÑÑÑÐ½ Ñ‡ ÑÐ½Ð´ Ð´Ð¾Ñ‚Ð¾Ð¾Ð´ Ð±Ð¾Ð»Ð¾Ð½ Ð³Ð°Ð´Ð°Ð°Ð´ Ñ…ÑÐ»Ð±ÑÑ€Ð¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð¶ Ð±Ð¾Ð»Ð½Ð¾.\r\n', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\nbody {background-color: powderblue;}\r\nh1   {color: blue;}\r\np    {color: red;}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h1>Ð”Ð¾Ñ‚Ð¾Ð¾Ð´ CSS ÐºÐ¾Ð´.</h1>\r\n<p>CSS Ð´Ð¾Ñ‚Ð¾Ð¾Ð´ Ð±ÑƒÑŽÑƒ head Ñ…ÑÑÑÐ³Ñ‚ style ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð².</p>\r\n\r\n</body>\r\n</html>', 8),
(13, 'HTML', 'Ð¥Ð¾Ð»Ð±Ð¾Ð¾Ñ', 'html Ñ…ÑƒÑƒÐ´Ð°ÑÐ½Ñ‹ Ñ…Ð°Ð¼Ð³Ð¸Ð¹Ð½ Ñ‡ÑƒÑ…Ð°Ð» Ð¾Ð¹Ð»Ð³Ð¾Ð»Ñ‚ÑƒÑƒÐ´Ñ‹Ð½ Ð½ÑÐ³ Ð±Ð¾Ð» Ñ…Ð¾Ð»Ð±Ð¾Ð¾Ñ. Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚ Ñ…ÑƒÑƒÐ´Ð°Ñ Ò¯Ð·ÑÐ¶ Ð±Ð°Ð¹Ñ…Ð´Ð°Ð° Ð±Ð¸Ð´ Ñ‚Ð¾Ð²Ñ‡ ÑÑÐ²ÑÐ» Ñ‚ÐµÐºÑÑ‚ Ð´ÑÑÑ€ Ð´Ð°Ñ€Ð°Ð°Ð´ Ñ…ÑÑ€ÑÐ³Ñ‚ÑÐ¹ Ñ…ÑƒÑƒÐ´Ð°Ñ Ñ€ÑƒÑƒ ÑˆÐ¸Ð»Ð¶Ð´ÑÐ³. Ó¨Ó©Ñ€ Ñ…ÑƒÑƒÐ´ÑÐ°Ð½Ð´ ÑˆÐ¸Ð»Ð¶Ð¸Ñ…Ð¸Ð¹Ð½ Ñ‚ÑƒÐ»Ð´ Ñ…Ð°Ð°Ð½Ð° Ð´Ð°Ñ€Ð°Ñ…Ñ‹Ð³ Ñ‚Ð° Ñ…ÑÑ€Ñ…ÑÐ½ Ð¼ÑÐ´ÑÑ… Ð²Ñ? Ð¥Ð¾Ð»Ð±Ð¾Ð¾ÑÑ‹Ð½ Ó©Ð½Ð³Ó© Ó©Ó©Ñ€\r\nÐ±Ð°Ð¹Ñ… ÑÑÐ²ÑÐ» Ð´Ð¾Ð¾Ð³ÑƒÑƒÑ€ Ð·ÑƒÑ€Ð°Ð°ÑÑ‚Ð°Ð¹ ÑÑÐ²ÑÐ» Ñ…ÑƒÐ»Ð³Ð°Ð½Ñ‹ Ð·Ð°Ð°Ð³Ñ‡Ð¸Ð¹Ð³ Ð°Ð²Ð°Ð°Ñ‡Ð¸Ñ…Ð°Ð´ Ð´Ò¯Ñ€Ñ Ð½ÑŒ Ó©Ó©Ñ€ Ð±Ð¾Ð»Ð¾Ñ… Ð³ÑÑ… Ð¼ÑÑ‚ÑÑÑ€ Ñ…Ð°Ñ€Ð°Ð°Ð´ Ð¼ÑÐ´ÑÑ…ÑÑÑ€ Ð±Ð°Ð¹Ð´Ð°Ð³.\r\nÐ­Ð½Ñ Ð¼ÑÑ‚ Ó©Ó©Ñ€Ñ‡Ð»Ó©Ð»Ñ‚Ò¯Ò¯Ð´Ð¸Ð¹Ð³ Ñ…Ð°Ñ€Ð¸ÑƒÑ†Ð°Ð¶ Ð±Ð°Ð¹Ð´Ð°Ð³ ÐºÐ¾Ð½Ñ‚ÐµÐ¹Ð½ÐµÑ€-Ñ‚aÐ³ Ð±Ð¾Ð» <a>...</a> ÑŽÐ¼. Ð¥Ð°Ñ€Ð¸Ð½ Ñ…ÑÑ€ÑÐ³Ð»ÑÐ³Ñ‡ Ð·Ò¯Ò¯Ð½ Ð´Ð°Ñ€Ð°Ð»Ñ‚ Ñ…Ð¸Ð¹Ñ…ÑÐ´ Ñ…Ð°Ð°ÑˆÐ°Ð° ÑˆÐ¸Ð»Ð¶Ò¯Ò¯Ð»ÑÑ…Ð¸Ð¹Ð³ Ñ‚ÐµÐ³Ð¸Ð¹Ð½ href Ð°Ñ‚Ñ€Ð¸Ð±ÑƒÑ‚ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾. ', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n\r\n<h2>HTML Ñ…Ð¾Ð»Ð±Ð¾Ð¾Ñ</h2>\r\n<p><a href=\"https://www.facebook.com\">facebook Ð¾Ñ€Ð¾Ñ…</a></p>\r\n\r\n</body>\r\n</html>', 9),
(14, 'HTML', 'Ð—ÑƒÑ€Ð°Ð³Ñ‚Ð°Ð¹ Ð°Ð¶Ð¸Ð»Ð»Ð°Ñ…', 'Ð’ÐµÐ± Ñ…ÑƒÑƒÐ´Ð°ÑÑ‚ Ð·ÑƒÑ€Ð³Ð¸Ð¹Ð³ Ñ…Ð¾Ñ‘Ñ€ Ð°Ñ€Ð³Ð°Ð°Ñ€ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð´Ð°Ð³. ÐÑÐ³ Ð½ÑŒ Ð´ÑÐ²ÑÐ³ÑÑ€ Ð±Ð°Ð¹Ð´Ð»Ð°Ð°Ñ€ Ð½Ó©Ð³Ó©Ó© Ð½ÑŒ Ð±Ð¸Ðµ Ð´Ð°Ð°ÑÐ°Ð½ Ð·ÑƒÑ€Ð°Ð³ Ñ…ÑÐ»Ð±ÑÑ€. Ð¡Ð°Ð¹Ñ‚Ð°Ð´ JPEG, GIF, PNG Ð³ÑÑÑÐ½ 3 Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ñ‹Ð½ Ð·ÑƒÑ€Ð³ÑƒÑƒÐ´Ñ‹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ñ…Ñ‹Ð³ Ð¸Ð»Ò¯Ò¯Ð´ Ò¯Ð·Ð´ÑÐ³. Ð­Ð´Ð³ÑÑÑ€ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ñ‹Ð³ Ð±Ò¯Ñ… Ñ…Ó©Ñ‚Ó©Ñ‡ Ð´ÑÐ¼Ð¶Ð´ÑÐ³ Ð±Ó©Ð³Ó©Ó©Ð´ Ð±ÑƒÑÐ°Ð´ Ó©Ó©Ñ€ Ñ‚Ó©Ñ€Ð»Ð¸Ð¹Ð½ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ð°Ð´ Ñ‚ÑƒÑÐ³Ð°Ð¹ Ñ…ÑÑ€ÑÐ³ÑÑÐ» Ð°ÑˆÐ¸Ð³Ð»Ð°Ñ… ÑˆÐ°Ð°Ñ€Ð´Ð»Ð°Ð³Ð° Ð³Ð°Ñ€Ñ‡ Ð±Ð¾Ð»Ð·Ð¾ÑˆÐ³Ò¯Ð¹.\r\nÐ•Ñ€ Ð½ÑŒ Ð±Ð¾Ð» ÑÐ°Ð¹Ñ‚Ñ‹Ð½ Ð±Ò¯Ñ… Ð·ÑƒÑ€Ð³ÑƒÑƒÐ´Ñ‹Ð³ Ñ‚ÑƒÑÐ´ Ð½ÑŒ (Ð¶Ð¸ÑˆÑÑ Ð½ÑŒ images) Ñ…Ð°Ð²Ñ‚Ð°ÑÑ‚ Ñ…Ð°Ð´Ð³Ð°Ð»ÑÐ°Ð½ Ð±Ð°Ð¹Ð´Ð°Ð³. Ð—ÑƒÑ€Ð³Ñ‹Ð½ Ð·Ð°Ð¼Ñ‹Ð³ Ñ…Ð¾Ð»Ð±Ð¾Ð¾ÑÑ‚ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð´Ð°Ð³Ð¸Ð¹Ð½ Ð°Ð´Ð¸Ð»Ð°Ð°Ñ€ Ð·Ð°Ð°Ð½ Ó©Ð³Ð½Ó©.Â  Â Ð¥Ð¸Ñ‡ÑÑÐ»Ð¸Ð¹Ð½ Ð¶Ð¸ÑˆÑÑÐ½Ò¯Ò¯Ð´ÑÐ´ Ð·ÑƒÑ€Ð³Ð¸Ð¹Ð½ Ð·Ð°Ð¼Ñ‹Ð³ Ð·Ð°Ð°Ñ…Ð´Ð°Ð° Ð·ÑƒÑ€Ð³ÑƒÑƒÐ´ ÑÐ°Ð¹Ñ‚Ñ‹Ð½ Ñ…ÑƒÑƒÐ´Ð°ÑÐ½ÑƒÑƒÐ´ Ð±Ð°Ð¹Ñ€Ð»Ð°Ð¶ Ð±Ð°Ð¹Ð³Ð°Ð° site Ñ…Ð°Ð²Ñ‚Ð°ÑÑ‚Ð°Ð¹ Ð½ÑÐ³ Ñ‚Ò¯Ð²ÑˆÐ¸Ð½Ð³Ð¸Ð¹Ð½ images Ð³ÑÑÑÐ½ Ñ…Ð°Ð²Ñ‚Ð°Ñ Ð±Ð°Ð¹Ð³Ð°Ð° Ð±Ð°Ð¹Ð´Ð»Ð°Ð°Ñ€ Ð±Ð¸Ñ‡Ð¸Ñ… Ð±Ð¾Ð»Ð½Ð¾.', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n\r\n<h2>HTML Ð·ÑƒÑ€Ð°Ð³Ñ‚Ð°Ð¹ Ð°Ð¶Ð¸Ð»Ð»Ð°Ñ…</h2>\r\n<img src=\"pic_trulli.jpg\" alt=\"Trulli\" width=\"500\" height=\"333\">\r\n\r\n</body>\r\n</html>', 10),
(15, 'HTML', 'Ð¥Ò¯ÑÐ½ÑÐ³Ñ‚Ñ‚ÑÐ¹ Ð°Ð¶Ð¸Ð»Ð»Ð°Ñ…', 'Ð¥Ò¯ÑÐ½ÑÐ³Ñ‚ Ð±Ð¾Ð» Ð²ÐµÐ± Ñ…ÑƒÑƒÐ´Ð°ÑÐ½Ñ‹ Ò¯Ð½Ð´ÑÑÐ½ Ñ…ÑÑ€ÑÐ³ÑÐ»Ò¯Ò¯Ð´Ð¸Ð¹Ð½ Ð½ÑÐ³ ÑŽÐ¼. CSS Ð°ÑˆÐ¸Ð³Ð»Ð°Ñ…Ð³Ò¯Ð¹Ð³ÑÑÑ€ Ð·Ó©Ð²Ñ…Ó©Ð½ Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½ Ð½Ð°Ñ€Ð¸Ð¹Ð½ Ð·Ð¾Ñ…Ð¸Ð¾Ð½ Ð±Ð°Ð¹Ð³ÑƒÑƒÐ»Ð°Ð»Ñ‚Ñ‚Ð°Ð¹ Ñ…ÑƒÑƒÐ´ÑÑ‹Ð³ Ò¯Ò¯ÑÐ³ÑÐ¶ Ð±Ð¾Ð»Ð´Ð¾Ð³. Ð¯Ð¼Ð°Ñ€ Ñ‡ Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚ Ð½ÑŒ Ð¼Ó©Ñ€, Ð±Ð°Ð³Ð°Ð½ÑƒÑƒÐ´ÑƒÑƒÐ´Ð°Ð°Ñ Ð±Ò¯Ñ‚ÑÑ… Ð±Ó©Ð³Ó©Ó©Ð´ Ð¼Ó©Ñ€ Ð±Ð°Ð³Ð°Ð½Ñ‹ Ð¾Ð³Ñ‚Ð»Ð¾Ð»Ñ†Ð»Ð¾Ð¾Ñ€ Ð½Ò¯Ð´Ð½Ò¯Ò¯Ð´ Ò¯Ò¯ÑÐ½Ñ.\r\nÐ¥Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð³ HTML-Ð¸Ð¹Ð½ Ñ‚Ð°Ð»Ð°Ð°Ñ Ð°Ð²Ñ‡ Ò¯Ð·Ð²ÑÐ»\r\n- Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð³ <table></table> Ñ‚aÐ³aaÑ€ Ò¯Ò¯ÑÐ³ÑÐ½Ñ\r\n- Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ð³Ð°Ñ€Ñ‡Ð¸Ð³ Ó©Ð³Ó©Ñ… Ñ‚aÐ³ - <caption></caption>\r\n- Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚ Ð¼Ó©Ñ€Ñ‚ÑÐ¹ - <tr></tr>\r\n- Ð¼Ó©Ñ€ Ð±Ò¯Ñ€ Ð±Ð°Ð³Ð°Ð½Ð°Ñ‚Ð°Ð¹ - <td></td>\r\n- ÑÑ…Ð½Ð¸Ð¹ Ð¼Ó©Ñ€Ó©Ð½Ð´ Ð±Ð°Ð³Ð°Ð½Ñ‹ Ð½ÑÑ€Ð½Ò¯Ò¯Ð´ Ð±Ð°Ð¹Ñ€Ð»Ð°Ð½Ð° - <th></th>\r\n\r\n\r\n\r\nÐ¥Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ñ‚Ó©Ñ€Ó©Ð» Ð±Ò¯Ñ€Ð¸Ð¹Ð½ Ò¯Ð·Ò¯Ò¯Ð»ÑÐ»Ñ‚Ò¯Ò¯Ð´Ð¸Ð¹Ð³ Ó©Ó©Ñ€Ñ‡Ð»Ó©Ñ… Ð¿Ð°Ñ€Ð°Ð¼ÐµÑ‚Ñ€Ò¯Ò¯Ð´ Ð±Ð°Ð¹Ð´Ð°Ð³.\r\nï‚· bgcolor - Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ð½Ò¯Ð´Ð½Ð¸Ð¹ Ð´ÑÐ²ÑÐ³ÑÑ€ Ó©Ð½Ð³Ó©\r\nï‚· background - Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ð´ÑÐ²ÑÐ³ÑÑ€Ð¸Ð¹Ð³ Ð·ÑƒÑ€Ð³Ð°Ð°Ñ€ Ð´Ò¯Ò¯Ñ€Ð³ÑÐ½Ñ\r\nï‚· border - Ð·Ð°Ð°Ð³Ð´ÑÐ°Ð½ Ñ†ÑÐ³Ð¸Ð¹Ð½ Ó©Ñ€Ð³Ó©Ð½Ñ‚ÑÐ¹ Ñ…Ò¯Ñ€ÑÑÐ³ Ð±Ò¯Ñ… Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ñ…ÑÐ¼Ð¶ÑÑÐ½Ð´ Ð±Ð¸Ð¹ Ð±Ð¾Ð»Ð³Ð¾Ð½Ð¾\r\nï‚· cellpadding - Ð½Ò¯Ð´Ð½Ð¸Ð¹ Ñ…Ð¸Ð» Ñ‚Ò¯Ò¯Ð½Ð¸Ð¹ Ð°Ð³ÑƒÑƒÐ»Ð³Ð° Ñ…Ð¾Ñ‘Ñ€Ñ‹Ð½ Ñ…Ð¾Ð¾Ñ€Ð¾Ð½Ð´Ð¾Ñ… Ð·Ð°Ð¹. Ð¦ÑÐ³ÑÑÑ€ Ó©Ð³Ó©Ð³Ð´Ó©Ð½Ó©.\r\nï‚· align - Ð·ÑÑ€ÑÐ³Ñ†Ò¯Ò¯Ð»ÑÐ»Ñ‚Ð¸Ð¹Ð³ Ð·Ð°Ð°Ð½Ð°: Ð±Ð°Ñ€ÑƒÑƒÐ½Ð°Ð°Ñ (right), Ð·Ò¯Ò¯Ð½ÑÑÑ (left), Ñ‚Ó©Ð²Ð´ (center),\r\nï‚· cellspacing - Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ð½Ò¯Ð´ Ñ…Ð¾Ð¾Ñ€Ð¾Ð½Ð´Ñ‹Ð½ Ð·Ð°Ð¹Ð³ Ó©Ð³Ð½Ó©. (Ñ†ÑÐ³ÑÑÑ€),\r\nï‚· cellpadding - Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ð½Ò¯Ð´Ð½Ð¸Ð¹ Ð´Ð¾Ñ‚Ð¾Ð¾Ð´ Ñ…Ð¸Ð», Ð°Ð³ÑƒÑƒÐ»Ð³Ð° Ñ…Ð¾Ð¾Ñ€Ð¾Ð½Ð´Ð¾Ñ… Ð·Ð°Ð¹. (Ñ†ÑÐ³ÑÑÑ€).', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\ntable, th, td {\r\n    border: 1px solid black;\r\n    border-collapse: collapse;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Collapsed Borders</h2>\r\n<p>If you want the borders to collapse into one border, add the CSS border-collapse property.</p>\r\n\r\n<table style=\"width:100%\">\r\n  <tr>\r\n    <th>Firstname</th>\r\n    <th>Lastname</th> \r\n    <th>Age</th>\r\n  </tr>\r\n  <tr>\r\n    <td>Jill</td>\r\n    <td>Smith</td>\r\n    <td>50</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Eve</td>\r\n    <td>Jackson</td>\r\n    <td>94</td>\r\n  </tr>\r\n  <tr>\r\n    <td>John</td>\r\n    <td>Doe</td>\r\n    <td>80</td>\r\n  </tr>\r\n</table>\r\n\r\n</body>\r\n</html>', 11),
(16, 'HTML', 'Ð–Ð°Ð³ÑÐ°Ð°Ð»Ñ‚', 'Ð¯Ð¼Ð°Ñ€ Ð½ÑÐ³ÑÐ½ Ð±Ð°Ð¹Ð´Ð»Ð°Ð°Ñ€ Ð´ÑƒÐ³Ð°Ð°Ñ€Ð»Ð°Ð³Ð´ÑÐ°Ð½ Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ ÑŽÐ¼. Ð”ÑƒÐ³Ð°Ð°Ñ€Ð°Ð°Ñ€ Ð°Ñ€Ð°Ð± Ñ‚Ð¾Ð¾, Ñ€Ð¾Ð¼ Ñ‚Ð¾Ð¾ ÑÑÐ²ÑÐ» Ò¯ÑÐ³Ò¯Ò¯Ð´ Ð±Ð°Ð¹Ð¶ Ð±Ð¾Ð»Ð½Ð¾. Ð–Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ Ð´ÑƒÐ³Ð°Ð°Ñ€Ð»Ð°Ð³Ð´ÑÐ°Ð½ Ð³ÑÐ´Ð³Ð¸Ð¹Ð³ Ñ…Ó©Ñ‚Ó©Ñ‡Ð¸Ð´ Ð·Ð°Ð°Ð½ Ó©Ð³Ó©Ñ…Ð´Ó©Ó© <ul></ul> Ð±Ð¾Ð»Ð¾Ð½ <ol></ol> Ñ‚aÐ³Ð¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½Ð°. Ð‘Ò¯Ñ… Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ ÑÐ´Ð³ÑÑÑ€ Ñ‚ÐµÐ³Ð¸Ð¹Ð½ Ñ…Ð¾Ð¾Ñ€Ð¾Ð½Ð´ Ð±Ð°Ð¹Ñ€Ð»Ð°Ñ… Ð±Ó©Ð³Ó©Ó©Ð´ Ð¿ÑƒÐ½ÐºÑ‚ Ð±Ð¾Ð»Ð³Ð¾Ð½ <li></li> Ñ‚ÐµÐ³ÑÑÑ€ Ó©Ð³Ó©Ð³Ð´Ó©Ð½Ó©.', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n\r\n<h2>Ð­Ñ€ÑÐ¼Ð±ÑÐ»ÑÐ³Ð´ÑÑÐ³Ò¯Ð¹ Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚</h2>\r\n\r\n<ul>\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Milk</li>\r\n</ul>  \r\n\r\n<h2>Ð­Ñ€ÑÐ¼Ð±ÑÐ»ÑÐ³Ð´ÑÑÐ½ Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚</h2>\r\n\r\n<ol>\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Milk</li>\r\n</ol> \r\n\r\n</body>\r\n</html>\r\n', 12),
(17, 'HTML', 'Ð‘Ð»Ð¾Ðº ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´', 'Ð‘Ð»Ð¾Ðº Ñ‚Ò¯Ð²ÑˆÐ¸Ð½Ð¸Ð¹ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð¸Ñ…ÑÐ²Ñ‡Ð»ÑÐ½ <div> Ñ‚Ð°Ð³Ð°Ð°Ñ€ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ð³Ð´Ð´Ð¾Ð³ ÑŽÐ¼. Ð‘Ð»Ð¾Ðº ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ ÑˆÐ¸Ð½Ñ Ð¼Ó©Ñ€Ð½Ó©Ó©Ñ ÑÑ…ÑÐ»Ð¶ Ð°Ð¶Ð¸Ð»Ð»Ð°Ð´Ð°Ð³ ÑŽÐ¼. HTML - Ð´ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ð³Ð´ÑÐ¾Ð½ Ð±Ð»Ð¾Ðº ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´ Ð±Ð°Ð¹Ð´Ð°Ð³. Ò®Ò¯Ð½Ð´: <address><article><aside><blockquote><canvas><dd><div><dl><dt><fieldset><figcaption><figure><footer><form><h1>-<h6><header><hr><li><main><nav><noscript><ol><output><p><pre><section><table><tfoot><ul><video> .', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n<div>Hello</div>\r\n<div>World</div>\r\n<p>The DIV element is a block element, and will start on a new line.</p>\r\n</body>\r\n</html>', 13),
(18, 'HTML', 'ÐšÐ»Ð°ÑÑ', 'HTML ÐºÐ»Ð°ÑÑÑ‹Ð½ ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ Ð½ÑŒ Ð¸Ð¶Ð¸Ð» Ð°Ð½Ð³Ð¸Ð»Ð°Ð»Ñ‹Ð½ Ð½ÑÑ€Ñ‚ÑÐ¹ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´Ð¸Ð¹Ð½ Ñ…ÑƒÐ²ÑŒÐ´ Ð°Ð´Ð¸Ð» Ñ‚Ó©ÑÑ‚ÑÐ¹ Ð·Ð°Ð³Ð²Ð°Ñ€Ñ‹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ñ…Ð¾Ð´ Ñ…ÑÑ€ÑÐ³Ð»ÑÐ³Ð´Ð´ÑÐ³. Ð¢Ð¸Ð¹Ð¼ÑÑÑ Ð¸Ð¶Ð¸Ð» Ð°Ð½Ð³Ð¸Ð»Ð»Ñ‹Ð½ ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ Ð±Ò¯Ñ…Ð¸Ð¹ HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´ Ð½ÑŒ Ð¸Ð¶Ð¸Ð» Ñ…ÑÐ»Ð±ÑÑ€, Ð·Ð°Ð³Ð²Ð°Ñ€Ñ‚Ð°Ð¹ Ð±Ð°Ð¹Ð½Ð°. Ð­Ð½Ð´ Ð±Ð¸Ð´ Ð³ÑƒÑ€Ð²Ð°Ð½ Ñ‚Ó©Ñ€Ð»Ð¸Ð¹Ð½ <div> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´Ñ‚ÑÐ¹ Ð°Ð´Ð¸Ð»Ñ…Ð°Ð½ Ð½ÑÑ€Ñ‚ÑÐ¹:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\n.cities {\r\n    background-color: black;\r\n    color: white;\r\n    margin: 20px;\r\n    padding: 20px;\r\n} \r\n</style>\r\n</head>\r\n<body>\r\n\r\n<div class=\"cities\">\r\n  <h2>London</h2>\r\n  <p>London is the capital of England.</p>\r\n</div>\r\n\r\n<div class=\"cities\">\r\n  <h2>Paris</h2>\r\n  <p>Paris is the capital of France.</p>\r\n</div>\r\n\r\n<div class=\"cities\">\r\n  <h2>Tokyo</h2>\r\n  <p>Tokyo is the capital of Japan.</p>\r\n</div>\r\n\r\n</body>\r\n</html>', 14),
(19, 'HTML', 'ID', 'ID ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ Ð½ÑŒ HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ñ…ÑƒÐ²ÑŒÐ´ Ó©Ð²Ó©Ñ€Ð¼Ó©Ñ† id-Ñ‹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³ (ÑƒÑ‚Ð³Ð° Ð½ÑŒ HTML Ð±Ð°Ñ€Ð¸Ð¼Ñ‚ Ð´Ð¾Ñ‚Ð¾Ñ€ Ó©Ð²Ó©Ñ€Ð¼Ó©Ñ† Ð±Ð°Ð¹Ñ… Ñ‘ÑÑ‚Ð¾Ð¹).\r\nID Ò¯Ð½ÑÐ¼Ð»ÑÑ…Ò¯Ð¹ ÑƒÑ‚Ð³Ð°Ñ‚Ð°Ð¹ Ó©Ð²Ó©Ñ€Ð¼Ó©Ñ† ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ñ…ÑƒÐ²ÑŒÐ´ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹ Ò¯Ò¯Ñ€Ð³Ð¸Ð¹Ð³ Ð³Ò¯Ð¹Ñ†ÑÑ‚Ð³ÑÑ…Ð¸Ð¹Ð½ Ñ‚ÑƒÐ»Ð´ id Ð±Ð° Ò¯Ð½ÑÐ»ÑÐ¼Ð¶Ð¸Ð¹Ð³ CSS Ð±Ð¾Ð»Ð¾Ð½ JavaScript Ð°ÑˆÐ¸Ð³Ð»Ð°Ð¶ Ð±Ð¾Ð»Ð½Ð¾. CSS-Ð´ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹ id-Ñ‚Ð°Ð¹ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ ÑÐ¾Ð½Ð³Ð¾Ñ…Ñ‹Ð½ Ñ‚ÑƒÐ»Ð´ hash (#) Ñ‚ÑÐ¼Ð´ÑÐ³, Ð´Ð°Ñ€Ð°Ð° Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ ID-Ð³ Ð±Ð¸Ñ‡Ð½Ñ:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\n/* Style the element with the id \"myHeader\" */\r\n#myHeader {\r\n    background-color: lightblue;\r\n    color: black;\r\n    padding: 40px;\r\n    text-align: center;\r\n}\r\n\r\n/* Style all elements with the class name \"city\" */\r\n.city {\r\n    background-color: tomato;\r\n    color: white;\r\n    padding: 10px;\r\n} \r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Difference Between Class and ID</h2>\r\n<p>An HTML page can only have one unique id applied to one specific element, while a class name can be applied to multiple elements.</p>\r\n\r\n<!-- A unique element -->\r\n<h1 id=\"myHeader\">My Cities</h1>\r\n\r\n<!-- Multiple similar elements -->\r\n<h2 class=\"city\">London</h2>\r\n<p>London is the capital of England.</p>\r\n\r\n<h2 class=\"city\">Paris</h2>\r\n<p>Paris is the capital of France.</p>\r\n\r\n<h2 class=\"city\">Tokyo</h2>\r\n<p>Tokyo is the capital of Japan.</p>\r\n\r\n</body>\r\n</html>', 15),
(20, 'HTML', 'Iframe', 'An iframe is used to display a web page within a web page.               ', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n\r\n<h2>Iframe - Target for a Link</h2>\r\n\r\n<iframe height=\"300px\" width=\"100%\" src=\"demo_iframe.htm\" name=\"iframe_a\"></iframe>\r\n\r\n<p><a href=\"https://www.w3schools.com\" target=\"iframe_a\">W3Schools.com</a></p>\r\n\r\n<p>When the target of a link matches the name of an iframe, the link will open in the iframe.</p>\r\n\r\n</body>\r\n</html>\r\n', 16),
(21, 'HTML', 'FORM Ð¼Ð°ÑÐ³Ñ‚', ' HTML <form> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ñ…ÑÑ€ÑÐ³Ð»ÑÐ³Ñ‡Ð¸Ð¹Ð½ Ð¾Ñ€Ð¾Ð»Ñ‚Ñ‹Ð³ Ñ†ÑƒÐ³Ð»ÑƒÑƒÐ»Ð°Ñ…Ð°Ð´ Ñ…ÑÑ€ÑÐ³Ð»ÑÐ³Ð´Ð´ÑÐ³ Ð¼Ð°ÑÐ³Ñ‚Ñ‹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾:   ', '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n\r\n<h2>HTML Forms</h2>\r\n\r\n<form action=\"/action_page.php\">\r\n  First name:<br>\r\n  <input type=\"text\" name=\"firstname\" value=\"Mickey\">\r\n  <br>\r\n  Last name:<br>\r\n  <input type=\"text\" name=\"lastname\" value=\"Mouse\">\r\n  <br><br>\r\n  <input type=\"submit\" value=\"Submit\">\r\n</form> \r\n\r\n<p>If you click the \"Submit\" button, the form-data will be sent to a page called \"/action_page.php\".</p>\r\n\r\n</body>\r\n</html>\r\n', 17),
(22, 'HTML', 'Ð¢Ð°Ð½Ð¸Ð»Ñ†ÑƒÑƒÐ»Ð³Ð°', 'HTML Ð³ÑÐ´ÑÐ³ Ð½ÑŒ Hyper Text Markup Language Ò¯Ð³Ð¸Ð¹Ð½ Ñ‚Ð¾Ð²Ñ‡Ð»Ð¾Ð» ÑŽÐ¼. Ð’ÑÐ± Ñ…ÑƒÑƒÐ´Ð°Ñ Ñ…Ð°Ñ€ÑƒÑƒÐ»Ð°Ñ… Ð·Ð°Ð°Ð²Ð°Ñ€ Ð±Ð¸Ñ‡Ð´ÑÐ³ ÐºÐ¾Ð´Ñ‡Ð¸Ð»Ð¾Ð» ÑŽÐ¼. HTML Ð½ÑŒ script Ñ…ÑÐ» Ð±Ó©Ð³Ó©Ó©Ð´ ÑÐ¼Ð°Ñ€ Ð½ÑÐ³ÑÐ½ Ñ…Ó©Ñ€Ð²Ò¯Ò¯Ð»ÑÐ»Ñ‚ ÑˆÐ°Ð°Ñ€Ð´Ð´Ð°Ð³Ð³Ò¯Ð¹ Ð±Ó©Ð³Ó©Ó©Ð´ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚ Ñ…Ó©Ñ‚Ó©Ñ‡ Ð±Ð°Ð¹Ñ…Ð°Ð´ Ñ…Ð°Ð½Ð³Ð°Ð»Ñ‚Ñ‚Ð°Ð¹ ÑŽÐ¼. HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´ Ð½ÑŒ Ð²ÐµÐ± Ñ…ÑƒÑƒÐ´ÑÑ‹Ð½ Ð±Ò¯Ñ‚Ñ†Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³. HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ñ‚Ð°Ð°Ð³ÑƒÑƒÐ´Ð°Ð°Ñ€ Ð¸Ð»ÑÑ€Ñ…Ð¸Ð¹Ð»ÑÐ³Ð´Ð´ÑÐ³. <tagname>...</tagname> Ð–Ð¸ÑˆÑÑÐ»Ð±ÑÐ»: <br>bold text</b> Ð–Ð¸ÑˆÑÑ ÐºÐ¾Ð´: <br> <! DOCTYPE html> HTML5 Ñ…ÑƒÐ²Ð¸Ð»Ð±Ð°Ñ€ Ð³ÑÐ´Ð³Ð¸Ð¹Ð³ Ð·Ð°Ð°Ð¶ Ð±Ð°Ð¹Ð½Ð° <html> HTML Ñ…ÑƒÑƒÐ´Ð°ÑÐ½Ñ‹ Ò¯Ð½Ð´ÑÑÐ½ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ ÑŽÐ¼ <head> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð²ÐµÐ± Ñ…ÑƒÑƒÐ´ÑÑ‹Ð½ Ñ‚ÑƒÑ…Ð°Ð¹ Ð¼ÐµÑ‚Ð° Ð¼ÑÐ´ÑÑÐ»ÑÐ» Ð°Ð³ÑƒÑƒÐ»Ð´Ð°Ð³ <title> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð²ÐµÐ± Ñ…ÑƒÑƒÐ´ÑÑ‹Ð½ Ð³Ð°Ñ€Ñ‡Ð¸Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³ <body> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð²ÐµÐ± Ñ…ÑƒÑƒÐ´Ð°ÑÐ½Ñ‹ Ð°Ð³ÑƒÑƒÐ»Ð³Ð° Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³ <h1> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð³Ð°Ñ€Ñ‡Ð¸Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³ <p> ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð´Ð¾Ð³Ð¾Ð» Ð¼Ó©Ñ€Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Page Title</title>\r\n</head>\r\n<body>\r\n\r\n<h1>This is a Heading</h1>\r\n<p>This is a paragraph.</p>\r\n\r\n</body>\r\n</html>', 1),
(23, 'CSS', 'Ð¢Ð°Ð½Ð¸Ð»Ñ†ÑƒÑƒÐ»Ð³Ð°', 'CSS Ð³ÑÐ´ÑÐ³ Ð½ÑŒ Cascading Style Sheets Ð³ÑÐ´ÑÐ³ Ò¯Ð³Ð¸Ð¹Ð½ Ñ‚Ð¾Ð²Ñ‡Ð»Ð¾Ð» Ð±Ó©Ð³Ó©Ó©Ð´ Ñ…ÑÐ»Ð±ÑÑ€, Ð´Ð¸Ð·Ð°Ð¹Ð½ Ð³ÑÐ¶ Ð¾Ð¹Ð»Ð³Ð¾Ð¶ Ð±Ð¾Ð»Ð¾Ñ… ÑŽÐ¼. CSS Ð½ÑŒ HTML ÐºÐ¾Ð´Ñ‡Ð»Ð¾Ð»Ñ‹Ð½ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ñ‚Ð°Ð³ÑƒÑƒÐ´Ð¸Ð¹Ð³ Ñ…ÑÑ€Ñ…ÑÐ½ Ò¯Ð·Ò¯Ò¯Ð»ÑÑ… Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ñ‹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\nbody {\r\n    background-color: lightblue;\r\n}\r\n\r\nh1 {\r\n    color: white;\r\n    text-align: center;\r\n}\r\n\r\np {\r\n    font-family: verdana;\r\n    font-size: 20px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h1>My First CSS Example</h1>\r\n<p>This is a paragraph.</p>\r\n\r\n</body>\r\n</html>\r\n', 1),
(24, 'CSS', 'Ó¨Ð½Ð³Ó©', 'HTML Ð½ÑŒ 140 ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚ Ó©Ð½Ð³Ó©Ñ‚ Ð½ÑÑ€Ð¸Ð¹Ð³ Ð´ÑÐ¼Ð¶Ð´ÑÐ³. HTML Ó©Ð½Ð³Ó© Ð½ÑŒ ÑƒÑ€ÑŒÐ´Ñ‡Ð¸Ð»Ð°Ð½ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»ÑÐ¾Ð½ Ó©Ð½Ð³Ó©Ð½Ð¸Ð¹ Ð½ÑÑ€Ð¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½ RGB, HEX, HSL, RGBA, HSLA ÑƒÑ‚Ð³ÑƒÑƒÐ´Ñ‹Ð³ Ð·Ð°Ð°Ð´Ð°Ð³.', '        <!DOCTYPE html>\r\n<html>\r\n<body>\r\n<h1 style=\"color:Tomato;\">Hello World</h1>\r\n<p style=\"color:DodgerBlue;\">Lorem ipsum...</p>\r\n<p style=\"color:MediumSeaGreen;\">Ut wisi enim...</p>\r\n<h1 style=\"border:2px solid Tomato;\">Hello World</h1>\r\n<h1 style=\"border:2px solid DodgerBlue;\">Hello World</h1>\r\n<h1 style=\"border:2px solid Violet;\">Hello World</h1>\r\n<h1 style=\"background-color:Tomato;\">Tomato</h1>\r\n<h1 style=\"background-color:rgb(255, 99, 71);\">RGB</h1>\r\n<h1 style=\"background-color:#ff6347;\">color</h1>\r\n<h1 style=\"background-color:hsl(9, 100%, 64%);\">HSL</h1>\r\n\r\n<h1 style=\"background-color:rgba(255, 99, 71, 0.5);\">RGBA</h1>\r\n<h1 style=\"background-color:hsla(9, 100%, 64%, 0.5);\">HSLA</h1>\r\n\r\n</body>\r\n</html>', 2),
(25, 'CSS', 'Ð”ÑÐ²ÑÐ³ÑÑ€', 'Background-color property Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ð°Ñ€Ñ‹Ð½ Ó©Ð½Ð³Ó©Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾.CSS background ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ÑƒÑƒÐ´ Ð½ÑŒ: \r\nbackground-color, \r\nbackground-image, \r\nbackground-repeat, \r\nbackground-attachment, \r\nbackground-position, \r\nBackground Color, Ð±Ð°Ð¹Ð½Ð°.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\nh1 {\r\n    background-color: green;\r\n}\r\n\r\ndiv {\r\n    background-color: lightblue;\r\n}\r\n\r\np {\r\n    background-color: yellow;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h1>CSS background-color example!</h1>\r\n<div>\r\nThis is a text inside a div element.\r\n<p>This paragraph has its own background color.</p>\r\nWe are still in the div element.\r\n</div>\r\n\r\n</body>\r\n</html>', 3),
(26, 'CSS', 'Ð¥Ò¯Ñ€ÑÑ', 'CSS Ð½ÑŒ border ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ñ…Ò¯Ñ€ÑÑÐ½Ð¸Ð¹ Ñ…ÑÐ² Ð¼Ð°ÑÐ³, Ó©Ñ€Ð³Ó©Ð½, Ó©Ð½Ð³Ó© Ð·ÑÑ€Ð³Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¾Ñ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ð¸Ð¹Ð³ Ñ‚Ð°Ð½Ð´ Ð¾Ð»Ð³Ð¾Ð½Ð¾. Ð–Ð¸ÑˆÑÑ ÐºÐ¾Ð´ Ñ…Ð°Ñ€Ð½Ð° ÑƒÑƒ?', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\np.dotted {border-style: dotted;}\r\np.dashed {border-style: dashed;}\r\np.solid {border-style: solid;}\r\np.double {border-style: double;}\r\np.groove {border-style: groove;}\r\np.ridge {border-style: ridge;}\r\np.inset {border-style: inset;}\r\np.outset {border-style: outset;}\r\np.none {border-style: none;}\r\np.hidden {border-style: hidden;}\r\np.mix {border-style: dotted dashed solid double;}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>The border-style Property</h2>\r\n<p>This property specifies what kind of border to display:</p>\r\n\r\n<p class=\"dotted\">A dotted border.</p>\r\n<p class=\"dashed\">A dashed border.</p>\r\n<p class=\"solid\">A solid border.</p>\r\n<p class=\"double\">A double border.</p>\r\n<p class=\"groove\">A groove border.</p>\r\n<p class=\"ridge\">A ridge border.</p>\r\n<p class=\"inset\">An inset border.</p>\r\n<p class=\"outset\">An outset border.</p>\r\n<p class=\"none\">No border.</p>\r\n<p class=\"hidden\">A hidden border.</p>\r\n<p class=\"mix\">A mixed border.</p>\r\n\r\n</body>\r\n</html>\r\n', 4),
(27, 'CSS', 'Margin', 'CSS-Ð¸Ð¹Ð½ Ñ‚ÑƒÑÐ»Ð°Ð¼Ð¶Ñ‚Ð°Ð¹ Ñ‚Ð° Ñ…Ò¯Ñ€ÑÑÐ½Ð¸Ð¹ Ð·Ð°Ð¹Ð´ Ð±Ò¯Ñ€ÑÐ½ Ñ…ÑÐ½Ð°Ð»Ñ‚ Ñ‚Ð°Ð²ÑŒÐ´Ð°Ð³. ÐÐ»ÑŒ Ñ‡ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ñ‚Ð°Ð»Ñ‹Ð³ (Ð´ÑÑÐ´, Ð±Ð°Ñ€ÑƒÑƒÐ½, Ð´Ð¾Ð¾Ð´, Ð·Ò¯Ò¯Ð½) Ñ‚Ð°Ð»Ð°Ð°Ñ Ñ…ÑÑ€ Ñ…Ð¾Ð» Ð·Ð°Ð¹Ñ‚Ð°Ð¹ Ð±Ð°Ð¹Ñ…Ñ‹Ð³ Ð·Ð°Ð°Ñ… ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ÑƒÑƒÐ´ Ð±Ð°Ð¹Ð´Ð°Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\ndiv {\r\n    border: 1px solid black;\r\n    margin-top: 100px;\r\n    margin-bottom: 100px;\r\n    margin-right: 150px;\r\n    margin-left: 80px;\r\n    background-color: lightblue;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Using individual margin properties</h2>\r\n\r\n<div>This div element has a top margin of 100px, a right margin of 150px, a bottom margin of 100px, and a left margin of 80px.</div>\r\n\r\n</body>\r\n</html>\r\n', 5),
(28, 'CSS', 'Padding', 'CSS padding properties Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ð°Ð³ÑƒÑƒÐ»Ð³Ñ‹Ð½ ÑÑ€Ð³ÑÐ½ Ñ‚Ð¾Ð¹Ñ€Ð¾Ð½ Ð´Ð°Ñ…ÑŒ Ð¾Ñ€Ð¾Ð½ Ð·Ð°Ð¹Ð³ Ò¯Ò¯ÑÐ³ÑÑ…ÑÐ´ Ñ…ÑÑ€ÑÐ³Ð»ÑÐ³Ð´Ð´ÑÐ³.\r\n\r\nCSS-Ð¸Ð¹Ð½ Ñ‚ÑƒÑÐ»Ð°Ð¼Ð¶Ñ‚Ð°Ð¹Ð³Ð°Ð°Ñ€ Ñ‚Ð° Ð´ÑÐ²ÑÐ³ÑÑ€Ñ‚ÑÑ Ð±Ò¯Ñ€ÑÐ½ Ñ…ÑÐ½Ð°Ð»Ñ‚ Ñ‚Ð°Ð²ÑŒÐ´Ð°Ð³. Ð­Ð»ÐµÐ¼ÐµÐ½Ñ‚ Ð±Ò¯Ñ€Ð¸Ð¹Ð½ Ñ‚Ð°Ð»Ð±Ð°Ð¹Ð½ (Ð´ÑÑÐ´, Ð±Ð°Ñ€ÑƒÑƒÐ½, Ð´Ð¾Ð¾Ð´, Ð·Ò¯Ò¯Ð½ Ñ‚Ð°Ð»Ð´) Ñ‚Ð°Ð»Ð±Ð°Ð¹Ð½ Ñ…ÑÐ¼Ð¶ÑÑÐ³ Ñ‚Ð¾Ñ…Ð¸Ñ€ÑƒÑƒÐ»Ð°Ñ… ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ÑƒÑƒÐ´ Ð±Ð°Ð¹Ð´Ð°Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\ndiv {\r\n    border: 1px solid black;\r\n    background-color: lightblue;\r\n    padding-top: 50px;\r\n    padding-right: 30px;\r\n    padding-bottom: 50px;\r\n    padding-left: 80px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Using individual padding properties</h2>\r\n\r\n<div>This div element has a top padding of 50px, a right padding of 30px, a bottom padding of 50px, and a left padding of 80px.</div>\r\n\r\n</body>\r\n</html>\r\n', 6),
(29, 'CSS', 'Ó¨Ñ€Ð³Ó©Ð½, Ó©Ð½Ð´Ó©Ñ€', 'Ó¨Ð½Ð´Ó©Ñ€ Ð±Ð¾Ð»Ð¾Ð½ Ó©Ñ€Ð³Ó©Ð½Ð¸Ð¹Ð³ Ñ‚Ð¾Ñ…Ð¸Ñ€ÑƒÑƒÐ»Ð°Ñ…\r\nÓ¨Ð½Ð´Ó©Ñ€ Ð±Ð° Ó©Ñ€Ð³Ó©Ð½ ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€Ñ‹Ð³ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ó©Ð½Ð´Ó©Ñ€ Ð±Ð° Ó©Ñ€Ð³Ó©Ð½Ð¸Ð¹Ð³ Ñ‚Ð¾Ñ…Ð¸Ñ€ÑƒÑƒÐ»Ð°Ñ…Ð°Ð´ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½Ð°.\r\n\r\nÓ¨Ð½Ð´Ó©Ñ€ Ð±Ð° Ó©Ñ€Ð³Ó©Ð½Ð¸Ð¹Ð³ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð°Ð°Ñ€ Ñ‚Ð¾Ñ…Ð¸Ñ€ÑƒÑƒÐ»Ð°Ñ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ñ‚Ð¾Ð¹ (ÑÐ½Ñ Ð½ÑŒ Ð°Ð½Ñ…Ð´Ð°Ð³Ñ‡Ð°Ð°Ñ€ Ñ…Ó©Ñ‚Ó©Ñ‡ Ð½ÑŒ Ó©Ð½Ð´Ó©Ñ€ Ð±Ð° Ó©Ñ€Ð³Ó©Ð½Ð¸Ð¹Ð³ Ñ‚Ð¾Ð¾Ñ†Ð´Ð¾Ð³, ÑÑÐ²ÑÐ» px, cm, Ð³ÑÑ… Ð¼ÑÑ‚ ÑƒÑ€Ñ‚Ñ‚Ð°Ð¹ ÑƒÑ‚Ð³ÑƒÑƒÐ´ ÑÑÐ²ÑÐ» Ð±Ð»Ð¾ÐºÐ½Ñ‹%  Ð±Ð°Ð¹Ð´Ð°Ð³)', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\ndiv {\r\n    height: 200px;\r\n    width: 50%;\r\n    background-color: powderblue;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Set the height and width of an element</h2>\r\n\r\n<p>This div element has a height of 200px and a width of 50%:</p>\r\n\r\n<div></div>\r\n\r\n</body>\r\n</html>\r\n', 7),
(30, 'CSS', 'Box Model', 'CSS Ð¨Ð¸Ð³Ñ‚Ð³ÑÑ Ð—Ð°Ð³Ð²Ð°Ñ€\r\nÐ‘Ò¯Ñ… HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´Ð¸Ð¹Ð³ Ñ…Ð°Ð¹Ñ€Ñ†Ð°Ð³ Ð³ÑÐ¶ Ò¯Ð·ÑÑ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ñ‚Ð¾Ð¹. CSS-Ð´ \"Ñ…Ð°Ð¹Ñ€Ñ†Ð³Ð¸Ð¹Ð½ Ð·Ð°Ð³Ð²Ð°Ñ€\" Ð³ÑÑÑÐ½ Ð½ÑÑ€ Ñ‚Ð¾Ð¼ÑŠÑ‘Ð¾ Ð½ÑŒ Ð´Ð¸Ð·Ð°Ð¹Ð½, Ð·Ð¾Ñ…Ð¸Ð¾Ð½ Ð±Ð°Ð¹Ð³ÑƒÑƒÐ»Ð°Ð»Ñ‚Ñ‹Ð½ Ñ‚Ð°Ð»Ð°Ð°Ñ€ ÑÑ€Ð¸Ñ…Ð°Ð´ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð³Ð´Ð´Ð°Ð³.\r\n\r\nCSS Ñ…Ð°Ð¹Ñ€Ñ†Ð°Ð³Ð½Ñ‹ Ð·Ð°Ð³Ð²Ð°Ñ€ Ð½ÑŒ Ò¯Ð½Ð´ÑÑÐ½Ð´ÑÑ HTML ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð³ Ñ‚Ð¾Ð¹Ñ€ÑÐ¾Ð½ Ñ…Ð°Ð¹Ñ€Ñ†Ð°Ð³ ÑŽÐ¼. Ð­Ð½Ñ Ð½ÑŒ Ð´Ð°Ñ€Ð°Ð°Ñ…ÑŒ Ð·Ò¯Ð¹Ð»ÑÑÑ Ð±Ò¯Ñ€Ð´ÑÐ½Ñ: Ñ…Ð¸Ð» Ñ…ÑÐ·Ð³Ð°Ð°Ñ€, Ñ…Ð¸Ð» Ñ…ÑÐ·Ð³Ð°Ð°Ñ€, Ð´ÑÐ²ÑÐ³ÑÑ€, Ð±Ð¾Ð´Ð¸Ñ‚ Ð°Ð³ÑƒÑƒÐ»Ð³Ð°. Ð”Ð°Ñ€Ð°Ð°Ñ… Ð·ÑƒÑ€Ð°Ð³ Ð½ÑŒ Ñ…Ð°Ð¹Ñ€Ñ†Ð°Ð³Ð½Ñ‹ Ð·Ð°Ð³Ð²Ð°Ñ€Ñ‹Ð³ Ñ…Ð°Ñ€ÑƒÑƒÐ»Ð¶ Ð±Ð°Ð¹Ð½Ð°:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\ndiv {\r\n    background-color: lightgrey;\r\n    width: 300px;\r\n    border: 25px solid green;\r\n    padding: 25px;\r\n    margin: 25px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Demonstrating the Box Model</h2>\r\n\r\n<p>The CSS box model is essentially a box that wraps around every HTML element. It consists of: borders, padding, margins, and the actual content.</p>\r\n\r\n<div>This text is the actual content of the box. We have added a 25px padding, 25px margin and a 25px green border. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n\r\n</body>\r\n</html>\r\n\r\n', 8),
(31, 'CSS', 'Ð¥Ð¾Ð»Ð±Ð¾Ð¾Ñ', 'CSS-Ð¸Ð¹Ð½ Ñ‚ÑƒÑÐ»Ð°Ð¼Ð¶Ñ‚Ð°Ð¹Ð³Ð°Ð°Ñ€ Ñ…Ð¾Ð»Ð±Ð¾Ð¾ÑÑ‹Ð³ ÑÐ½Ð· Ð±Ò¯Ñ€Ð¸Ð¹Ð½ Ð°Ñ€Ð³Ð°Ð°Ñ€ Ó©Ó©Ñ€Ñ‡Ð¸Ð»Ð¶ Ð±Ð¾Ð»Ð½Ð¾. Ð¥Ð¾Ð»Ð±Ð¾Ð¾ÑÑƒÑƒÐ´ Ð½ÑŒ ÑÐ¼Ð°Ñ€ Ñ‡ CSS ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€Ð°Ð°Ñ€ (Ð¶Ð½ÑŒ: Ó©Ð½Ð³Ó©, Ñ„Ð¾Ð½Ñ‚Ñ‹Ð½ Ð³ÑÑ€ Ð±Ò¯Ð», Ð´ÑÐ²ÑÐ³ÑÑ€ Ð·ÑƒÑ€Ð°Ð³ Ð³.Ð¼). Ò®Ò¯Ð½ÑÑÑ Ð³Ð°Ð´Ð½Ð° Ñ…Ð¾Ð»Ð±Ð¾Ð¾Ñ Ð½ÑŒ ÑÐ¼Ð°Ñ€ Ñ‚Ó©Ñ€Ó©Ð»Ð´ Ð±Ð°Ð³Ñ‚Ð°Ð¶ Ð±Ð°Ð¹Ð³Ð°Ð°Ð³Ð°Ð°Ñ ÑˆÐ°Ð»Ñ‚Ð³Ð°Ð°Ð»Ð°Ð½ Ó©Ó©Ñ€ Ó©Ó©Ñ€ Ñ…ÑÐ»Ð±ÑÑ€ÑÑÑ€ Ñ…Ð¸Ð¹Ð³Ð´Ð´ÑÐ³.\r\n\r\nÐ”Ó©Ñ€Ð²Ó©Ð½ Ñ…Ð¾Ð»Ð±Ð¾Ð¾Ñ Ð½ÑŒ: a:link - a normal, unvisited link\r\na:visited - a link the user has visited\r\na:hover - a link when the user mouses over it\r\na:active - a link the moment it is clicked', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\na:link, a:visited {\r\n    background-color: #f44336;\r\n    color: white;\r\n    padding: 14px 25px;\r\n    text-align: center;\r\n    text-decoration: none;\r\n    display: inline-block;\r\n}\r\n\r\n\r\na:hover, a:active {\r\n    background-color: red;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<a href=\"default.asp\" target=\"_blank\">This is a link</a>\r\n\r\n</body>\r\n</html>\r\n', 9),
(32, 'CSS', 'Ð–Ð°Ð³ÑÐ°Ð°Ð»Ñ‚', '                   HTML Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ Ð±Ð¾Ð»Ð¾Ð½ CSS Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ Properties\r\nHTML Ð´Ð¾Ñ‚Ð¾Ñ€ Ñ…Ð¾Ñ‘Ñ€ Ñ‚Ó©Ñ€Ð»Ð¸Ð¹Ð½ Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ Ð±Ð°Ð¹Ð´Ð°Ð³:\r\n\r\nunordered lists (<ul>) - Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚Ñ‹Ð½ Ð·Ò¯Ð¹Ð»ÑÐ¸Ð¹Ð³ ÑÑƒÐ¼Ð°Ð°Ñ€ Ñ‚ÑÐ¼Ð´ÑÐ³Ð»ÑÐ²\r\nÐ—Ð°Ñ…Ð¸Ð°Ð»Ð³Ð°Ñ‚ Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ (<ol>) - Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚Ñ‹Ð½ Ð·Ò¯Ð¹Ð»ÑÐ¸Ð¹Ð³ Ñ‚Ð¾Ð¾ ÑÑÐ²ÑÐ» Ò¯ÑÐ³ÑÑÑ€ Ñ‚ÑÐ¼Ð´ÑÐ³Ð»ÑÐ²\r\nCSS Ð¶Ð°Ð³ÑÐ°Ð°Ð»Ñ‚ Ð½ÑŒ Ð´Ð°Ñ€Ð°Ð°Ñ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ð¸Ð¹Ð³ Ð¾Ð»Ð³Ð¾Ð´Ð¾Ð³:         ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\nul.a {\r\n    list-style-type: circle;\r\n}\r\n\r\nul.b {\r\n    list-style-type: square;\r\n}\r\n\r\nol.c {\r\n    list-style-type: upper-roman;\r\n}\r\n\r\nol.d {\r\n    list-style-type: lower-alpha;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<p>Example of unordered lists:</p>\r\n<ul class=\"a\">\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Coca Cola</li>\r\n</ul>\r\n\r\n<ul class=\"b\">\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Coca Cola</li>\r\n</ul>\r\n\r\n<p>Example of ordered lists:</p>\r\n<ol class=\"c\">\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Coca Cola</li>\r\n</ol>\r\n\r\n<ol class=\"d\">\r\n  <li>Coffee</li>\r\n  <li>Tea</li>\r\n  <li>Coca Cola</li>\r\n</ol>\r\n\r\n</body>\r\n</html>\r\n', 10),
(33, 'CSS', 'Ð¥Ò¯ÑÐ½ÑÐ³Ñ‚', 'HTML Ñ…Ò¯ÑÐ½ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ñ…Ð°Ñ€Ð°Ð³Ð´Ð°Ñ… Ð±Ð°Ð¹Ð´Ð»Ñ‹Ð³ CSS-ÑÑÑ€ ÑÐ°Ð¹Ð¶Ñ€ÑƒÑƒÐ»Ð¶ Ð±Ð¾Ð»Ð½Ð¾:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\ntable {\r\n    border-collapse: collapse;\r\n    width: 100%;\r\n}\r\n\r\nth, td {\r\n    padding: 8px;\r\n    text-align: left;\r\n    border-bottom: 1px solid #ddd;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Bordered Table Dividers</h2>\r\n<p>Add the border-bottom property to th and td for horizontal dividers:</p>\r\n\r\n<table>\r\n  <tr>\r\n    <th>Firstname</th>\r\n    <th>Lastname</th>\r\n    <th>Savings</th>\r\n  </tr>\r\n  <tr>\r\n    <td>Peter</td>\r\n    <td>Griffin</td>\r\n    <td>$100</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Lois</td>\r\n    <td>Griffin</td>\r\n    <td>$150</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Joe</td>\r\n    <td>Swanson</td>\r\n    <td>$300</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Cleveland</td>\r\n    <td>Brown</td>\r\n    <td>$250</td>\r\n  </tr>\r\n</table>\r\n\r\n</body>\r\n</html>\r\n', 11),
(34, 'CSS', 'Position', 'ÐŸÐ¾Ð·Ð¸Ñ†Ð¸Ð¹Ð½ Ó©Ð¼Ñ‡ Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ñ…ÑÑ€ÑÐ³Ð»ÑÑÐ½Ð¸Ð¹ Ð±Ð°Ð¹Ñ€Ð»Ð°Ð»Ñ‹Ð½ Ð°Ñ€Ð³Ñ‹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾ (ÑÑ‚Ð°Ñ‚Ð¸Ðº, Ñ…Ð°Ñ€ÑŒÑ†Ð°Ð½Ð³ÑƒÐ¹, Ñ‚Ð¾Ð³Ñ‚Ð¼Ð¾Ð», Ñ‚ÑƒÐ¹Ð»Ñ‹Ð½ ÑÑÐ²ÑÐ» Ð½Ð°Ð°Ð»Ð´Ð°Ð¼Ñ…Ð°Ð¹). Ð­Ð»ÐµÐ¼ÐµÐ½Ñ‚Ò¯Ò¯Ð´ Ð½ÑŒ Ð´ÑÑÐ´, Ð´Ð¾Ð¾Ð´, Ð·Ò¯Ò¯Ð½, Ð±Ð°Ñ€ÑƒÑƒÐ½ ÑˆÐ¸Ð½Ð¶Ò¯Ò¯Ð´Ð¸Ð¹Ð³ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½ Ð±Ð°Ð¹Ñ€ÑˆÑƒÑƒÐ»Ð½Ð°. Ð“ÑÑÑÐ½ Ñ…ÑÐ´Ð¸Ð¹ Ñ‡, ÑÐ´Ð³ÑÑÑ€ ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ÑƒÑƒÐ´ Ð½ÑŒ Ð±Ð°Ð¹Ñ€ÑˆÐ»Ñ‹Ð½ Ó©Ð¼Ñ‡Ð¸Ð¹Ð³ ÑÑ…Ð»ÑÑÐ´ Ñ‚Ð¾Ð³Ñ‚Ð¾Ð¾Ñ…Ð³Ò¯Ð¹ Ð±Ð¾Ð» Ð°Ð¶Ð¸Ð»Ð»Ð°Ñ…Ð³Ò¯Ð¹. Ð¢ÑÐ´ Ð¼Ó©Ð½ Ð°Ð¶Ð»Ñ‹Ð½ Ð±Ð°Ð¹Ñ€Ð½Ñ‹ Ò¯Ð½Ñ Ñ†ÑÐ½ÑÑÑ Ñ…Ð°Ð¼Ð°Ð°Ñ€Ð°Ð½ ÑÐ½Ð· Ð±Ò¯Ñ€ÑÑÑ€ Ð°Ð¶Ð¸Ð»Ð»Ð°Ð½Ð°.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\ndiv.relative {\r\n    position: relative;\r\n    width: 400px;\r\n    height: 200px;\r\n    border: 3px solid #73AD21;\r\n} \r\n\r\ndiv.absolute {\r\n    position: absolute;\r\n    top: 80px;\r\n    right: 0;\r\n    width: 200px;\r\n    height: 100px;\r\n    border: 3px solid #73AD21;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>position: absolute;</h2>\r\n\r\n<p>An element with position: absolute; is positioned relative to the nearest positioned ancestor (instead of positioned relative to the viewport, like fixed):</p>\r\n\r\n<div class=\"relative\">This div element has position: relative;\r\n  <div class=\"absolute\">This div element has position: absolute;</div>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n', 12),
(35, 'CSS', 'Overflow', 'CSS overflow property Ð½ÑŒ Ñ‚ÑƒÑ…Ð°Ð¹Ð½ Ñ‚Ð°Ð»Ð±Ð°Ð¹Ð´ Ñ‚Ð¾Ñ…Ð¸Ñ€Ð¾Ñ… Ñ…ÑÑ‚ Ñ‚Ð¾Ð¼ Ð°Ð³ÑƒÑƒÐ»Ð³Ñ‹Ð½ Ñ…ÑƒÐ²ÑŒÐ´ ÑŽÑƒ Ð±Ð¾Ð»Ð¶ Ð±Ð°Ð¹Ð³Ð°Ð°Ð³ Ñ…ÑÐ½Ð°Ð´Ð°Ð³. Overflow property Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚ Ð½ÑŒ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹ Ð±Ò¯ÑÑÐ´ Ð±Ð°Ð³Ñ‚Ð°Ñ…Ñ‹Ð½ Ñ‚ÑƒÐ»Ð´ Ñ…ÑÑ‚ Ñ‚Ð¾Ð¼ Ð±Ð°Ð¹Ñ… Ò¯ÐµÐ´ Ð°Ð³ÑƒÑƒÐ»Ð³Ð°Ð° ÐºÐ»Ð¸Ð¿ Ñ…Ð¸Ð¹Ñ… ÑÑÐ²ÑÐ» Ð³Ò¯Ð¹Ð»Ð³ÑÑ… Ñ‚Ð°Ð»Ð±Ð°Ñ€ Ð½ÑÐ¼ÑÑ… ÑÑÑÑ…Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð½Ð¾. Overflow ÑˆÐ¸Ð½Ð¶ Ñ‡Ð°Ð½Ð°Ñ€ Ð½ÑŒ Ð´Ð°Ñ€Ð°Ð°Ñ…ÑŒ ÑƒÑ‚Ð³ÑƒÑƒÐ´Ñ‚Ð°Ð¹: visible, hidden, scroll, auto', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\n#overflowTest {\r\n    background: #4CAF50;\r\n    color: white;\r\n    padding: 15px;\r\n    width: 50%;\r\n    height: 100px;\r\n    overflow: scroll;\r\n    border: 1px solid #ccc;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<div id=\"overflowTest\">This text is really long and the height of its container is only 100 pixels. Therefore, a scrollbar is added to help the reader to scroll the content. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem.</div>\r\n\r\n</body>\r\n</html>\r\n', 13),
(36, 'CSS', 'Float', 'Float Ó©Ð¼Ñ‡\r\nFloat property Ð½ÑŒ Ð²ÑÐ± Ñ…ÑƒÑƒÐ´ÑÐ°Ð½ Ð´ÑÑÑ€Ñ… Ð±Ð°Ð¹Ñ€Ð»Ð°Ð», Ð±Ð°Ð¹Ñ€ÑˆÐ¸Ð»Ð´ Ð°ÑˆÐ¸Ð³Ð»Ð°Ð³Ð´Ð´Ð°Ð³.\r\n\r\nFloat property Ð½ÑŒ Ð´Ð°Ñ€Ð°Ð°Ñ… ÑƒÑ‚Ð³ÑƒÑƒÐ´Ñ‹Ð½ Ð°Ð»ÑŒ Ð½ÑÐ³Ð¸Ð¹Ð³ Ð°Ð³ÑƒÑƒÐ»ÑÐ°Ð½ Ð±Ð°Ð¹Ð¶ Ð±Ð¾Ð»Ð½Ð¾:\r\n\r\nleft - Ð­Ð»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ñ‚Ò¯Ò¯Ð½Ð¸Ð¹ ÑÐ°Ð²Ð½Ñ‹ Ð·Ò¯Ò¯Ð½ Ñ‚Ð°Ð»Ð´ Ñ…Ó©Ð²Ð½Ó©,\r\nright- ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ ÑÐ°Ð²Ð½Ñ‹Ñ…Ð°Ð° Ð±Ð°Ñ€ÑƒÑƒÐ½ Ñ‚Ð°Ð»Ð´ Ñ…Ó©Ð²Ð´Ó©Ð³,\r\nnone - ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ñ…Ó©Ð²Ó©Ñ…Ð³Ò¯Ð¹ (Ñ‚ÐµÐºÑÑ‚ÑÐ½Ð´ Ñ…Ð°Ð°Ð½Ð° Ò¯Ò¯ÑÑÑ…Ð¸Ð¹Ð³ Ñ…Ð°Ñ€ÑƒÑƒÐ»Ð½Ð°). Ð­Ð½Ñ Ð½ÑŒ Ð°Ð½Ñ…Ð´Ð°Ð³Ñ‡ ÑŽÐ¼,\r\ninherit - Ð­Ð»ÐµÐ¼ÐµÐ½Ñ‚ ÑÑ†ÑÐ³ ÑÑ…Ð¸Ð¹Ð½Ñ…Ð°Ð° Ñ…Ó©Ð²Ó©Ñ… Ò¯Ð½Ñ Ñ†ÑÐ½Ð¸Ð¹Ð³ Ó©Ð²Ð»Ó©Ð½Ó©\r\nÐ­Ð½Ð³Ð¸Ð¹Ð½ Ñ…ÑÑ€ÑÐ³Ð»ÑÑÐ½Ð´ float property Ð½ÑŒ Ñ‚ÐµÐºÑÑ‚Ð¸Ð¹Ð³ ÑÑ€Ð³ÑÐ½ Ñ‚Ð¾Ð¹Ñ€Ð¾Ð½Ð´ Ð±Ð°Ð¹Ñ€Ð»ÑƒÑƒÐ»Ð¶ Ð±Ð¾Ð»Ð½Ð¾.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\n* {\r\n    box-sizing: border-box;\r\n}\r\n.header, .footer {\r\n    background-color: grey;\r\n    color: white;\r\n    padding: 15px;\r\n}\r\n.column {\r\n    float: left;\r\n    padding: 15px;\r\n}\r\n.clearfix::after {\r\n    content: \"\";\r\n    clear: both;\r\n    display: table;\r\n}\r\n.menu {\r\n    width: 25%;\r\n}\r\n.content {\r\n    width: 75%;\r\n}\r\n.menu ul {\r\n    list-style-type: none;\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n.menu li {\r\n    padding: 8px;\r\n    margin-bottom: 8px;\r\n    background-color: #33b5e5;\r\n    color: #ffffff;\r\n}\r\n.menu li:hover {\r\n    background-color: #0099cc;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<div class=\"header\">\r\n  <h1>Chania</h1>\r\n</div>\r\n\r\n<div class=\"clearfix\">\r\n  <div class=\"column menu\">\r\n    <ul>\r\n      <li>The Flight</li>\r\n      <li>The City</li>\r\n      <li>The Island</li>\r\n      <li>The Food</li>\r\n    </ul>\r\n  </div>\r\n\r\n  <div class=\"column content\">\r\n    <h1>The City</h1>\r\n    <p>Chania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.</p>\r\n    <p>You will learn more about web layout and responsive web pages in a later chapter.</p>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n  <p>Footer Text</p>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n', 14),
(37, 'CSS', 'Inline Block', 'Ð¥Ð°Ñ€ÑƒÑƒÐ»Ð°Ñ…Ñ‚Ð°Ð¹ Ñ…Ð°Ñ€ÑŒÑ†ÑƒÑƒÐ»Ð±Ð°Ð»: inline, Ð³Ð¾Ð» ÑÐ»Ð³Ð°Ð° Ð½ÑŒ Ð´ÑÐ»Ð³ÑÑ†ÑÐ½Ð´ Ñ…Ð°Ñ€Ð°Ð³Ð´Ð°Ð½Ð°: Inline-block Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð´ÑÑÑ€ Ó©Ñ€Ð³Ó©Ð½ Ð±Ð° Ó©Ð½Ð´Ó©Ñ€Ð¸Ð¹Ð³ Ñ‚Ð¾Ñ…Ð¸Ñ€ÑƒÑƒÐ»Ð°Ñ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ð¸Ð¹Ð³ Ð¾Ð»Ð³Ð¾Ð´Ð¾Ð³.\r\n\r\nÐ”ÑÐ»Ð³ÑÑ†ÑÐ½Ð´: inline-block, Ð´ÑÑÐ´ Ð±Ð° Ð´Ð¾Ð¾Ð´ Ð·Ð°Ñ… / Ñ‚Ð°Ð»Ð±Ð°Ð¹Ð½ÑƒÑƒÐ´ Ð½ÑŒ Ñ…Ò¯Ð½Ð´ÑÑ‚Ð³ÑÐ»Ñ‚ÑÐ¹ Ð±Ð¾Ð»Ð¾Ð²Ñ‡ Ð´ÑÐ»Ð³ÑÑ†ÑÐ½Ð´ Ñ…Ð°Ñ€Ð°Ð³Ð´Ð°Ð½Ð°.\r\n\r\nÐ”ÑÐ»Ð³ÑÑ†ÑÐ½Ð´ Ñ…Ð°Ñ€ÑƒÑƒÐ»ÑÐ½Ð°Ð°Ñ€: Ð±Ð»Ð¾Ðº, Ð³Ð¾Ð» ÑÐ»Ð³Ð°Ð° Ð½ÑŒ Ð´ÑÐ»Ð³ÑÑ†ÑÐ½Ð´ Ñ…Ð°Ñ€Ð°Ð³Ð´Ð°Ð½Ð°: inline-block Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ð´Ð°Ñ€Ð°Ð° ÑˆÑƒÐ³Ð°Ð¼-ÑÐ²Ð´Ñ€Ð»Ð¸Ð¹Ð³ Ð½ÑÐ¼Ð¶ Ð¾Ñ€ÑƒÑƒÐ»Ð´Ð°Ð³Ð³Ò¯Ð¹ ÑƒÑ‡Ñ€Ð°Ð°Ñ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚ Ð½ÑŒ Ð±ÑƒÑÐ°Ð´ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ Ñ…Ð°Ð¶ÑƒÑƒÐ´ ÑÑƒÑƒÐ¶ Ð±Ð¾Ð»Ð½Ð¾.\r\n\r\nÐ”Ð°Ñ€Ð°Ð°Ñ… Ð¶Ð¸ÑˆÑÑ Ð½ÑŒ Ð´ÑÐ»Ð³ÑÑ†Ð¸Ð¹Ð½ Ó©Ó©Ñ€ Ó©Ó©Ñ€ Ð±Ð°Ð¹Ð´Ð»Ñ‹Ð³ Ñ…Ð°Ñ€ÑƒÑƒÐ»Ð°Ð²: inline, display: inline-block Ð±Ð° display: block:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\nspan.a {\r\n    display: inline; /* the default for span */\r\n    width: 100px;\r\n    height: 100px;\r\n    padding: 5px;\r\n    border: 1px solid blue;    \r\n    background-color: yellow; \r\n}\r\n\r\nspan.b {\r\n    display: inline-block;\r\n    width: 100px;\r\n    height: 100px;\r\n    padding: 5px;\r\n    border: 1px solid blue;        \r\n    background-color: yellow; \r\n}\r\n\r\nspan.c {\r\n    display: block;\r\n    width: 100px;\r\n    height: 100px;\r\n    padding: 5px;\r\n    border: 1px solid blue;        \r\n    background-color: yellow; \r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h1>The display Property</h1>\r\n\r\n<h2>display: inline</h2>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consequat scelerisque elit sit amet consequat. Aliquam erat volutpat. <span class=\"a\">Aliquam</span> <span class=\"a\">venenatis</span> gravida nisl sit amet facilisis. Nullam cursus fermentum velit sed laoreet. </div>\r\n\r\n<h2>display: inline-block</h2>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consequat scelerisque elit sit amet consequat. Aliquam erat volutpat. <span class=\"b\">Aliquam</span> <span class=\"b\">venenatis</span> gravida nisl sit amet facilisis. Nullam cursus fermentum velit sed laoreet. </div>\r\n\r\n<h2>display: block</h2>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consequat scelerisque elit sit amet consequat. Aliquam erat volutpat. <span class=\"c\">Aliquam</span> <span class=\"c\">venenatis</span> gravida nisl sit amet facilisis. Nullam cursus fermentum velit sed laoreet. </div>\r\n\r\n</body>\r\n</html>\r\n', 15),
(38, 'CSS', 'Opacity', 'Ð˜Ð» Ñ‚Ð¾Ð´ Ð±Ð°Ð¹Ð´Ð°Ð» Ð½ÑŒ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸Ð¹Ð½ ÑƒÑƒÑÐ³Ð°Ð»Ñ‚ Ð±ÑƒÑŽÑƒ Ð±Ò¯Ð´Ð³ÑÑ€ÑÐ»Ñ‚Ð¸Ð¹Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð´Ð¾Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\nimg {\r\n    opacity: 0.5;\r\n    filter: alpha(opacity=50); /* For IE8 and earlier */\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h1>Image Transparency</h1>\r\n<p>The opacity property specifies the transparency of an element. The lower the value, the more transparent:</p>\r\n\r\n<p>Image with 50% opacity:</p>\r\n<img src=\"img_forest.jpg\" alt=\"Forest\" width=\"170\" height=\"100\">\r\n\r\n</body>\r\n</html>\r\n', 16),
(39, 'CSS', 'Navigation Bar, Ð¦ÑÑ', 'ÐÑˆÐ¸Ð³Ð»Ð°Ñ…Ð°Ð´ Ñ…ÑÐ»Ð±Ð°Ñ€ Ð±Ð°Ð¹Ñ… Ð½ÑŒ Ð²ÑÐ± ÑÐ°Ð¹Ñ‚Ñ‹Ð½ Ñ…ÑƒÐ²ÑŒÐ´ Ñ‡ÑƒÑ…Ð°Ð» ÑŽÐ¼.\r\n\r\nCSS-Ð¸Ð¹Ð½ Ñ‚ÑƒÑÐ»Ð°Ð¼Ð¶Ñ‚Ð°Ð¹Ð³Ð°Ð°Ñ€ ÑƒÐ¹Ñ‚Ð³Ð°Ñ€Ñ‚Ð°Ð¹ HTML Ñ†ÑÑÐ¸Ð¹Ð³ Ñ‚Ð° Ð³Ð°Ð¹Ñ…Ð°Ð»Ñ‚Ð°Ð¹ Ñ…Ð°Ð¹Ð»Ñ‚Ñ‹Ð½ Ð±Ð°Ð°Ñ€ Ð±Ð¾Ð»Ð³Ð¾Ð½ Ñ…ÑƒÐ²Ð¸Ñ€Ð³Ð°Ð¶ Ð±Ð¾Ð»Ð½Ð¾.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\nul {\r\n    list-style-type: none;\r\n    margin: 0;\r\n    padding: 0;\r\n    overflow: hidden;\r\n    background-color: #333;\r\n}\r\n\r\nli {\r\n    float: left;\r\n}\r\n\r\nli a {\r\n    display: block;\r\n    color: white;\r\n    text-align: center;\r\n    padding: 14px 16px;\r\n    text-decoration: none;\r\n}\r\n\r\nli a:hover:not(.active) {\r\n    background-color: #111;\r\n}\r\n\r\n.active {\r\n    background-color: #4CAF50;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<ul>\r\n  <li><a class=\"active\" href=\"#home\">Home</a></li>\r\n  <li><a href=\"#news\">News</a></li>\r\n  <li><a href=\"#contact\">Contact</a></li>\r\n  <li><a href=\"#about\">About</a></li>\r\n</ul>\r\n\r\n</body>\r\n</html>\r\n', 17),
(40, 'CSS', 'Dropdowns', 'CSS Ð½ÑŒ Ð±Ð¸Ð´ÑÐ½Ð´ ÑƒÐ½Ð°Ð´Ð°Ð³ Ñ†ÑÑ Ñ‚Ð¾Ð´Ð¾Ñ€Ñ…Ð¾Ð¹Ð»Ð¶ Ñ…Ò¯ÑÑÑÐ½ÑÑÑ€ÑÑ Ó©Ó©Ñ€Ñ‡Ð»Ó©Ñ… Ð±Ð¾Ð»Ð¾Ð¼Ð¶Ð¸Ð¹Ð³ Ð¾Ð»Ð³Ð¾Ð´Ð¾Ð³.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<style>\r\n.dropbtn {\r\n    background-color: #4CAF50;\r\n    color: white;\r\n    padding: 16px;\r\n    font-size: 16px;\r\n    border: none;\r\n    cursor: pointer;\r\n}\r\n\r\n.dropdown {\r\n    position: relative;\r\n    display: inline-block;\r\n}\r\n\r\n.dropdown-content {\r\n    display: none;\r\n    position: absolute;\r\n    background-color: #f9f9f9;\r\n    min-width: 160px;\r\n    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\r\n    z-index: 1;\r\n}\r\n\r\n.dropdown-content a {\r\n    color: black;\r\n    padding: 12px 16px;\r\n    text-decoration: none;\r\n    display: block;\r\n}\r\n\r\n.dropdown-content a:hover {background-color: #f1f1f1}\r\n\r\n.dropdown:hover .dropdown-content {\r\n    display: block;\r\n}\r\n\r\n.dropdown:hover .dropbtn {\r\n    background-color: #3e8e41;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Dropdown Menu</h2>\r\n<p>Move the mouse over the button to open the dropdown menu.</p>\r\n\r\n<div class=\"dropdown\">\r\n  <button class=\"dropbtn\">Dropdown</button>\r\n  <div class=\"dropdown-content\">\r\n    <a href=\"#\">Link 1</a>\r\n    <a href=\"#\">Link 2</a>\r\n    <a href=\"#\">Link 3</a>\r\n  </div>\r\n</div>\r\n\r\n<p><strong>Note:</strong> We use href=\"#\" for test links. In a real web site this would be URLs.</p>\r\n\r\n</body>\r\n</html>\r\n', 18),
(41, 'CSS', 'Forms', 'Form Ð±ÑƒÑŽÑƒ Ð¼Ð°ÑÐ³Ñ‚Ð¸Ð¹Ð½ Ñ…Ð°Ñ€Ð°Ð³Ð´Ð°Ñ… Ð±Ð°Ð¹Ð´Ð»Ñ‹Ð³ CSS Ð°ÑˆÐ¸Ð³Ð»Ð°Ð½ ÑÐ°Ð¹Ð¶Ñ€ÑƒÑƒÐ»Ð¶ Ð±Ð¾Ð»Ð½Ð¾:', '<!DOCTYPE html>\r\n<html>\r\n<style>\r\ninput[type=text], select {\r\n    width: 100%;\r\n    padding: 12px 20px;\r\n    margin: 8px 0;\r\n    display: inline-block;\r\n    border: 1px solid #ccc;\r\n    border-radius: 4px;\r\n    box-sizing: border-box;\r\n}\r\n\r\ninput[type=submit] {\r\n    width: 100%;\r\n    background-color: #4CAF50;\r\n    color: white;\r\n    padding: 14px 20px;\r\n    margin: 8px 0;\r\n    border: none;\r\n    border-radius: 4px;\r\n    cursor: pointer;\r\n}\r\n\r\ninput[type=submit]:hover {\r\n    background-color: #45a049;\r\n}\r\n\r\ndiv {\r\n    border-radius: 5px;\r\n    background-color: #f2f2f2;\r\n    padding: 20px;\r\n}\r\n</style>\r\n<body>\r\n\r\n<h3>Using CSS to style an HTML Form</h3>\r\n\r\n<div>\r\n  <form action=\"/action_page.php\">\r\n    <label for=\"fname\">First Name</label>\r\n    <input type=\"text\" id=\"fname\" name=\"firstname\" placeholder=\"Your name..\" required>\r\n\r\n    <label for=\"lname\">Last Name</label>\r\n    <input type=\"text\" id=\"lname\" name=\"lastname\" placeholder=\"Your last name..\" required>\r\n\r\n    <label for=\"country\">Country</label>\r\n    <select id=\"country\" name=\"country\" required>\r\n      <option value=\"australia\">Australia</option>\r\n      <option value=\"canada\">Canada</option>\r\n      <option value=\"usa\">USA</option>\r\n    </select>\r\n  \r\n    <input type=\"submit\" value=\"Submit\">\r\n  </form>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n', 19);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `published`, `created_at`) VALUES
(1, 1, 'first post', 'Sain baina uu. ene manai web-blogiin anhnii post bailaa. bayrlalaa', 1, '2018-11-13 08:29:35'),
(2, 1, 'post bichehed aldaa bn uu', ' zasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yuzasah zuil olon bn user profile hiih xeregtei yu', 1, '2018-11-02 02:45:03'),
(3, 2, '3dahpost', 'jaklsdddddddflkasaafjkahf', 1, '2018-10-25 05:18:55'),
(4, 2, 'comment heseg ajildgui', 'jafahjfdhlajfhjahfjkasnmcxnvmnc comment bichelt bolohgui bn aa URL eer damjuulahaar form action buruu ajilaad hooson ogogdoltei huudasruu damjaad bn', 1, '2018-11-02 02:41:56'),
(8, 1, 'suuld', 'suuliin bichleg orj bui esehiig shalgahaar shiidew odoo dutuu uldsen zuils gewel comment system, send mail, contact buyu holboo barih heseg nuur huudsiin medeelel zasah, hicheeluudee oruulah, admin dashboard hesegt logout oruulah zaswarlah geed olon ajiluud bn mon notification js ashiglaj bichwel zgr bn', 1, '2018-10-31 10:25:42'),
(10, 1, 'za ene suuliihn zaswarlsasn', 'arwan negiin sariin arwan gurwand bichiw', 1, '2018-11-12 17:57:28'),
(11, 1, 'user anhnii post bichleee', 'user anhnii post bichleee adjajsdasdadjkad a da dad a', 1, '2018-11-13 01:07:39'),
(12, 1, 'asdadasda', 'asdasdasdadada', 1, '2018-11-13 01:10:39'),
(20, 3, 'asdasdas', 'asdasdasd', 1, '2018-11-13 01:44:14'),
(21, 3, 'bichleg amjilttai hiigdlee', 'userpost test amjilttaiamjittaasdasdasdsada', 1, '2018-11-13 01:44:59'),
(22, 8, 'Laravel', 'Ð‘Ð¸ Ð»Ð°Ñ€Ð°Ð²ÐµÐ» ÑÑƒÑ€Ð°Ñ… Ð³ÑÑÑÐ½ ÑŽÐ¼Ð°Ð° ÑÐ°Ð¶ ÑÑƒÑƒÐ»Ð³Ð°Ð°Ð´ Ð±Ð°Ð¹Ð³Ð°Ð°Ð³ Ð½ÑŒ Ð¾Ð¹Ð»Ð³Ð¾Ð´Ð¾Ð³Ð³Ò¯Ð¹. Ð­Ð½Ñ ÐºÐ¾Ð¼Ð¿Ð¾ÑÐµÑ€ Ð³ÑÐ´ÑÐ³ Ð½ÑŒ ÑŽÑƒ ÑŽÐ¼ Ð±Ñ Ñ‚ÑƒÑÐ»Ð°Ð°Ñ‡ Ñ…Ò¯Ð¼Ò¯Ò¯ÑÑÑ', 1, '2018-11-14 04:17:58'),
(23, 3, 'asdas', 'asdasdaasdsda', 1, '2018-11-14 06:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` enum('member','admin') NOT NULL DEFAULT 'member',
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`) VALUES
(1, 'admin', 'admin@example.com', 'admin', 'password'),
(2, 'ugii', 'ugii.undrax@gmail.com', 'admin', 'ugii'),
(3, 'user', 'user@email.com', 'member', 'user'),
(7, 'bymba', 'b4b4.mng@gmail.com', 'member', 'b4b4'),
(8, 'test', 'test@test.com', 'member', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comments_ibfk_2` (`post_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
