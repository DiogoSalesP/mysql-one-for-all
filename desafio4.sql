SELECT 
    usuario.usuario_name AS 'usuario',
    IF(MAX(YEAR(status_usuario.data_reproducao)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS 'status_usuario'
FROM
    SpotifyClone.usuarios AS usuario
        INNER JOIN
    SpotifyClone.historico_reporducoes AS status_usuario ON usuario.usuario_id = status_usuario.usuario_id
GROUP BY usuario_name
ORDER BY usuario_name;