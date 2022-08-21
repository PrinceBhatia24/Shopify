-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2022 at 03:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Shopify`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `CID` int(11) NOT NULL,
  `CTitle` varchar(20) NOT NULL,
  `CPage` varchar(30) NOT NULL,
  `CDescription` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`CID`, `CTitle`, `CPage`, `CDescription`) VALUES
(1, 'Laptop', 'Laptop.jsp', 'afea'),
(2, 'Phone', 'Phone.jsp', 'cac'),
(3, 'TV', '', 'casdcd'),
(4, 'SoundBars', '', 'cqwadca'),
(5, 'Earphones', '', 'csadc'),
(6, 'Fashion', '', 'as'),
(7, 'Grocery', '', 'aefv'),
(8, 'Makeup Essentials', '', ''),
(9, 'Deodrants', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Feedback`
--

CREATE TABLE `Feedback` (
  `ID` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PhoneNo` varchar(11) NOT NULL,
  `Message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Feedback`
--

INSERT INTO `Feedback` (`ID`, `Name`, `Email`, `PhoneNo`, `Message`) VALUES
(1, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'Hello'),
(2, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'Hello There...'),
(3, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'wvtgr'),
(4, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', ' sthwrtgwrtbs'),
(5, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'vwefvwv'),
(6, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'wevefve'),
(7, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'ascefc'),
(8, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'afcwerf'),
(9, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '0946835912', 'vcwefvcwe'),
(10, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'm'),
(11, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'edcqe'),
(12, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'wd'),
(13, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'wcewq'),
(14, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'wcdqaw'),
(15, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'sdcs'),
(16, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'dssd'),
(17, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'adsc'),
(18, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', ''),
(19, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '09468359122', 'SDCSD');

-- --------------------------------------------------------

--
-- Table structure for table `OrderPlacedDetails`
--

CREATE TABLE `OrderPlacedDetails` (
  `ID` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `PhoneNo` varchar(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Landmark` varchar(60) NOT NULL,
  `City` varchar(40) NOT NULL,
  `State` varchar(40) NOT NULL,
  `Pincode` varchar(20) NOT NULL,
  `PaymentType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `OrderPlacedDetails`
--

INSERT INTO `OrderPlacedDetails` (`ID`, `Name`, `PhoneNo`, `Email`, `Address`, `Landmark`, `City`, `State`, `Pincode`, `PaymentType`) VALUES
(1, 'Prince Bhatia', '946835912', 'Princebhatia10021@gmail.com', 'Sunder Nagar ,Near Hanuman Mandir', 'house no 173', 'Fatehabad', 'Haryana', '125050', 'Credit/DebitCard'),
(2, 'Prince Bhatia', '987654', 'Princebhatia10021@gmail.com', 'Sunder Nagar ,Near Hanuman Mandir', 'dvss', 'Fatehabad', 'Haryana', '125050', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `PID` int(15) NOT NULL,
  `PName` varchar(500) NOT NULL,
  `PDescription` varchar(5000) NOT NULL,
  `PPrice` varchar(20) NOT NULL,
  `PQuantity` varchar(20) NOT NULL,
  `PCategory` varchar(20) NOT NULL,
  `PImageFileName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`PID`, `PName`, `PDescription`, `PPrice`, `PQuantity`, `PCategory`, `PImageFileName`) VALUES
