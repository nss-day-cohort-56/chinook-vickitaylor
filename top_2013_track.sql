-- Provide a query that shows the most purchased track(s) of 2013.

WITH TopTrack AS (
    SELECT 
        t.Name AS TrackName,
        COUNT(il.InvoiceLineId) AS Sold
    FROM InvoiceLine il
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
    WHERE i.InvoiceDate BETWEEN  "2013-01-01" AND "2013-12-31"
    GROUP BY t.Name
)
SELECT 
    TrackName
FROM TopTrack
WHERE Sold = (
    SELECT MAX(Sold)
    FROM TopTrack
);

-- 🎣🎣 trying other date format🦦🦦

WITH TopTrack AS (
    SELECT 
        t.Name AS TrackName,
        COUNT(il.InvoiceLineId) AS Sold
    FROM InvoiceLine il
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
    WHERE strftime("%Y", InvoiceDate) = "2013"
    GROUP BY t.Name
)
SELECT 
    TrackName
FROM TopTrack
WHERE Sold = (
    SELECT MAX(Sold)
    FROM TopTrack
);
