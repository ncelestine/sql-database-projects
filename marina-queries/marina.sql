-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 09:58 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marina`
--

-- --------------------------------------------------------

--
-- Table structure for table `marina`
--

CREATE TABLE `marina` (
  `MARINA_NUM` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `ADDRESS` varchar(40) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `ZIP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marina`
--

INSERT INTO `marina` (`MARINA_NUM`, `NAME`, `ADDRESS`, `CITY`, `STATE`, `ZIP`) VALUES
(1, 'Alexamara East', '108 2nd Ave', 'Brinman', 'FL', 32273),
(2, 'Alexamara Central', '283 Branston', 'W.Brinman', 'FL', 32274);

-- --------------------------------------------------------

--
-- Table structure for table `marina_slip`
--

CREATE TABLE `marina_slip` (
  `SLIP_ID` int(11) NOT NULL,
  `MARINA_NUM_fk` int(11) NOT NULL,
  `SLIP_NUM` varchar(20) NOT NULL,
  `LENGTH` int(20) NOT NULL,
  `RENTAL_FEE` decimal(13,0) NOT NULL,
  `BOAT_NAME` varchar(36) NOT NULL,
  `BOAT_TYPE` varchar(40) NOT NULL,
  `OWNER_NUM_fk` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marina_slip`
--

INSERT INTO `marina_slip` (`SLIP_ID`, `MARINA_NUM_fk`, `SLIP_NUM`, `LENGTH`, `RENTAL_FEE`, `BOAT_NAME`, `BOAT_TYPE`, `OWNER_NUM_fk`) VALUES
(1, 1, 'A1', 40, '3800', 'Anderson II', 'Sprite 4000', 'AN75'),
(2, 1, 'A2', 40, '3800', 'Our Toy', 'Ray 4025', 'EL25'),
(3, 1, 'A3', 40, '3600', 'Escape', 'Sprite 4000', 'KE22'),
(4, 1, 'B1', 30, '2400', 'Gypsy', 'Dolphin 28', 'JU92'),
(5, 1, 'B2', 30, '2600', 'Anderson III', 'Sprite 3000', 'AN75'),
(6, 2, '1', 25, '1800', 'Bravo', 'Dolphin 25', 'AD57'),
(7, 2, '2', 25, '1800', 'Chinook', 'Dolphin 22', 'FE82'),
(8, 2, '3', 25, '2000', 'Listy', 'Dolphin 25', 'SM72'),
(9, 2, '4', 30, '2500', 'Mermaid', 'Dolphin 28', 'BL72'),
(10, 2, '5', 40, '4200', 'Axxon II', 'Dolphin 40', 'NO27'),
(11, 2, '6', 40, '4200', 'Karvel', 'Ray 4025', 'TR72');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `OWNER_NUM` varchar(11) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CITY` varchar(25) NOT NULL,
  `STATE` varchar(2) NOT NULL,
  `ZIP` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`OWNER_NUM`, `LAST_NAME`, `FIRST_NAME`, `ADDRESS`, `CITY`, `STATE`, `ZIP`) VALUES
('AD57', 'Adney', 'Bruce and Jean', '208 Citrus', 'Bowton', 'FL', 31313),
('AN75', 'Anderson', 'Bill', '18 Wilcox', 'Glander Bay', 'FL', 31044),
('BL72', 'Blake', 'Mary', '2673 Commodore', 'Bowton', 'FL', 31313),
('EL25', 'Elend', 'Sandy and Bill', '462 Riverside', 'Rivard', 'FL', 31062),
('FE82', 'Feenstra', 'Daniel', '7822 Coventry', 'Kalvera', 'FL', 32521),
('JU92', 'Juarez', 'Maria', '8922 Oak', 'Rivard', 'FL', 31062),
('KE22', 'Kelly', 'Alyssa', '5271 Waters', 'Bowton', 'FL', 31313),
('NO27', 'Norton', 'Peter', '2811 Lakewood', 'Lewiston', 'FL', 32765),
('SM72', 'Smeltz', 'Becky and Dave', '922 Garland', 'Glander Bay', 'FL', 31044),
('TR72', 'Trent', 'Ashton', '922 Crest', 'Bay Shores', 'FL', 30992);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marina`
--
ALTER TABLE `marina`
  ADD PRIMARY KEY (`MARINA_NUM`);

--
-- Indexes for table `marina_slip`
--
ALTER TABLE `marina_slip`
  ADD PRIMARY KEY (`SLIP_ID`),
  ADD KEY `OWNER_NUM_fk` (`OWNER_NUM_fk`),
  ADD KEY `MARINA_NUM_fk` (`MARINA_NUM_fk`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`OWNER_NUM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marina_slip`
--
ALTER TABLE `marina_slip`
  ADD CONSTRAINT `marina_slip_ibfk_1` FOREIGN KEY (`OWNER_NUM_fk`) REFERENCES `owner` (`OWNER_NUM`) ON DELETE CASCADE,
  ADD CONSTRAINT `marina_slip_ibfk_2` FOREIGN KEY (`MARINA_NUM_fk`) REFERENCES `marina` (`MARINA_NUM`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
