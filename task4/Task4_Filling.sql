

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `categories` (`Category`, `One_Hour_Rate`) VALUES
(1, '250.00'),
(2, '500.00'),
(3, '1000.00');

INSERT INTO `enterprises` (`ID`, `Name`) VALUES
(1, 'завод производства автомобилей'),
(2, 'завод автоматизированного производства напитков'),
(3, 'завод по перерабоке мусора');


INSERT INTO `workers` (`Code`, `Full_Name`, `Passport_ID`, `Date_of_Birth`, `Telephone`, `Category_ID`) VALUES
(1, 'Korgov Oleg Dmitrieyvich', 536214, '1958-03-25', '+79966957856', 1),
(2, 'Hlebuchkin Maskim Korneevich', 535214, '1975-05-14', '+79966957124', 2),
(3, 'Kiselev Alexey Vladimirovich', 545123, '1985-01-17', '+79966955463', 3);


INSERT INTO `works` (`ID`, `Enterprise_ID`, `Worker_Code`, `Date_of_Work`, `Number_of_Working_Hours`) VALUES
(1, 2, 3, '2021-12-03', 6),
(2, 2, 1, '2021-12-03', 3),
(3, 3, 2, '2022-01-03', 6),
(4, 1, 3, '2021-12-03', 7);

