INSERT INTO playlist_track
SELECT (SELECT PlaylistId FROM playlists WHERE Name like "Classical"), TrackId
FROM playlist_track
WHERE (SELECT PlaylistId FROM playlists WHERE Name like "Rock");