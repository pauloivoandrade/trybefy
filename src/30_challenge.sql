SELECT
    artists.name AS 'Artista',
    COUNT(artists_followers.user_id) AS 'Total de seguidores'
FROM
    artists
LEFT JOIN
    artists_followers ON artists.id = artists_followers.artist_id
GROUP BY
    artists.id, artists.name
HAVING
    COUNT(artists_followers.user_id) < 5;
