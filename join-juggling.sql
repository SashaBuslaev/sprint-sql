SELECT 
t.Name AS TrackName,
al.Name AS AlbumTitle,
ar.Name AS ArtistName, 
g.Name AS GenreName,
m.Name AS MediaTypeName
FROM tracks
JOIN albums USING (TrackId)
JOIN artists USING (ArtistId)
JOIN genres USING (GenreId)
JOIN media_types USING (MediaTypeId)
WHERE t.Milliseconds >= 600000 AND GenreName like 'Rock'
ORDER BY GenreName;

