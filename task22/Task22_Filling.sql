
INSERT INTO `organizations` (`ID`, `Country_ID`, `City`, `Address`, `Telephone`, `E-Mail`, `WebPage`) VALUES
(1, 440, 'Мюнхен', 'ул Шфитенхаузенск, 32', '79855625621', 'festo@mail.ru', 'festo.com'),
(2, 440, 'Берлин', 'ул Квхитенменз, 54', '45879665423', 'siemens@mail.ru', 'siemens.com');



INSERT INTO `workers` (`ID`, `Salary`, `Prize`, `Month`, `Department_ID`, `FullName`, `Post`) VALUES
(1, '19000.00', '0.00', 5, 7895, 'Связнов Геннадий Ондротьев', 'Главный Разработчик'),
(2, '5000.00', '0.00', 2, 1234, 'Осипов Григорий Васильевич', 'Разработчик'),
(3, '10000.00', '0.00', 5, 1245, 'Леонтьев Василий Сергеевич', 'Поставщик');



INSERT INTO `contracs` (`ID`, `Organization_Name`, `Date_of_Registration`, `Worker_ID`) VALUES
(1, 'siemens', '2022-02-08', 1),
(2, 'festo', '2022-02-10', 2);


INSERT INTO `deliveries` (`Contract_ID`, `Type_of_equipment`, `comment`, `Organization_ID`) VALUES
(1, 'АЦП НМ c AM2', NULL, 2),
(2, 'АЦП НМ c U2', NULL, 1);


