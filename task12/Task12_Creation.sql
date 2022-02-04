-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gai
CREATE DATABASE IF NOT EXISTS `gai` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `gai`;

-- Dumping structure for table gai.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `Number` int(11) NOT NULL,
  `Brand` text NOT NULL,
  `Colour` text NOT NULL,
  `Manufacture_Year` date NOT NULL,
  `Date_of_Registration` date NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table gai.drivers
CREATE TABLE IF NOT EXISTS `drivers` (
  `License_Number` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`License_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table gai.payment_for_violation
CREATE TABLE IF NOT EXISTS `payment_for_violation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Drivers_ID` int(11) NOT NULL DEFAULT 0,
  `District` text NOT NULL,
  `Amount_of_Penalty` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `Is_Paid` bit(1) NOT NULL DEFAULT b'0',
  `Deprivation_of_Driving` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table gai.violation
CREATE TABLE IF NOT EXISTS `violation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` text NOT NULL,
  `a` text NOT NULL,
  `Penalty` text NOT NULL,
  `Warning` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
