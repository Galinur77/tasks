
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



INSERT INTO `publications` (`ID`, `Type`, `Name`, `Price`) VALUES
(1, 'magazine', 'EuroAuto', '800.00'),
(2, 'newspaper', 'YellowPressa', '100.00'),
(3, 'newspaper', 'GoodNews', '120.00');



INSERT INTO `reciepients` (`ID`, `FullName`, `Address`) VALUES
(1, 'Dombrev Deginan Andyevichev', 'Magnitogors, K.Marks 156'),
(2, 'Helicpterov Vertolei Andropovich', 'Magnitogors, Lenina 56'),
(3, 'Rozetkin Serofim Chainikovich ', 'Magnitogors, K.Marks 110');



INSERT INTO `subscriptions` (`Reciepeints_ID`, `Publication_ID`, `subscription_period`, `Month_Start`, `Year_Start`) VALUES
(1, 2, '2', '3', '2022'),
(2, 1, '6', '1', '2022'),
(3, 3, '12', '12', '2021');

