SELECT songs.title AS `Título`
FROM songs
INNER JOIN albums ON songs.album_id = albums.id
WHERE albums.title = 'Thriller'
ORDER BY songs.title;