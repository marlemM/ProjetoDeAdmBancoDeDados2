CREATE VIEW total_funcionarios_por_depto AS
SELECT departamento.codigo, COUNT(funcionario.codigo) AS num_funcionarios
FROM departamento LEFT JOIN funcionario ON departamento.codigo = funcionario.cod_depto
GROUP BY departamento.codigo;

SELECT departamento.descricao, gerente.nome, COALESCE(total_funcionarios_por_depto.num_funcionarios, 0) AS num_funcionarios
FROM departamento
LEFT JOIN funcionario gerente ON departamento.cod_gerente = gerente.codigo
LEFT JOIN total_funcionarios_por_depto ON departamento.codigo = total_funcionarios_por_depto.codigo;