
CREATE DATABASE IF NOT EXISTS `avialines`;
USE `avialines`;

CREATE TABLE IF NOT EXISTS `routes` (
  `ID` int(11) NOT NULL,
  `Departure_Airport` text NOT NULL,
  `Airport_of_Arrival` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Duration` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `ship_commanders` (
  `ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  `Experience` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `airplanes` (
  `ID` int(11) NOT NULL,
  `Model` text NOT NULL,
  `Date_of_Manufacture` date NOT NULL,
  `Term` int(11) NOT NULL,
  `Is_Ready` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





CREATE TABLE IF NOT EXISTS `flights` (
  `ID` int(11) NOT NULL,
  `DateTime` datetime NOT NULL,
  `Cancelled` bit(1) NOT NULL DEFAULT b'0',
  `Route_ID` int(11) NOT NULL,
  `Airplane_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_flights_routes` (`Route_ID`),
  KEY `FK_flights_airplanes` (`Airplane_ID`),
  CONSTRAINT `FK_flights_airplanes` FOREIGN KEY (`Airplane_ID`) REFERENCES `airplanes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_flights_routes` FOREIGN KEY (`Route_ID`) REFERENCES `routes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `passengers` (
  `Passport_ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Telephone` text NOT NULL,
  PRIMARY KEY (`Passport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `passenger_flight` (
  `Passenger_ID` int(11) NOT NULL,
  `Flight_ID` int(11) NOT NULL,
  PRIMARY KEY (`Passenger_ID`,`Flight_ID`),
  KEY `FK__flights` (`Flight_ID`),
  CONSTRAINT `FK__flights` FOREIGN KEY (`Flight_ID`) REFERENCES `flights` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__passengers` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passport_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `airplane_commander` (
  `Airplane_ID` int(11) NOT NULL,
  `Commander_ID` int(11) NOT NULL,
  PRIMARY KEY (`Airplane_ID`,`Commander_ID`),
  KEY `FK_airplane_commander_ship_commanders` (`Commander_ID`),
  CONSTRAINT `FK_airplane_commander_airplanes` FOREIGN KEY (`Airplane_ID`) REFERENCES `airplanes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_airplane_commander_ship_commanders` FOREIGN KEY (`Commander_ID`) REFERENCES `ship_commanders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

