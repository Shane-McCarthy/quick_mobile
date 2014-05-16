-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2014 at 11:19 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quickmobile`
--
CREATE DATABASE IF NOT EXISTS `quickmobile` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quickmobile`;

-- --------------------------------------------------------

--
-- Table structure for table `url_table`
--

CREATE TABLE IF NOT EXISTS `url_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(150) NOT NULL,
  `code` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `url_table`
--

INSERT INTO `url_table` (`id`, `url`, `code`, `created_at`, `updated_at`) VALUES
(1, 'http://blog.hubspot.com/marketing/how-to-optimize-page-titles-mobile-search-quick-tip', 'mine1234', '2014-05-16 22:23:00', '2014-05-16 22:23:00'),
(2, 'http://localhost/wordpress/?p=4#comment-4', 'mine4321', '2014-05-17 05:45:58', '2014-05-16 23:02:30'),
(3, 'http://www.techno-livesets.com/2014/05/green-velvet-electric-playground.html', '', '2014-05-17 05:47:10', '2014-05-17 05:47:10'),
(4, 'http://www.techno-livesets.com/', '', '2014-05-17 05:49:50', '2014-05-17 05:49:50'),
(5, 'https://github.com/Shane-McCarthy/Bubble-Sort-C-Sharp/tree/master/asgn4StarterHint', '5', '2014-05-17 06:15:59', '2014-05-17 06:15:59'),
(6, 'https://github.com/Shane-McCarthy/Bubble-Sort-C-Sharp/tree/master/asgn4StarterHintee', '6', '2014-05-17 06:16:25', '2014-05-17 06:16:25');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
