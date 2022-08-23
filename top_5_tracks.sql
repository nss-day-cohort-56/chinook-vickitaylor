-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT
    t.Name as TrackName,
    COUNT(il.InvoiceLineId) AS Sold
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY Sold DESC
LIMIT 5;
