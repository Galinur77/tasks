
CREATE DATABASE IF NOT EXISTS `graduation project`;
USE `graduation project`;


CREATE TABLE IF NOT EXISTS `students` (
  `ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Faculty` text NOT NULL,
  `Group` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `teachers` (
  `ID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Degree` text NOT NULL,
  `Rank` text NOT NULL,
  `Department` text NOT NULL,
  `Telephone` text NOT NULL,
  `E-Mail` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `grades` (
  `Student_ID` int(11) NOT NULL,
  `Grade_for_state_exam` int(11) NOT NULL,
  `Frade_for_Project` int(11) NOT NULL,
  PRIMARY KEY (`Student_ID`),
  CONSTRAINT `FK_grades_students` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `topics` (
  `ID` int(11) NOT NULL,
  `TeacherID` int(11) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_topics_teachers` (`TeacherID`),
  CONSTRAINT `FK_topics_teachers` FOREIGN KEY (`TeacherID`) REFERENCES `teachers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `topics_students` (
  `Student_ID` int(11) NOT NULL,
  `Topic_ID` int(11) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Topic_ID`),
  UNIQUE KEY `Student_ID` (`Student_ID`),
  UNIQUE KEY `Topic_ID` (`Topic_ID`),
  CONSTRAINT `FK__students` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__topics` FOREIGN KEY (`Topic_ID`) REFERENCES `topics` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


