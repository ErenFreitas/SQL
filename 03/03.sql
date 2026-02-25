-- PARA QUE SERVE ##################################################################
-- Serve para filtrar linhas após o agrupamento, normalmente usado com GROUP BY.
-- Diferente do WHERE, permite filtrar resultados de funções agregadas (ex: COUNT, SUM).

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Seleção com filtro usando HAVING
-- Calcule o número de clientes por estado, exibindo apenas os estados com mais de 100 clientes
SELECT 
    state, 
    COUNT(*) AS total_clientes
FROM sales.customers
GROUP BY state
HAVING COUNT(*) > 100;

-- (Exemplo 2) Filtro em coluna não agregada (possível com HAVING)
-- Mostre os estados com mais de 100 clientes e que não sejam 'MA'
SELECT 
    state, 
    COUNT(*) AS total_clientes
FROM sales.customers
GROUP BY state
HAVING COUNT(*) > 100 AND state <> 'MA';

-- RESUMO ##########################################################################
-- (1) HAVING é usado para filtrar resultados após o agrupamento (GROUP BY).
-- (2) WHERE é usado para filtrar antes do agrupamento.
-- (3) HAVING permite o uso de funções agregadas como COUNT(), SUM(), AVG().
-- (4) Também pode ser usado para filtrar colunas não agregadas em agrupamentos.
