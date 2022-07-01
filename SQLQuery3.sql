SELECT * FROM Employees;
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM [Order Details];
--1
SELECT c.City AS CustomerCity, e.City AS EmployeeCity
FROM Customers AS c, Employees AS e 
WHERE EXISTS (SELECT City FROM Customers)
AND EXISTS (SELECT City FROM Employees);

--2
--a
SELECT City FROM Customers
WHERE City NOT IN 
(SELECT City FROM Employees);

--b
SELECT Customers.City FROM Customers, Employees
WHERE Customers.City NOT IN (Employees.City);
--3
SELECT ProductId, SUM(quantity) AS QuantityOrdered
FROM [Order details] GROUP BY ProductId;

--4
SELECT ShipCity, SUM(Quantity) AS QuantityOrdered
FROM Orders, [Order Details] GROUP BY ShipCity;

--5

--6
SELECT ShipCity FROM Orders
WHERE OrderID IN (SELECT OrderID
FROM [Order Details] GROUP BY OrderID
HAVING COUNT(ProductID) > 2);

--7
 SELECT ContactName 
 FROM Customers, Orders
 WHERE City <> ShipCity 
 GROUP BY ContactName;


 --8
 SELECT TOP 5 od.ProductID, AVG(od.UnitPrice) AS UnitPrice, o.ShipCity 
 FROM [Order Details] AS od, Orders AS o
 GROUP BY od.ProductID, o.ShipCity;

 --9
 --a
 SELECT City FROM Employees
 WHERE City NOT IN (
 SELECT City FROM Customers); 

 --b
 SELECT Employees.City FROM Employees, Customers
 WHERE Employees.City <> Customers.City
 GROUP BY Employees.City;

 --10