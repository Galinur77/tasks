
CREATE DATABASE IF NOT EXISTS `library`;
USE `library`;


CREATE TABLE IF NOT EXISTS `publishers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `City` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `readers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Year_of_Publication` year(4) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Quantity` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  `First_Author` text DEFAULT NULL,
  `Publisher_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_books_publishers` (`Publisher_ID`),
  CONSTRAINT `FK_books_publishers` FOREIGN KEY (`Publisher_ID`) REFERENCES `publishers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6613 DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `issuances` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Readers_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Date_of_Issue` date NOT NULL,
  `Signature` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_issuances_readers` (`Readers_ID`),
  KEY `FK_issuances_books` (`Book_ID`),
  CONSTRAINT `FK_issuances_books` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_issuances_readers` FOREIGN KEY (`Readers_ID`) REFERENCES `readers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;




