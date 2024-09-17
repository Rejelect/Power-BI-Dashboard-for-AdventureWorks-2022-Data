SELECT s.Name AS shop, a.City, cr.Name AS Country
FROM Sales.Store AS s
INNER JOIN Sales.Customer AS c ON s.BusinessEntityID = c.CustomerID
INNER JOIN Person.BusinessEntityAddress AS bea ON s.BusinessEntityID = bea.BusinessEntityID
INNER JOIN Person.Address AS a ON bea.AddressID = a.AddressID
INNER JOIN Person.StateProvince AS sp ON a.StateProvinceID = sp.StateProvinceID
INNER JOIN Person.CountryRegion AS cr ON sp.CountryRegionCode = cr.CountryRegionCode
INNER JOIN [Sales].[SalesTerritory] AS st ON st.TerritoryID = c.TerritoryID;
