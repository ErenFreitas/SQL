-- PARA QUE SERVEM ################################################################
-- Operadores lógicos são usados para combinar expressões simples em condições compostas.

-- TIPOS ##########################################################################
-- AND         → Ambas as condições devem ser verdadeiras
-- OR          → Ao menos uma condição deve ser verdadeira
-- NOT         → Inverte o resultado de uma condição
-- BETWEEN     → Verifica se um valor está entre dois limites (inclusive)
-- IN          → Verifica se um valor está dentro de uma lista
-- LIKE        → Compara padrões de texto (sensível a maiúsculas/minúsculas)
-- ILIKE       → Igual ao LIKE, mas ignora letras maiúsculas/minúsculas
-- IS NULL     → Verifica se um valor é nulo

-- EXEMPLOS #######################################################################

-- (Exemplo 1) BETWEEN
-- Selecionar veículos com preço entre 100k e 200k
SELECT *
FROM sales.products
WHERE price BETWEEN 100000 AND 200000;

-- (Exemplo 2) NOT BETWEEN
-- Selecionar veículos com preço abaixo de 100k ou acima de 200k
SELECT *
FROM sales.products
WHERE price NOT BETWEEN 100000 AND 200000;

-- (Exemplo 3) IN
-- Selecionar veículos das marcas HONDA, TOYOTA ou RENAULT
SELECT *
FROM sales.products
WHERE brand IN ('HONDA', 'RENAULT', 'TOYOTA');

-- (Exemplo 4) LIKE
-- Selecionar primeiros nomes distintos que começam com "ANA"
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name LIKE 'ANA%';

-- (Exemplo 5) ILIKE
-- Igual ao exemplo anterior, mas ignora se está em maiúsculas ou minúsculas
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name ILIKE 'ana%';

-- (Exemplo 6) IS NULL
-- Selecionar linhas com campo "population" nulo
SELECT *
FROM temp_tables.regions
WHERE population IS NULL;

-- RESUMO #########################################################################
-- (1) Operadores lógicos combinam expressões simples para criar filtros complexos.
-- (2) AND → Ambas as condições devem ser verdadeiras.
-- (3) OR → Uma das condições deve ser verdadeira.
-- (4) NOT → Inverte o resultado de uma condição.
-- (5) BETWEEN → Verifica se um valor está dentro de um intervalo.
-- (6) IN → Verifica se um valor está em uma lista de opções.
-- (7) LIKE / ILIKE → Comparam padrões de texto com o uso de curingas como '%'.
-- (8) ILIKE → Ignora diferenças entre maiúsculas e minúsculas.
-- (9) IS NULL → Verifica se um campo não possui valor (nulo).
-- (10) Consulte o Guia de Comandos para mais detalhes sobre operadores SQL.
