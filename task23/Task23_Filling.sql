
INSERT INTO `topics` (`ID`, `Name`) VALUES
(1, 'Художественная Литература'),
(2, 'Познавательное'),
(3, 'Стихи');

INSERT INTO `readers` (`ID`, `FullName`, `Date_of_Birth`, `Telephone`) VALUES
(1, 'Зеленов Павел Геннадиевич', '2005-09-09', '79685626578'),
(2, 'Огнев Александр Свиридинович', '2002-02-16', '98612902938'),
(3, 'Ремонтов Рамиль Игнатьевич', '2001-02-08', '79856546231');

INSERT INTO `books` (`ID`, `Name`, `First_Author`, `Publisher`, `Place_of_Publication`, `Year_of_Publication`, `Number_of_Pages`, `Price`) VALUES
(1, 'Энциклопедия о динозаврах', 'Мтиюшкин Павел', 'ЛитРес', 'Москва, ул Нижнебортовая 12', 2015, 215, '800.00'),
(2, 'Гарри Поттер', 'Джоан Роулинг', 'Сорока', 'Москва, ул Связнова 45', 2004, 558, '1500.00');


INSERT INTO ` instances` (`ID`, `Book_ID`, `Date_of_Send`, `Date_of_Receipt`, `Quantity`, `Inventory_Number`) VALUES
(1, 2, '2022-02-09', '2022-02-11', 2, 456),
(2, 1, '2022-02-09', '2022-02-08', 4, 123);




INSERT INTO `readers_books` (`Books_ID`, `Readers_ID`) VALUES
(2, 1),
(2, 2),
(1, 3),
(2, 3);




INSERT INTO `topic_book` (`Book_ID`, `Topic_ID`) VALUES
(1, 2),
(2, 1),
(2, 2);