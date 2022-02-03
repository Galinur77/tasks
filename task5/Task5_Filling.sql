

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";






INSERT INTO `product` (`ID`, `Name`) VALUES
(1, "women\'s coat"),
(2, "women\'s dress"),
(3, "men\'s sweater"),
(4, "men\'s shirt");



INSERT INTO `product_model` (`ID`, `Name`, `Product_ID`, `Price`) VALUES
(1, 'Приталенное пальто Dolce & Gabbana', 1, '85000.00'),
(2, 'Платье-рубашка Chanel ', 2, '4000.00'),
(3, 'Cвитер мужской Armani ', 3, '3000.00'),
(4, 'Рубашка черная, мужская Kingsman ', 4, '2000.00');



INSERT INTO `reciepents` (`ID`, `Name`) VALUES
(1, 'Andreev Oleg Vladimirovich'),
(2, 'Olegov Petor Vladislavovich');




INSERT INTO `receipts` (`ID`, `recipient_ID`, `Model_ID`, `Date_of_receipt`, `Quantity`) VALUES
(1, 1, 1, '2021-12-02', 50),
(2, 1, 1, '2021-12-02', 50),
(3, 2, 1, '2022-01-03', 20),
(4, 2, 2, '2021-12-02', 15),
(5, 2, 3, '2022-02-12', 20),
(6, 1, 4, '2022-02-13', 12);






