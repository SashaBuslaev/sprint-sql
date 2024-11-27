SELECT p.Name AS PlaylistName, t.Name AS TrackName
FROM playlists p 
JOIN playlist_track pt ON pt.PlaylistId = p.PlaylistId
JOIN tracks t ON t.TrackId = pt.TrackId
ORDER BY PlaylistName, TrackName;