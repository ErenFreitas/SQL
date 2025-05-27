-- PARA QUE SERVE ##################################################################
-- Serve para limitar o número de linhas retornadas pela consulta.
-- Muito utilizado na etapa de exploração dos dados.


-- SINTAXE #########################################################################
-- SELECT coluna_1, coluna_2, coluna_3
-- FROM schema_1.tabela_1
-- LIMIT N;


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Seleção das N primeiras linhas usando LIMIT
-- Liste as 10 primeiras linhas da tabela funnel:

SELECT *
FROM sales.funnel
LIMIT 10;


-- (Exemplo 2) Seleção das N primeiras linhas com LIMIT e ORDER BY
-- Liste os 10 produtos mais caros da tabela products:

SELECT *
FROM sales.products
ORDER BY price DESC
LIMIT 10;


-- RESUMO ##########################################################################
-- (1) O comando LIMIT é utilizado para restringir a quantidade de linhas exibidas.
-- (2) É muito útil na fase de exploração dos dados (data exploration).
-- (3) Frequentemente usado com ORDER BY para obter os TOP N resultados.
--     Ex: "N pagamentos mais recentes", "N produtos mais caros", etc.
