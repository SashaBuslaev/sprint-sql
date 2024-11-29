BEGIN TRANSACTION;

INSERT INTO artists (Name)
VALUES ('Acquired Records');

UPDATE albums
SET ArtistId = (SELECT ArtistId FROM artists WHERE Name = 'Acquired Records')
WHERE ArtistId in (SELECT ArtistId FROM albums GROUP BY ArtistId HAVING count(AlbumId) < 2);

UPDATE tracks 
SET UnitPrice = UnitPrice * 0.8
WHERE AlbumId in (SELECT AlbumId FROM albums WHERE ArtistId = (SELECT ArtistId FROM artists WHERE Name = 'Acquired Records'));

DELETE FROM artists 
WHERE ArtistId NOT IN (SELECT ArtistId FROM albums);

COMMIT;