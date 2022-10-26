SELECT 
    COUNT(DISTINCT M.musica_id) AS 'cancoes',
    COUNT(DISTINCT A.artista_id) AS 'artistas',
    COUNT(DISTINCT AL.album_id) AS 'albuns'
FROM
     SpotifyClone.musicas AS M
        INNER JOIN
    SpotifyClone.artistas AS A
        INNER JOIN
    SpotifyClone.albuns AS AL ON M.album_id = M.artista_id
        AND A.artista_id = AL.artista_id;