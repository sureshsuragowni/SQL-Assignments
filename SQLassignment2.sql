

/*Display the details from Customer table who is from country Germany*/

SELECT * FROM Customer
WHERE Country= 'GERMANY';


CREATE TABLE Employee  
(
EmployeeId INTEGER IDENTITY(1,1) PRIMARY KEY,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(40)
);

INSERT INTO Employee(FirstName,LastName,City,Country,Phone)
VALUES ('suresh','Gowd','Tobago and Trinidad','West Indies','9876543219'),
('Naresh','reddy','Java','Indonesia','9876543218'),
('Kohli','virat','Luknow','India','9876543217'),
('vijay','kumar','WestLand','Germany','9876543216');


--Display the  full name of the employee  

SELECT FirstName,LastName
FROM Employee;

--Display the  customer details  who has Fax number

ALTER TABLE Customer
ADD FaxNumber INTEGER;

SELECT * FROM Customer 
WHERE FaxNumber like '[+]%'or FaxNumber like '%-%';

--display the customer details whose name holds second letter as U

SELECT * FROM Customer
WHERE LastName LIKE '%U'

--select order Details where unit price is greater than 10 and less than 20

SELECT * FROM OrderItems
WHERE UnitPrice > 10 AND UnitPrice < 20;

--Display order details which contains shipping date and arrange the order by date

SELECT OrderDate AS SHIPPING_DATE 
FROM Orders
ORDER BY OrderDate ASC;  -- Ascending order is default here

--Print the orders shipped by ship name 'La corned'abondance' between 2 dates(Choose dates of your choice)

SELECT *
FROM Orders
where OrderDate =''La corned abondance' AND 'OrderDate BETWEEN '2022-04-02' AND '2022-04-05' 
ORDER BY OrderDate ASC;

--Print the products supplied by 'Exotic Liquids'

SELECT * FROM Product;

UPDATE Product SET Package='Exotic Liquids'
WHERE ProductOrg_ID=23;

UPDATE Product SET ProductName='Russian Vodka'
WHERE ProductOrg_ID=23;

SELECT ProductName
FROM Product
WHERE Package ='EXOTIC LIQUIDS';

--print the average quantity ordered for every product
SELECT * FROM OrderItems;

SELECT AVG(Quantity) AS Avg_Quantity
FROM OrderItems
GROUP BY ProductForeign_ID;

--Print all the Shipping company name and the ship names is they are operational


SELECT * FROM tblShipping;

SELECT ShipCompany, ShipName
From tblShipping
Where IsOperational = 'yes';

--11)Print all Employees with Manager Name

ALTER TABLE Employee
ADD ManagerName VARCHAR(30); 

SELECT * FROM Employee;

CREATE TABLE ManagerDetails
(
ManagerName VARCHAR(30)
);


SELECT * FROM Employee;
SELECT * FROM ManagerDetails;

SELECT E.FirstName AS EMPLOYEE_NAME, M.ManagerName AS MANAGER_NAME
FROM Employee E 
JOIN 
ManagerDetails M
ON E.FirstName=M.ManagerName;

--12)Print the bill for a given order id .bill should contain Productname, Categoryname,price after discount
SELECT * FROM Product;
SELECT * FROM OrderItems;

SELECT OI.OrderItemsOrg_ID,P.ProductName,P.Category,P.Discount
FROM Product P 
INNER JOIN 
OrderItems OI
ON P.ProductOrg_ID = OI.ProductForeign_ID;

--13)Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name
SELECT * FROM Product;
SELECT * FROM tblShipping;


SELECT SUM(UnitPrice) As Total_Price_Offered,ShipCompany 
FROM Product 
JOIN
tblShipping 
ON ProductOrg_ID = ID
GROUP BY SupplierID
HAVING Package ='exotic liquids' AND UnitPrice > 50;