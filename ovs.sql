-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 06:32 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `cid` int(10) NOT NULL,
  `cname` varchar(110) NOT NULL,
  `eid` int(10) NOT NULL,
  `cvotes` int(10) NOT NULL DEFAULT '0',
  `cphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`cid`, `cname`, `eid`, `cvotes`, `cphoto`) VALUES
(44, 'Paul Smith', 22, 151, 'storage/avatar.png'),
(45, 'Meghan Griffin', 23, 1, 'storage/avatar2.png'),
(46, 'Brian Kellen', 22, 200, 'storage/avatar5.png'),
(47, 'Wiz Khalifa', 23, 2, 'storage/avatar04.png'),
(49, 'Lorem IPSUM', 26, 1, 'storage/avatar3.png');

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `eid` int(10) NOT NULL,
  `etitle` varchar(100) NOT NULL,
  `edesc` varchar(200) NOT NULL,
  `estatus` int(10) NOT NULL DEFAULT '0',
  `edate` date NOT NULL,
  `vid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`eid`, `etitle`, `edesc`, `estatus`, `edate`, `vid`) VALUES
(22, 'Running for CEO in MNO', 'this election is abt running fo ceo in MNO Company', 1, '2020-01-03', 0),
(23, 'Best Singers of 2019', 'Best Singeres of 2019 Voting', 1, '2020-01-03', 0),
(24, 'Mayor Election 2020', 'Running for Mayor of SomecIty', 0, '2020-01-04', 0),
(25, 'Mayor Election 2021', 'Running for Mayor of KTm', 0, '2020-01-04', 0),
(26, 'Chairman Election of XYZ', 'Running for chairman of XYZ', 1, '2020-01-04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `vid` int(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  `dob` date NOT NULL,
  `citizenship` int(60) NOT NULL,
  `voterphoto` varchar(120) NOT NULL DEFAULT 'images/avatar.png',
  `voterid` varchar(100) NOT NULL,
  `verfstatus` int(10) NOT NULL,
  `citizenphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`vid`, `password`, `fname`, `lname`, `address`, `phone`, `dob`, `citizenship`, `voterphoto`, `voterid`, `verfstatus`, `citizenphoto`) VALUES
(4, 'akash123', 'Aakash', 'Poudel', 'Ratnanagar', 2147483647, '2020-01-14', 123, 'images/avatar.png', 'NP123Poudel', 1, ''),
(6, 'akash123', 'Bishal', 'Vhetwal', 'India', 3636, '2020-01-21', 6969, 'images/avatar.png', 'NP6969Vhetwal', 0, ''),
(7, 'akash', 'Pawan', 'Regmi', 'Bhatini', 983636, '1999-02-05', 69699936, 'images/avatar.png', 'NP69699936Regmi', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `votesid` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `vid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`votesid`, `eid`, `vid`) VALUES
(2, 22, 4),
(5, 23, 4),
(6, 26, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`votesid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `vid` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `votesid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
