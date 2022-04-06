--------------------------------------------------------------------------------------------------------------------------
--A) To create Index for Customer Table
CREATE NONCLUSTERED INDEX IndexCustomerName
ON Customer(FirstName,Lastname);

--B) To create Indexex for Order Table
CREATE NONCLUSTERED INDEX IndexOrderCustomerID --Foreign Key can be duplicate
ON Orders(CustomerID);

CREATE NONCLUSTERED INDEX IndexOrderOrderDate 
ON Orders(OrderDate);

--c) To create Indexex for Product Table
CREATE NONCLUSTERED INDEX IndexProductSupplierID 
ON Product(SupplierID);

CREATE NONCLUSTERED INDEX IndexProductName 
ON Product(ProductName);

--D) To create Indexex for OrderItems Table
CREATE NONCLUSTERED INDEX IndexOrderItemsOrderId 
ON OrderItems(OrderForeign_ID);

CREATE NONCLUSTERED INDEX IndexOrderItemsProductID
ON OrderItems(ProductForeign_ID);
-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------
--1)Design the Above database with following table by Applying PK and FK
--Completed This Part.

--2)Insert records in all tables
--Completed This Part.

--3)In Customer table FirstName attribute should not access null value
--Completed This Part.

--4)In Orders table OrderDate should not access null value.
--Completed This Part.

--5)display all Customer details.

SELECT C.Customer_ID,C.FirstName,C.LastName,C.City,C.Country,C.Phone
FROM Customer C;

--6) Display all tables present in the database.
SELECT * FROM Customer;
SELECT * FROM Orders;
SELECT * FROM Product;
SELECT * FROM OrderItems;

--7)Write a query to Display country whose name starts with A or I.

INSERT INTO Customer(Customer_ID,FirstName,LastName,City,Country,Phone) -- Inserting a new value
VALUES(6,'Amit','Shah','Noida','Australia','8123988103');

SELECT Country
FROM Customer
WHERE FirstName LIKE 'A%' OR 'I%';

--8)Write a query to display name of customer whose third character is i.

SELECT FirstName,LastName,Country
FROM Customer
WHERE FirstName LIKE '__i%';