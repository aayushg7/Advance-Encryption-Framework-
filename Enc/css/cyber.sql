-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 15, 2019 at 04:33 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyber`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `user_id` varchar(15) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city_Id` int(5) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `security_que` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `City` (`city_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_id`, `first_name`, `middle_name`, `last_name`, `gender`, `date_of_birth`, `address`, `city_Id`, `mobile`, `email`, `password`, `security_que`, `answer`, `profile_pic`) VALUES
('id1', 'Aayush', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aayushgupta797@gmail.com', 'gupta', NULL, NULL, NULL),
('id2', 'ag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aayush@gmail.com', '1234', NULL, NULL, NULL),
('UR5da5f26974df0', 'as', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'as@gmail.com', '12345', NULL, NULL, NULL),
('UR5da5f32db5be7', 'sh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shgmail@gmail.com', '900150983cd24fb0d6963f7d28e17f72', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
