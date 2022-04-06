/*query to display the orders placed by customer with phone numbers 0300074321 */

select orders from OrderItem
where phoneNumber=0300074321;

/*fetching all the products which are available under category 'seafood' */

select * from Products
where category='seafood';

/*display the orders placed by customer not in london*/

select *
from OrderItem
where CustomerName NOT In ('London');

/*select all the orders which are placed for the product Chai*/

select orders from orderitem
where productname='chai';

/*write a query to display the name,department nameband rating of any given employee */

select empname,departmentname,rating
from Employee ;
