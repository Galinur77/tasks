

CREATE DATABASE IF NOT EXISTS `repair`;
USE `repair`;


CREATE TABLE IF NOT EXISTS `brends` (
  `ID` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `workers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Post` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `execution_of_orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` text NOT NULL,
  `Price_for_service` decimal(10,2) NOT NULL,
  `Price_of_repair` decimal(10,2) NOT NULL,
  `Date_of_execution` date NOT NULL,
  `Inform` text NOT NULL,
  `Date_of_Receipt` date NOT NULL,
  `Worker_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_execution_of_orders_workers` (`Worker_ID`),
  CONSTRAINT `FK_execution_of_orders_workers` FOREIGN KEY (`Worker_ID`) REFERENCES `workers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Brend_ID` int(11) NOT NULL,
  `Model` text NOT NULL,
  `Technical_Specifications` text NOT NULL,
  `Warranty` text NOT NULL,
  `Picture` blob NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_products_brends` (`Brend_ID`),
  CONSTRAINT `FK_products_brends` FOREIGN KEY (`Brend_ID`) REFERENCES `brends` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Prod_ID` int(11) NOT NULL,
  `Warranty` int(11) NOT NULL,
  `Date_of_Receipt` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK__products` (`Prod_ID`),
  CONSTRAINT `FK__products` FOREIGN KEY (`Prod_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_execution_of_orders` FOREIGN KEY (`ID`) REFERENCES `execution_of_orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `worker_product` (
  `Worker_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  PRIMARY KEY (`Worker_ID`,`Product_ID`),
  KEY `FK_worker_product_products` (`Product_ID`),
  CONSTRAINT `FK_worker_product_products` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_worker_product_workers` FOREIGN KEY (`Worker_ID`) REFERENCES `workers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

