SELECT COUNT(musica_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reporducoes AS h
WHERE usuario_id = 1;