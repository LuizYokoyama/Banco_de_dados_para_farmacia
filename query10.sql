/*10) Listar a quantidade média de cada produto vendido por nota fiscal.*/

/*INTERPRETAÇÃO 1: MEDIA DE CADA PRODUTO VENDIDO EM TODAS AS NOTAS*/

/*Obtem o produdo, e divide a soma das quantias totais de cada produto pelo número de notas*/
SELECT Nome_Descricao, ROUND( 
SUM(Qtd_Vendida)/(1.0* (
	
		/*Retorna o numero de notas de saida*/
		SELECT COUNT (Id_Nota_Saida)
		FROM NOTA_DE_SAIDA
)),2) AS Media

FROM NOTA_DE_SAIDA

/*Obtem o Codigo_Produto e Qtd_Vendas*/
INNER JOIN ITEM_SAIDA
	ON (ITEM_SAIDA.Id_Nota_Saida = NOTA_DE_SAIDA.Id_Nota_Saida)

 /* Obtem o Nome_Descricao, utilizando o Codigo_Produto*/
INNER JOIN PRODUTO
	ON (ITEM_SAIDA.Codigo_Produto =  PRODUTO.Codigo_Produto)
GROUP BY PRODUTO.Codigo_Produto;


/*--------------------------------------------------------------------*/
/*INTERPRETAÇÃO 2: MÉDIA DE CADA PRODUTO VENDIDO APENAS NAS NOTAS EM QUE O PRODUTO ESTAVA PRESENTE*/

SELECT Nome_Descricao, ROUND( 
AVG(Qtd_Vendida),2) AS Media

FROM NOTA_DE_SAIDA

/*Obtem o Codigo_Produto e Qtd_Vendas*/
INNER JOIN ITEM_SAIDA
	ON (ITEM_SAIDA.Id_Nota_Saida = NOTA_DE_SAIDA.Id_Nota_Saida)

 /* Obtem o Nome_Descricao, utilizando o Codigo_Produto*/
INNER JOIN PRODUTO
	ON (ITEM_SAIDA.Codigo_Produto =  PRODUTO.Codigo_Produto)
GROUP BY PRODUTO.Codigo_Produto;
