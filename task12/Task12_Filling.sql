
INSERT INTO `drivers` (`License_Number`, `FullName`, `Address`, `Telephone`) VALUES
(214, 'Сыченко Аркадий Аркадиевич', 'Челябинск, Тракторская 25', '89345656985'),
(241, 'Андреев Кирилл Сергеевич', 'Санкт-Петербург, ул Пушкина 24', '89356542568'),
(456, 'Семенов Семен Семенович', 'Москва, ул Ленинградская 47', '89563654563');


INSERT INTO `cars` (`Number`, `Model`, `Brand`, `Colour`, `Manufacture_Year`, `Date_of_Registration`, `Driver_ID`) VALUES
('в565ве', 'Mark 2', 'Toyota', 'white', '1995', '2012-01-13', 241),
('е758ох', 'Rx-7', 'Mazda', 'Black', '1988', '2014-02-11', 214),
('у556во', 'Silvia s15', 'Nissan', 'Yellow', '1997', '2017-02-16', 456);



INSERT INTO `violation` (`ID`, `Type`, `Penalty_for_Violation`, `Warning`, `Deprivation_of_Driving`) VALUES
(1, 'Вождение в нетрезвом виде', '0,1-10', 'Да', '12 мес'),
(2, 'Превышение скорости', '0,5-10', 'Да', '5 мес'),
(3, 'Проезд на красный свет светофора', '0,2-10', 'Нет', '1 мес');




INSERT INTO `payment_for_violation` (`ID`, `DateTime`, `Drivers_ID`, `District`, `Is_Paid`, `Deprivation_of_Driving`, `Penalty_for_Violation`, `Inspector_ID`, `Violation_ID`) VALUES
(1, '2022-02-07 15:53:24', 241, 'Вокзальная', 'Да', '0,6', '2500.00', '548965', 2),
(2, '2022-02-07 15:53:24', 456, 'Центральная', 'Нет', '0,3', '1500.00', '549435', 3),
(3, '2022-02-18 18:06:37', 214, 'Заводская', 'Нет', '0,7', '2600.00', '587966', 2);

