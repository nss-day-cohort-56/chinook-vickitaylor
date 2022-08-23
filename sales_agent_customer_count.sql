-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee (even if it's zero)

SELECT 
    e.FirstName||' '||e.LastName EmployeeFullName,
    COUNT(c.CustomerId) AS 'Total Customers'
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
