

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




INSERT INTO `customers` (`Name`, `Telephone`, `ID`, `Address`) VALUES
('Alex', '89374981870', 10, 'Magnitogorsk, K.Marks, 127'),
('Fill', '89673321648', 20, 'Magnitogorsk, K.Marks, 127'),
('Dmitriy', '54849921624', 30, 'Magnitogorsk, K.Marks, 105'),
('Gleb', '45678686786', 40, 'Magnitogorsk, Lenina, 45');



INSERT INTO `products` (`Product_Code`, `Name`, `Price`) VALUES
(1, 'toys', '10.00'),
(2, 'food', '50.00'),
(3, 'clothes', '80.00'),
(4, 'gadgets', '80.00');

INSERT INTO `orders` (`Order_Code`, `Contract_Number`, `Customer_ID`, `Contract_Date`, `Planned_Delivery`, `Product_ID`) VALUES
(1, 1001, 10, '2021-01-12', '2021-02-12', 1),
(2, 1002, 20, '2022-11-15', '2021-04-15', 2),
(3, 1003, 30, '2022-01-12', '2022-04-15', 3),
(4, 1004, 40, '2022-01-09', '2022-04-15', 4);



INSERT INTO `shipments` (`Code`, `Date_of_Shipment`) VALUES
(1, '2021-02-14'),
(2, '2021-04-26'),
(3, '2022-04-20'),
(4, '2022-04-15');



INSERT INTO `shipment_content` (`Shipment_Code`, `Order_Code`, `Number`) VALUES
(1, 2, 6),
(2, 2, 3),
(2, 3, 2),
(3, 1, 2);

