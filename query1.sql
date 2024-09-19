-- Create das Tabelas
CREATE TABLE Fornecedor (
    ID_Fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereço VARCHAR(255),
    Telefone VARCHAR(20)
);

CREATE TABLE Produto (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria VARCHAR(50),
    Preço DECIMAL(10, 2),
    Quantidade_Estoque INT,
    ID_Fornecedor INT,
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);

CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    CPF VARCHAR(11) UNIQUE
);

CREATE TABLE Venda (
    ID_Venda INT AUTO_INCREMENT PRIMARY KEY,
    Data DATE,
    Total DECIMAL(10, 2),
    ID_Cliente INT,
    ID_Pagamento INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Pagamento (
    ID_Pagamento INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_Pagamento VARCHAR(50),
    Valor DECIMAL(10, 2),
    Data DATE,
    ID_Venda INT UNIQUE,
    FOREIGN KEY (ID_Venda) REFERENCES Venda(ID_Venda)
);

CREATE TABLE Item_Venda (
    ID_Item INT AUTO_INCREMENT PRIMARY KEY,
    ID_Venda INT,
    ID_Produto INT,
    Quantidade INT,
    Preço DECIMAL(10, 2),
    FOREIGN KEY (ID_Venda) REFERENCES Venda(ID_Venda),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);

CREATE TABLE Funcionario (
    ID_Funcionário INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salário DECIMAL(10, 2)
);
