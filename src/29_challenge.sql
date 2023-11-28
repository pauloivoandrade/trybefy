SELECT
    artists.name AS 'Artista'
FROM
    artists
LEFT JOIN
    artists_followers ON artists.id = artists_followers.artist_id
GROUP BY
    artists.id, artists.name
ORDER BY
    COUNT(artists_followers.user_id) DESC
LIMIT 1;
