-- 1. Produtos mais vendidos
SELECT p.Produto, SUM(v.Quantidade) AS Total_Vendido
FROM Vendas v
JOIN Produtos p ON v.ID_Produto = p.ID_Produto
GROUP BY p.Produto
ORDER BY Total_Vendido DESC;

-- 2. Total de vendas por cliente
SELECT 
    c.ID_Cliente,
    pf.Nome AS Nome_Cliente,
    SUM(pe.Valor_Total) AS Total_Gasto
FROM Cliente c
JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
JOIN Pedidos pe ON pe.ID_Cliente = c.ID_Cliente
GROUP BY c.ID_Cliente, pf.Nome;

-- 3. Estoque com menos de 20 unidades
SELECT p.Produto, e.Quantidade
FROM Estoque e
JOIN Produtos p ON e.ID_Produto = p.ID_Produto
WHERE e.Quantidade < 20;

-- 4. Clientes com mais de um e-mail
SELECT c.ID_Cliente, COUNT(e.ID_Email) AS Total_Emails
FROM Cliente c
JOIN Email e ON e.ID_Cliente = c.ID_Cliente
GROUP BY c.ID_Cliente
HAVING COUNT(e.ID_Email) > 1;

-- 5. Consulta detalhada de um pedido
SELECT 
    pe.ID_Pedido,
    pf.Nome AS Cliente,
    p.Produto,
    v.Quantidade,
    v.Preco_Venda,
    pe.Metodo_Pagamento
FROM Pedidos pe
JOIN Cliente c ON pe.ID_Cliente = c.ID_Cliente
JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
JOIN Vendas v ON v.ID_Pedido = pe.ID_Pedido
JOIN Produtos p ON p.ID_Produto = v.ID_Produto
WHERE pe.ID_Pedido = 1;
