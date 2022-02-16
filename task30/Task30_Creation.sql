
CREATE DATABASE IF NOT EXISTS `minskzelesnstroi`;
USE `minskzelesnstroi`;

CREATE TABLE IF NOT EXISTS `orderers` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `contracts` (
  `ID` int(11) NOT NULL,
  `Orderer_ID` int(11) NOT NULL,
  `Date_of_Registrtation` date NOT NULL,
  `Date_of_Execution` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_contracts_orderers` (`Orderer_ID`),
  CONSTRAINT `FK_contracts_orderers` FOREIGN KEY (`Orderer_ID`) REFERENCES `orderers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `suppliers` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `flowers` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Supplier_ID` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`),
  KEY `FK_flowers_suppliers` (`Supplier_ID`),
  CONSTRAINT `FK_flowers_suppliers` FOREIGN KEY (`Supplier_ID`) REFERENCES `suppliers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL,
  `Contract_ID` int(11) NOT NULL,
  `Flower_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_orders_contracts` (`Contract_ID`),
  KEY `FK_orders_flowers` (`Flower_ID`),
  CONSTRAINT `FK_orders_contracts` FOREIGN KEY (`Contract_ID`) REFERENCES `contracts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_flowers` FOREIGN KEY (`Flower_ID`) REFERENCES `flowers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



