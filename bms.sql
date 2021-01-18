-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 08:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bms_table`
--

CREATE TABLE `bms_table` (
  `id` int(10) NOT NULL,
  `Name` text NOT NULL,
  `Balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bms_table`
--

INSERT INTO `bms_table` (`id`, `Name`, `Balance`) VALUES
(115100, 'Kushal Goswami', 990),
(115101, 'Rahul Sharma', 1100),
(115102, 'Sayan Ghosh', 1610),
(115103, 'Piyush Sahu', 590),
(115104, 'Dhawal Joshi', 1000),
(115105, 'Matthew Perry', 600),
(115106, 'Matt LeBlanc', 1010),
(115107, 'David Schwimmer', 1000),
(115108, 'Jennifer Aniston', 1100),
(115109, 'Lisa Kudrow', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Sender` text NOT NULL,
  `Receiver` text NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Sender`, `Receiver`, `Amount`, `DateTime`) VALUES
('Matthew Perry', 'Jennifer Aniston', '100', '0000-00-00 00:00:00'),
('Matt LeBlanc', 'Matthew Perry', '500', '2021-01-09 20:50:57'),
('Kushal Goswami', 'Sayan Ghosh', '10', '2021-01-09 21:19:20'),
('Sayan Ghosh', 'Matt LeBlanc', '500', '2021-01-09 21:22:26'),
('Piyush Sahu', 'Matt LeBlanc', '10', '2021-01-10 12:05:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bms_table`
--
ALTER TABLE `bms_table`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
