use shopdb;
select Customers.FName, Customers.LName, Employees.FName, Employees.LName, SUM(TotalPrice)
from Employees
 join Orders
on Employees.EmployeeID = Orders.EmployeeID
 join Customers
on Orders.CustomerNo = Customers.CustomerNo
 join OrderDetails 
on Orders.OrderID =  OrderDetails.OrderID
group by
Employees.FName,
Employees.LName,
Customers.FName,
Customers.LName
having SUM(TotalPrice) > 1000;