-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT 
    i.Total,
    c.FirstName||' '||c.LastName CustomerFullName,
    c.Country,
    e.FirstName||' '||e.LastName EmployeeFullName
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON i.CustomerId = c.CustomerId;
