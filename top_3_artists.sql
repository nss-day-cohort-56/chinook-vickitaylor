-- Provide a query that shows the top 3 best selling artists.

SELECT 
    a.Name,
    COUNT (a.artistId) AS Sold
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON a.artistId = al.ArtistId
GROUP BY a.Name
ORDER BY Sold DESC
LIMIT 3;
