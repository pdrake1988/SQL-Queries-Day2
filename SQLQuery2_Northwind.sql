SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM [Order Details];
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Suppliers;
--14
SELECT od.ProductID AS ID, o.OrderDate
FROM Orders AS o INNER JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
WHERE o.ShippedDate IS NOT NULL AND
DATEDIFF(year, OrderDate, GETDATE()) < 25;

--15
SELECT TOP 5 od.Quantity, o.ShipPostalCode
FROM Orders AS o
INNER JOIN [Order Details] AS od
ON o.OrderID = od.OrderID;

--16
SELECT TOP 5 od.Quantity, o.ShipPostalCode
FROM Orders AS o
INNER JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
WHERE o.ShippedDate IS NOT NULL AND
DATEDIFF(YEAR, o.OrderDate, GETDATE()) < 25;

--17
SELECT c.City, COUNT(c.CustomerID) AS CustomerNumber 
FROM Customers AS c GROUP BY City;

--18
SELECT c.City, COUNT(c.CustomerID) AS CustomerNumber 
FROM Customers AS c GROUP BY City HAVING COUNT(c.CustomerID) > 2;

--19
SELECT c.ContactName, o.OrderDate
FROM Customers AS c 
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.OrderDate > '1998-01-01';

--20

--21
SELECT c.ContactName, COUNT(od.Quantity) AS AmoundSold
FROM Customers AS c, Orders AS o INNER JOIN [Order Details] AS od
ON o.OrderID = od.OrderID GROUP BY c.ContactName, od.OrderID;

--22
SELECT o.CustomerID, COUNT(od.Quantity) AS AmountSold
FROM Orders AS o INNER JOIN [Order Details] AS od
ON o.OrderID = od.Quantity GROUP BY o.CustomerID, od.OrderID
HAVING COUNT(od.Quantity) > 100;

--23

--24
SELECT p.ProductName, o.OrderDate
FROM Orders AS o
INNER JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN Products AS p
ON od.ProductID = p.ProductID
GROUP BY o.OrderDate, p.ProductName;

--25
--SELECT FirstName + ' ' + LastName AS FullName
--, Title FROM Employees GROUP BY Title, FirstName, LastName;

--26
--SELECT FirstName + ' ' + LastName AS FullName, ReportsTo
--FROM Employees WHERE ReportsTo > 2;

--27
