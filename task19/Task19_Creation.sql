

CREATE DATABASE IF NOT EXISTS `printing_house` ;
USE `printing_house`;

CREATE TABLE IF NOT EXISTS `workshop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Chief` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `contracts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Orderer_Name` text NOT NULL,
  `Orderer_Address` text NOT NULL,
  `Date_of_Registration` date NOT NULL,
  `Date_of_Execution` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Workshop_ID` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_products_workshop` (`Workshop_ID`),
  CONSTRAINT `FK_products_workshop` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshop` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Contract_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_orders_contracts` (`Contract_ID`),
  KEY `FK_orders_products` (`Product_ID`),
  CONSTRAINT `FK_orders_contracts` FOREIGN KEY (`Contract_ID`) REFERENCES `contracts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;






