-- Which sales agent made the most in sales in 2009?
-- HINT: Use the MAX function on a subquery.

SELECT 
    top.EmployeeFullName,
    MAX(top.TotalSales)
FROM (SELECT 
        e.FirstName||' '||e.LastName EmployeeFullName,
        SUM (i.Total) as TotalSales
        FROM Employee e
        LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
        JOIN Invoice i ON i.CustomerId = c.CustomerId
        WHERE InvoiceDate LIKE "2009%"
        GROUP BY e.EmployeeId
        ) AS top


-- 🦩🦩Works but didnt use max or nested
SELECT 
    e.FirstName||' '||e.LastName EmployeeFullName,
    SUM (i.Total) as TotalSales
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE InvoiceDate LIKE "2009%"
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1;

-- 🎣🎣 trying other date format and differnt way🦦🦦

WITH TopAgent AS (
    SELECT
        e.FirstName||' '||e.LastName EmployeeFullName,
        SUM (i.Total) as TotalSales
        FROM Employee e
        LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
        JOIN Invoice i ON i.CustomerId = c.CustomerId
        WHERE strftime('%Y', i.InvoiceDate) = "2009"
        GROUP BY e.EmployeeId
    )

SELECT 
    EmployeeFullName
FROM TopAgent
WHERE TotalSales = (
    SELECT
        MAX(TotalSales)
    FROM TopAgent
)

