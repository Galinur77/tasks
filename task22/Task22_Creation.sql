
CREATE DATABASE IF NOT EXISTS `production_enterprises`;
USE `production_enterprises`;

CREATE TABLE IF NOT EXISTS `organizations` (
  `ID` int(11) NOT NULL,
  `Country_ID` int(11) NOT NULL,
  `City` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  `E-Mail` text NOT NULL,
  `WebPage` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `workers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Salary` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Prize` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Month` int(11) NOT NULL DEFAULT 0,
  `Department_ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Post` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `contracs` (
  `ID` int(11) NOT NULL,
  `Organization_Name` text NOT NULL,
  `Date_of_Registration` date NOT NULL,
  `Worker_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_contracs_workers` (`Worker_ID`),
  CONSTRAINT `FK_contracs_workers` FOREIGN KEY (`Worker_ID`) REFERENCES `workers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `deliveries` (
  `Contract_ID` int(11) NOT NULL,
  `Type_of_equipment` text NOT NULL,
  `comment` text DEFAULT NULL,
  `Organization_ID` int(11) NOT NULL,
  PRIMARY KEY (`Contract_ID`) USING BTREE,
  KEY `FK_deliveries_organizations` (`Organization_ID`),
  CONSTRAINT `FK_deliveries_contracs` FOREIGN KEY (`Contract_ID`) REFERENCES `contracs` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_deliveries_organizations` FOREIGN KEY (`Organization_ID`) REFERENCES `organizations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

