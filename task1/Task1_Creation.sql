;



CREATE DATABASE IF NOT EXISTS `product_delivery`;
USE `product_delivery`;


CREATE TABLE IF NOT EXISTS `customers` (
  `Name` text NOT NULL,
  `Telephone` text NOT NULL DEFAULT '',
  `ID` int(11) NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `products` (
  `Product_Code` int(11) NOT NULL,
  `Name` text NOT NULL DEFAULT '',
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`Product_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `shipments` (
  `Code` int(11) NOT NULL,
  `Date_of_Shipment` date DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `orders` (
  `Order_Code` int(11) NOT NULL,
  `Contract_Number` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Contract_Date` date DEFAULT NULL,
  `Planned_Delivery` date DEFAULT NULL,
  `Product_ID` int(11) NOT NULL,
  PRIMARY KEY (`Order_Code`),
  KEY `FK_orders_customers` (`Customer_ID`),
  KEY `FK_orders_products` (`Product_ID`),
  CONSTRAINT `FK_orders_customers` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`ID`),
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE IF NOT EXISTS `shipment_content` (
  `Shipment_Code` int(11) NOT NULL,
  `Order_Code` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`Shipment_Code`,`Order_Code`),
  KEY `FK_shipmentcontent_orders` (`Order_Code`),
  KEY `Shipment_Code` (`Shipment_Code`),
  CONSTRAINT `FK_shipmentcontent_orders` FOREIGN KEY (`Order_Code`) REFERENCES `orders` (`Order_Code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_shipmentcontent_shipments` FOREIGN KEY (`Shipment_Code`) REFERENCES `shipments` (`Code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

