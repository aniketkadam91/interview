-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 11:31 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userform`
--

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` text NOT NULL,
  `prfile` text,
  `food_pref` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `dob`, `gender`, `prfile`, `food_pref`) VALUES
(1, 'John', '2019-11-05', 'male', 'gjhjghjghj', ''),
(2, 'nameadssdf', '2019-11-06', 'female', 'checked', 'SIMULATION (2).DSN'),
(3, 'nameadssdf', '2019-11-06', 'female', 'checked', 'SIMULATION (2).DSN'),
(4, 'nameadssdf', '2019-11-06', 'female', 'checked', 'SIMULATION (2).DSN'),
(5, 'nameadssdf', '2019-11-06', 'female', 'checked', 'SIMULATION (2).DSN'),
(6, 'nameasdasdas', '2019-11-13', 'male', 'checked', 'aniketresume9-5-14-converted (3).pdf'),
(7, 'nameasdasdas', '2019-11-13', 'male', 'checked', 'aniketresume9-5-14-converted (3).pdf'),
(8, 'nameasdasdas', '2019-11-13', 'male', 'checked', 'aniketresume9-5-14-converted (3).pdf'),
(9, 'nameasdasdas', '2019-11-13', 'male', 'checked', 'aniketresume9-5-14-converted (3).pdf'),
(10, 'nameasdasdas', '2019-11-13', 'male', 'checked', 'aniketresume9-5-14-converted (3).pdf'),
(11, 'nameasdasdas', '2019-11-13', 'male', 'checked', 'aniketresume9-5-14-converted (3).pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
