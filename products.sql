-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2016 at 07:05 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bamazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ItemID` int(7) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `DepartmentName` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `StockQuantity` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES
(1000, 'shampoo', 'health', '6.00', 50),
(2000, 'AA-batteries', 'goods', '5.00', 99),
(3000, 'Paper Towels', 'Home Goods', '15.00', 100),
(4000, 'Iphone Case', 'Electronics', '8.00', 50),
(5000, 'Air Filter', 'Automotive', '24.50', 20),
(6000, 'Baby Monitor', 'Baby', '49.99', 70),
(7000, 'Asus Motherboard', 'Computer Parts', '299.99', 5),
(8000, 'Floaties', 'Summer Fun', '9.99', 40),
(9000, 'Sorry', 'Board Games', '22.99', 20),
(10000, 'Chew Toy', 'Dog Toys', '2.99', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD KEY `ItemID` (`ItemID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
