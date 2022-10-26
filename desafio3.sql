SELECT 
  usuario.usuario_name AS 'usuario',
  Count(qt_de_musicas_ouvidas.musica_id) AS 'qt_de_musicas_ouvidas',
  Round(Sum(qt_de_musicas_ouvidas.duracao_segundos / 60), 2) AS 'total_minutos'
FROM 
  SpotifyClone.usuarios AS usuario
INNER JOIN 
  SpotifyClone.musicas AS qt_de_musicas_ouvidas
INNER JOIN
  SpotifyClone.historico_reporducoes AS historico_reporducoes
ON qt_de_musicas_ouvidas.musica_id = historico_reporducoes.musica_id
ON usuario.usuario_id = historico_reporducoes.usuario_id
GROUP  BY usuario_name
ORDER BY usuario_name;