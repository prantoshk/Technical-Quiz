-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 12:34 AM
-- Server version: 5.7.21-log
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5e5ee91298828', '5e5ee912b76ef'),
('5e5ee9133200d', '5e5ee9133a232'),
('5e5ee9137b123', '5e5ee91393b99'),
('5e5ee913bc592', '5e5ee913c48cc'),
('5e5ee913ed0ed', '5e5ee914012db');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('admin@admin.com', '5e5ee65bc0132', 4, 5, 4, 1, '2020-03-03 23:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5e5ee91298828', '1, 2 and 3', '5e5ee912b76ef'),
('5e5ee91298828', '1 and 2', '5e5ee912b770a'),
('5e5ee91298828', '2 and 3', '5e5ee912b770c'),
('5e5ee91298828', '1 and 3', '5e5ee912b770e'),
('5e5ee9133200d', 'Private', '5e5ee9133a225'),
('5e5ee9133200d', 'Protected', '5e5ee9133a22f'),
('5e5ee9133200d', 'Public', '5e5ee9133a232'),
('5e5ee9133200d', 'Friend', '5e5ee9133a234'),
('5e5ee9137b123', 'Symmetric', '5e5ee91393b8a'),
('5e5ee9137b123', 'Asymmetric', '5e5ee91393b94'),
('5e5ee9137b123', 'Synchronous', '5e5ee91393b97'),
('5e5ee9137b123', 'Asynchronous', '5e5ee91393b99'),
('5e5ee913bc592', 'Only (a) is TRUE.', '5e5ee913c48c1'),
('5e5ee913bc592', 'Only (b) is TRUE.', '5e5ee913c48cc'),
('5e5ee913bc592', 'Both (a) and (b) are TRUE.', '5e5ee913c48cf'),
('5e5ee913bc592', 'Neither (a) nor (b) are TRUE', '5e5ee913c48d1'),
('5e5ee913ed0ed', 'RunTimeExceptions', '5e5ee914012ce'),
('5e5ee913ed0ed', 'Throwable', '5e5ee914012db'),
('5e5ee913ed0ed', 'Catchable', '5e5ee914012df'),
('5e5ee913ed0ed', 'None of the above', '5e5ee914012e7');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5e5ee65bc0132', '5e5ee91298828', 'Which of the following is true about inheritance in Java. 1) In Java all classes inherit from the Object class directly or indirectly. The Object class is root of all classes. 2) Multiple inheritance is not allowed in Java. 3) Unlike C++, there is nothing like type of inheritance in Java where we can specify whether the inheritance is protected, public or private.', 4, 1),
('5e5ee65bc0132', '5e5ee9133200d', 'In Java, when we implement an interface method, it must be declared as:', 4, 2),
('5e5ee65bc0132', '5e5ee9137b123', 'Java uses threads to enable the entire environment to be ______.', 4, 3),
('5e5ee65bc0132', '5e5ee913bc592', 'Which of the following statements is/are TRUE regarding JAVA ? (a) Constants that cannot be changed are declared using the ‘static’ keyword. (b) A class can only inherit one class but can implement multiple interfaces.', 4, 4),
('5e5ee65bc0132', '5e5ee913ed0ed', 'Which of these is a super class of all errors and exceptions in the Java language?', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5e5ee65bc0132', 'Java', 1, 0, 5, 5, 'Java Quiz', '#java', '2020-03-03 23:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `regdno` int(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `regdno`, `email`, `mob`, `password`) VALUES
('Abcd', 'M', 1234567890, 'abcd@gmail.com', 9876543210, 'e99a18c428cb38d5f260853678922e03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
