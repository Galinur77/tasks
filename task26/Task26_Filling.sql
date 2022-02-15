INSERT INTO `orderers` (`ID`, `Name`, `Address`, `Telephone`, `Refer_To`) VALUES
(1, 'Школа №5', 'Магнитогорск, ул Советская 4', '798565315478', 'Бусыгин Павел Андреевич'),
(2, 'Центральная библиотека', 'Магнитогорск, ул Карла Маркса 129 ', '979849546256', 'Линова Ольга Александровна');



INSERT INTO `orders` (`ID`, `Date_Of_Reciept`, `Date_Of_Execution`, `Quantity`, `Orderer_ID`) VALUES
(1, '2022-02-09', '2022-02-19', 24, 1),
(2, '2022-02-10', '2022-02-26', 12, 2);

INSERT INTO `books` (`ID`, `Name`, `Edition`, `Print_Date`, `Cost_Price`, `Sale_Price`, `Honorarium`, `Order_ID`) VALUES
(1, 'Энциклопедия \"учение о жизни\"', 455, '2020-02-10', '463.25', '899.00', '10000.00', 2),
(2, 'Учебник по Биологии 9 класс', 45, '2013-02-07', '200.00', '250.00', '700000.00', 1);



INSERT INTO `contracts` (`ID`, `Date_of_Registration`, `Term_of_Contract`, `Is_Terminated`, `Termination_Date`) VALUES
(1, '2017-02-16', 2, b'1', '2019-02-16'),
(2, '2022-02-09', 1, b'0', NULL);







INSERT INTO `writers` (`Passport_ID`, `Surname`, `Name`, `Patronymic`, `Address`, `Telephone`) VALUES
(456123, 'Гринков', 'Александр', 'Дмитриевич', 'Москва, ул Железнодорожная 12', '78945612323'),
(568987, 'Руднов', 'Олег', 'Борисович', 'Москва, ул Петрозаводская 47', '78978978978');



INSERT INTO `writer_book` (`Writer_ID`, `Book_ID`) VALUES
(456123, 2),
(568987, 1);


INSERT INTO `writer_contract` (`Writer_ID`, `Contract_ID`) VALUES
(456123, 1),
(568987, 2);
