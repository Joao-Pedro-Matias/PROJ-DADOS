-- =========================================
-- SCRIPT DML – INSERÇÃO DE DADOS INICIAIS
-- =========================================

-- Clientes
INSERT INTO Cliente (Tipo_Cliente) VALUES ('Física'); -- ID 1
INSERT INTO Cliente (Tipo_Cliente) VALUES ('Jurídica'); -- ID 2

-- Pessoa Física
INSERT INTO Pessoa_Fisica (ID_Cliente, CPF, Nome, Data_Nascimento)
VALUES (1, '12345678901', 'Ana Souza', '1995-03-20');

-- Pessoa Jurídica
INSERT INTO Pessoa_Juridica (ID_Cliente, CNPJ, Razao_Social, Nome_Fantasia)
VALUES (2, '11222333000199', 'LojaTech LTDA', 'LojaTech');

-- E-mails
INSERT INTO Email (ID_Cliente, Email)
VALUES (1, 'ana.souza@email.com'), (2, 'contato@lojatech.com.br');

-- Telefones
INSERT INTO Telefone (ID_Cliente, DDD, Numero)
VALUES (1, '11', '912345678'), (2, '21', '30021234');

-- CEPs
INSERT INTO CEP (CEP, Bairro, Cidade, Estado)
VALUES ('01310930', 'Bela Vista', 'São Paulo', 'SP'),
       ('20040002', 'Centro', 'Rio de Janeiro', 'RJ');

-- Endereços
INSERT INTO Endereco (ID_Cliente, CEP, Numero, Logradouro, Tipo)
VALUES (1, '01310930', '50', 'Av. Paulista', 'Residencial'),
       (2, '20040002', '100', 'Rua da Loja', 'Comercial');

-- Produtos
INSERT INTO Produtos (Produto, Preco, Categoria, Codigo_Barras, Validade, Marca)
VALUES 
('Notebook Dell', 4500.00, 'Informática', '7891234567890', '2026-12-31', 'Dell'),
('Teclado Mecânico', 350.00, 'Periféricos', '7891234567883', '2025-11-30', 'Redragon');

-- Estoque
INSERT INTO Estoque (ID_Produto, Quantidade)
VALUES (1, 15), (2, 40);

-- Pedido
INSERT INTO Pedidos (ID_Cliente, Dia, Hora, Metodo_Pagamento, Valor_Total)
VALUES (1, '2025-06-10', '14:30', 'Pix', 4850.00);

-- Vendas (Pedido 1)
INSERT INTO Vendas (ID_Pedido, ID_Produto, Quantidade, Preco_Venda)
VALUES (1, 1, 1, 4500.00), (1, 2, 1, 350.00);
