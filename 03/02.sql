-- PARA QUE SERVE ##################################################################
-- Serve para agrupar registros semelhantes de uma coluna.
-- Normalmente utilizado em conjunto com funções de agregação 
-- como COUNT(), SUM(), AVG(), MAX(), MIN().

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Contagem agrupada por uma coluna
-- Calcule o número de clientes por estado
SELECT state, COUNT(*) AS contagem
FROM sales.customers
GROUP BY state
ORDER BY contagem DESC;

-- (Exemplo 2) Contagem agrupada por várias colunas
-- Calcule o número de clientes por estado e status profissional
SELECT state, professional_status, COUNT(*) AS contagem
FROM sales.customers
GROUP BY state, professional_status
ORDER BY state, contagem DESC;

-- (Exemplo 3) Seleção de valores distintos com GROUP BY
-- Liste os estados distintos da tabela customers
SELECT state
FROM sales.customers
GROUP BY state;

-- RESUMO ##########################################################################
-- (1) Serve para agrupar registros semelhantes de uma ou mais colunas.
-- (2) Usado com funções de agregação para sumarizar os dados.
-- (3) Pode-se utilizar a posição das colunas para agrupar (ex: GROUP BY 1,2).
-- (4) GROUP BY sem função de agregação atua como um DISTINCT.
-- (5) Sempre que se usa GROUP BY, todas as colunas no SELECT (exceto funções agregadas) devem estar no GROUP BY.
