DELETE FROM playlist_track
WHERE TrackId = (SELECT TrackId FROM tracks WHERE MediaTypeId = (SELECT MediaTypeId FROM media_types WHERE Name = 'MPEG audio file'))
;
DELETE FROM invoice_items
WHERE TrackId = (SELECT TrackId FROM tracks WHERE MediaTypeId = (SELECT MediaTypeId FROM media_types WHERE Name = 'MPEG audio file'))
;
DELETE FROM tracks
WHERE TrackId = (SELECT TrackId FROM tracks WHERE MediaTypeId = (SELECT MediaTypeId FROM media_types WHERE Name = 'MPEG audio file'))
;
DELETE FROM media_types
WHERE MediaTypeId = (SELECT MediaTypeId FROM media_types WHERE Name = 'MPEG audio file');