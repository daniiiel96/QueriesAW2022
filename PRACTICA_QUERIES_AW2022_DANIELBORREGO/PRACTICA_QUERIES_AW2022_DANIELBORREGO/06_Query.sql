USE AdventureWorks2022

--No sé por qué sale diferente

SELECT SUM(LineTotal * RejectedQty) AS UnidadesRechazadas
FROM Purchasing.PurchaseOrderDetail;