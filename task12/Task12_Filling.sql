




INSERT INTO `drivers` (`ID`, `License_Number`, `FullName`, `Address`, `Telephone`) VALUES
(1, 1, 'Сыченко Аркадий Аркадиевич', 'Челябинск, Тракторская 25', '89345656985'),
(2, 2, 'Андреев Кирилл Сергеевич', 'Санкт-Петербург, ул Пушкина 24', '89356542568'),
(3, 3, 'Семенов Семен Семенович', 'Москва, ул Ленинградская 47', '89563654563');

INSERT INTO `cars` (`ID`, `Number`, `Model`, `Brand`, `Colour`, `Manufacture_Year`, `Date_of_Registration`, `Driver_ID`) VALUES
(1, 'в565ве', 'Mark 2', 'Toyota', 'white', 1995, '2012-01-13', 1),
(2, 'е758ох', 'Rx-7', 'Mazda', 'Black', 1988, '2014-02-11', 3),
(3, 'у556во', 'Silvia s15', 'Nissan', 'Yellow', 1997, '2017-02-16', 2);

INSERT INTO `violation` (`ID`, `Type`, `Penalty_for_Violation`, `Deprivation_of_Driving`, `Warning`) VALUES
(1, 'Вождение в нетрезвом виде', '0,1-10', 12, 1),
(2, 'Превышение скорости', '0,5-10', 5, 0),
(3, 'Проезд на красный свет светофора', '0,2-10', 1, 1);

INSERT INTO `payment_for_violation` (`ID`, `DateTime`, `Drivers_ID`, `District`, `Deprivation_of_Driving`, `Is_Paid`, `Penalty_for_Violation`, `Inspector_ID`, `Violation_ID`) VALUES
(1, '2022-02-07 15:53:24', 1, 'Вокзальная', 0.6, 1, '2500.00', '548965', 2),
(2, '2022-02-07 15:53:24', 2, 'Центральная', 0.3,1, '1500.00', '549435', 3),
(3, '2022-02-18 18:06:37', 3, 'Заводская', 0.7, 0, '2600.00', '587966', 2);

