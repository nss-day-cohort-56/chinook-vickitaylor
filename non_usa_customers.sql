-- Provide a query showing Customers who are not in the US. The resultant table should include:
-- Customer's full name
-- Customer Id,
-- Customer's country

SELECT 
    FirstName ||' '||LastName CustomerFullName,
    CustomerId, 
    Country
FROM Customer
WHERE Country IS NOT "USA";