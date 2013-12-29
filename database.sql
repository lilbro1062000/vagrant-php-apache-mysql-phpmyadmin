-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2013 at 10:06 PM
-- Server version: 5.5.34-0ubuntu0.13.10.1
-- PHP Version: 5.5.3-1ubuntu2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coupondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake_sessions`
--

CREATE TABLE IF NOT EXISTS `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cake_sessions`
--

INSERT INTO `cake_sessions` (`id`, `data`, `expires`) VALUES
('faabffsmek2arlt5tadluvst71', 'Config|a:3:{s:9:"userAgent";s:32:"31cd97e9cb345555bb45652a6d2ed0d7";s:4:"time";i:1387755742;s:9:"countdown";i:10;}', 1387741343),
('h7punpi1strsae3fqv95p195u5', 'Config|a:3:{s:9:"userAgent";s:32:"e502012b01cff6974a5039b1248d6f22";s:4:"time";i:1387763732;s:9:"countdown";i:10;}', 1387749332);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_description` text NOT NULL,
  `application_identifier` int(10) NOT NULL,
  `primary_company_prefix_vli` int(10) NOT NULL,
  `primary_company_prefix` int(10) NOT NULL,
  `offer_Code` int(10) NOT NULL,
  `save_value_vli` int(10) NOT NULL,
  `save_value` int(10) NOT NULL,
  `primary_purchase_requirement_vli` int(10) NOT NULL,
  `primary_purchase_requirement` int(10) NOT NULL,
  `primary_purchase_requirement_Code` int(10) NOT NULL,
  `primary_family_code` int(10) NOT NULL,
  `expiration_date` int(10) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `binder_location_p` int(10) NOT NULL,
  `binder_location_c` int(10) NOT NULL,
  `binder_location_r` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `count` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_description`, `application_identifier`, `primary_company_prefix_vli`, `primary_company_prefix`, `offer_Code`, `save_value_vli`, `save_value`, `primary_purchase_requirement_vli`, `primary_purchase_requirement`, `primary_purchase_requirement_Code`, `primary_family_code`, `expiration_date`, `barcode`, `binder_location_p`, `binder_location_c`, `binder_location_r`, `username`, `count`) VALUES
(7, 'test', 'This is a test coupon ', 8110, 1, 614141, 0, 3, 250, 1, 1, 0, 120, 140131, '81101061414165432132501101203140131', 1, 1, 1, 'me@me.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This is the users Table ' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `created`) VALUES
(5, 'me@gmail.com', '2013-12-03'),
(6, 'lilbro1062000@gmail.com', '2013-12-04'),
(7, 'me@me.com', '2013-12-04');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
