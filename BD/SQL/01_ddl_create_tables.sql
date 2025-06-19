
-- SCRIPT DDL – CRIAÇÃO DAS TABELAS
-- Projeto: Sistema de Vendas (E-commerce)
-- Banco: PostgreSQL

CREATE TABLE Cliente (
    ID_Cliente SERIAL PRIMARY KEY,
    Tipo_Cliente VARCHAR(10) NOT NULL -- Física ou Jurídica
);

CREATE TABLE Pessoa_Fisica (
    ID_Cliente INT PRIMARY KEY,
    CPF CHAR(11) UNIQUE NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Data_Nascimento DATE NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente) ON DELETE CASCADE
);

CREATE TABLE Pessoa_Juridica (
    ID_Cliente INT PRIMARY KEY,
    CNPJ CHAR(14) UNIQUE NOT NULL,
    Razao_Social VARCHAR(100) NOT NULL,
    Nome_Fantasia VARCHAR(100),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente) ON DELETE CASCADE
);

CREATE TABLE Email (
    ID_Email SERIAL PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente) ON DELETE CASCADE
);

CREATE TABLE Telefone (
    ID_Telefone SERIAL PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    DDD CHAR(2) NOT NULL,
    Numero VARCHAR(9) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente) ON DELETE CASCADE
);

CREATE TABLE CEP (
    CEP CHAR(8) PRIMARY KEY,
    Bairro VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado CHAR(2) NOT NULL
);

CREATE TABLE Endereco (
    ID_Endereco SERIAL PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    CEP CHAR(8) NOT NULL,
    Numero VARCHAR(10) NOT NULL,
    Logradouro VARCHAR(150) NOT NULL,
    Tipo VARCHAR(20),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente) ON DELETE CASCADE,
    FOREIGN KEY (CEP) REFERENCES CEP(CEP)
);

CREATE TABLE Produtos (
    ID_Produto SERIAL PRIMARY KEY,
    Produto VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Categoria VARCHAR(50),
    Codigo_Barras VARCHAR(20) UNIQUE,
    Validade DATE,
    Tarja VARCHAR(50)
);

CREATE TABLE Estoque (
    ID_Estoque SERIAL PRIMARY KEY,
    ID_Produto INT NOT NULL,
    Quantidade INT NOT NULL,
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);

CREATE TABLE Pedidos (
    ID_Pedido SERIAL PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    Dia DATE NOT NULL,
    Hora TIME NOT NULL,
    Metodo_Pagamento VARCHAR(50),
    Valor_Total DECIMAL(10,2),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Vendas (
    ID_Pedido INT NOT NULL,
    ID_Produto INT NOT NULL,
    Quantidade INT NOT NULL,
    Preco_Venda DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ID_Pedido, ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);
