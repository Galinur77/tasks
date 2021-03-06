
CREATE DATABASE IF NOT EXISTS `polyclinic`;
USE `polyclinic`;


CREATE TABLE IF NOT EXISTS `coupons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Time` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

.
CREATE TABLE IF NOT EXISTS `purposes` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





CREATE TABLE IF NOT EXISTS `diagnoses` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




CREATE TABLE IF NOT EXISTS `doctors` (
  `ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Category` int(11) NOT NULL,
  `Specialization` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `patients` (
  `MedCard_ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Address` text NOT NULL,
  `Gender` text NOT NULL,
  `Discount` decimal(2,2) NOT NULL,
  PRIMARY KEY (`MedCard_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `patient_receptions` (
  `Date_of_Vsit` date NOT NULL,
  `Coupon_ID` int(11) NOT NULL,
  `Purpose_ID` int(11) NOT NULL DEFAULT 0,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Doctor_ID` int(11) NOT NULL,
  `Patient_ID` int(11) NOT NULL,
  `Diagnosis_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Coupon_ID`,`Date_of_Vsit`) USING BTREE,
  KEY `FK_patient_receptions_doctors` (`Doctor_ID`),
  KEY `FK_patient_receptions_patients` (`Patient_ID`),
  KEY `FK_patient_receptions_diagnoses` (`Diagnosis_ID`),
  KEY `FK_patient_receptions_purposes` (`Purpose_ID`),
  CONSTRAINT `FK_patient_receptions_coupons` FOREIGN KEY (`Coupon_ID`) REFERENCES `coupons` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_patient_receptions_diagnoses` FOREIGN KEY (`Diagnosis_ID`) REFERENCES `diagnoses` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_patient_receptions_doctors` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_patient_receptions_patients` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`MedCard_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_patient_receptions_purposes` FOREIGN KEY (`Purpose_ID`) REFERENCES `purposes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;





CREATE TABLE IF NOT EXISTS `coupon_doctor` (
  `Doctor_ID` int(11) NOT NULL,
  `Coupon_ID` int(11) NOT NULL,
  PRIMARY KEY (`Doctor_ID`,`Coupon_ID`),
  KEY `FK_coupon_doctor_coupons` (`Coupon_ID`),
  CONSTRAINT `FK_coupon_doctor_coupons` FOREIGN KEY (`Coupon_ID`) REFERENCES `coupons` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_coupon_doctor_doctors` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
