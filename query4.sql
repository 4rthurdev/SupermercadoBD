-- UPDATES
-- Atualizar o estoque do produto pelo ID
UPDATE Produto SET Quantidade_Estoque = Quantidade_Estoque - 2 
WHERE ID_Produto = 1;

-- Atualizar o salário de um funcionário
UPDATE Funcionario SET Salário = 3100.00 
WHERE Nome = 'Ana Lima';

-- DELETS
-- Remover uma venda e seus itens
DELETE FROM Item_Venda 
WHERE ID_Venda = 1;

DELETE FROM Venda 
WHERE ID_Venda = 2;

-- Remover um cliente pelo ID
DELETE FROM Cliente 
WHERE ID_Cliente = 2;
