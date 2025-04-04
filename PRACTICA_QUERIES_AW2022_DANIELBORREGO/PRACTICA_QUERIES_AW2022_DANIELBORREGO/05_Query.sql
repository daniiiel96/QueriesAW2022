USE AdventureWorks2022

SELECT TOP 2 p.LastName AS Apellido, e.BusinessEntityID AS ID, eph.Rate AS Salario
FROM Person.Person AS p
JOIN HumanResources.Employee AS e ON p.BusinessEntityID = e.BusinessEntityID
JOIN HumanResources.EmployeePayHistory AS eph ON e.BusinessEntityID = eph.BusinessEntityID
ORDER BY eph.Rate DESC;
