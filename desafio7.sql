SELECT 
a.artista_name AS 'artista',
al.album_name AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s ON a.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;