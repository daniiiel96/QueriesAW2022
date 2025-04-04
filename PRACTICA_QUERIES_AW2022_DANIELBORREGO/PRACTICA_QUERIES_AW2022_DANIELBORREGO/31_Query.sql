USE AdventureWorks2022

SELECT 
    YEAR(HireDate) AS Year,
    MONTH(HireDate) AS Month,
    Gender,
    COUNT(*) AS GenderCount
INTO #MonthlyGenderCount
FROM HumanResources.Employee
GROUP BY YEAR(HireDate), MONTH(HireDate), Gender;

SELECT Year, Month, Gender, GenderCount
FROM #MonthlyGenderCount
WHERE Gender = 'F'
ORDER BY GenderCount ASC, Year, Month;
