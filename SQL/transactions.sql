-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 10:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transactions`
--

-- --------------------------------------------------------

--
-- Table structure for table `4165267020`
--

CREATE TABLE `4165267020` (
  `date` varchar(10) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `debit` int(6) NOT NULL,
  `credit` int(6) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `4165267020`
--

INSERT INTO `4165267020` (`date`, `remark`, `debit`, `credit`, `balance`) VALUES
('2023-05-26', 'New Account', 0, 0, 0),
('2023-05-26', 'transfer to 4165267020', 100000, 0, -100000),
('2023-05-26', 'from 4165267020', 0, 100000, 100000),
('2023-05-26', 'transfer to 5196704092', 50000, 0, 50000),
('2023-05-26', 'from 5196704092', 0, 500000, 550000);

-- --------------------------------------------------------

--
-- Table structure for table `5196704092`
--

CREATE TABLE `5196704092` (
  `date` varchar(10) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `debit` int(6) NOT NULL,
  `credit` int(6) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `5196704092`
--

INSERT INTO `5196704092` (`date`, `remark`, `debit`, `credit`, `balance`) VALUES
('2023-05-26', 'New Account', 0, 0, 0),
('2023-05-26', 'from 4165267020', 0, 50000, 50000),
('2023-05-26', 'transfer to 4165267020', 500000, 0, -450000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
