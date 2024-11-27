BEGIN;
    INSERT INTO genres (Name)
    VALUES ('Podcast');
    
    DELETE FROM playlists
    WHERE PlaylistId NOT IN (SELECT PlaylistId FROM playlist_track); 

    INSERT INTO albums (title, artistid)
    VALUES ('Witcher', 7);
COMMIT;