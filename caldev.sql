-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2017 at 02:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caldev`
--

-- --------------------------------------------------------

--
-- Table structure for table `calender`
--

CREATE TABLE `calender` (
  `id` int(11) NOT NULL,
  `c_id` varchar(100) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `calender`
--

INSERT INTO `calender` (`id`, `c_id`, `summary`, `timezone`, `createdAt`, `updatedAt`) VALUES
(166, 'va1c5huihtbbae962qeadq3bbo@group.calendar.google.com', 'Test', 'UTC', '2017-02-27 15:11:11', '2017-02-27 15:11:11'),
(167, 'qh92ilfj72b2nc8fa2rmvnt0cg@group.calendar.google.com', 'ArriveNow', 'UTC', '2017-02-27 15:11:11', '2017-02-27 15:11:11'),
(168, 'b3b9bke782agahkklrqujdhi74@group.calendar.google.com', '????', 'Asia/Taipei', '2017-02-27 15:11:11', '2017-02-27 15:11:11'),
(169, 'sfn4blt88epa2il5mej7mj1ne4@group.calendar.google.com', 'Test', 'UTC', '2017-02-27 15:11:11', '2017-02-27 15:11:11'),
(170, 'jigarthakkar4444@gmail.com', 'jigarthakkar4444@gmail.com', 'Asia/Calcutta', '2017-02-27 15:11:11', '2017-02-27 15:11:11'),
(171, '#contacts@group.v.calendar.google.com', 'Contacts', 'Asia/Calcutta', '2017-02-27 15:11:11', '2017-02-27 15:11:11'),
(172, 'en.indian#holiday@group.v.calendar.google.com', 'Holidays in India', 'Asia/Calcutta', '2017-02-27 15:11:11', '2017-02-27 15:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `e_id` varchar(500) NOT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `start` varchar(100) DEFAULT NULL,
  `end` varchar(100) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calender`
--
ALTER TABLE `calender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calender`
--
ALTER TABLE `calender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
