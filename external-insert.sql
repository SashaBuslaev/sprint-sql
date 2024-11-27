INSERT INTO playlist_track
SELECT (SELECT PlaylistId FROM playlists WHERE Name like "Classical"), pl.TrackId
FROM playlist_track pl
WHERE (SELECT PlaylistId FROM playlists WHERE Name like "Rock") = pl.PlaylistId and (SELECT Milliseconds FROM tracks WHERE TrackId = pl.TrackId) > 300000;