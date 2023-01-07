SELECT 
m.musica_name AS 'nome',
COUNT(h.usuario_id) AS 'reproducoes'
FROM
SpotifyClone.musicas AS m
INNER JOIN
SpotifyClone.historico_reporducoes AS h
INNER JOIN
SpotifyClone.usuarios AS u ON m.musica_id = h.musica_id
AND h.usuario_id = u.usuario_id
WHERE
u.planos_id = 1 OR u.planos_id = 3
GROUP BY nome
ORDER BY nome;