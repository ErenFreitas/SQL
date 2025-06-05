-- PARA QUE SERVEM ################################################################
-- Operadores de comparação servem para comparar dois valores, retornando TRUE ou FALSE.
-- São muito utilizados com a cláusula WHERE para filtrar linhas de uma seleção.
-- Também são úteis para criar colunas do tipo "flag" (verdadeiro/falso).

-- TIPOS DE OPERADORES ############################################################
-- =   → Igual
-- >   → Maior que
-- <   → Menor que
-- >=  → Maior ou igual a
-- <=  → Menor ou igual a
-- <>  → Diferente

-- EXEMPLO ########################################################################
-- (Exemplo 1) Uso de operadores como flag
-- Cria uma coluna que retorna TRUE quando o cliente for CLT (profissional com carteira assinada)

SELECT
    customer_id,
    first_name,
    professional_status,
    (professional_status = 'clt') AS is_clt
FROM sales.customers;

-- RESUMO #########################################################################
-- (1) Operadores de comparação retornam TRUE ou FALSE
-- (2) São muito usados com a cláusula WHERE para filtrar resultados
-- (3) Permitem criar colunas flag em seleções (como "is_clt")
-- (4) Consulte o guia de comandos SQL para ver todos os operadores disponíveis
