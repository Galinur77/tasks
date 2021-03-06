INSERT INTO `publishers` (`ID`, `Name`, `City`) VALUES
(1, 'Чистое Небо', 'Нижний Новгород'),
(2, 'Сорока', 'Москва'),
(3, 'Клён', 'Санкт-Петербург');



INSERT INTO `readers` (`ID`, `FullName`, `Address`, `Telephone`) VALUES
(1, 'Павлов Дмитрий Сергеевич', 'Магнитогорск, Ленина 26', '89632154879'),
(2, 'Жыдин Геннадий Андреевич', 'Магнитогорск, Карла Маркса 125', '89563245122'),
(3, 'Игнатьева Алиса Сергеевна', 'Магнитогорск, Ленина 15', '79966929665');



INSERT INTO `books` (`ID`, `Year_of_Publication`, `Price`, `Quantity`, `Name`, `First_Author`, `Publisher_ID`) VALUES
(3265, 2008, '144.20', 14, 'Страшилки', 'Максим Трудный', 3),
(5445, 1996, '75.56', 26, 'Энциклопедия', 'Артур Григорьев', 1),
(6612, 2007, '98.99', 56, 'Сказки А.С.Пушкина', 'Олег Чечиков', 2);



INSERT INTO `issuances` (`ID`, `Readers_ID`, `Book_ID`, `Date_of_Issue`, `Signature`) VALUES
(1, 1, 3265, '2021-12-03', 'Дмитрий'),
(2, 2, 3265, '2022-02-01', 'Гена'),
(3, 3, 5445, '2022-02-04', 'Алиса');


