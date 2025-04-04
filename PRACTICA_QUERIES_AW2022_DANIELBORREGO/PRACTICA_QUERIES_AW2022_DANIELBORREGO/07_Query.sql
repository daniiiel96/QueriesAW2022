USE AdventureWorks2022

SELECT AVG(UnitPrice) AS PrecioPromedioUnitario
FROM Purchasing.PurchaseOrderDetail
WHERE YEAR(ModifiedDate) = 2012;
