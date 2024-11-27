BEGIN;
INSERT INTO artists (Name)
VALUES('Acquired Records');

UPDATE albums
SET ArtistId = (SELECT ArtistId FROM artists WHERE Name = 'Acquired Records')
WHERE 2 > (SELECT count(a.AlbumId) FROM albums a GROUP BY a.ArtistId HAVING ArtistId = a.ArtistId);

UPDATE tracks 
SET UnitPrice = UnitPrice * 0.8
WHERE AlbumId = (SELECT AlbumId FROM albums WHERE ArtistId = (SELECT ArtistId FROM artists WHERE Name = 'Acquired Records'));

DELETE FROM artists 
WHERE ArtistId NOT IN (SELECT ArtistId FROM albums);

COMMIT;