



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
  `ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Date_of_Sale` date NOT NULL,
  `Number` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK__products` (`Product_ID`),
  KEY `FK_sales_departments` (`Department_ID`),
  CONSTRAINT `FK__products` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_departments` FOREIGN KEY (`Department_ID`) REFERENCES `departments` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
