



CREATE DATABASE IF NOT EXISTS `travel_agency`;
USE `travel_agency`;


CREATE TABLE IF NOT EXISTS `countries` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Price_of_Visa` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE IF NOT EXISTS `route` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL DEFAULT '',
  `Country_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_route_countries` (`Country_ID`),
  CONSTRAINT `FK_route_countries` FOREIGN KEY (`Country_ID`) REFERENCES `countries` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `sales` (
  `ID` int(11) NOT NULL,
  `Goal_of_Travel` text NOT NULL DEFAULT '',
  `Number_of_Sales` int(11) NOT NULL DEFAULT 0,
  `Date_of_Sale` date NOT NULL DEFAULT '0000-00-00',
  `Route_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_sales_route` (`Route_ID`),
  CONSTRAINT `FK_sales_route` FOREIGN KEY (`Route_ID`) REFERENCES `route` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



