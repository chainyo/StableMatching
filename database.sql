-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8081
-- Generation Time: Dec 29, 2020 at 12:30 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matching`
--
CREATE DATABASE IF NOT EXISTS `matching` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `matching`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `capacity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `capacity`) VALUES
(1, 'Eureden', 2),
(2, 'Arkéa', 2),
(3, 'Thalès', 1);

-- --------------------------------------------------------

--
-- Table structure for table `companies_picks`
--

CREATE TABLE `companies_picks` (
  `company` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `pick_order` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies_picks`
--

INSERT INTO `companies_picks` (`company`, `student`, `pick_order`) VALUES
(2, 4, 1),
(2, 5, 2),
(3, 4, 1),
(3, 5, 2),
(1, 5, 1),
(1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`) VALUES
(1, 'Paul'),
(2, 'Pereg'),
(3, 'Thomas'),
(4, 'Baptiste'),
(5, 'Guillaume');

-- --------------------------------------------------------

--
-- Table structure for table `students_picks`
--

CREATE TABLE `students_picks` (
  `student` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `pick_order` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students_picks`
--

INSERT INTO `students_picks` (`student`, `company`, `pick_order`) VALUES
(4, 2, 1),
(4, 1, 2),
(4, 3, 3),
(5, 1, 1),
(5, 3, 2),
(5, 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_picks`
--
ALTER TABLE `companies_picks`
  ADD KEY `company` (`company`),
  ADD KEY `student` (`student`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_picks`
--
ALTER TABLE `students_picks`
  ADD KEY `company` (`company`),
  ADD KEY `student` (`student`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies_picks`
--
ALTER TABLE `companies_picks`
  ADD CONSTRAINT `companies_picks_ibfk_1` FOREIGN KEY (`company`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `companies_picks_ibfk_2` FOREIGN KEY (`student`) REFERENCES `students` (`id`);

--
-- Constraints for table `students_picks`
--
ALTER TABLE `students_picks`
  ADD CONSTRAINT `students_picks_ibfk_1` FOREIGN KEY (`company`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `students_picks_ibfk_2` FOREIGN KEY (`student`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
