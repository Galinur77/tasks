
CREATE DATABASE IF NOT EXISTS `gai`;
USE `gai2`;

CREATE TABLE IF NOT EXISTS `drivers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `License_Number` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `cars` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Number` char(50) NOT NULL DEFAULT '',
  `Model` text NOT NULL,
  `Brand` text NOT NULL,
  `Colour` text NOT NULL,
  `Manufacture_Year` year(4) NOT NULL,
  `Date_of_Registration` date NOT NULL,
  `Driver_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_cars_drivers` (`Driver_ID`),
  CONSTRAINT `FK_cars_drivers` FOREIGN KEY (`Driver_ID`) REFERENCES `drivers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `payment_for_violation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DateTime` datetime NOT NULL,
  `Drivers_ID` int(11) NOT NULL DEFAULT 0,
  `District` text NOT NULL,
  `Deprivation_of_Driving` float NOT NULL DEFAULT 0,
  `Is_Paid` binary(50) NOT NULL,
  `Penalty_for_Violation` decimal(10,2) NOT NULL,
  `Inspector_ID` text NOT NULL,
  `Violation_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_payment_for_violation_violation` (`Violation_ID`),
  KEY `FK_payment_for_violation_drivers` (`Drivers_ID`),
  CONSTRAINT `FK_payment_for_violation_drivers` FOREIGN KEY (`Drivers_ID`) REFERENCES `drivers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_payment_for_violation_violation` FOREIGN KEY (`Violation_ID`) REFERENCES `violation` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `violation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` text NOT NULL,
  `Penalty_for_Violation` text NOT NULL,
  `Deprivation_of_Driving` int(11) NOT NULL DEFAULT 0,
  `Warning` binary(50) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
