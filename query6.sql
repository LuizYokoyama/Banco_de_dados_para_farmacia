/*6. Listar a quantidade de produtos por tipo.*/

SELECT Tipo_Produto, COUNT (Codigo_Produto) AS Quantidade_de_produtos_por_tipo
FROM PRODUTO 
GROUP BY Tipo_Produto;

