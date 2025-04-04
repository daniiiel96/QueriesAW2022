USE AdventureWorks2022

WITH DepartmentEmployeeCount AS (
    SELECT d.Name AS DepartmentName, 
           STRING_AGG(p.LastName + ', ' + p.FirstName, ' | ') AS Empleados,
           COUNT(e.BusinessEntityID) AS EmployeeCount
    FROM HumanResources.Department AS d
    JOIN HumanResources.EmployeeDepartmentHistory AS edh ON d.DepartmentID = edh.DepartmentID
    JOIN HumanResources.Employee AS e ON edh.BusinessEntityID = e.BusinessEntityID
    JOIN Person.Person AS p ON e.BusinessEntityID = p.BusinessEntityID
    GROUP BY d.Name
)
SELECT DepartmentName AS NombreDepartamento, Empleados
FROM DepartmentEmployeeCount
WHERE EmployeeCount < 4;