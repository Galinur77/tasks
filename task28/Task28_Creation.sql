
CREATE DATABASE IF NOT EXISTS `gas_station`;
USE `gas_station`;


CREATE TABLE IF NOT EXISTS `clients` (
  `ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `fuels` (
  `ID` int(11) NOT NULL,
  `Type` text NOT NULL,
  `Unit` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `firms` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `firm_fuel` (
  `Firm_ID` int(11) NOT NULL,
  `Fuel_ID` int(11) NOT NULL,
  PRIMARY KEY (`Firm_ID`,`Fuel_ID`),
  KEY `FK__fuels` (`Fuel_ID`),
  CONSTRAINT `FK__firms` FOREIGN KEY (`Firm_ID`) REFERENCES `firms` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__fuels` FOREIGN KEY (`Fuel_ID`) REFERENCES `fuels` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `gas_stations` (
  `ID` int(11) NOT NULL,
  `Firm_ID` int(11) NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_gas_stations_firms` (`Firm_ID`),
  CONSTRAINT `FK_gas_stations_firms` FOREIGN KEY (`Firm_ID`) REFERENCES `firms` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `sales` (
  `ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `GasStation_ID` int(11) NOT NULL,
  `Fuel_ID` int(11) NOT NULL,
  `Quantiry` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_sales_clients` (`Client_ID`),
  KEY `FK_sales_gas_stations` (`GasStation_ID`),
  KEY `FK_sales_fuels` (`Fuel_ID`),
  CONSTRAINT `FK_sales_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_fuels` FOREIGN KEY (`Fuel_ID`) REFERENCES `fuels` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_gas_stations` FOREIGN KEY (`GasStation_ID`) REFERENCES `gas_stations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


