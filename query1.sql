SELECT p1.ProductID, 
       p1.UnitPrice, 
       p1.OrderQty, 
       p3.TotalDue, 
       CASE 
           WHEN p3.Country IN ('Southwest', 'Central', 'Northeast', 'Northwest', 'southeast') THEN 'United States'
           ELSE p3.Country
       END AS Country
FROM [Sales].[SalesOrderDetail] AS p1
INNER JOIN [Production].[Product] AS p2
    ON p1.ProductID = p2.ProductID
INNER JOIN (
    SELECT t1.SalesOrderID, t1.Freight, t1.TaxAmt, t1.SubTotal, t1.TotalDue, t1.OrderDate, t2.Name AS Country
    FROM [Sales].[SalesOrderHeader] AS t1
    INNER JOIN [Sales].[SalesTerritory] AS t2 
        ON t1.TerritoryID = t2.TerritoryID
) AS p3
ON p1.SalesOrderID = p3.SalesOrderID
ORDER BY p3.TotalDue DESC;
