
INSERT INTO `diagnoses` (`ID`, `Name`) VALUES
(1, 'Остеохондроз'),
(2, 'Перелом'),
(3, 'Кариес'),
(4, 'Мигрень');

INSERT INTO `purposes` (`ID`, `Name`) VALUES
(1, 'Консультация'),
(2, 'Обследование'),
(3, 'Лечение');

INSERT INTO `coupons` (`ID`, `Time`) VALUES
(1, '8:00-09:00'),
(2, '9:00-12:00'),
(3, '12:00-15:00'),
(4, '15:00-17:00'),
(5, '17:00-18:00');








INSERT INTO `doctors` (`ID`, `FullName`, `Category`, `Specialization`) VALUES
(1, 'Соловьёв Емельян Максимович', 1, 'Хирург'),
(2, 'Григорьев Тарас Григорьевич', 2, 'Зубной'),
(3, 'Богданов Вячеслав Наумович', 3, 'Ортопед');



INSERT INTO `patients` (`MedCard_ID`, `FullName`, `Date_of_Birth`, `Address`, `Gender`, `Discount`) VALUES
(236512, 'Селиверстов Любомир Тихонович', '1998-01-23', 'Магнитогорск, ул К.Маркса 156', 'M', '0.00'),
(556262, 'Федосеева Дана Витальевна', '1984-02-12', 'Магнитогорск, ул Ленина, 15', 'Ж', '0.15'),
(665236, 'Никитин Герман Аркадьевич', '2000-02-12', 'Магнитогорск, ул К.Маркса 115', 'M', '0.10');


INSERT INTO `patient_receptions` (`Date_of_Vsit`, `Coupon_ID`, `Purpose_ID`, `Price`, `Doctor_ID`, `Patient_ID`, `Diagnosis_ID`) VALUES
('2022-06-01', 1, 2, '200.00', 2, 236512, 3),
('2022-05-05', 2, 1, '300.00', 1, 665236, 2),
('2022-06-04', 3, 3, '150.00', 3, 556262, 1);






INSERT INTO `coupon_doctor` (`Doctor_ID`, `Coupon_ID`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3);