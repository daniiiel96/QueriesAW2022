USE AdventureWorks2022

SELECT COUNT(*) AS Veteranos FROM HumanResources.Employee WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > 17;
