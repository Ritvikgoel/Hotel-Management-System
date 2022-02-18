-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 07, 2020 at 08:12 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Checkin` varchar(15) NOT NULL,
  `Stay` int(2) NOT NULL,
  `Checkout` varchar(15) NOT NULL,
  `Room_No` int(3) NOT NULL,
  `Perday` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `Room_No` int(3) NOT NULL,
  `Net_Amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`Room_No`, `Net_Amount`) VALUES
(205, 17310),
(105, 15635),
(101, 10071),
(205, 16879),
(107, 16992);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Name` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `ID_NO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Name`, `Address`, `Phone`, `ID`, `ID_NO`) VALUES
('Ritvik', 'Kanpur', '7905777264', '', '844152368745'),
('Aarushi', 'Kanpur', '8956321478', 'PAN', '884153232'),
('shikhar', 'kanpur', '69851', '', '15236515'),
('Ritvik', 'Chandigarh', '7905777264', 'DL', 'UP78409FED'),
('Rahul ', 'Ludhiana', '8745698255', 'PAN', 'ABPBG876AB6');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Name` varchar(20) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Position` varchar(15) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Name`, `Contact`, `Position`, `Salary`) VALUES
('Ritvik Goel', '7905777264', 'Manager', 70000),
('Navin ', '9839654852', 'Asst. Manager', 60000),
('Ruchi', '9586341287', 'Cook', 50000),
('Rishabh', '8523641896', 'Reception', 48000),
('Harsh', '8746219828', 'Accountant', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Room_No` int(3) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Room_No`, `Amount`) VALUES
(102, 0),
(101, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(301, 0),
(302, 0),
(303, 0),
(304, 0),
(305, 0),
(306, 0),
(307, 0),
(308, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(15) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('Ritvik', 'Rit2512'),
('Navin', 'Nav2309');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_No` int(3) NOT NULL,
  `Room_Type` varchar(15) NOT NULL,
  `Room_Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_No`, `Room_Type`, `Room_Status`) VALUES
(101, 'Deluxe', 'Available'),
(102, 'Deluxe', 'Available'),
(103, 'Deluxe', 'Available'),
(104, 'Deluxe', 'Available'),
(105, 'SuperDeluxe', 'Available'),
(106, 'SuperDeluxe', 'Available'),
(107, 'SuperDeluxe', 'Available'),
(108, 'SuperDeluxe', 'Available'),
(201, 'Deluxe', 'Available'),
(202, 'Deluxe', 'Available'),
(203, 'Deluxe', 'Available'),
(204, 'Deluxe', 'Available'),
(205, 'SuperDeluxe', 'Available'),
(206, 'SuperDeluxe', 'Available'),
(207, 'SuperDeluxe', 'Available'),
(208, 'SuperDeluxe', 'Available'),
(301, 'Deluxe', 'Available'),
(302, 'Deluxe', 'Available'),
(303, 'Deluxe', 'Available'),
(304, 'Deluxe', 'Available'),
(305, 'SuperDeluxe', 'Available'),
(306, 'SuperDeluxe', 'Available'),
(307, 'SuperDeluxe', 'Available'),
(308, 'SuperDeluxe', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD UNIQUE KEY `Room_No` (`Room_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
