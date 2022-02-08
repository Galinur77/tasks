

CREATE DATABASE IF NOT EXISTS `bank_deposits`;
USE `bank_deposits`;


CREATE TABLE IF NOT EXISTS `clients` (
  `Сode` int(11) NOT NULL AUTO_INCREMENT,
  `Full_name` text NOT NULL,
  `Passport_ID` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Telephone_Тumber` text NOT NULL DEFAULT '',
  PRIMARY KEY (`Сode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;



CREATE TABLE IF NOT EXISTS `deposits` (
  `code` int(11) NOT NULL,
  `name` text NOT NULL DEFAULT '',
  `storage period` int(11) NOT NULL,
  `rate` decimal(2,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE IF NOT EXISTS `customer_bank_accounts` (
  `Account_Number` int(11) NOT NULL,
  `Client_Code` int(11) NOT NULL,
  `Opening Date` date NOT NULL,
  `Closing_Date` date,
  `Investments_Ammount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `DepositID` int(11) NOT NULL,
  PRIMARY KEY (`Account_Number`),
  KEY `FK_customer_bank_accounts_clients` (`Client_Code`),
  KEY `FK_customer_bank_accounts_deposits` (`DepositID`),
  CONSTRAINT `FK_customer_bank_accounts_clients` FOREIGN KEY (`Client_Code`) REFERENCES `clients` (`Сode`),
  CONSTRAINT `FK_customer_bank_accounts_deposits` FOREIGN KEY (`DepositID`) REFERENCES `deposits` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
