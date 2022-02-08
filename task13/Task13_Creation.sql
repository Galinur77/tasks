
CREATE DATABASE IF NOT EXISTS `jes`;
USE `jes`;

CREATE TABLE IF NOT EXISTS `renters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `services` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` text NOT NULL,
  `Unit` text NOT NULL,
  `Rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `apartments` (
  `Renter_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Living_Space` decimal(10,1) NOT NULL DEFAULT 0.0,
  `Number_of_Residents` int(11) NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`,`Renter_ID`) USING BTREE,
  KEY `FK_apartments_renters` (`Renter_ID`),
  CONSTRAINT `FK_apartments_renters` FOREIGN KEY (`Renter_ID`) REFERENCES `renters` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `payments_for_services` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Renters_ID` int(11) NOT NULL,
  `Service_ID` int(11) NOT NULL,
  `Spent` int(11) NOT NULL,
  `Pay_before` date NOT NULL,
  `Date_of_Payment` date DEFAULT NULL,
  `Paid_on_Time` binary(50) NOT NULL DEFAULT '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY (`ID`),
  KEY `FK_payments_for_services_renters` (`Renters_ID`),
  KEY `FK_payments_for_services_services` (`Service_ID`),
  CONSTRAINT `FK_payments_for_services_renters` FOREIGN KEY (`Renters_ID`) REFERENCES `renters` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_payments_for_services_services` FOREIGN KEY (`Service_ID`) REFERENCES `services` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;




