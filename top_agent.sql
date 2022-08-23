-- Which sales agent made the most in sales over all?

with SalesTotals as (
    SELECT 
        e.FirstName||' '||e.LastName EmployeeFullName,
        SUM (i.Total) as TotalSales
        FROM Employee e
        LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
        JOIN Invoice i ON i.CustomerId = c.CustomerId
        GROUP BY e.EmployeeId
)

SELECT 
    EmployeeFullName,
    MAX(TotalSales)
FROM SalesTotals

