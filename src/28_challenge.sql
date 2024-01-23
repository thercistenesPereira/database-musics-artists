SELECT users.full_name AS `Pessoa usuária`, COUNT(artists_followers.artist_id) AS `Artistas que segue`
FROM users
INNER JOIN artists_followers ON users.id = artists_followers.user_id
GROUP BY users.full_name
ORDER BY `Pessoa usuária` ASC;
