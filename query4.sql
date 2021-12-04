/*4. Listar as notas de saída e todos os detalhes sobre seus itens.*/

SELECT n.Id_Nota_Saida, n.CPF, n.codigo_funcionario,n.Valor_Total, n.Data, n.Hora, n.Forma_Pagamento,
	   n.Status_pagamento, i.Id_Item_Saida, i.Codigo_Produto, i.Qtd_Vendida,
	  i.Desconto, i.Valor
FROM NOTA_DE_SAIDA n
INNER JOIN ITEM_SAIDA i
	ON (n.Id_Nota_Saida = i.Id_Nota_Saida)
GROUP BY n.Id_Nota_Saida, i.Id_Item_Saida
ORDER BY n.Id_Nota_Saida;

