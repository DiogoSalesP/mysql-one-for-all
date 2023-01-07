SELECT 
m.musica_name AS nome_musica,
CASE
WHEN musica_name LIKE '%Bard%' THEN REPLACE(musica_name, 'Bard', 'QA')
WHEN musica_name LIKE '%Amar%' THEN REPLACE(musica_name, 'Amar', 'Code Review')
WHEN musica_name LIKE '%Pais%' THEN REPLACE(musica_name, 'Pais', 'Pull Requests')
WHEN musica_name LIKE '%SOUL%' THEN REPLACE(musica_name, 'SOUL', 'CODE')
WHEN musica_name LIKE '%SUPERSTAR%' THEN REPLACE(musica_name, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.musicas AS m
ORDER BY novo_nome DESC
LIMIT 5;