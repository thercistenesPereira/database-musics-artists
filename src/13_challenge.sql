SELECT artists.name AS `Artista`
FROM artists
LEFT JOIN albums ON artists.id = albums.artist_id
GROUP BY artists.id
HAVING COUNT(artists.id) >= 3
ORDER BY `Artista`;