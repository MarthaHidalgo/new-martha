-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2023 at 08:09 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nt3101`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

DROP TABLE IF EXISTS `booktable`;
CREATE TABLE IF NOT EXISTS `booktable` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) NOT NULL,
  `BookNames` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employe table`
--

DROP TABLE IF EXISTS `employe table`;
CREATE TABLE IF NOT EXISTS `employe table` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `empid` int NOT NULL,
  `admin` varchar(255) NOT NULL,
  `contact` int NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `employe table_ibfk_1` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservetable`
--

DROP TABLE IF EXISTS `reservetable`;
CREATE TABLE IF NOT EXISTS `reservetable` (
  `ReserveID` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `BookID` int NOT NULL,
  `DateReserve` date DEFAULT NULL,
  `Status` varchar(255) NOT NULL,
  PRIMARY KEY (`ReserveID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returntable`
--

DROP TABLE IF EXISTS `returntable`;
CREATE TABLE IF NOT EXISTS `returntable` (
  `ReturnID` int NOT NULL AUTO_INCREMENT,
  `ReserveID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `DateApproved` date DEFAULT NULL,
  `DateReturn` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ReturnID`),
  KEY `empid` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student table`
--

DROP TABLE IF EXISTS `student table`;
CREATE TABLE IF NOT EXISTS `student table` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `studid` int NOT NULL,
  `SR-Code` varchar(255) NOT NULL,
  `Section` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `studid` (`studid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbempinfo`
--

DROP TABLE IF EXISTS `tbempinfo`;
CREATE TABLE IF NOT EXISTS `tbempinfo` (
  `empid` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'mangmang', 'charles', 'cics'),
(3, 'nario', 'aaron', 'cics'),
(4, 'escober', 'reyahn', 'cics'),
(5, 'miranda', 'rochelle', 'cics'),
(6, 'hidalgo', 'martha', 'cics');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

DROP TABLE IF EXISTS `tbstudinfo`;
CREATE TABLE IF NOT EXISTS `tbstudinfo` (
  `studid` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL,
  PRIMARY KEY (`studid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'BSIT'),
(2, 'kent', 'clark', 'bscs'),
(3, 'mangmang', 'charles', 'bsit'),
(4, 'nario', 'aaron', 'bsit'),
(5, 'miranda', 'rochelle', 'bsit'),
(6, 'escober', 'reyahn', 'bsit'),
(7, 'hidalgo', 'martha', 'bsit');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student table`
--
ALTER TABLE `student table`
  ADD CONSTRAINT `student table_ibfk_1` FOREIGN KEY (`studid`) REFERENCES `tbstudinfo` (`studid`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
