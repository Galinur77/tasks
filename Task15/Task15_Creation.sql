
CREATE DATABASE IF NOT EXISTS `internet_sales2`;
USE `internet_sales2`;


CREATE TABLE IF NOT EXISTS `clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;


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




CREATE TABLE IF NOT EXISTS `delivery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DateTime_of_Delivery` datetime NOT NULL,
  `Address` text NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Deliveryman_FullName` text NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_delivery_clients` (`Client_ID`),
  CONSTRAINT `FK_delivery_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `internet_stores` (
  `ID` int(11) NOT NULL,
  `Mail` text NOT NULL,
  `Payment_for_Delivery` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Store_ID` int(11) NOT NULL,
  `Prod_ID` int(11) NOT NULL,
  `Date_of_Order` datetime NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Confirm_Order` binary(50) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_orders_clients` (`Client_ID`),
  KEY `FK_orders_internet_stores` (`Store_ID`),
  KEY `FK_orders_products` (`Prod_ID`),
  CONSTRAINT `FK_orders_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_internet_stores` FOREIGN KEY (`Store_ID`) REFERENCES `internet_stores` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`Prod_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `order_delivery` (
  `Order_ID` int(11) NOT NULL,
  `Delivery_ID` int(11) NOT NULL,
  PRIMARY KEY (`Order_ID`,`Delivery_ID`),
  UNIQUE KEY `Order_ID` (`Order_ID`),
  UNIQUE KEY `Delivery_ID` (`Delivery_ID`),
  CONSTRAINT `FK_order_delivery_delivery` FOREIGN KEY (`Delivery_ID`) REFERENCES `delivery` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_order_delivery_orders` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


