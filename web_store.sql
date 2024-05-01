-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 08:54 PM
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
-- Database: `web_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_ID` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_ID`, `Name`, `Password`, `Email`) VALUES
(1, 'Lakshan', 'sdsdd', 'Lakshanlop@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `O_ID` int(5) NOT NULL,
  `UserId` int(4) NOT NULL,
  `PID` int(5) NOT NULL,
  `Billing_Address` varchar(20) NOT NULL,
  `Quantity` text NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PID` int(5) NOT NULL,
  `P_Name` varchar(500) NOT NULL,
  `P_Quantity` int(5) NOT NULL,
  `P_description` varchar(10000) NOT NULL,
  `P_Price` int(4) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `A_ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PID`, `P_Name`, `P_Quantity`, `P_description`, `P_Price`, `image`, `A_ID`) VALUES
(10, 'DOQAUS Bluetooth Headphones', 10, 'Up to 90 Hours of listening time in Bluetooth mode, you\'ll always have music to inspire you. Regardless of whether you want to use the convenience of Wireless Headphones or the long-lasting properties of a wired connection (3.5 mm audio cable included), you have the choice with the DOQAUS Bluetooth Headphones over ear.', 49, 'Uploads/x32.jpg', 1),
(11, 'TOZO T20 Wireless Earbuds', 10, 'With an IPX8 waterproof rating, this wireless earbuds can effectively prevent damage from water, sweat and rain, so you can focus on your workout and enjoy your outdoor activities. These headsets adopted a curved, ergonomic in-ear design, making them comfortable to wear for long periods of time and not falling out when playing sports. There are 6 pairs of different sized soft rubber ear caps for you to choose from.', 29, 'Uploads/x65.jpg', 1),
(12, 'Beats Studio Pro', 10, 'BEATS\' CUSTOM ACOUSTIC PLATFORM delivers rich, immersive sound whether youre listening to music or taking calls.\r\nLOSSLESS AUDIO via USB-C plus three distinct built-in sound profiles to enhance your listening experience.', 149, 'Uploads/ar32.jpg', 1),
(13, 'Soundcore Anker P20i Earbuds', 10, 'Powerful Bass: Soundcore P20i true wireless earbuds have oversized 10mm drivers that deliver powerful sound with boosted bass so you can lose yourself in your favorite songs.', 25, 'Uploads/ax67.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` int(4) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `UserName`, `Email`, `Password`) VALUES
(1, 'Lakshan', 'Lakshanlop@gmail.com', '32763'),
(7, 'Bamitha', 'bamitha@gmail.com', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`O_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `admin foreign key` (`A_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `O_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `admin foreign key` FOREIGN KEY (`A_ID`) REFERENCES `admin` (`A_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
