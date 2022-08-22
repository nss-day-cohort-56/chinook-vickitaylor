-- Provide a query that shows total sales made by each sales agent. The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT 
    e.FirstName||' '||e.LastName EmployeeFullName,
    SUM (i.Total) as TotalSales
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId;
