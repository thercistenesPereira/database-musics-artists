SELECT
  albums.title AS `Album`,
  albums.release_year AS ` Ano de lançamento`,
  artists.name AS `Artista`
FROM albums
  JOIN artists ON albums.artist_id = artists.id
WHERE albums.title LIKE '%you%'
ORDER BY `Ano de lançamento`;
