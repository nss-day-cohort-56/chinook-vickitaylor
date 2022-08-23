-- Which country's customers spent the most?

WITH TopCountry AS (
    SELECT   
        BillingCountry,
        SUM(Total) AS gross
    FROM Invoice
    GROUP BY BillingCountry)

SELECT 
    BillingCountry
FROM TopCountry
WHERE gross = (
    SELECT MAX(gross)
    FROM TopCountry
)
