
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- База данных: `polyclinic`
--



INSERT INTO `diagnoses` (`ID`, `Name`) VALUES
(1, 'Остеохондроз'),
(2, 'Перелом'),
(3, 'Кариес'),
(4, 'Мигрень');



INSERT INTO `doctors` (`ID`, `FullName`, `Category`, `Specialization`) VALUES
(1, 'Соловьёв Емельян Максимович', 1, 'Хирург'),
(2, 'Григорьев Тарас Григорьевич', 2, 'Зубной'),
(3, 'Богданов Вячеслав Наумович', 3, 'Ортопед');



INSERT INTO `patients` (`MedCard_ID`, `FullName`, `Date_of_Birth`, `Address`, `Gender`, `Discount`) VALUES
(236512, 'Селиверстов Любомир Тихонович', '1998-01-23', 'Магнитогорск, ул К.Маркса 156', 'M', '0.00'),
(556262, 'Федосеева Дана Витальевна', '1984-02-12', 'Магнитогорск, ул Ленина, 15', 'Ж', '0.15'),
(665236, 'Никитин Герман Аркадьевич', '2000-02-12', 'Магнитогорск, ул К.Маркса 115', 'M', '0.10');

INSERT INTO `purposes` (`ID`, `Name`) VALUES
(1, 'Консультация'),
(2, 'Обследование'),
(3, 'Лечение');


INSERT INTO `patient_receptions` (`Coupon_number`, `Purpose_ID`, `Price`, `Date_of_Vsit`, `Doctor_ID`, `Patient_ID`, `Diagnosis_ID`) VALUES
(1122, 2, '200.00', '2022-06-01', 2, 236512, 3),
(2266, 1, '300.00', '2022-05-05', 1, 665236, 2),
(4498, 3, '150.00', '2022-06-04', 3, 556262, 1);




