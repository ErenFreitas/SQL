-- PARA QUE SERVE ################################################################################
-- Operadores aritméticos servem para executar operações matemáticas.
-- São muito utilizados para criar colunas calculadas em consultas SQL.

-- TIPOS #########################################################################################
-- +  : Adição
-- -  : Subtração
-- *  : Multiplicação
-- /  : Divisão
-- ^  : Exponenciação (dependendo do SGBD)
-- %  : Módulo (resto da divisão)
-- || : Concatenação de strings (não é operador aritmético, mas é muito usado em colunas calculadas)

-- EXEMPLOS ######################################################################################

-- (Exemplo 1) Criação de coluna calculada
-- Objetivo: Criar uma coluna contendo a idade do cliente da tabela sales.customers
SELECT 
    email, 
    birth_date,
    (CURRENT_DATE - birth_date) / 365 AS "Idade do Cliente"
FROM sales.customers;

-- (Exemplo 2) Utilização da coluna calculada em uma consulta
-- Objetivo: Listar os 10 clientes mais novos da tabela sales.customers
SELECT 
    email, 
    birth_date,
    (CURRENT_DATE - birth_date) / 365 AS "Idade do Cliente"
FROM sales.customers
ORDER BY "Idade do Cliente"
LIMIT 10;

-- (Exemplo 3) Criação de coluna calculada com strings
-- Objetivo: Criar a coluna "Nome Completo" contendo o nome completo do cliente
SELECT
    first_name || ' ' || last_name AS "Nome Completo"
FROM sales.customers;

-- RESUMO ########################################################################################
-- (1) Operadores aritméticos executam operações matemáticas.
-- (2) São muito utilizados para criar colunas calculadas.
-- (3) Alias (pseudônimos) são usados para dar nomes às colunas calculadas.
-- (4) Para pseudônimos com espaços no nome, utilize aspas duplas.
-- (5) O operador || serve para concatenar strings.
-- (6) Consulte o guia de comandos SQL para ver mais operadores disponíveis.
