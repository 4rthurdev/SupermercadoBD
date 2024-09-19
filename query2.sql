-- Inserts nas tabelas
INSERT INTO Cliente (Nome, CPF) 
VALUES ('Ruan Lucas', '12345678901'),
       ('José Gabriel', '09876543210');

INSERT INTO Fornecedor (Nome, Endereço, Telefone) 
VALUES ('Deline', 'Rua Santa Catarina, 440', '99191-9191'),
       ('Coca-cola', 'Rua Riachuelo, 1420', '98888-8888'),
       ('Binunne', 'Rua Biela Torta, 165', '98787-8787'),
       ('Gigabyte', 'Rua Mourão, 931', '95656-5656');

INSERT INTO Produto (Nome, Categoria, Preço, Quantidade_Estoque, ID_Fornecedor) 
VALUES ('Arroz', 'Alimentos', 20.50, 100, 1),
       ('Feijão', 'Alimentos', 15.00, 200, 1),
       ('Refri', 'Bebidas', 10.00, 100, 2),
       ('Geleia', 'Conservas', 700.00, 50, 3);

INSERT INTO Venda (Data, Total, ID_Cliente, ID_Pagamento) 
VALUES ('2024-09-19', 50.50, 1, 1),
       ('2024-09-18', 90.00, 2, 1);

INSERT INTO Pagamento (Tipo_Pagamento, Valor, Data, ID_Venda) 
VALUES ('Cartão de Crédito', 50.50, '2024-09-19', 1);

INSERT INTO Item_Venda (ID_Venda, ID_Produto, Quantidade, Preço) 
VALUES (1, 1, 2, 20.50),
       (1, 2, 1, 15.00);

INSERT INTO Funcionario (Nome, Cargo, Salário) 
VALUES ('Carlos Pereira', 'Gerente', 4500.00),
       ('Ana Lima', 'Caixa', 2500.00),
       ('Lima Attack', 'Caixa', 2500.00),
       ('Lohane Vekanandre', 'Repositor', 2500.00);
