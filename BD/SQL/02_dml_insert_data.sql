 -- dml PROJETO-FARMÁCIA
INSERT INTO Cliente (Tipo_Cliente) VALUES ('Física');  -- ID 1
INSERT INTO Cliente (Tipo_Cliente) VALUES ('Jurídica'); -- ID 2
INSERT INTO Cliente (Tipo_Cliente) VALUES ('Física');  -- ID 3
INSERT INTO Cliente (Tipo_Cliente) VALUES ('Jurídica'); -- ID 4

INSERT INTO Pessoa_Fisica (ID_Cliente, CPF, Nome, Data_Nascimento)
VALUES 
(1, '12345678901', 'Ana Souza', '1995-03-20'),
(3, '98765432100', 'Carlos Mendes', '1988-10-15');

INSERT INTO Pessoa_Juridica (ID_Cliente, CNPJ, Razao_Social, Nome_Fantasia)
VALUES 
(2, '11222333000199', 'Drogaria Vida LTDA', 'Farmácia Vida'),
(4, '55667788000122', 'Clínica Bem Estar', 'Clínica Bem Estar');

INSERT INTO Email (ID_Cliente, Email)
VALUES 
(1, 'ana.souza@email.com'),
(2, 'contato@farmaciavida.com.br'),
(3, 'carlosmendes@email.com'),
(4, 'contato@clinicabemestar.com');

INSERT INTO Telefone (ID_Cliente, DDD, Numero)
VALUES 
(1, '11', '912345678'),
(2, '21', '30021234'),
(3, '19', '998877665'),
(4, '31', '32211234');

-- CEPs
INSERT INTO CEP (CEP, Bairro, Cidade, Estado)
VALUES 
('01310930', 'Bela Vista', 'São Paulo', 'SP'),
('20040002', 'Centro', 'Rio de Janeiro', 'RJ'),
('13050002', 'Jardim Proença', 'Campinas', 'SP');

INSERT INTO Endereco (ID_Cliente, CEP, Numero, Logradouro, Tipo)
VALUES 
(1, '01310930', '50', 'Av. Paulista', 'Residencial'),
(2, '20040002', '100', 'Rua da Farmácia', 'Comercial'),
(3, '13050002', '456', 'Rua das Rosas', 'Residencial'),
(4, '20040002', '300', 'Av. Central', 'Comercial');

INSERT INTO Produtos (ID_Produto, Produto, Preco, Categoria, Codigo_Barras, Validade, Tarja)
VALUES 
(1, 'Dipirona 500mg – 20 comprimidos', 9.90, 'Analgésico', '7896015512345', '2026-12-31', 'Isento'),
(2, 'Paracetamol 750mg – 20 comprimidos', 11.50, 'Antitérmico', '7891058009876', '2026-08-30', 'Isento'),
(3, 'Amoxicilina 500mg – 21 cápsulas', 28.90, 'Antibiótico', '7896422512367', '2025-12-01', 'Vermelha'),
(4, 'Protetor Solar FPS 50 – 200ml', 49.90, 'Dermocosmético', '7891910001133', '2026-10-15', 'Isento');

INSERT INTO Estoque (ID_Produto, Quantidade)
VALUES 
(1, 100),
(2, 120),
(3, 50),
(4, 30);

INSERT INTO Pedidos (ID_Cliente, Dia, Hora, Metodo_Pagamento, Valor_Total)
VALUES (1, '2025-06-10', '14:30', 'Pix', 21.40);

INSERT INTO Vendas (ID_Pedido, ID_Produto, Quantidade, Preco_Venda)
VALUES (1, 1, 1, 9.90),
       (1, 2, 1, 11.50);

INSERT INTO Pedidos (ID_Pedido, ID_Cliente, Dia, Hora, Metodo_Pagamento, Valor_Total)
VALUES (2, 3, '2025-06-12', '10:15', 'Cartão de Crédito', 28.90);

INSERT INTO Vendas (ID_Pedido, ID_Produto, Quantidade, Preco_Venda)
VALUES (2, 3, 1, 28.90);

INSERT INTO Pedidos (ID_Pedido, ID_Cliente, Dia, Hora, Metodo_Pagamento, Valor_Total)
VALUES (3, 4, '2025-06-13', '09:00', 'Boleto', 99.80);

INSERT INTO Vendas (ID_Pedido, ID_Produto, Quantidade, Preco_Venda)
VALUES (3, 4, 2, 49.90);
