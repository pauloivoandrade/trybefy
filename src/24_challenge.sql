SELECT
    users.full_name AS 'Nome',
    COUNT(history_play_songs.id) AS 'Quantidade de músicas reproduzidas'
FROM
    users
LEFT JOIN
    history_play_songs ON users.id = history_play_songs.user_id
GROUP BY
    users.id, users.full_name
ORDER BY
    COUNT(history_play_songs.id) DESC, users.full_name ASC;
