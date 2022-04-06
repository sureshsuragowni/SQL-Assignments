CREATE TABLE OrderItem
(
OrderItemsOrg_ID INTEGER NOT NULL PRIMARY KEY,
OrderForeign_ID INT FOREIGN KEY REFERENCES Orders(Order_ID ),
ProductForeign_ID INTeger FOREIGN KEY REFERENCES Product(ProductOrg_ID),
UnitPrice decimal(12,2),
Quantity INTEGER CHECK(Quantity>0)  
);
select * from OrderItem
INSERT INTO OrderItem(OrderItemsOrg_ID,OrderForeign_ID,ProductForeign_ID,UnitPrice,Quantity)
VALUES(31,11,21,4999,1),
(32,12,22,7999,2),
(33,13,23,8999,3),
(34,14,24,9999,3);