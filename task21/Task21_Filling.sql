

INSERT INTO `cashier` (`ID`, `FullName`) VALUES
(1, 'Иванов Олег Федорович'),
(2, 'Смирнов Сергей Максимович');



INSERT INTO `clients` (`ID`, `FullName`, `Passport_ID`) VALUES
(1, 'Миронов Максим Владимирович', '578936'),
(2, 'Бибов Олег Александрович', '789789'),
(3, 'Мельников Александр Свиридович', '123456');



INSERT INTO `currency` (`ID`, `Sold_Currence_ID`, `Purchased_Currency_ID`, `Name`, `Selling_Rate`, `Purchase_rate`) VALUES
(1, 392, 840, 'Доллар', '0.08', '115.35'),
(2, 643, 978, 'Евро', '0.01', '85.00');



INSERT INTO `deals` (`ID`, `Cashier_ID`, `Currency_ID`, `Sale_Сurrency_ID`, `Purchase_Сurrency_ID`, `Client_ID`, `DateTime_of_Deal`, `Ammount_of_Sold_Currency`, `Ammount_of_Purchased_Currency`) VALUES
(1, 2, 1, 392, 840, 1, '2022-02-09 08:28:09', '1000.00', '86.67'),
(2, 2, 2, 643, 978, 2, '2022-02-09 08:29:04', '1000.00', '11.64');

