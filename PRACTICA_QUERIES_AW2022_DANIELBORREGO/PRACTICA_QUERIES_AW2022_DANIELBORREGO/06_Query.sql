USE AdventureWorks2022

SELECT SUM(LineTotal * RejectedQty) AS UnidadesRechazadas
FROM Purchasing.PurchaseOrderDetail;
