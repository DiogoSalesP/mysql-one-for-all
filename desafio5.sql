SELECT 
c.musica_name AS 'cancao',
COUNT(r.data_reproducao) AS 'reproducoes'
FROM
SpotifyClone.musicas AS c
INNER JOIN
SpotifyClone.historico_reporducoes AS r ON c.musica_id = r.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;