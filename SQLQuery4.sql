--1
CREATE VIEW view_product_order_drake AS
SELECT ProductName, SUM(Quantity) AS Quantity
FROM Products INNER JOIN [Order Details]
ON Products.ProductID = [Order Details].ProductID
GROUP BY ProductName;
GO

--2
CREATE PROC sp_product_order_drake
@productId int,
@total_quantities int OUTPUT
AS
BEGIN
SELECT @total_quantities = SUM(Quantity)
FROM [Order Details]
WHERE ProductID = @productId;
END
GO

--3
CREATE PROC sp_product_order_city_drake
@pdroduct_name VARCHAR(20),
@total_quantity int OUTPUT
AS
BEGIN
SELECT TOP 5 ShipCity
FROM Orders 
INNER JOIN [Order Details]
ON Orders.OrderID = [Order Details].OrderID
WHERE ProductID = (SELECT ProductID FROM Products
WHERE ProductName = @pdroduct_name);
SELECT @total_quantity = SUM(Quantity) FROM [Order Details]
END
GO

--4
CREATE TABLE city_your_last_name (
Id int PRIMARY KEY,
City VARCHAR(10)
);

CREATE TABLE people_your_last_name (
Id int PRIMARY KEY,
Name VARCHAR(20),
City int FOREIGN KEY REFERENCES city_your_last_name(Id)
);


INSERT INTO city_your_last_name
VALUES ('Seattle'), ('Green Bay');

INSERT INTO people_your_last_name
VALUES ('Aaron Rodgers', 2),
('Russell Wilson', 1),
('Jody Nelson', 2);

UPDATE city_your_last_name
SET City = 'Madison'
WHERE Id = 1;
GO

CREATE VIEW Packers_your_name AS 
SELECT Name FROM people_your_last_name
WHERE Id = 2;
GO 

DROP TABLE city_your_last_name;
DROP TABLE people_your_last_name;
GO

--5
CREATE PROC sp_birthday_employees_drake
AS 
BEGIN
CREATE TABLE birthday_employees_your_last_name AS
SELECT * 
FROM Employees
WHERE BirthDate = MONTH('02')
END