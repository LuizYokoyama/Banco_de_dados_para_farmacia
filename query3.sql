/*3. Listar as notas de entrada e todos os detalhes sobre seus itens.*/

SELECT n.Id_Nota_Entrada, n.Data_Emissao, n.Valor_Total, n.CNPJ_Fornecedor,
	   i.Id_Item_Entrada, i.Codigo_Produto, i.Preco_Entrada, i.Qtd

FROM NOTA_ENTRADA n
INNER JOIN ITEM_ENTRADA i
	ON n.Id_Nota_Entrada = i.Id_Nota_Entrada
GROUP BY n.Id_Nota_Entrada, i.Id_Nota_Entrada, i.Id_Item_Entrada
ORDER BY n.Id_Nota_Entrada;

