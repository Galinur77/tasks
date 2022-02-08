
CREATE DATABASE IF NOT EXISTS `internet_sales3`;
USE `internet_sales3`;

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Brend` text NOT NULL,
  `Model` text NOT NULL,
  `Technical_Specifications` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Warranty` text NOT NULL,
  `Image` blob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `internet_stores` (
  `ID` int(11) NOT NULL,
  `Mail` text NOT NULL,
  `Payment_for_Delivery` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Store_ID` int(11) NOT NULL,
  `Prod_ID` int(11) NOT NULL,
  `Date_of_Order` datetime NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Confirm_Order` binary(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Store_ID`,`Prod_ID`) USING BTREE,
  KEY `FK_orders_clients` (`Client_ID`),
  KEY `FK_orders_internet_stores` (`Store_ID`),
  KEY `FK_orders_products` (`Prod_ID`),
  CONSTRAINT `FK_orders_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_internet_stores` FOREIGN KEY (`Store_ID`) REFERENCES `internet_stores` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`Prod_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `delivery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Order_ID` int(11) NOT NULL,
  `DateTime_of_Delivery` datetime NOT NULL,
  `Address` text NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Deliveryman_FullName` text NOT NULL,
  PRIMARY KEY (`ID`,`Order_ID`) USING BTREE,
  KEY `FK_delivery_clients` (`Client_ID`),
  CONSTRAINT `FK_delivery_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_delivery_orders` FOREIGN KEY (`ID`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;







