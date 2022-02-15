
CREATE DATABASE IF NOT EXISTS `cosmetic_products`;
USE `cosmetic_products`;


CREATE TABLE IF NOT EXISTS `brends` (
  `ID` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Brend_ID` int(11) DEFAULT NULL,
  `Unit` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_products_brends` (`Brend_ID`),
  CONSTRAINT `FK_products_brends` FOREIGN KEY (`Brend_ID`) REFERENCES `brends` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `factories` (
  `ID` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Telephone` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL,
  `Factory_ID` int(11) NOT NULL,
  `Prod_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `Date_Of_Execution` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_orders_factories` (`Factory_ID`),
  KEY `FK_orders_products` (`Prod_ID`),
  CONSTRAINT `FK_orders_factories` FOREIGN KEY (`Factory_ID`) REFERENCES `factories` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`Prod_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `deliveries` (
  `ID` int(11) NOT NULL,
  `Order_ID` int(11) DEFAULT NULL,
  `Date_of_Execution` date DEFAULT NULL,
  `Prod_Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_deliveries_orders` (`Order_ID`),
  CONSTRAINT `FK_deliveries_orders` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



