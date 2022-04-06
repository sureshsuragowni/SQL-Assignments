CREATE TABLE Product
(
ProductOrg_ID INTEGER NOT NULL PRIMARY KEY,
ProductName VARCHAR(50),
UnitPrice decimal(12,2),
Package VARCHAR(30)
);

ALTER TABLE Product
ADD SupplierID INTEGER;

INSERT INTO Product(ProductOrg_ID,ProductName,UnitPrice,Package)
VALUES(12,'earphones',750.00,'Headphone with Saavn Account'),
(54,'jiofi',3500.00,'with Prime Account'),
(43,'amazon prime',63000.00,'with Netflix Account'),
(23,'airtelwifi',6500.00,'with All OTT Content');
