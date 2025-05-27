-- PARA QUE SERVE ##################################################################
-- Serve para ordenar os resultados da seleção de acordo com uma regra definida 
-- pelo usuário.


-- SINTAXE #########################################################################
-- SELECT coluna_1, coluna_2, coluna_3
-- FROM schema_1.tabela_1
-- WHERE condição_x = true
-- ORDER BY coluna_1 [ASC | DESC];


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Ordenação de valores numéricos
-- Liste os produtos da tabela products em ordem crescente com base no preço:

SELECT *
FROM sales.products
ORDER BY price;  -- Use DESC para ordem decrescente


-- (Exemplo 2) Ordenação de texto
-- Liste os estados distintos da tabela customers em ordem alfabética:

SELECT DISTINCT state
FROM sales.customers
ORDER BY state;


-- RESUMO ##########################################################################
-- (1) O comando ORDER BY é utilizado para ordenar os resultados da consulta.
-- (2) Por padrão, a ordenação é feita em ordem crescente (ASC).
-- (3) Para ordenar em ordem decrescente, utilize o modificador DESC.
-- (4) Para colunas de texto (strings), a ordenação segue a ordem alfabética.
