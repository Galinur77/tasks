
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



INSERT INTO `clients` (`Сode`, `Full_name`, `Passport_ID`, `Address`, `Telephone_Тumber`) VALUES
(1, 'Petrov Oleg Dmitriyvech ', 588588, 'Magnitogorsk, Lenina, 105\r\n', '89374951522'),
(2, 'Andreev Andrey Andreevich ', 587652, 'Magnitogorsk, Lenina, 134\r\n', '89374654654');







INSERT INTO `deposits` (`code`, `name`, `storage period`, `rate`) VALUES
(1, 'Накопительный(в Российских рублях)', 13, 0.10),
(2, 'Капитал(в долларах США)', 18, 0.07),
(3, 'Победа(в Беллоруских рублях)', 13, 0.02),
(4, 'к отпуску(в беллоруских рублях)', 12, 0.01),
(5, 'Накопительный(в Беллоруских рублях)', 36, 0.18);



INSERT INTO `customer_bank_accounts` (`Account_Number`, `Client_Code`, `Opening Date`, `Closing_Date`, `Investments_Ammount`, `DepositID`) VALUES
(22336, 2, '2019-06-05', '2021-05-01', '10000.00', 1),
(22556, 2, '2019-01-05', '2021-05-01', '18562.00', 2),
(866621, 1, '2020-11-01', '2021-05-01', '1654135.00', 3);