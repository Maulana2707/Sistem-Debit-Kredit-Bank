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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `account_no` bigint(20) NOT NULL,
  `balance` int(11) DEFAULT NULL,
  `online_limit` int(11) DEFAULT NULL,
  `card_limit` int(11) DEFAULT NULL,
  `upi_limit` int(11) DEFAULT NULL,
  `online_no` int(11) DEFAULT NULL,
  `card_no` int(11) DEFAULT NULL,
  `upi_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`account_no`, `balance`, `online_limit`, `card_limit`, `upi_limit`, `online_no`, `card_no`, `upi_no`) VALUES
(4165267020, 550000, -150000, 0, 0, -2, 0, 0),
(5196704092, -450000, -500000, 0, 0, -1, 0, 0),
(6489242881, -500000, -500000, 0, 0, -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `account_no` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pwd`, `account_no`) VALUES
('budi2023@gmail.com', '2023', 4165267020),
('dudi2023@gmail.com', '20231', 5196704092),
('dudi123@gmail.com', '123', 6489242881);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `account_no` bigint(20) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `acc_type` varchar(20) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `father` varchar(50) NOT NULL,
  `mother` varchar(50) NOT NULL,
  `nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`account_no`, `firstname`, `lastname`, `email`, `phone`, `acc_type`, `address1`, `address2`, `city`, `state`, `country`, `father`, `mother`, `nationality`) VALUES
(4165267020, 'Budi', 'Alamsyah', 'budi2023@gmail.com', 82176056827, 'saving', 'Jl.M.Yakub No:40', 'Jl. Prof HM Yamin No.106', 'Medan', 'Sumatera Utara', 'Indonesia', 'Maulana', 'Wini', 'Indonesia'),
(5196704092, 'Dudi', 'Herlangga', 'dudi2023@gmail.com', 81262250770, 'saving', 'Jl.Gatot Subroto No:6 ', 'Jl. Perintis Kemerdekaan No:107', 'Medan', 'Sumatera Utara', 'Indonesia', 'Ikhsan', 'Fitriani', 'Indonesia'),
(6489242881, 'Muhammad ', 'Dudi', 'dudi123@gmail.com', 123456789012, 'saving', 'Jl. Gatot Subroto', 'Jl. M.Yakub', 'Medan', 'Sumatera Utara', 'Indonesia', 'Ucok', 'Butet', 'Indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`account_no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`account_no`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`account_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
