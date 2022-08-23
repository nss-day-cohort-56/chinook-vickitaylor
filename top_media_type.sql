-- Provide a query that shows the most purchased Media Type.

WITH MediaTypeSold AS (
    SELECT 
        m.Name AS MediaType,
        COUNT (m.MediaTypeId) AS Sold
    FROM InvoiceLine il
    JOIN Track t ON t.TrackId = il.TrackId
    JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
    GROUP BY m.Name
)

SELECT 
    MediaType
FROM MediaTypeSold
WHERE Sold = (
    SELECT MAX(Sold)
    FROM MediaTypeSold
)
