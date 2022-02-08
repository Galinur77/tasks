
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



INSERT INTO `departments` (`ID`, `Name`, `Head_FullName`, `Telephone`, `Sales_per_Day`) VALUES
(1, 'Строительный', 'Борисов Сергей Александрович', '893745687212', '56'),
(2, 'Продуктовый', 'Крюкова Оксана Владимировна', '893547387211', '126');



INSERT INTO `products` (`ID`, `Name`, `Unit`, `Price`) VALUES
(1, 'Цемент', 'кг', '50'),
(2, 'Помидоры', 'кг', '200'),
(3, 'Масло', 'литр', '100');


INSERT INTO `sales` (`Product_ID`, `Date_of_Sale`, `Number`, `Department_ID`) VALUES
( 2, '2022-01-02', 2, 2),
( 1, '2022-01-05', 50, 1),
( 3, '2022-01-08', 5, 1);

