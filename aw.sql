-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 09:50 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aw`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `no` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `sign_up` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_client`
--

CREATE TABLE `domain_client` (
  `no` int(11) NOT NULL,
  `did` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `say` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_content`
--

CREATE TABLE `domain_content` (
  `no` int(11) NOT NULL,
  `did` varchar(100) NOT NULL,
  `uniqueness` text NOT NULL,
  `brand_history` text NOT NULL,
  `about_owners` text NOT NULL,
  `vision` text NOT NULL,
  `four_qualities` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_event`
--

CREATE TABLE `domain_event` (
  `no` int(11) NOT NULL,
  `did` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `registration_from` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registration_till` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_mesoblog`
--

CREATE TABLE `domain_mesoblog` (
  `no` int(11) NOT NULL,
  `did` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `overview` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_name`
--

CREATE TABLE `domain_name` (
  `no` int(11) NOT NULL,
  `did` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expiry_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reminder_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `in_system` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_products`
--

CREATE TABLE `domain_products` (
  `no` int(11) NOT NULL,
  `did` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `content` text NOT NULL,
  `images` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_setting`
--

CREATE TABLE `domain_setting` (
  `no` int(11) NOT NULL,
  `did` varchar(200) NOT NULL,
  `image_gallery` int(11) NOT NULL,
  `contactus_email` varchar(250) NOT NULL,
  `oneline_desc` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `brochure_link` varchar(500) NOT NULL,
  `twitter_link` varchar(500) NOT NULL,
  `facebook_link` varchar(500) NOT NULL,
  `insta_link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain_team`
--

CREATE TABLE `domain_team` (
  `no` int(11) NOT NULL,
  `did` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `position` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `profile_link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_client`
--
ALTER TABLE `domain_client`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_content`
--
ALTER TABLE `domain_content`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_event`
--
ALTER TABLE `domain_event`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_mesoblog`
--
ALTER TABLE `domain_mesoblog`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_name`
--
ALTER TABLE `domain_name`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_products`
--
ALTER TABLE `domain_products`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_setting`
--
ALTER TABLE `domain_setting`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `domain_team`
--
ALTER TABLE `domain_team`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_client`
--
ALTER TABLE `domain_client`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_content`
--
ALTER TABLE `domain_content`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_event`
--
ALTER TABLE `domain_event`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_mesoblog`
--
ALTER TABLE `domain_mesoblog`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_name`
--
ALTER TABLE `domain_name`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_products`
--
ALTER TABLE `domain_products`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_setting`
--
ALTER TABLE `domain_setting`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_team`
--
ALTER TABLE `domain_team`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
