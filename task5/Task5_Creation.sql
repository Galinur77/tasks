
CREATE DATABASE IF NOT EXISTS `factory`;
USE `factory`;


CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `reciepents` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `product_model` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_product_model_product` (`Product_ID`),
  CONSTRAINT `FK_product_model_product` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `receipts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_ID` int(11) NOT NULL DEFAULT 0,
  `Model_ID` int(11) NOT NULL,
  `Date_of_receipt` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_receipts_reciepents` (`recipient_ID`),
  KEY `FK_receipts_product_model` (`Model_ID`),
  CONSTRAINT `FK_receipts_product_model` FOREIGN KEY (`Model_ID`) REFERENCES `product_model` (`ID`),
  CONSTRAINT `FK_receipts_reciepents` FOREIGN KEY (`recipient_ID`) REFERENCES `reciepents` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;



