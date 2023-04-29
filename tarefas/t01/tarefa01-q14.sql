CREATE VIEW responsavel_atividades AS
SELECT cod_responsavel, COUNT(*) AS num_atividades
FROM atividade
GROUP BY cod_responsavel;

SELECT funcionario.nome, responsavel_atividades.num_atividades
FROM funcionario
INNER JOIN responsavel_atividades
ON funcionario.codigo = responsavel_atividades.cod_responsavel;