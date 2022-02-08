
CREATE DATABASE IF NOT EXISTS `workwear`;
USE `workwear`;


CREATE TABLE IF NOT EXISTS `workwear_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `workshop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Cheif_FullName` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `workers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Post` text NOT NULL,
  `Discount` decimal(2,2) unsigned NOT NULL DEFAULT 0.00,
  `Workshop_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_workers_workshop` (`Workshop_ID`),
  CONSTRAINT `FK_workers_workshop` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshop` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;






CREATE TABLE IF NOT EXISTS `workwear` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_ID` int(11) NOT NULL DEFAULT 0,
  `Wear_Period` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`),
  KEY `FK_workwear_workwear_type` (`Type_ID`),
  CONSTRAINT `FK_workwear_workwear_type` FOREIGN KEY (`Type_ID`) REFERENCES `workwear_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `receiving` (
  `Worker_ID` int(11) NOT NULL,
  `Workwear_ID` int(11) NOT NULL,
  `Date_of_Receipt` date NOT NULL,
  `Signature` text NOT NULL,
  PRIMARY KEY (`Worker_ID`,`Workwear_ID`),
  KEY `FK_receiving_workwear` (`Workwear_ID`),
  CONSTRAINT `FK_receiving_workers` FOREIGN KEY (`Worker_ID`) REFERENCES `workers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_receiving_workwear` FOREIGN KEY (`Workwear_ID`) REFERENCES `workwear` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;