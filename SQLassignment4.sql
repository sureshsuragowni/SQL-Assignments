--Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name

SELECT SUM(UnitPrice) As Total,ProductName 
FROM Product 
WHERE Package ='Exotic liquids' AND UnitPrice >50
GROUP BY ProductName;  


--Display the first word of all the company name

SELECT SUBSTRING(ShipCompany,1,4) as CompanyFirstWord 
from tblShipping;

--Display the employee details whose joined at first

SELECT * 
FROM Employee
GROUP BY DOJ
HAVING COUNT(*)=1;

--Display the employee details whose joined at recently

SELECT * 
FROM Employee
GROUP BY DOJ
HAVING MAX(DOJ);

--Write a query to get most expensive and least expensive Product list (name and unit price).

SELECT ProductName,MAX(UnitPrice) AS MOST_EXPENSIVE,
MIN(UnitPrice) AS LEAST_EXPENSIVE
FROM Product
GROUP BY ProductName, UnitPrice
HAVING count(unitprice)>1;

--Display the list of products that are out of stock

SELECT  * 
FROM Product
WHERE OutOfStock ='yes';

--Display the list of products whose unitinstock is less than unitonorder

SELECT * 
FROM Product
WHERE InStock < UnitsOrder;

--Display list of ProductName and Packages who supply products within those ProductNames

SELECT ProductName,Package
FROM Product
GROUP BY ProductName,Package
HAVING count(ProductName)>=1 ;

--Write  query that determines the customer who has placed the maximum number of orders

SELECT FirstName,LastName 
FROM Customer
where Customer_ID=
                  (SELECT CustomerID 
				   FROM Orders
                   GROUP BY CustomerID
                   HAVING MAX(CustomerID)>0
				   );



--Display the customerid whose name has substring ‘RA’

SELECT Customer_ID
FROM Customer
WHERE FirstName LIKE '%RA'; 
