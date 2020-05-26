-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 02:11 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoom_cab_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(10) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `nic` varchar(11) DEFAULT NULL,
  `telephone` int(10) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `firstname`, `lastname`, `nic`, `telephone`, `address`, `username`, `password`) VALUES
(13, 'nethmi', 'kawya', '971832322v', 0, '        ambalangoda                            ', 'nethu', '1234'),
(14, 'madusha', 'methsiri', '9512346899v', 0, '           gampaha                         ', 'metha', '1234'),
(8, 'chamantha', 'lahiru', '961832325v', 0, '           gampaha                         ', 'chama', '4321'),
(9, 'lahiru ', 'gallage', '9756355522v', 0, '           ambalangoda                         ', 'lara', '4321'),
(10, 'sadisa', 'janadari', '9643435366v', 0, '               Nonagama                  ', 'sadisa123', '4321'),
(11, 'kasun', 'shantha', '956784211v', 0, '             gampha                       ', 'kasun', 'kasun1'),
(12, 'nayani', 'wathsala', '998756421v', 0, '      anuradhapura                              ', 'nayani', 'nayani1'),
(16, 'vimansa', 'jayalath', '98562147v', 779807320, '           katubadda                         ', 'vimansa', '1234'),
(17, 'nimal', 'jayalath', '98563214v', 778952365, '       kalutara                             ', 'nimal', '1234'),
(18, 'saman', 'perera', '961832322v', 775094902, '                   ambalangoda                 ', 'saman', '123'),
(19, 'saman', 'perera', '961832322v', 775094902, '                ambalangoda                    ', 'saman', '123');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Driver_id` int(10) NOT NULL,
  `D_First_Name` varchar(50) DEFAULT NULL,
  `D_Last_Name` varchar(50) DEFAULT NULL,
  `D_DOB` date DEFAULT NULL,
  `D_Address` varchar(100) DEFAULT NULL,
  `D_NIC` varchar(11) DEFAULT NULL,
  `D_Licence_No` varchar(10) DEFAULT NULL,
  `D_Email` varchar(50) DEFAULT NULL,
  `Admin_id` int(10) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Customer_id` int(10) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Email` varchar(90) NOT NULL,
  `Phone_No` char(10) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Customer_id`, `Full_Name`, `Email`, `Phone_No`, `Message`) VALUES
(10, 'lasantha sanjeewa', 'lsanjrr@gmail.com', '06656566', '               jjhjh                 '),
(7, 'lakshan', 'lakshan77@gmail.com', '0775470226', '            eweeeqeqeeqeq                        ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `P_Date` date DEFAULT NULL,
  `P_No_of_Date` int(50) DEFAULT NULL,
  `P_Method` varchar(50) DEFAULT NULL,
  `P_Amount` decimal(8,2) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `Car_type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`P_Date`, `P_No_of_Date`, `P_Method`, `P_Amount`, `firstname`, `Car_type`) VALUES
('2012-12-20', 3, 'bank', '300000.00', 'maka', 'ALTO-HYBRID'),
('2018-12-04', 2, 'on hand', '2500.00', 'nayani', 'MARUTI800'),
('2018-12-12', 2, 'bank', '20000.00', 'Kulani', 'HONDA CIVIC HYBRID'),
('2018-12-04', 5, 'bank', '20000.00', 'nethu', 'ALTO-HYBRID'),
('2018-12-04', 5, 'bank', '2500.00', 'sadisa', 'HONDA CIVIC');

-- --------------------------------------------------------

--
-- Table structure for table `vehical`
--

CREATE TABLE `vehical` (
  `Reg_No` int(10) NOT NULL,
  `Plate_No` varchar(10) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Chassy_No` varchar(11) DEFAULT NULL,
  `Seating_capacity` varchar(50) DEFAULT NULL,
  `No_of_Km_Run` varchar(100) DEFAULT NULL,
  `fuel` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehical`
--

INSERT INTO `vehical` (`Reg_No`, `Plate_No`, `Model`, `Status`, `Chassy_No`, `Seating_capacity`, `No_of_Km_Run`, `fuel`) VALUES
(1, 'UP-NP7659', 'ALTO-HYBRID', 'Good', 'a1234', '5', '96865km', 'petral'),
(2, 'UP-HF1267', 'MARUTI 800', 'Good', 'b1234', '4', '5759km', 'petral'),
(3, 'UP-TH5479', 'HONDA CIVIC HYBRID', 'Good', 'c1234', '5', '8483km', 'petral'),
(4, 'UP-FKD1234', 'HONDA CIVIC ', 'Good', 'd1234', '5', '6759km', 'petral');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD KEY `user_name` (`username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driver_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `firstname` (`firstname`);

--
-- Indexes for table `vehical`
--
ALTER TABLE `vehical`
  ADD PRIMARY KEY (`Reg_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
