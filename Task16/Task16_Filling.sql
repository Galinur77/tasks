
INSERT INTO `banks` (`ID`, `Name`, `Address`) VALUES
(1234, 'Сбербанк', 'Москва, Ул Пушкина 56'),
(4245, 'АльфаБанк', 'Москва, Ул Ленинская 23'),
(4256, 'ТинькоффБанк', 'Москва, Ул Кирова 245');


INSERT INTO `atms` (`ID`, `Bank_ID`, `Address`) VALUES
(12, 4245, 'Москва, ул Ленинская 77'),
(23, 4256, 'Москва, Вокзальная 25'),
(55, 1234, 'Москва, ул Кирова 44');




INSERT INTO `clients` (`Card_Number`, `FullName`, `Address`, `Bank_ID`) VALUES
(2144, 'Орехов Константин Игоревич', 'Москва, ул Кирова 58 ', 1234),
(2345, 'Мышкин Петр Платонович', 'Москва, ул Кольцевая 52', 4245),
(2456, 'Суханов Демьян Платонович', 'Москва, ул Ленинская 57', 4256);


INSERT INTO `operations` (`ID`, `Amount`, `Commission`) VALUES
(1, '2000.00', 'Нет'),
(2, '150.00', 'Да');


INSERT INTO `operation_atm` (`Atm_ID`, `DateTime`, `Operation_ID`) VALUES
(23, '2022-02-17 06:13:34', 1),
(23, '2022-02-18 10:13:34', 2);

INSERT INTO `operation_client` (`Operation_ID`, `Cart_Number`, `DateTime`) VALUES
(1, 2345, '2022-02-17 06:14:40'),
(2, 2144, '2022-02-18 10:14:40');
