SELECT 
t.Name AS TrackName,
al.Title AS AlbumTitle,
ar.Name AS ArtistName, 
g.Name AS GenreName,
m.Name AS MediaTypeName
FROM tracks t
JOIN albums al USING (AlbumId)
JOIN artists ar USING (ArtistId)
JOIN genres g USING (GenreId)
JOIN media_types m USING (MediaTypeId)
WHERE t.Milliseconds >= 600000 AND GenreName like 'Rock'
ORDER BY GenreName;

