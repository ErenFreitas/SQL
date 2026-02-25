-- PARA QUE SERVE ##################################################################
-- Servem para executar operações aritméticas nos registros de uma coluna. 
-- Muito utilizadas para sumarizar dados durante análises.

-- PRINCIPAIS FUNÇÕES AGREGADAS ###################################################
-- COUNT() – Conta registros
-- SUM() – Soma valores
-- MIN() – Retorna o menor valor
-- MAX() – Retorna o maior valor
-- AVG() – Calcula a média

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Contagem de todas as linhas da tabela
-- Conte todas as visitas realizadas ao site da empresa fictícia
SELECT COUNT(*)
FROM sales.funnel;

-- (Exemplo 2) Contagem dos registros de uma coluna (sem contar NULLs)
-- Conte todos os pagamentos registrados na tabela sales.funnel 
SELECT COUNT(paid_date)
FROM sales.funnel;

-- (Exemplo 3) Contagem de valores distintos
-- Conte todos os produtos distintos visitados em janeiro de 2021
SELECT COUNT(DISTINCT product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31';

-- (Exemplo 4) Calcule o valor mínimo, máximo e médio dos produtos
SELECT MIN(price), MAX(price), AVG(price)
FROM sales.products;

-- (Exemplo 5) Produto mais caro da tabela
SELECT *
FROM sales.products
WHERE price = (SELECT MAX(price) FROM sales.products);

-- RESUMO ##########################################################################
-- (1) Funções agregadas servem para realizar cálculos sobre colunas inteiras.
-- (2) Elas ignoram valores NULL (exceto COUNT(*)).
-- (3) COUNT(*) conta todas as linhas; COUNT(coluna) ignora NULLs.
-- (4) COUNT(DISTINCT coluna) conta apenas os valores únicos.
-- (5) Podem ser usadas em conjunto com GROUP BY para análises por grupo.
