-- Consulta os produtos e seus respectivos fornecedores
SELECT P.Nome AS Produto, P.Categoria, P.Preço, F.Nome AS Fornecedor 
FROM Produto P 
JOIN Fornecedor F ON P.ID_Fornecedor = F.ID_Fornecedor;

-- Consulta as compras de um cliente específico
SELECT V.ID_Venda, V.Data, V.Total 
FROM Venda V 
JOIN Cliente C ON V.ID_Cliente = C.ID_Cliente 
WHERE C.Nome = 'Ruan Lucas';

-- Consulta itens de uma venda
SELECT IV.ID_Item, P.Nome AS Produto, IV.Quantidade, IV.Preço 
FROM Item_Venda IV 
JOIN Produto P ON IV.ID_Produto = P.ID_Produto 
WHERE IV.ID_Venda = 1;

-- Consulta o total de compras do cliente
SELECT C.Nome, SUM(V.Total) AS TotalGasto 
FROM Cliente C 
JOIN Venda V ON C.ID_Cliente = V.ID_Cliente 
GROUP BY C.Nome;

-- Consulta de uma tabela por inteiro
SELECT * FROM produto;

-- Executar um por vez pra evitar possíveis problemas!
