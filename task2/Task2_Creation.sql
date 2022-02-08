
CREATE DATABASE IF NOT EXISTS `retailment`;
USE `retailment`;



CREATE TABLE IF NOT EXISTS `suppliers` (
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Owner` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `products` (
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `deliveries` (
  `Product_ID` int(11) NOT NULL,
  `Supplier_ID` int(11) NOT NULL,
  `Date_of_Recieption` date NOT NULL,
  `Number` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  KEY `FK_deliveries_products` (`Product_ID`),
  KEY `FK_deliveries_suppliers` (`Supplier_ID`),
  CONSTRAINT `FK_deliveries_products` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Code`),
  CONSTRAINT `FK_deliveries_suppliers` FOREIGN KEY (`Supplier_ID`) REFERENCES `suppliers` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `sales` (
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Code` int(11) NOT NULL,
  `Date_of_Sale` date NOT NULL,
  `Number` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`Code`),
  KEY `FK_sales_products` (`Product_Code`),
  CONSTRAINT `FK_sales_products` FOREIGN KEY (`Product_Code`) REFERENCES `products` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;



