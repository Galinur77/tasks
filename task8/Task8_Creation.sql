
CREATE DATABASE IF NOT EXISTS `subscription_publications`;
USE `subscription_publications`;


CREATE TABLE IF NOT EXISTS `publications` (
  `ID` int(11) NOT NULL,
  `Type` text NOT NULL,
  `Name` text NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `reciepients` (
  `ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `subscriptions` (
  `Reciepeints_ID` int(11) NOT NULL,
  `Publication_ID` int(11) NOT NULL,
  `subscription_period` text NOT NULL,
  `Month_Start` int(11) NOT NULL DEFAULT 0,
  `Year_Start` year(4) NOT NULL,
  PRIMARY KEY (`Reciepeints_ID`,`Publication_ID`),
  KEY `FK_subscriptions_publications` (`Publication_ID`),
  CONSTRAINT `FK_subscriptions_publications` FOREIGN KEY (`Publication_ID`) REFERENCES `publications` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_subscriptions_reciepients` FOREIGN KEY (`Reciepeints_ID`) REFERENCES `reciepients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


