

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";







INSERT INTO `products` (`Code`, `Name`) VALUES
(1, 'Printer'),
(2, 'Earphone'),
(3, 'Computer'),
(4, 'SdCard');





INSERT INTO `suppliers` (`Code`, `Name`, `Address`, `Owner`,`Telephone`) VALUES
(1, 'Epson', '7701 Legacy Drive Plano ', 'Bill Corner','8935652568'),
(2, 'samsung', 'New York, Bober Street 71', 'Bob Clinton','78965423654'),
(3, 'Apple', 'Sankt-Petersburg, Pushkina 15 ', 'Andrey Ktotovich','96878965789'),
(4, 'dexp', 'Magnitogorsk, K.Marks 54', 'Alexandr Hlebin','79356545265');

INSERT INTO `deliveries` (`Product_ID`, `Supplier_ID`,`Date_of_Recieption`, `Number`, `Price`) VALUES
(1, 1, '2022-01-11', 55, '8901.00'),
(1, 2, '2022-01-14', 20, '8901.00'),
(2, 3, '2022-02-21', 30, '500.00'),
(3, 3, '2022-02-22', 100, '39000.00'),
(4, 1, '2022-02-25', 25, '800.00'),
(2, 4, '2022-02-30', 30, '500.00');



INSERT INTO `sales` (`Code`, `Product_Code`, `Date_of_Sale`, `Number`, `Price`) VALUES
(10, 1, '2021-01-27', 1, '9900.00'),
(20, 1, '2021-01-21', 2, '9900.00'),
(30, 1, '2021-01-21', 1, '9900.00'),
(40, 4, '2021-01-29', 1, '45000.00'),
(50, 3, '2021-01-25', 5, '1000.00');
