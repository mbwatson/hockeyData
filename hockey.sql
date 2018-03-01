-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2018 at 08:17 AM
-- Server version: 5.7.21-0ubuntu0.17.10.1
-- PHP Version: 7.1.11-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_MODE = 'ANSI_QUOTES';
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hockey`
--

-- --------------------------------------------------------

--
-- Table structure for table `AwardsCoaches`
--

CREATE TABLE `AwardsCoaches` (
  `coachID` varchar(10) DEFAULT NULL,
  `award` varchar(20) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `lgID` varchar(4) DEFAULT NULL,
  `note` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AwardsPlayers`
--

CREATE TABLE `AwardsPlayers` (
  `playerID` varchar(10) DEFAULT NULL,
  `award` varchar(20) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `lgID` varchar(4) DEFAULT NULL,
  `note` varchar(25) DEFAULT NULL,
  `pos` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Coaches`
--

CREATE TABLE `Coaches` (
  `coachID` varchar(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `tmID` varchar43) DEFAULT NULL,
  `lgID` varchar(4) DEFAULT NULL,
  `stint` int(1) DEFAULT NULL,
  `notes` varchar(25) DEFAULT NULL,
  `g` int(3) DEFAULT NULL,
  `w` int(3) DEFAULT NULL,
  `l` int(3) DEFAULT NULL,
  `t` int(3) DEFAULT NULL,
  `postg` int(3) DEFAULT NULL,
  `postw` int(3) DEFAULT NULL,
  `postl` int(3) DEFAULT NULL,
  `postt` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Master`
--

CREATE TABLE `Master` (
  `playerID` varchar(10) DEFAULT NULL,
  `coachID` varchar(10) DEFAULT NULL,
  `hofID` varchar(10) DEFAULT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `nameNote` varchar(50) DEFAULT NULL,
  `nameGiven` varchar(30) DEFAULT NULL,
  `nameNick` varchar(40) DEFAULT NULL,
  `height` int(2) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `shootCatch` varchar(1) DEFAULT NULL,
  `legendsID` varchar(10) DEFAULT NULL,
  `ihdbID` varchar(10) DEFAULT NULL,
  `hrefID` varchar(10) DEFAULT NULL,
  `firstNHL` int(4) DEFAULT NULL,
  `lastNHL` int(4) DEFAULT NULL,
  `firstWHA` int(4) DEFAULT NULL,
  `lastWHA` int(4) DEFAULT NULL,
  `pos` varchar(3) DEFAULT NULL,
  `birthYear` int(4) DEFAULT NULL,
  `birthMon` int(2) DEFAULT NULL,
  `birthDay` int(2) DEFAULT NULL,
  `birthCountry` varchar(20) DEFAULT NULL,
  `birthState` varchar(15) DEFAULT NULL,
  `birthCity` varchar(25) DEFAULT NULL,
  `deathYear` int(4) DEFAULT NULL,
  `deathMon` int(2) DEFAULT NULL,
  `deathDay` int(2) DEFAULT NULL,
  `deathCountry` varchar(20) DEFAULT NULL,
  `deathState` varchar(2) DEFAULT NULL,
  `deathCity` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
