USE AdventureWorks2022

SELECT TOP 1 p.LastName AS Empleado, e.BirthDate AS Nacimiento
FROM Person.Person AS p
JOIN HumanResources.Employee as e ON p.BusinessEntityID = e.BusinessEntityID
ORDER BY e.BirthDate ASC;
