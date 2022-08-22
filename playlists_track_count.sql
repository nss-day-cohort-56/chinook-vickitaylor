-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT 
    p.PlaylistId,
    p.Name,
    COUNT (pt.TrackId)
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY p.PlaylistId;
