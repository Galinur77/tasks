
INSERT INTO `orderers` (`ID`, `Name`, `Address`, `Telephone`) VALUES
(1, 'Центральный парк', 'Минск, ул Центральная 28', '78978945612'),
(2, 'Школа № 8', 'Минск, ул Подьездная 45', '78945798766'),
(3, 'Детский садик \"петушок\"', 'Минск, ул Переходная 12', '45612345645');

INSERT INTO `contracts` (`ID`, `Orderer_ID`, `Date_of_Registrtation`, `Date_of_Execution`) VALUES
(1, 3, '2022-02-02', NULL),
(2, 1, '2022-02-17', '2022-02-28'),
(3, 2, '2022-02-24', '2022-02-26');

INSERT INTO `suppliers` (`ID`, `Name`, `Address`) VALUES
(1, 'Цветники', 'Минск, ул Белорусская 78'),
(2, 'Цветы столицы', 'Минск, ул Зеленая 12'),
(3, 'Цветочные композиции', 'Минск, ул Пешинская 45');


INSERT INTO `flowers` (`ID`, `Name`, `Supplier_ID`, `Price`) VALUES
(1, 'Петуния', 1, '100.00'),
(2, 'Гортензия', 3, '110.00'),
(3, 'Арератум', 2, '114.00');




INSERT INTO `orders` (`ID`, `Contract_ID`, `Flower_ID`, `Quantity`) VALUES
(1, 1, 3, 12),
(2, 2, 1, 23),
(3, 3, 2, 24);



