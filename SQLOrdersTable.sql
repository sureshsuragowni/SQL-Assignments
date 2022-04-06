
CREATE TABLE Orders
(
Order_ID INTEGER NOT NULL PRIMARY KEY,
OrderDate datetime Not null,
OrderNumber VARCHAR(10) UNIQUE,
CustomerID INt FOREIGN KEY REFERENCES Customer(ID),
TotalAmount decimal(12,2)
);

INSERT INTO Orders(Order_ID,OrderDate,OrderNumber,CustomerID,TotalAmount)
VALUES(11,01/01/2020,'sur283738',1,5000),
(12,05/10/2020,'sur111333',3,20000),
(13,02/02/2021,'bmw111444',3,50000),
(14,03/03/2022,'mss111555',2,10000);
select * from Orders
