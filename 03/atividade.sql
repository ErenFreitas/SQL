-- ########################################################################
-- EXERCÍCIOS
-- ########################################################################


-- (Exercício 1)
-- Conte quantos clientes da tabela sales.customers têm menos de 30 anos

SELECT 
    COUNT(*) AS total_clients_under_30
FROM sales.customers
WHERE (current_date - birth_date) / 365 < 30;



-- (Exercício 2)
-- Informe a idade do cliente mais velho e do mais novo da tabela sales.customers

SELECT 
    MAX((current_date - birth_date) / 365) AS oldest_client_age,
    MIN((current_date - birth_date) / 365) AS youngest_client_age
FROM sales.customers;



-- (Exercício 3)
-- Selecione todas as informações do cliente mais rico da tabela sales.customers
-- (possivelmente a resposta contém mais de um cliente)

SELECT *
FROM sales.customers
WHERE income = (
    SELECT MAX(income)
    FROM sales.customers
);



-- (Exercício 4)
-- Conte quantos veículos de cada marca têm registrados na tabela sales.products
-- Ordene o resultado pelo nome da marca

SELECT 
    brand,
    COUNT(*) AS total_vehicles
FROM sales.products
GROUP BY brand
ORDER BY brand;



-- (Exercício 5)
-- Conte quantos veículos existem registrados na tabela sales.products
-- por marca e ano do modelo
-- Ordene pelo nome da marca e pelo ano do veículo

SELECT 
    brand,
    model_year,
    COUNT(*) AS total_vehicles
FROM sales.products
GROUP BY brand, model_year
ORDER BY brand, model_year;



-- (Exercício 6)
-- Conte quantos veículos de cada marca têm registrados na tabela sales.products
-- Mostre apenas as marcas que contêm mais de 10 veículos registrados

SELECT 
    brand,
    COUNT(*) AS total_vehicles
FROM sales.products
GROUP BY brand
HAVING COUNT(*) > 10;