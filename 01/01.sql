-- PARA QUE SERVE ##################################################################
-- Serve para selecionar colunas de uma tabela.

-- SINTAXE 

-- SELECT coluna_1, coluna_2, coluna_3
-- FROM schema_1.tabela_1;

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Seleção de uma coluna de uma tabela:
-- Liste os e-mails dos clientes da tabela sales.customers.

SELECT email
FROM sales.customers;

-- (Exemplo 2) Seleção de mais de uma coluna de uma tabela:
-- Liste os e-mails e nomes dos clientes da tabela sales.customers.

SELECT email, first_name, last_name
FROM sales.customers;

-- (Exemplo 3) Seleção de todas as colunas de uma tabela:
-- Liste todas as informações dos clientes da tabela sales.customers.

SELECT *
FROM sales.customers;

-- RESUMO ##########################################################################
-- (1) Comando usado para selecionar colunas de uma tabela.
-- (2) Quando selecionar mais de uma coluna, elas devem ser separadas por vírgula, 
--     sem vírgula antes do comando FROM.
-- (3) Pode-se utilizar o asterisco (*) para selecionar todas as colunas da tabela.
