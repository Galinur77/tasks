


CREATE DATABASE IF NOT EXISTS `commercial_company`;
USE `commercial_company`;

CREATE TABLE IF NOT EXISTS `clients` (
  `Contract_ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Date_of_Purchase` date NOT NULL,
  `Telephone` text NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`Contract_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `models` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Colour` text NOT NULL,
  `Upholstery` text NOT NULL,
  `Power` int(11) NOT NULL,
  `Door_Number` int(11) NOT NULL,
  `Transmission` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `price_list` (
  `Model_ID` int(11) NOT NULL,
  `Year_of_Release` date NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Preparation` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Transportation_Costs` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`Model_ID`),
  CONSTRAINT `FK_price_list_models` FOREIGN KEY (`Model_ID`) REFERENCES `models` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `suppliers` (
  `Company_ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Telephone` text NOT NULL,
  `E-mail` text NOT NULL,
  `Web_Page` text NOT NULL,
  PRIMARY KEY (`Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `supplier_model` (
  `Supplier_ID` int(11) NOT NULL,
  `Model_ID` int(11) NOT NULL,
  PRIMARY KEY (`Supplier_ID`,`Model_ID`),
  KEY `FK__models` (`Model_ID`),
  CONSTRAINT `FK__models` FOREIGN KEY (`Model_ID`) REFERENCES `models` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__suppliers` FOREIGN KEY (`Supplier_ID`) REFERENCES `suppliers` (`Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `client_model` (
  `Client_ID` int(11) NOT NULL,
  `Model_ID` int(11) NOT NULL,
  PRIMARY KEY (`Client_ID`,`Model_ID`),
  KEY `FK_client_model_models` (`Model_ID`),
  CONSTRAINT `FK_client_model_clients` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`Contract_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_client_model_models` FOREIGN KEY (`Model_ID`) REFERENCES `models` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
