
CREATE DATABASE IF NOT EXISTS `library_subscription`;
USE `library_subscription`;
CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `First_Author` text NOT NULL,
  `Publisher` text NOT NULL,
  `Place_of_Publication` text NOT NULL,
  `Year_of_Publication` year(4) NOT NULL,
  `Number_of_Pages` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS ` instances` (
  `ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Date_of_Send` date DEFAULT NULL,
  `Date_of_Receipt` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Inventory_Number` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ instances_books` (`Book_ID`),
  CONSTRAINT `FK_ instances_books` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





CREATE TABLE IF NOT EXISTS `readers` (
  `ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `readers_books` (
  `Books_ID` int(11) NOT NULL,
  `Readers_ID` int(11) NOT NULL,
  PRIMARY KEY (`Readers_ID`,`Books_ID`),
  KEY `FK_readers_books_books` (`Books_ID`),
  CONSTRAINT `FK_readers_books_books` FOREIGN KEY (`Books_ID`) REFERENCES `books` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_readers_books_readers` FOREIGN KEY (`Readers_ID`) REFERENCES `readers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `topics` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `topic_book` (
  `Book_ID` int(11) NOT NULL,
  `Topic_ID` int(11) NOT NULL,
  PRIMARY KEY (`Book_ID`,`Topic_ID`),
  KEY `FK__topics` (`Topic_ID`),
  CONSTRAINT `FK__books` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__topics` FOREIGN KEY (`Topic_ID`) REFERENCES `topics` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

