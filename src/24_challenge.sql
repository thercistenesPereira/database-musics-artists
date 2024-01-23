SELECT users.full_name AS `Nome`, COUNT(users.id) AS `Quantidade de músicas reproduzidas`
FROM users
INNER JOIN history_play_songs ON users.id = history_play_songs.user_id
GROUP BY users.full_name
ORDER BY `Quantidade de músicas reproduzidas` DESC, `Nome` ASC;
