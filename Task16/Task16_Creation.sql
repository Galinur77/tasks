
CREATE DATABASE IF NOT EXISTS `atm`;
USE `atm`;

CREATE TABLE IF NOT EXISTS `banks` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `atms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bank_ID` int(11) NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_atms_banks` (`Bank_ID`),
  CONSTRAINT `FK_atms_banks` FOREIGN KEY (`Bank_ID`) REFERENCES `banks` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;





CREATE TABLE IF NOT EXISTS `clients` (
  `Card_Number` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Bank_ID` int(11) NOT NULL,
  PRIMARY KEY (`Card_Number`) USING BTREE,
  KEY `FK_clients_banks` (`Bank_ID`),
  CONSTRAINT `FK_clients_banks` FOREIGN KEY (`Bank_ID`) REFERENCES `banks` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2457 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `operations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Commission` text NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `operation_atm` (
  `Atm_ID` int(11) NOT NULL,
  `DateTime` datetime NOT NULL,
  `Operation_ID` int(11) NOT NULL,
  PRIMARY KEY (`DateTime`,`Atm_ID`),
  KEY `FK_operation_atm_atms` (`Atm_ID`),
  KEY `FK_operation_atm_operations` (`Operation_ID`),
  CONSTRAINT `FK_operation_atm_atms` FOREIGN KEY (`Atm_ID`) REFERENCES `atms` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_operation_atm_operations` FOREIGN KEY (`Operation_ID`) REFERENCES `operations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `operation_client` (
  `Operation_ID` int(11) NOT NULL,
  `Cart_Number` int(11) NOT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`Cart_Number`,`DateTime`),
  KEY `FK__operations` (`Operation_ID`),
  CONSTRAINT `FK__clients` FOREIGN KEY (`Cart_Number`) REFERENCES `clients` (`Card_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__operations` FOREIGN KEY (`Operation_ID`) REFERENCES `operations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


