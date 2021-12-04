/*2. Listar todos os funcionários cujo cargo seja vendedor.*/

SELECT Nome_Funcionario FROM FUNCIONARIO
WHERE (Cargo = 'vendedor')
ORDER BY Nome_Funcionario;
