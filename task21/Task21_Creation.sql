
CREATE DATABASE IF NOT EXISTS `currency_exchange` ;
USE `currency_exchange`;


CREATE TABLE IF NOT EXISTS `cashier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Passport_ID` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `currency` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sold_Currence_ID` int(11) NOT NULL DEFAULT 0,
  `Purchased_Currency_ID` int(11) NOT NULL DEFAULT 0,
  `Name` text NOT NULL,
  `Selling_Rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Purchase_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `deals` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Cashier_ID` int(11) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Sale_Сurrency_ID` int(11) NOT NULL,
  `Purchase_Сurrency_ID` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `DateTime_of_Deal` datetime NOT NULL,
  `Ammount_of_Sold_Currency` decimal(10,2) NOT NULL,
  `Ammount_of_Purchased_Currency` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`,`Cashier_ID`) USING BTREE,
  KEY `FK_deals_cashier` (`Cashier_ID`),
  KEY `FK_deals_clients` (`Client_ID`),
  KEY `FK_deals_currency` (`Currency_ID`),
  CONSTRAINT `FK_deals_cashier` FOREIGN KEY (`Cashier_ID`) REFERENCES `cashier` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_deals_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_deals_currency` FOREIGN KEY (`Currency_ID`) REFERENCES `currency` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;


