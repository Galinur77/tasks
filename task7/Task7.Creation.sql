

CREATE DATABASE IF NOT EXISTS `trading`;
USE `trading`;


CREATE TABLE IF NOT EXISTS `departments` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Head_FullName` text NOT NULL,
  `Telephone` text NOT NULL,
  `Sales_per_Day` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Unit` text NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `sales` (
  `Department_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Date_of_Sale` date NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`Department_ID`,`Product_ID`),
  KEY `FK__products` (`Product_ID`),
  KEY `FK_sales_departments` (`Department_ID`),
  CONSTRAINT `FK__products` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_departments` FOREIGN KEY (`Department_ID`) REFERENCES `departments` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

