USE AdventureWorks2022

--No s� por qu� sale diferente

SELECT SUM(LineTotal * RejectedQty) AS UnidadesRechazadas
FROM Purchasing.PurchaseOrderDetail;