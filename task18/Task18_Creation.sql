
CREATE DATABASE IF NOT EXISTS `furniture`;
USE `furniture`;


CREATE TABLE IF NOT EXISTS `clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `contracts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Client_ID` int(11) NOT NULL,
  `Date_of_Registration` date NOT NULL,
  `Date_of_Execution` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_contracts_clients` (`Client_ID`),
  CONSTRAINT `FK_contracts_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `sales` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Contract_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Model` (`Model`),
  UNIQUE KEY `Contract_ID` (`Contract_ID`),
  CONSTRAINT `FK_sales_contracts` FOREIGN KEY (`Contract_ID`) REFERENCES `contracts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_furnitures` FOREIGN KEY (`Model`) REFERENCES `furnitures` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


