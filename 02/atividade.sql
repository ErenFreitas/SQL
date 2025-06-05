-- EXERCÍCIOS ######################################################################

-- (Exercício 1) Calcule quantos salários mínimos ganha cada cliente da tabela 
-- sales.customers. Selecione as colunas de: email, income e a coluna calculada "salários mínimos"
-- Considere o salário mínimo igual à R$1200

SELECT
    email,
    income,
    income / 1200 AS "salários mínimos"
FROM sales.customers;


-- (Exercício 2) Acrescente uma coluna informando TRUE se o cliente
-- ganha acima de 5 salários mínimos (R$6000) e FALSE se ganha 4 salários (R$4800) ou menos.
-- Chame a nova coluna de "acima de 4 salários"

SELECT
    email,
    income,
    income / 1200 AS "salários mínimos",
    (income > 4800) AS "acima de 4 salários"
FROM sales.customers;


-- (Exercício 3) Filtre apenas os clientes que ganham entre
-- 4 e 5 salários mínimos (de R$4800 a R$6000)

SELECT
    email,
    income
FROM sales.customers
WHERE income BETWEEN 4800 AND 6000;


-- (Exercício 4) Selecione o email, cidade e estado dos clientes que moram
-- em Minas Gerais ou Mato Grosso

SELECT
    email,
    city,
    state
FROM sales.customers
WHERE state IN ('Minas Gerais', 'Mato Grosso');


-- (Exercício 5) Selecione o email, cidade e estado dos clientes que NÃO moram em São Paulo

SELECT
    email,
    city,
    state
FROM sales.customers
WHERE state <> 'São Paulo';


-- (Exercício 6) Selecione os nomes das cidades que começam com a letra Z.
-- Dados da tabela temp_table.regions

SELECT
    city
FROM temp_table.regions
WHERE city LIKE 'Z%';
