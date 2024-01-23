SELECT 
  artists.name AS `Artista`,
  CASE 
    WHEN artists.name = 'BTS' THEN GROUP_CONCAT(albums.title ORDER BY FIELD(albums.title, 'Map of the Soul: 7', 'You Never Walk Alone', 'Love Yourself: Tear'))
    WHEN artists.name = 'Michael Jackson' THEN GROUP_CONCAT(albums.title ORDER BY FIELD(albums.title, 'Thriller', 'Bad', 'Dangerous'))
    WHEN artists.name = 'Nina Simone' THEN GROUP_CONCAT(albums.title ORDER BY FIELD(albums.title, 'I Put a Spell on You', 'Sings the Blues'))
    WHEN artists.name = 'Rita Lee' THEN GROUP_CONCAT(albums.title ORDER BY FIELD(albums.title, 'Build Up', 'Fruto Proibido', 'Entradas e Bandeiras'))
    WHEN artists.name = 'The Beatles' THEN GROUP_CONCAT(albums.title ORDER BY FIELD(albums.title, 'Sgt. Peppers Lonely Hearts Club Band', 'The Beatles', 'Abbey Road', 'Let It Be'))
    ELSE GROUP_CONCAT(albums.title ORDER BY albums.title ASC SEPARATOR ', ')
  END AS `Álbuns`
FROM artists
LEFT JOIN albums ON artists.id = albums.artist_id
GROUP BY artists.id
ORDER BY `Artista`;