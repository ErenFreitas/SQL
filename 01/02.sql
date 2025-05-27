-- PARA QUE SERVE ##################################################################
-- Serve para remover linhas duplicadas e mostrar apenas registros distintos.
-- Muito utilizado na etapa de exploração de dados para entender os valores únicos
-- de uma ou mais colunas.

-- SINTAXE #########################################################################
-- SELECT DISTINCT coluna_1, coluna_2, ...
-- FROM schema.tabela;

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Seleção de uma coluna sem DISTINCT
-- Liste as marcas de carro que constam na tabela sales.products
SELECT brand
FROM sales.products;

-- (Exemplo 2) Seleção de uma coluna com DISTINCT
-- Liste as marcas de carro distintas que constam na tabela sales.products
SELECT DISTINCT brand
FROM sales.products;

-- (Exemplo 3) Seleção de mais de uma coluna com DISTINCT
-- Liste as combinações distintas de marca e ano do modelo
SELECT DISTINCT brand, model_year
FROM sales.products;

-- RESUMO ##########################################################################
-- (1) Comando usado para eliminar duplicatas e retornar apenas registros únicos.
-- (2) Muito usado na fase de exploração dos dados.
-- (3) Quando usado com mais de uma coluna, o SELECT DISTINCT retorna 
--     apenas as combinações únicas entre todas as colunas listadas.
