-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2018 at 06:05 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chartbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL,
  `coomment` varchar(255) DEFAULT NULL,
  `dtSub` datetime DEFAULT NULL,
  `msgId` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentId`, `coomment`, `dtSub`, `msgId`, `email`) VALUES
(15, 'hii', '2018-01-22 04:32:25', 22, 'lp@gmail.com'),
(16, 'how you doing', '2018-01-22 04:32:40', 22, 'lp@gmail.com'),
(17, 'hey ', '2018-01-22 04:33:49', 22, 'op@gmail.com'),
(18, 'i am good', '2018-01-22 04:34:16', 22, 'op@gmail.com'),
(19, 'hello', '2018-01-22 04:35:08', 23, 'op@gmail.com'),
(20, 'hii', '2018-01-22 04:39:18', 23, 'lp@gmail.com'),
(21, 'yup', '2018-01-22 17:09:30', 22, 'op@gmail.com'),
(22, 'govinda', '2018-01-22 17:10:09', 22, 'lp@gmail.com'),
(23, 'join', '2018-01-22 17:11:03', 23, 'lp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msgId` int(11) NOT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `dtSub` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgId`, `groupname`, `dtSub`, `message`, `email`) VALUES
(22, 'parsu', '2018-01-22 04:32:16', 'welcome to my chat', 'lp@gmail.com'),
(23, 'Anna', '2018-01-22 04:34:55', 'wel come', 'op@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `password`, `mobile`) VALUES
('lp', 'lp@gmail.com', '123', 456),
('op', 'op@gmail.com', '456789', 456789),
('parsu', 'parsu123@gmail.com', '123456', 789456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `FK_tmmc1hwolmy1yinfs7ldrx99e` (`msgId`),
  ADD KEY `FK_o47f7dboc3umy0lp8hcwur1t8` (`email`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msgId`),
  ADD KEY `FK_fj18tiu8qopy2jd9g3911o976` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msgId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_o47f7dboc3umy0lp8hcwur1t8` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  ADD CONSTRAINT `FK_tmmc1hwolmy1yinfs7ldrx99e` FOREIGN KEY (`msgId`) REFERENCES `message` (`msgId`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_fj18tiu8qopy2jd9g3911o976` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
