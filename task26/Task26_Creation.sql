
CREATE DATABASE IF NOT EXISTS `publishing_center`;
USE `publishing_center`;

CREATE TABLE IF NOT EXISTS `orderers` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  `Refer_To` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL,
  `Date_Of_Reciept` date NOT NULL,
  `Date_Of_Execution` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Orderer_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_orders_orderers` (`Orderer_ID`),
  CONSTRAINT `FK_orders_orderers` FOREIGN KEY (`Orderer_ID`) REFERENCES `orderers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Edition` int(11) NOT NULL,
  `Print_Date` date NOT NULL,
  `Cost_Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Sale_Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Honorarium` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Order_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_books_orders` (`Order_ID`),
  CONSTRAINT `FK_books_orders` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `contracts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_of_Registration` date NOT NULL,
  `Term_of_Contract` int(11) NOT NULL,
  `Is_Terminated` bit(1) NOT NULL DEFAULT b'0',
  `Termination_Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;





CREATE TABLE IF NOT EXISTS `writers` (
  `Passport_ID` int(11) NOT NULL,
  `Surname` text NOT NULL,
  `Name` text NOT NULL,
  `Patronymic` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`Passport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `writer_book` (
  `Writer_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  PRIMARY KEY (`Writer_ID`,`Book_ID`),
  KEY `FK_writer_book_books` (`Book_ID`),
  CONSTRAINT `FK_writer_book_books` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_writer_book_writers` FOREIGN KEY (`Writer_ID`) REFERENCES `writers` (`Passport_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `writer_contract` (
  `Writer_ID` int(11) NOT NULL,
  `Contract_ID` int(11) NOT NULL,
  PRIMARY KEY (`Writer_ID`,`Contract_ID`),
  UNIQUE KEY `Writer_ID` (`Writer_ID`),
  UNIQUE KEY `Contract_ID` (`Contract_ID`),
  CONSTRAINT `FK__contracts` FOREIGN KEY (`Contract_ID`) REFERENCES `contracts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__writers` FOREIGN KEY (`Writer_ID`) REFERENCES `writers` (`Passport_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


