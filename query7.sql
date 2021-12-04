/*7. Listar a quantidade de funcionários por cargo.*/

SELECT Cargo, COUNT(Codigo_Funcionario) AS Quantidade_de_funcionarios_por_cargo
FROM FUNCIONARIO
GROUP BY Cargo;

