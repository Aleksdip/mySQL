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

--------------------------------------------------------------------------------------------------
USE shopdb;

SELECT (SELECT FName FROM Employees WHERE EmployeeID =
(SELECT EmployeeID FROM Orders WHERE Orders.OrderID = OrderDetails.OrderID)
		) AS FName,
(SELECT LName FROM Employees WHERE EmployeeID =
(SELECT EmployeeID FROM Orders WHERE Orders.OrderID = OrderDetails.OrderID)
		) AS LName,
(SELECT MName FROM Employees WHERE EmployeeID =
(SELECT EmployeeID FROM Orders WHERE Orders.OrderID = OrderDetails.OrderID)
		) AS MName,   
SUM(TotalPrice)
FROM OrderDetails
GROUP BY Fname, Lname, Mname
HAVING SUM(TotalPrice) > 1000
