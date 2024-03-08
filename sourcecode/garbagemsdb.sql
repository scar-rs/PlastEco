-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 05:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garbagemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555557, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-02 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbin`
--

CREATE TABLE `tblbin` (
  `ID` int(5) NOT NULL,
  `BinID` varchar(50) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `LoadType` varchar(100) DEFAULT NULL,
  `CyclePeriod` varchar(100) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `VolunteerAssignee` varchar(150) DEFAULT NULL,
  `AssignDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbin`
--

INSERT INTO `tblbin` (`ID`, `BinID`, `Area`, `Locality`, `Landmark`, `LoadType`, `CyclePeriod`, `Address`, `VolunteerAssignee`, `AssignDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'Amarpalii Sadan', 'Hazirpur', 'near gomti river', 'Medium', 'Alternate', 'hjkhjkdhjkbvuit\r\nyivrtyiureyruvityiuy', 'vams123', '2022-07-18 11:05:10', 'Garbage collected', 'Completed', '2022-07-27 06:30:00'),
(2, 'B-123', 'gjhg', 'jhghj', 'jhgjhg', 'High', 'Daily', 'jkhkj', 'vams123', '2022-07-18 11:06:27', 'completed', 'Completed', '2022-07-27 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomtracking`
--

CREATE TABLE `tblcomtracking` (
  `ID` int(5) NOT NULL,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomtracking`
--

INSERT INTO `tblcomtracking` (`ID`, `ComplainNumber`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 526529361, 'Assign to driver', 'Approved', '2022-07-25 14:03:07'),
(2, 526529361, 'Driver is on the way', 'On the way', '2022-07-26 11:57:34'),
(3, 526529361, 'On the way', 'On the way', '2022-07-26 12:06:36'),
(4, 526529361, 'Completed', 'Completed', '2022-07-26 12:10:31'),
(5, 699612318, 'your complain hass been approved', 'Approved', '2022-07-27 10:42:01'),
(6, 699612318, 'On the way for collecting the garbage', 'On the way', '2022-08-14 06:18:28'),
(7, 792381847, 'Assign to driver', 'Approved', '2022-08-14 12:21:18'),
(8, 792381847, 'On the way for pickup garbage', 'On the way', '2022-08-14 12:22:54'),
(9, 792381847, 'Completed', 'Completed', '2022-08-14 12:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbllodgedcomplain`
--

CREATE TABLE `tbllodgedcomplain` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Photo` varchar(250) DEFAULT NULL,
  `Note` mediumtext DEFAULT NULL,
  `ComplainDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `AssignTo` varchar(100) DEFAULT NULL,
  `AssignDate` date DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllodgedcomplain`
--

INSERT INTO `tbllodgedcomplain` (`ID`, `UserID`, `ComplainNumber`, `Area`, `Locality`, `Landmark`, `Address`, `Photo`, `Note`, `ComplainDate`, `Remark`, `Status`, `AssignTo`, `AssignDate`, `UpdationDate`) VALUES
(1, 1, 526529361, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:11'),
(2, 2, 699612318, 'Kalyanpuri', 'jgjhghjgjhg', 'nera oppulent mall', 'K-0890, fghy,\r\nuytu,New Delhi', '006d51ca52039abf7231ba02bba35d681658493414.jpg', 'There is more than one week no one come to pic this garbage', '2022-07-22 12:36:54', 'On the way for collecting the garbage', 'On the way', 'vams123', '2022-07-27', '2022-08-14 06:18:28'),
(3, 2, 526529312, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:16'),
(4, 3, 792381847, 'XYZ Street', 'ABC Locality', 'NA', 'A1232 Secor 5 Noida', '2c9e7ec0fc8c2cfbb3828177e70dfe1a1660479585.png', 'NA', '2022-08-14 12:19:45', 'Completed', 'Completed', 'vams123', '2022-08-14', '2022-08-14 12:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"><b>\"Plastic Waste System \"</b>&nbsp;</span><div><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\"></span></font></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Shirpur, 425405', 'info@gmail.com', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `BinID` varchar(250) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BinID`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'on the way', 'On The Way', '2022-07-27 10:54:01'),
(2, 'Bin-123', 'Garbage collected', 'Completed', '2022-07-27 10:53:56'),
(3, 'B-123', 'otw', 'On The Way', '2022-07-27 10:53:22'),
(4, 'B-123', 'completed', 'Completed', '2022-07-27 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Moshin', 'mos123', 7894566123, 'mos@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 11:16:53'),
(2, 'test', 'test123', 7946547897, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-07-22 12:34:42'),
(3, 'Joh Doe', 'Johndoe123', 1231231230, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-14 12:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblvolunteer`
--

CREATE TABLE `tblvolunteer` (
  `ID` int(10) NOT NULL,
  `VolunteerID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvolunteer`
--

INSERT INTO `tblvolunteer` (`ID`, `VolunteerID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'vams123', 'TEST', 4654654654, 'rahul123@gmail.com', 'J-234, near reliance mayur vihar new delhi', 'f925916e2754e5e03f75dd58a5733251', '2022-07-01 13:29:39'),
(2, 'vams124', 'Test', 9879879879, 'kai@gmail.com', 'H-987, Hari Nagar Delhi', '202cb962ac59075b964b07152d234b70', '2022-07-01 05:57:02'),
(4, 'vams125', 'Mahesh Kumar', 9879789799, 'mahesh@gmail.com', 'hkjhjkhkjhuyifhkjwehfk\r\njkljkljrkawteae5t', '202cb962ac59075b964b07152d234b70', '2022-07-05 05:19:18'),
(6, 'test123', 'John Doe', 1234567890, 'johndoe@gmail.com', 'New Delhi 110001', 'f925916e2754e5e03f75dd58a5733251', '2022-07-19 17:04:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbin`
--
ALTER TABLE `tblbin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomtracking`
--
ALTER TABLE `tblcomtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllodgedcomplain`
--
ALTER TABLE `tbllodgedcomplain`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvolunteer`
--
ALTER TABLE `tblvolunteer`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbin`
--
ALTER TABLE `tblbin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcomtracking`
--
ALTER TABLE `tblcomtracking`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbllodgedcomplain`
--
ALTER TABLE `tbllodgedcomplain`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblvolunteer`
--
ALTER TABLE `tblvolunteer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
