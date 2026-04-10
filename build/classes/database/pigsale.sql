-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2026 at 12:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pigsale`
--

-- --------------------------------------------------------

--
-- Table structure for table `pigs`
--

CREATE TABLE `pigs` (
  `id` int(10) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `status` varchar(255) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pigs`
--

INSERT INTO `pigs` (`id`, `breed`, `age`, `weight`, `userid`, `status`, `price`) VALUES
(1, 'sadsa', 1, 21, 12, 'available', 1233),
(2, 'sdffff', 12, 2323, 12, 'sold', 2323);

-- --------------------------------------------------------

--
-- Table structure for table `transacts`
--

CREATE TABLE `transacts` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `status` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transacts`
--

INSERT INTO `transacts` (`id`, `uid`, `pid`, `status`, `quantity`, `payment`, `total`) VALUES
(2, 1, 1, 'Pending', 2, 'ewqeqw', 2466),
(3, 1, 2, 'Pending', 3, 'sadsada', 6969);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Uimage` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fullname`, `email`, `address`, `contact`, `username`, `password`, `Uimage`, `usertype`, `status`) VALUES
(1, 'mariquit josel', 'email@gmail.com', NULL, '', 'josel', 'mariquitjo', NULL, '', ''),
(2, 'sdfsdfa', 'dsfasfsd@gmail.com', NULL, '', 'sdfsdf', '1212121212', NULL, '', ''),
(3, 'josel mariquit', 'jo123@gmail.com', NULL, '09878678910', 'jo123', 'RjPZgbK1Bs8zRBlQVEO06rL+g34ZCgGaemIb3aTTeUY=', NULL, 'Admin', 'Active'),
(4, 'joo mariquit', 'mariwuit@gmail.com', NULL, '09343845122', 'mariquit', '3ioYhHfd4l4ANdwrz7xYnvifqoHGEYO/AxuqrgCaJ80=', NULL, 'User', 'Active'),
(7, 'ddd', 'sfd@gmail.com', 'dsfa', '09998754321', 'sda', '3CPu+XdwfjccjgPJgoP7GoyWlVx5n2k+/q+EDu/586k=', NULL, 'Admin', 'Active'),
(10, 'ohahah', 'ohahaha@gmail.com', NULL, '09876543211', 'ohaha', '+bOIaIuaxgCEh8FPiP1ayVr+WyA8l51gkDsCe9kW3NU=', NULL, 'Admin ', 'Active'),
(12, 'admiun', 'admin@gmail.com', 'naga', '09876543211', 'admin', 'JAvlGPq9JyTdtvBO6x2llnRI1+gxwIyPqCKAn3THIKk=', NULL, 'Admin', 'Active'),
(13, 'user', 'user@gmail.com', 'minglanilla', '09873243512', 'user', '14XWNRGmRaJIdaEJ4O8dplYN2U0Um2c0lJqWVWyzRJ8=', NULL, 'Active', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pigs`
--
ALTER TABLE `pigs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `transacts`
--
ALTER TABLE `transacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pigid` (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pigs`
--
ALTER TABLE `pigs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transacts`
--
ALTER TABLE `transacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pigs`
--
ALTER TABLE `pigs`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `transacts`
--
ALTER TABLE `transacts`
  ADD CONSTRAINT `pigid` FOREIGN KEY (`pid`) REFERENCES `pigs` (`id`),
  ADD CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
