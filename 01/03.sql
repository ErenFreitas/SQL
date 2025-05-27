-- PARA QUE SERVE ##################################################################
-- Serve para filtrar linhas de acordo com uma condição.


-- SINTAXE #########################################################################
-- SELECT coluna_1, coluna_2, coluna_3
-- FROM schema_1.tabela_1
-- WHERE condição_x = true


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Filtro com condição única
-- Liste os e-mails dos clientes da nossa base que moram no estado de Santa Catarina:

SELECT email, state
FROM sales.customers
WHERE state = 'SC';


-- (Exemplo 2) Filtro com mais de uma condição
-- Liste os e-mails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul:

SELECT email, state
FROM sales.customers
WHERE state = 'SC' OR state = 'MS';


-- (Exemplo 3) Filtro com condição de data
-- Liste os e-mails dos clientes que moram em SC ou MS e que têm mais de 30 anos:

SELECT email, state
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS') AND birth_date < '1995-05-27';


-- RESUMO ##########################################################################
-- (1) O comando WHERE é utilizado para filtrar linhas de acordo com uma condição.
-- (2) No PostgreSQL, strings (textos) são delimitadas por aspas simples: 'texto'.
-- (3) Pode-se combinar condições com os operadores lógicos: AND, OR, NOT.
-- (4) As datas são escritas no formato: 'YYYY-MM-DD' ou 'YYYYMMDD'.
