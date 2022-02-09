

INSERT INTO `medicines` (`ID`, `Name`, `Manufacturer`, `Price`) VALUES
(1, 'Эспумизан', 'Berlin-Chemie', '100.00'),
(2, 'Арбидол', 'Фармстандарт-Лексредства ОАО', '400.00'),
(3, 'Парацетамол', 'ООО «Розфлекс фарм»', '140.00');


INSERT INTO `pharmacies` (`ID`, `Name`, `Address`, `Telephone`) VALUES
(1, 'Апетка Вита', 'Магнитогорск, ул Карла Маркса 144', '89765645879'),
(2, 'Фармленд', 'Магнитогорск, ул Сталеваров 17 ', '79345689562');

INSERT INTO `requests` (`ID`, `Date_of_Registration`, `Pharmacies_ID`, `Date_of_Execution`) VALUES
(1, '2022-02-16', 1, '2022-02-17'),
(2, '2022-02-17', 2, '2022-02-19'),
(3, '2022-02-19', 2, '2022-02-20');


INSERT INTO `purchases` (`ID`, `Medicine_ID`, `Request_ID`, `Quantity`) VALUES
(1, 2, 1, 4),
(2, 3, 2, 3),
(3, 3, 3, 4);


