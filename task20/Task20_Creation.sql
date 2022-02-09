
CREATE DATABASE IF NOT EXISTS `pharmacy_warehouse`;
USE `pharmacy_warehouse`;

CREATE TABLE IF NOT EXISTS `medicines` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Manufacturer` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `pharmacies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `requests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_of_Registration` date NOT NULL,
  `Pharmacies_ID` int(11) NOT NULL DEFAULT 0,
  `Date_of_Execution` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_requests_pharmacies` (`Pharmacies_ID`),
  CONSTRAINT `FK_requests_pharmacies` FOREIGN KEY (`Pharmacies_ID`) REFERENCES `pharmacies` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `purchases` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Medicine_ID` int(11) NOT NULL DEFAULT 0,
  `Request_ID` int(11) NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FK_purchases_medicines` (`Medicine_ID`),
  KEY `FK_purchases_requests` (`Request_ID`),
  CONSTRAINT `FK_purchases_medicines` FOREIGN KEY (`Medicine_ID`) REFERENCES `medicines` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_purchases_requests` FOREIGN KEY (`Request_ID`) REFERENCES `requests` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
