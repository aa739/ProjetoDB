-- Encontrar ingredientes pelo nome na tabela quantidade:

SELECT * FROM `quantidade` 
WHERE `ingredientes_id` = (
    SELECT `ingredientes_id` FROM `ingredientes` 
    WHERE `ingrediente_nome` LIKE '%porco%'
);


-- Encontrar receitas vegan na tabela receitas:
SELECT * FROM `receitas` WHERE vegan = true

-- Editar valor da coluna unidade usando o id da quantidade:
UPDATE `quantidade` SET `unidade` = 'q.b' WHERE `quantidade`.`id` = 6;
