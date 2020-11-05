-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2020 at 06:44 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klikdaily`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustment`
--

CREATE TABLE `adjustment` (
  `id` bigint(20) NOT NULL,
  `location_id` int(10) NOT NULL,
  `location_name` varchar(10) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `adjustment` varchar(12) DEFAULT NULL,
  `stock_quantity` varchar(8) DEFAULT NULL,
  `requests` varchar(8) DEFAULT NULL,
  `adjusted` varchar(8) DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adjustment`
--

INSERT INTO `adjustment` (`id`, `location_id`, `location_name`, `product`, `adjustment`, `stock_quantity`, `requests`, `adjusted`, `updated_at`) VALUES
(1, 1, 'A-101', 'Indomie Goreng', '2', '10', '2', '2', '2020-11-05'),
(2, 1, 'A-101', 'Indomie Goreng', '0', '100', '0', '0', '2020-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(10) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `quantity` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `location`, `product`, `quantity`) VALUES
(1, 'A-1-1', 'Indomie Goreng', '10'),
(2, 'A-1-2', 'Indomie Soto', '12'),
(3, 'A-1-3', 'Indomie Bawang', '14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustment`
--
ALTER TABLE `adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustment`
--
ALTER TABLE `adjustment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
