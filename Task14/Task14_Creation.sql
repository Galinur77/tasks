



CREATE DATABASE IF NOT EXISTS `catering`;
USE `catering`;


CREATE TABLE IF NOT EXISTS `recipes` (
  `ID` int(11) NOT NULL,
  `Cooking_Techology` text NOT NULL,
  `Cooking_Time` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text NOT NULL,
  `callory` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `dishes` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Type` text NOT NULL,
  `Weight` int(11) NOT NULL,
  `Pictrure` varbinary(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_dishes_recipes` FOREIGN KEY (`ID`) REFERENCES `recipes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE IF NOT EXISTS `cooking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `Date_of_Cooking` date NOT NULL,
  `Dish_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_cooking_dishes` (`Dish_ID`),
  CONSTRAINT `FK_cooking_dishes` FOREIGN KEY (`Dish_ID`) REFERENCES `dishes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;








CREATE TABLE IF NOT EXISTS `product_dish` (
  `Product_ID` int(11) NOT NULL,
  `Dish_ID` int(11) NOT NULL,
  PRIMARY KEY (`Product_ID`,`Dish_ID`) USING BTREE,
  KEY `FK_product_dish_dishes` (`Dish_ID`),
  CONSTRAINT `FK_product_dish_dishes` FOREIGN KEY (`Dish_ID`) REFERENCES `dishes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_product_dish_products` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;






