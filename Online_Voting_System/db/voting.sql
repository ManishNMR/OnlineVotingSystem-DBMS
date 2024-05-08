-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 26, 2020 at 02:37 PM
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
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`, `aname`) VALUES
(1, 'admin@gmail.com', '1', 'admin'),
(2, 'admin1@gmail.com', '1', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `voterid` bigint(30) DEFAULT NULL,
  `candidateid` bigint(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `email`, `mobile`, `voterid`, `candidateid`, `approve_status`) VALUES
(27, 'Aditya Kumar', 'adityakumarverified@gmail.com', 6268887802, 205503318002, 343433434343, 1);
INSERT INTO `candidates` (`id`, `name`, `email`, `mobile`, `voterid`, `candidateid`, `approve_status`) VALUES
(28, 'Sneha Patel', 'snehapatel@email.com', 9876543210, 205503318003000, 454545454545000, 1);

INSERT INTO `candidates` (`id`, `name`, `email`, `mobile`, `voterid`, `candidateid`, `approve_status`) VALUES
(29, 'Rahul Singh', 'rahul.singh@email.com', 8765432109, 205503318004000, 565656565656000, 0);

INSERT INTO `candidates` (`id`, `name`, `email`, `mobile`, `voterid`, `candidateid`, `approve_status`) VALUES
(30, 'Priya Sharma', 'priyasharma@email.com', 7654321098, 205503318005000, 676767676767000, 1);


-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 'nothing'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'nothing');
INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(3, 'John Doe', 'john.doe@example.com', 'Hello, I would like to inquire about your services.'),
(4, 'Jane Smith', 'jane.smith@example.com', 'I have a question regarding the pricing of your products.'),
(5, 'Alice Johnson', 'alice.johnson@example.com', 'Could you please provide more information about your company?'),
(6, 'Bob Brown', 'bob.brown@example.com', 'I am interested in scheduling a meeting with your team.');

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `voterid` bigint(20) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `voterid`, `candidate`) VALUES
(26, 'Aditya Kumar', 'adityakumarverified@gmail.com', 6268887802, 2055018002, 'Aditya'),
(27, 'Sneha Patel', 'snehapatel@email.com', 9876543210, 2055018003, 'Sneha'),
(28, 'Rahul Singh', 'rahul.singh@email.com', 8765432109, 2055018004, 'Rahul'),
(29, 'Priya Sharma', 'priyasharma@email.com', 7654321098, 2055018005, 'Priya');

-- --------------------------------------------------------
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
