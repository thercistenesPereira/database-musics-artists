SELECT artists.name AS `Artista`, COUNT(artists.id) AS `Quantidade de músicas reproduzidas`
FROM artists
INNER JOIN albums ON artists.id = albums.artist_id
INNER JOIN songs ON albums.id = songs.album_id
INNER JOIN history_play_songs ON songs.id = history_play_songs.song_id
GROUP BY artists.name
HAVING COUNT(album_id) > 10
ORDER BY name;
