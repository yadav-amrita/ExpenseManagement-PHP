-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 06:44 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `expenseman`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
`ID` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Budget` decimal(25,2) NOT NULL,
  `RDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`ID`, `UserId`, `Budget`, `RDATE`) VALUES
(1, 2, '7895.00', '2023-06-12 04:50:46'),
(2, 11, 500.00, '2024-10-01 12:48:00'), 
(3, 12, 300.00, '2024-10-01 15:25:00'), 
(4, 13, 750.00, '2024-10-01 04:39:00'), 
(5, 14, 400.00, '2024-10-01 09:17:00'), 
(6, 15, 600.00, '2024-10-01 08:13:00'), 
(7, 11, 550.00, '2024-11-01 06:14:00'), 
(8, 12, 320.00, '2024-11-01 11:05:00'), 
(9, 13, 780.00, '2024-11-01 20:24:00'), 
(10, 14, 420.00, '2024-11-01 18:39:00'), 
(11, 15, 650.00, '2024-11-01 23:52:00'),  
(13, 1, 250.00, '2024-10-01 19:23:00'), 
(14, 2, 300.00, '2024-10-01 11:09:00'), 
(15, 3, 450.00, '2024-10-01 06:11:00'), 
(16, 4, 500.00, '2024-10-01 05:18:00'), 
(17, 5, 350.00, '2024-10-01 01:47:00'), 
(18, 6, 600.00, '2024-10-01 21:29:00'), 
(19, 7, 700.00, '2024-10-01 03:34:00'), 
(20, 8, 550.00, '2024-10-01 17:32:00'), 
(21, 9, 800.00, '2024-10-01 13:28:00'), 
(22, 10, 900.00, '2024-10-01 22:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE IF NOT EXISTS `expense` (
  `UserId` int(11) NOT NULL,
`ID` int(11) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `Cost` decimal(25,2) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO expense (`UserId`,`ID`,`Item`, `Cost`, `Date`) VALUES 
(2, 2, 'Grocery', '196.00', '2023-04-01 13:56:00'), 
(3, 4, 'Test Yesterday', '699.00', '2023-06-11 17:55:00'), 
(2, 5, 'T220', '2000.00', '2023-06-12 04:52:00'), 
(11, 101, 'Groceries', 75.50, '2024-10-05 23:57:00'), 
(12, 102, 'Gas', 40.00, '2024-10-06 18:11:00'), 
(13, 103, 'Utilities', 120.00, '2024-10-07 05:32:00'), 
(14, 104, 'Dining Out', 60.00, '2024-10-08 09:42:00'), 
(15, 105, 'Internet Bill', 30.00, '2024-10-09 13:24:00'), 
(11, 106, 'Transportation', 25.00, '2024-10-10 19:51:00'), 
(12, 107, 'Entertainment', 50.00, '2024-10-11 20:26:00'), 
(13, 108, 'Healthcare', 200.00, '2024-10-12 01:18:00'), 
(14, 109, 'Clothing', 85.00, '2024-10-13 00:09:00'), 
(15, 110, 'Education', 150.00, '2024-10-14 07:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Full_Name` varchar(40) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
`UserId` int(11) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO user (`Full_Name`, `Email`,`Username`,`UserId`, `Password`, `Photo`, `RegDate`) VALUES 
('Christine Moore', 'christine@mail.com', 'christine', 1, '5f4dcc3b5aa765d61d8327deb882cf99', '../static/images/userlogo.png', '2024-03-26 12:59:25'), 
('Claire', 'claire@mail.com', 'claire', 2, '5f4dcc3b5aa765d61d8327deb882cf99', '../static/images/userlogo.png', '2024-03-26 09:16:13'), 
('John Doe', 'john@example.com', 'john_doe', 3, 'hashed_password1', '../static/images/userlogo.png', '2024-09-01 07:15:16'), 
('Jane Smith', 'jane@example.com', 'jane_smith', 4, 'hashed_password2', '../static/images/userlogo.png', '2024-09-05 12:55:54'), 
('Alice Jones', 'alice@example.com', 'alice_jones', 5, 'hashed_password3', '../static/images/userlogo.png', '2024-09-10 11:49:43'), 
('Bob Brown', 'bob@example.com', 'bob_brown', 6, 'hashed_password4', '../static/images/userlogo.png', '2024-09-15 05:36:27'), 
('Charlie Black', 'charlie@example.com', 'charlie_black', 7, 'hashed_password5', '../static/images/userlogo.png', '2024-09-20 07:42:31'),  
('David White', 'david@example.com', 'david_white', 8, 'hashed_password6', '../static/images/userlogo.png', '2024-09-25 02:35:19'), 
('Emma Green', 'emma@example.com', 'emma_green', 9, 'hashed_password7', '../static/images/userlogo.png', '2024-09-28 10:23:22'), 
('Frank Red', 'frank@example.com', 'frank_red', 10, 'hashed_password8', '../static/images/userlogo.png', '2024-09-30 05:17:16'), 
('Grace Blue', 'grace@example.com', 'grace_blue', 11, 'hashed_password9', '../static/images/userlogo.png', '2024-10-02 03:19:10'), 
('Henry Yellow', 'henry@example.com', 'henry_yellow', 12, 'hashed_password10', '../static/images/userlogo.png', '2024-10-05 00:02:37'), 
('Ivy Black', 'ivy@example.com', 'ivy_black', 13, 'hashed_password11', '../static/images/userlogo.png', '2024-10-08 09:16:48'), 
('Jack Silver', 'jack@example.com', 'jack_silver', 14, 'hashed_password12', '../static/images/userlogo.png', '2024-10-10 01:14:55'), 
('Kathy Pink', 'kathy@example.com', 'kathy_pink', 15, 'hashed_password13', '../static/images/userlogo.png', '2024-10-12 09:40:20'), 
('Liam Brown', 'liam@example.com', 'liam_brown', 16, 'hashed_password14', '../static/images/userlogo.png', '2024-10-15 05:25:11'), 
('Mona Violet', 'mona@example.com', 'mona_violet', 17, 'hashed_password15', '../static/images/userlogo.png', '2024-10-17 06:05:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
