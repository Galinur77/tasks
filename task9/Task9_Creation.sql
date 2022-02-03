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


-- Dumping database structure for library
CREATE DATABASE IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `library`;

-- Dumping structure for table library.books
CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Year_of_Publication` text NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Quantity` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  `First_Author` text DEFAULT NULL,
  `Publisher_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_books_publishers` (`Publisher_ID`),
  CONSTRAINT `FK_books_publishers` FOREIGN KEY (`Publisher_ID`) REFERENCES `publishers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6613 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table library.issuances
CREATE TABLE IF NOT EXISTS `issuances` (
  `Readers_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Date_of_Issue` date NOT NULL,
  `Signature` text NOT NULL,
  PRIMARY KEY (`Readers_ID`,`Book_ID`),
  KEY `FK_issuances_books` (`Book_ID`),
  CONSTRAINT `FK_issuances_books` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_issuances_readers` FOREIGN KEY (`Readers_ID`) REFERENCES `readers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table library.publishers
CREATE TABLE IF NOT EXISTS `publishers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `City` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table library.readers
CREATE TABLE IF NOT EXISTS `readers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
