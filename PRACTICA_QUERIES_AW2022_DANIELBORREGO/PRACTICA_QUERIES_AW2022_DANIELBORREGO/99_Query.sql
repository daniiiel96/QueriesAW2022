USE AdventureWorks2022

SELECT TOP 1 FirstName, COUNT(*) AS Frequency
FROM Person.Person
WHERE LEN(FirstName) = 10
GROUP BY FirstName
ORDER BY Frequency DESC;
