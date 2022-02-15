
INSERT INTO `airplanes` (`ID`, `Model`, `Date_of_Manufacture`, `Term`, `Is_Ready`) VALUES
(4562, 'Ту-134', '2002-02-07', 26, b'1'),
(7895, 'Боинг-720', '2019-02-10', 5, b'0');


INSERT INTO `ship_commanders` (`ID`, `FullName`, `Address`, `Telephone`, `Experience`) VALUES
(45687, 'Пульпуров Олег Зиновьевич', 'Минск, ул Кортошечная 26', '896503546235', 7),
(78945, 'Шиневельев Григорий Александрович', 'Минск, ул Округлая 14', '456789512342', 2);

INSERT INTO `routes` (`ID`, `Departure_Airport`, `Airport_of_Arrival`, `Price`, `Duration`) VALUES
(1, 'Национальный аэропорт Минска', 'Франкфурт-на-Майне', '5000.00', 6),
(2, 'Национальный аэропорт Минска', 'Международный аэропорт Риги', '2500.00', 4);



INSERT INTO `flights` (`ID`, `DateTime`, `Cancelled`, `Route_ID`, `Airplane_ID`) VALUES
(1, '2022-02-11 10:57:46', b'1', 1, 7895),
(2, '2022-02-18 10:57:46', b'0', 2, 4562);


INSERT INTO `passengers` (`Passport_ID`, `FullName`, `Address`, `Telephone`) VALUES
(123456, 'Перегонов Алексей Владимирович', 'Рига, ул Пелепузенская 124', '4532165496874'),
(456556, 'Шевчук Никита Алексеевич', 'Москва, ул Звездная 78', '8978654352465');


INSERT INTO `passenger_flight` (`Passenger_ID`, `Flight_ID`) VALUES
(123456, 1),
(123456, 2),
(456556, 1),
(456556, 2);




INSERT INTO `airplane_commander` (`Airplane_ID`, `Commander_ID`) VALUES
(4562, 78945),
(7895, 45687);