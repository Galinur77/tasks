
INSERT INTO `clients` (`Contract_ID`, `FullName`, `Date_of_Purchase`, `Telephone`, `Address`) VALUES
(1, 'Смирнов Олег Владимирович', '2022-02-18', '79863256521', 'Магнитогорск, ул Звездная 75'),
(2, 'Владыжин Жора Жидкович', '2022-02-11', '22797979797', 'Магнитогорск, ул Ленина 12');





INSERT INTO `models` (`ID`, `Name`, `Colour`, `Upholstery`, `Power`, `Door_Number`, `Transmission`) VALUES
(1, 'Шкода Октавия', 'Белый', 'Кожзам ', 100, 4, 'Автомат'),
(2, 'Киа Рио', 'Серый', 'Алькантара', 140, 4, 'Ручная'),
(3, 'Лада Веста', 'Желтый', 'Кожа', 99, 4, 'Автомат');



INSERT INTO `price_list` (`Model_ID`, `Year_of_Release`, `Price`, `Preparation`, `Transportation_Costs`) VALUES
(1, '2014-02-12', '9000.00', '896.00', '700.00'),
(2, '2022-02-02', '15500.00', '1446.00', '700.00'),
(3, '2017-02-16', '17136.00', '800.00', '700.00');


INSERT INTO `suppliers` (`Company_ID`, `Name`, `Telephone`, `E-mail`, `Web_Page`) VALUES
(5566, 'АвтоДар', '78998778965', 'autodar@mail.ru', 'autodar.com'),
(7744, 'goodAuto', '77788899956', 'goodauto@mail.ru', 'goodauto.com');



INSERT INTO `supplier_model` (`Supplier_ID`, `Model_ID`) VALUES
(5566, 1),
(5566, 2),
(5566, 3),
(7744, 2),
(7744, 3);

INSERT INTO `client_model` (`Client_ID`, `Model_ID`) VALUES
(1, 3),
(2, 1),
(2, 2);
