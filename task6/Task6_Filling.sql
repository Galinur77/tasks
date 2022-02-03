
INSERT INTO `countries` (`ID`, `Name`, `Price_of_Visa`) VALUES
(1, 'Armenia', 10000.00),
(2, 'Japan', 15000.00),
(3, 'USA', 20000.00);


INSERT INTO `route` (`ID`, `Name`, Country_ID) VALUES
(1, 'by plane',3),
(2, 'by train',2),
(3, 'by boat',1);


INSERT INTO `sales` (`ID`, `Goal_of_Travel`, `Number_of_Sales`, `Date_of_Sale`, `Route_ID`) VALUES
(1, 'have a rest', 2, '2022-01-01', 1),
(2, 'for work', 1, '2021-12-31', 2),
(3, 'visiting relatives', 1, '2022-02-01', 3);

