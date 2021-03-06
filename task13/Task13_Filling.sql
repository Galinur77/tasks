

INSERT INTO `apartments` (`ID`, `Living_Space`, `Number_of_Residents`, `Address`) VALUES
(1, '35.5', 1, 'Магнитогорск, ул Ленина 27'),
(2, '42.2', 1, 'Магнитогорск, ул Ленина 145'),
(3, '55.4', 2, 'Магнитогорск, Советская 32');




INSERT INTO `renters` (`ID`, `FullName`, `Telephone`) VALUES
(1, 'Андреев Алексей Сергеевич', '89352654215'),
(2, 'Боев Геннадий Леонтиевич', '78952565235'),
(3, 'Серченко Никита Геннадиевич', '89356526541');



INSERT INTO `services` (`ID`, `Type`, `Unit`, `Rate`) VALUES
(1, 'Электричество', 'Квт/ч', '45.00'),
(2, 'Водоснабжение', 'Л', '5.55'),
(3, 'Телеканалы', 'Шт', '10.00');


INSERT INTO `apartments_renters` (`Appartment_ID`, `Renter_ID`) VALUES
(1, 2),
(2, 1),
(3, 3);



INSERT INTO `payments_for_services` (`ID`, `Renters_ID`, `Service_ID`, `Spent`, `Pay_before`, `Date_of_Payment`, `Paid_on_Time`) VALUES
(1, 1, 1, 26, '2021-05-06', '2021-05-05', b'0'),
(2, 1, 2, 14, '2021-05-08', '2021-05-02', b'0'),
(3, 2, 1, 26, '2022-05-07', '2021-05-04', b'1'),
(4, 3, 3, 26, '2021-05-02', '2021-05-05', b'1');

