SELECT * FROM Production.Product;
SELECT * FROM Production.ProductInventory;
GO

--1
SELECT COUNT(Name) AS Products
FROM Production.Product

--2
SELECT COUNT(Name) AS Products
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL;

--3
SELECT ProductSubcategoryID, COUNT(ProductSubcategoryID) AS CountedProducts
FROM Production.Product WHERE ProductSubcategoryID IS NOT NULL 
GROUP BY ProductSubcategoryID;

--4
SELECT COUNT(*) AS NullProducts
FROM Production.Product 
WHERE ProductSubcategoryID IS NULL;

--5
SELECT SUM(Quantity) AS ProductQuantity 
FROM Production.ProductInventory;

--6
SELECT ProductID, SUM(Quantity) AS TheSum
FROM Production.ProductInventory
WHERE LocationID = 40
GROUP BY ProductID
HAVING SUM(Quantity) < 100;

--7
SELECT ProductID, Shelf, SUM(Quantity) AS TheSum
FROM Production.ProductInventory
WHERE LocationID = 40
GROUP BY Shelf, ProductID
HAVING SUM(Quantity) < 100;

--8
SELECT AVG(Quantity) AS AveQuantity
FROM Production.ProductInventory
WHERE LocationID = 10;

--9
SELECT ProductID, Shelf, AVG(Quantity) AS TheAvg
FROM Production.ProductInventory
WHERE LocationID = 10
GROUP BY Shelf, ProductID;

--10
SELECT ProductID, Shelf, AVG(Quantity) AS TheAvg
FROM Production.ProductInventory
WHERE NOT Shelf = 'N/A'
GROUP BY Shelf, ProductID;

--11
SELECT Color, Class, @@ROWCOUNT AS TheCount, AVG(ListPrice) AS AvgPrice
FROM Production.Product
WHERE Color IS NOT NULL AND Class IS NOT NULL
GROUP BY Color, Class;

--Joins
--12
SELECT CountryRegion.CountryRegionCode AS Country, StateProvince.StateProvinceCode AS Province FROM Person.CountryRegion
INNER JOIN Person.StateProvince ON CountryRegion.CountryRegionCode = StateProvince.CountryRegionCode;

--13
SELECT CountryRegion.CountryRegionCode AS Country, StateProvince.StateProvinceCode AS Province FROM Person.CountryRegion 
INNER JOIN Person.StateProvince ON CountryRegion.CountryRegionCode = StateProvince.CountryRegionCode
WHERE CountryRegion.CountryRegionCode IN ('DE', 'CA');
