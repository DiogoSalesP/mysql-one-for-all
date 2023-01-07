SELECT
a.artista_name AS 'artista',
al.album_name AS 'album'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
WHERE artista_name = 'Elis Regina'
ORDER BY album;