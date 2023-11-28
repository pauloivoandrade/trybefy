SELECT 
    songs.title AS 'Título',
    songs.duration_in_seconds AS 'Duração',
    albums.title AS 'Álbum'
FROM songs
JOIN albums ON albums.id = songs.album_id
    WHERE duration_in_seconds BETWEEN 300 AND 480
ORDER BY duration_in_seconds ASC;