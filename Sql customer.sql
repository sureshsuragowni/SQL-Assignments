create database Sqlassignment;
use Sqlassignment;
CREATE TABLE Customer (
    ID int,
    FirstName nvarchar(40),
	LastName nvarchar(40),
    City nvarchar(40),
    Country varchar(40),
	Phone nvarchar(20),
	primary key (ID)
);
Select * from Customer

insert into Customer
(ID,
FirstName,
LastName,
City,
Country,
Phone
)
Values
(1,'suresh','gowd','gooty','india',9573518934),
(2,'naresh','kumar','anantapur','india',9573519834),
(3,'suprith','raina','tirupati','england',9573778934),
(4,'ramesh','yadav','kurnool','india',9579918934);

create Index CustomerName
on Customer(FirstName,LastName);

 SELECT * FROM Customer WHERE Country LIKE 'i%';
 select * from Customer