-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 09:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `properties`
--

-- --------------------------------------------------------

--
-- Table structure for table `Properties`
--

CREATE TABLE `properties` (
  `PropertyID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Price` decimal(12,2) NOT NULL,
  `Status` enum('Available','Sold','Rented') NOT NULL DEFAULT 'Available',
  `ListedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Properties`
--

INSERT INTO `Properties` (`PropertyID`, `Address`, `City`, `State`, `Price`, `Status`, `ListedDate`) VALUES
(1, '123 Main St', 'New York', 'NY', 850000.00, 'Available', '2025-01-01'),
(2, '456 Elm St', 'Los Angeles', 'CA', 650000.00, 'Available', '2025-01-02'),
(3, '789 Oak St', 'Chicago', 'IL', 450000.00, 'Sold', '2025-01-03'),
(4, '101 Maple St', 'Houston', 'TX', 320000.00, 'Sold', '2025-01-04'),
(5, '202 Pine St', 'Phoenix', 'AZ', 480000.00, 'Rented', '2025-01-05'),
(6, '303 Cedar St', 'Philadelphia', 'PA', 700000.00, 'Available', '2025-01-06'),
(7, '404 Birch St', 'San Antonio', 'TX', 350000.00, 'Available', '2025-01-07'),
(8, '505 Walnut St', 'San Diego', 'CA', 560000.00, 'Sold', '2025-01-08'),
(9, '606 Chestnut St', 'Dallas', 'TX', 420000.00, 'Rented', '2025-01-09'),
(10, '707 Spruce St', 'Austin', 'TX', 510000.00, 'Available', '2025-01-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Properties`
--
ALTER TABLE `Properties`
  ADD PRIMARY KEY (`PropertyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Properties`
--
ALTER TABLE `Properties`
  MODIFY `PropertyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