(1, 'Apple iPhone 13 (Midnight, 128 GB)', '128 GB ROM, 15.49 cm (6.1 inch) Super Retina XDR Display,12MP + 12MP | 12MP Front Camera,A15 Bionic Chip Processor', '73,999', '2', 'Phone', 'iphone-13-mlpf3hn-a-apple-original-imag6vzz5qvejz8z.webp'),
(2, 'APPLE iPhone 12 (Black, 64 GB)', 'All Screen OLED Display\r\n12MP TrueDepth Front Camera with Night Mode, 4K Dolby Vision HDR Recording Super Retina XDR', '59,999', '4', 'Phone', 'apple-iphone-12-dummyapplefsn-original-imafwg8duby8qbn4.webp'),
(3, 'Apple iPhone 13 Pro ( Blue, 512 GB)', '512 GB ROM,15.49 cm Super Retina XDR Display,12MP + 12MP + 12MP | 12MP Front Camera,A15 Bionic Chip Processor', '1,49,900', '3', 'Phone', 'iphone-13-pro-mlw03hn-a-apple-original-imag6vpb2kj4dcp5.webp'),
(5, 'APPLE iPhone 11 (White, 64 GB)', '64 GB ROM\r\n15.49 cm (6.1 inch) Liquid Retina HD Display\r\n12MP + 12MP | 12MP Front Camera\r\nA13 Bionic Chip Processor', '46,999', '2', 'Phone', 'iphone-11-256-u-mwm82hn-a-apple-0-original-imafkg25mhaztxns.webp'),
(6, 'APPLE iPhone 11 (Red, 128 GB)', '128 GB ROM\r\n15.49 cm (6.1 inch) Liquid Retina HD Display\r\n12MP + 12MP | 12MP Front Camera\r\nA13 Bionic Chip Processor', '54,900', '4', 'Phone', 'iphone-11-128-a-mwm32hn-a-apple-0-original-imafkg25hjmuy98e.webp'),
(7, 'SAMSUNG Galaxy S22 Ultra 5G ', '12 GB RAM | 256 GB ROM\r\n17.27 cm (6.8 inch) Quad HD+ Display\r\n108MP + 12MP + 10MP + 10MP | 40MP Front Camera\r\n', '1,09,999', '3', 'Phone', '-original-imaggj68cgtdacxn.webp'),
(8, 'SAMSUNG Galaxy F23 5G ', '6 GB RAM | 128 GB ROM | Expandable Upto 1 TB\r\n16.76 cm (6.6 inch) Full HD+ Display\r\n50MP+8MP+2MP|8MP Camera', '16,999', '4', 'Phone', '-original-imagcg22czc3ggvw.webp'),
(9, 'OnePlus Nord CE 2 Lite 5G', '6 GB RAM | 128 GB ROM\r\n16.74 cm (6.59 inch) Display\r\n64MP Rear Camera\r\n5000 mAh Battery', '19,836', '4', 'Phone', 'nord-ce-2-lite-5g-le2505-oneplus-original-imagdwf8gvgqyr7j.webp'),
(10, 'APPLE 2020 Macbook Air M1', '13.3 inch Quad LED Backlit IPS Display (227 PPI, 400 nits Brightness, Wide Colour (P3), True Tone Technology)', '1,12,990', '5', 'Laptop', 'apple-original-imafxfyqkdfxqjab.webp'),
(11, 'APPLE 2021 Macbook Pro M1 Pro', 'Stylish & Portable Thin and Light Laptop\r\nLight Laptop without Optical Disk Drive', '&#8377;1,85,990', '5', 'Laptop', 'mkgp3hn-a-thin-and-light-laptop-apple-original-imag7yznc5d2rsuh.webp');

-- --------------------------------------------------------

--
-- Table structure for table `Registration`
--

CREATE TABLE `Registration` (
  `ID` int(13) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `PhoneNo` varchar(11) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Registration`
--

INSERT INTO `Registration` (`ID`, `Name`, `Email`, `PhoneNo`, `Password`, `Type`) VALUES
(1, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'pr', 'Admin'),
(6, 'Varun Anand', 'Princebhatia10021@gmail.com', '9468359122', 'p', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `OrderPlacedDetails`
--
ALTER TABLE `OrderPlacedDetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `Registration`
--
ALTER TABLE `Registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Feedback`
--
ALTER TABLE `Feedback`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `OrderPlacedDetails`
--
ALTER TABLE `OrderPlacedDetails`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `PID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Registration`
--
ALTER TABLE `Registration`
  MODIFY `ID` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
