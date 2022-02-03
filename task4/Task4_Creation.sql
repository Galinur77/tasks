


CREATE DATABASE IF NOT EXISTS `audit`;
USE `audit`;


CREATE TABLE IF NOT EXISTS `categories` (
  `Category` int(11) NOT NULL,
  `One_Hour_Rate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `enterprises` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `workers` (
  `Code` int(11) NOT NULL,
  `Full_Name` text NOT NULL,
  `Passport_ID` int(11) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Telephone` text NOT NULL,
  `Category_ID` int(11) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE IF NOT EXISTS `works` (
  `ID` int(11) NOT NULL,
  `Enterprise_ID` int(11) NOT NULL,
  `Worker_Code` int(11) NOT NULL,
  `Date_of_Work` date NOT NULL,
  `Number_of_Working_Hours` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FK_works_enterprises` (`Enterprise_ID`),
  KEY `FK_works_workers` (`Worker_Code`),
  CONSTRAINT `FK_works_enterprises` FOREIGN KEY (`Enterprise_ID`) REFERENCES `enterprises` (`ID`),
  CONSTRAINT `FK_works_workers` FOREIGN KEY (`Worker_Code`) REFERENCES `workers` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



