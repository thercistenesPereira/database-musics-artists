SELECT 
  artists.name AS `Artista`,
  COUNT(artists.id) AS `Quantidade de álbuns`
FROM artists
LEFT JOIN albums ON artists.id = albums.artist_id
GROUP BY artists.id
ORDER BY `Quantidade de álbuns` DESC, `Artista`;
