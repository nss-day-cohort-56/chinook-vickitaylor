-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT 
    t.Name TrackName,
    al.Title AlbumName,
    m.Name MediaName,
    g.Name Genre
FROM Track t
LEFT JOIN Album al ON al.AlbumId = t.AlbumId
LEFT JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
LEFT JOIN Genre g ON g.GenreId = t.GenreId;
