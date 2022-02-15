

INSERT INTO `brends` (`ID`, `Name`) VALUES
(1, 'Красота от природы'),
(2, 'Кислородная линия'),
(3, 'Dior'),
(4, 'Афродита');


INSERT INTO `products` (`ID`, `Name`, `Brend_ID`, `Unit`, `Price`) VALUES
(1, 'Помада', 1, 'штука', '1000.00'),
(2, 'Пудра для лица', 3, 'штука', '2500.00'),
(3, 'Духи', 2, 'штука', '1713.00'),
(4, 'Тушь', 4, 'штука', '2500.00');


INSERT INTO `factories` (`ID`, `Name`, `Address`, `Telephone`) VALUES
(1, 'Магнит Косметик', 'Магнитогорск, ул Карла Маркса 89', '78945678945'),
(2, 'Л\'Этуаль', 'Магнитогорск, ул Карла Маркса 145', '78945561232');



INSERT INTO `orders` (`ID`, `Factory_ID`, `Prod_ID`, `Quantity`, `Order_Date`, `Date_Of_Execution`) VALUES
(1, 1, 1, 150, '2022-02-16', '2022-02-26'),
(2, 2, 2, 50, '2022-02-19', '2022-02-27'),
(3, 1, 4, 134, '2022-02-27', '2022-02-28');



INSERT INTO `deliveries` (`ID`, `Order_ID`, `Date_of_Execution`, `Prod_Quantity`) VALUES
(1, 1, '2022-02-26', 150),
(2, 2, '2022-02-27', 48),
(3, 3, '2022-02-02', 134);


