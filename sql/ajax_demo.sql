-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2023 at 12:29 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_demo`
--
CREATE DATABASE IF NOT EXISTS `ajax_demo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ajax_demo`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` varchar(10) NOT NULL,
  `companyname` varchar(20) DEFAULT NULL,
  `contactname` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `companyname`, `contactname`, `address`, `city`, `postalcode`, `country`) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
('NORTS', 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
('WOLZA', 'Wolski Zajazd', 'Zbyszek Piestrzeniewicz', 'ul. Filtrowa 68', 'Warszawa', '01-012', 'Poland');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Hometown` varchar(15) DEFAULT NULL,
  `Job` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `FirstName`, `LastName`, `Age`, `Hometown`, `Job`) VALUES
(1, 'Peter', 'Griffin', 41, 'Quahog', 'Brewery'),
(2, 'Lois', 'Griffin', 40, 'Newport', 'Piano Teacher'),
(3, 'Joseph', 'Swanson', 39, 'Quahog', 'Police Officer'),
(4, 'Glenn', 'Quagmire', 41, 'Quahog', 'Pilot');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
