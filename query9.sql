/*9. Listar todos os cargos que tenham mais de 15 funcionários nele cadastrados.*/

SELECT Cargo, COUNT(Codigo_Funcionario) AS Quantidade_cadastrada
FROM FUNCIONARIO
GROUP BY Cargo
HAVING COUNT(Codigo_Funcionario) > 15;

