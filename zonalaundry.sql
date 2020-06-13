-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 02:12 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zonalaundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cus_Code` text NOT NULL,
  `Cus_Name` varchar(50) NOT NULL,
  `Cus_Phone` text NOT NULL,
  `Weight` int(10) NOT NULL,
  `Pack_Code` int(8) NOT NULL,
  `Price` int(25) NOT NULL,
  `Tot_Price` int(25) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cus_Code`, `Cus_Name`, `Cus_Phone`, `Weight`, `Pack_Code`, `Price`, `Tot_Price`, `Date`) VALUES
('CA0001', 'Erma Mayangsari', '+6289778669857', 2, 121, 9000, 18000, '2020-06-10'),
('CA0002', 'Enita Wulandari', '+6289778998756', 3, 121, 9000, 27000, '2020-06-10'),
('CA0003', 'Intan Permata', '+6283746883981', 2, 122, 8000, 16000, '2020-06-10'),
('CA0004', 'Liliani Arimbi', '+6289756448887', 5, 131, 9000, 45000, '2020-06-10'),
('CA0005', 'Illiana Amarta', '+6289223443127', 5, 122, 8000, 40000, '2020-06-11'),
('CA0006', 'Muhammad Khoirul Mustaqim', '+6287775663821', 4, 122, 8000, 32000, '2020-06-13'),
('C0006', 'Melinda Amellia', '+6289645663796', 4, 10003, 7000, 28000, '2020-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `done`
--

CREATE TABLE `done` (
  `Cus_Code` text NOT NULL,
  `Cus_Name` varchar(30) NOT NULL,
  `Status` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `done`
--

INSERT INTO `done` (`Cus_Code`, `Cus_Name`, `Status`, `Date`) VALUES
('CA0002', 'Enita Wulandari', '-', '2020-06-10'),
('CA0001', 'Erma Mayangsari', 'done', '2020-06-10'),
('CA0003', 'Intan Permata', 'done', '2020-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Item_Code` text NOT NULL,
  `Item_Name` varchar(30) NOT NULL,
  `Pcs` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_Code`, `Item_Name`, `Pcs`) VALUES
('E3324', 'Sabun Cuci', 2),
('D5546', 'Pewangi (Jeruk)', 2),
('R4556', 'Pembersih Busa', 5),
('E2314', 'Sabun Cuci Cair', 6),
('D1253', 'Pewangi Padat', 4),
('D6357', 'Pewangi (Jeruk)', 8),
('P1254', 'Plastik', 10);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Username` varchar(30) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Username`, `Password`) VALUES
('rizqaalfi', 'rizqa2307');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Pack_Code` int(12) NOT NULL,
  `Pack_Name` varchar(25) NOT NULL,
  `Service` text NOT NULL,
  `Price` int(20) NOT NULL,
  `Time_Out` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`Pack_Code`, `Pack_Name`, `Service`, `Price`, `Time_Out`) VALUES
(10001, 'Cuci Cepat 1', '', 9000, '4 h'),
(10002, 'Cuci Cepat 2', '', 8000, '6 h'),
(10003, 'Cuci Cepat 3', '', 7000, '8 h'),
(10011, 'Cuci Cepat 4', '+Setrika', 10000, '6 h'),
(10012, 'Cuci Cepat 5', '+Setrika', 9000, '8 h'),
(10021, 'Cuci Biasa', '', 5000, '1 d'),
(10022, 'Cuci Biasa 1', '', 4000, '2 d'),
(10023, 'Cuci Biasa 3', '', 3000, '3 d'),
(10031, 'Cuci Biasa 4', '+Setrika', 5000, '2 d'),
(10032, 'Cuci Biasa 5', '+Setrika', 4000, '3 d'),
(10041, 'Cuci Selimut', '', 2000, '1 pcs');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Name` varchar(25) NOT NULL,
  `Phone` text NOT NULL,
  `Address` text NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Name`, `Phone`, `Address`, `Username`, `Password`) VALUES
('Indriani Kamalia Putri', '+628236445712', 'Jl. Sunan Kalijaga', 'iin', 'isme1231'),
('Amellia Anashtasia', '+6287711233452', 'Jl. Pangandaran 5', 'Meyy', 'runf58'),
('Milla Indriani', '+6282238945681', 'Jl. Slamet Riyadi', 'Millea', 'indi87'),
('Akhlisi Dinan Kamila', '+6289776444632', 'Jl. Slamet Riyadi 3', 'Kamila', 'mila123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`Pack_Code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
