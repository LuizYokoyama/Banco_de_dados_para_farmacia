/*8. Listar todos os tipos de produto que tenham de mais de 10 produtos nele cadastrados.*/

SELECT Tipo_Produto, COUNT(Codigo_Produto) AS Quantidade_cadastrada
FROM PRODUTO
GROUP BY Tipo_Produto
HAVING COUNT(Codigo_Produto) > 10;

