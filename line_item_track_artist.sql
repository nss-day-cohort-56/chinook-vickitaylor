-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

-- using left join so that all null values pull in, so each invoice line items will display, rather than just the 2238 that would return due to null values

SELECT 
    i.*,
    t.Name TrackName,
    a.Name ArtistName
FROM InvoiceLine i
LEFT JOIN Track t ON t.TrackId = i.TrackId
LEFT JOIN Album al ON al.AlbumId = t.AlbumId
LEFT JOIN Artist a ON a.ArtistId = al.ArtistId;