INSERT INTO playlist_track
SELECT (SELECT PlaylistId FROM playlists WHERE Name like "Classical"), t.TrackId
FROM tracks t
WHERE (SELECT GenreId FROM genres WHERE Name like "Rock") = t.GenreId and Milliseconds > 300000;