-- CONSULTAS DQL – FARMÁCIA - PROJETO (PostgreSQL)

-- 1. Produtos mais vendidos
SELECT 
    p.Produto, 
    SUM(v.Quantidade) AS Total_Vendido
FROM Vendas v
JOIN Produtos p ON v.ID_Produto = p.ID_Produto
GROUP BY p.Produto
ORDER BY Total_Vendido DESC;

-- 2. Total gasto por cliente (PF e PJ)
SELECT 
    c.ID_Cliente,
    COALESCE(pf.Nome, pj.Razao_Social) AS Nome_Cliente,
    SUM(pe.Valor_Total) AS Total_Gasto
FROM Cliente c
LEFT JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
LEFT JOIN Pessoa_Juridica pj ON c.ID_Cliente = pj.ID_Cliente
JOIN Pedidos pe ON pe.ID_Cliente = c.ID_Cliente
GROUP BY c.ID_Cliente, pf.Nome, pj.Razao_Social;

-- 3. Estoque
SELECT 
    p.Produto, 
    e.Quantidade
FROM Estoque e
JOIN Produtos p ON e.ID_Produto = p.ID_Produto


-- 4. Email dos clientes
SELECT 
    c.ID_Cliente,
    COALESCE(pf.Nome, pj.Razao_Social) AS Nome_Cliente,
    e.Email
FROM Cliente c
LEFT JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
LEFT JOIN Pessoa_Juridica pj ON c.ID_Cliente = pj.ID_Cliente
JOIN Email e ON c.ID_Cliente = e.ID_Cliente
ORDER BY Nome_Cliente;


-- 5. Consulta detalhada de um pedido
SELECT 
    pe.ID_Pedido,
    COALESCE(pf.Nome, pj.Razao_Social) AS Cliente,
    p.Produto,
    v.Quantidade,
    v.Preco_Venda,
    pe.Metodo_Pagamento
FROM Pedidos pe
JOIN Cliente c ON pe.ID_Cliente = c.ID_Cliente
LEFT JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
LEFT JOIN Pessoa_Juridica pj ON c.ID_Cliente = pj.ID_Cliente
JOIN Vendas v ON v.ID_Pedido = pe.ID_Pedido
JOIN Produtos p ON p.ID_Produto = v.ID_Produto
WHERE pe.ID_Pedido = 1;

-- 6. Produtos comprados por um cliente
SELECT 
    COALESCE(pf.Nome, pj.Razao_Social) AS Cliente,
    pr.Produto,
    v.Quantidade,
    v.Preco_Venda,
    pe.Dia
FROM Vendas v
JOIN Pedidos pe ON v.ID_Pedido = pe.ID_Pedido
JOIN Cliente c ON pe.ID_Cliente = c.ID_Cliente
LEFT JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
LEFT JOIN Pessoa_Juridica pj ON c.ID_Cliente = pj.ID_Cliente
JOIN Produtos pr ON v.ID_Produto = pr.ID_Produto
WHERE c.ID_Cliente = 1;

-- 7. Vendas realizadas em uma data
SELECT 
    pe.ID_Pedido,
    COALESCE(pf.Nome, pj.Razao_Social) AS Cliente,
    p.Produto,
    v.Quantidade,
    v.Preco_Venda
FROM Pedidos pe
JOIN Cliente c ON pe.ID_Cliente = c.ID_Cliente
LEFT JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
LEFT JOIN Pessoa_Juridica pj ON c.ID_Cliente = pj.ID_Cliente
JOIN Vendas v ON v.ID_Pedido = pe.ID_Pedido
JOIN Produtos p ON v.ID_Produto = p.ID_Produto
WHERE pe.Dia = '2025-06-10';

-- 8. Vendas agrupadas de acordo com a categoria de produto
SELECT 
    p.Categoria,
    SUM(v.Quantidade) AS Total_Unidades,
    SUM(v.Quantidade * v.Preco_Venda) AS Receita_Total
FROM Vendas v
JOIN Produtos p ON v.ID_Produto = p.ID_Produto
GROUP BY p.Categoria
ORDER BY Receita_Total DESC;

-- 9. Total de pedidos por cliente
SELECT 
    COALESCE(pf.Nome, pj.Razao_Social) AS Cliente,
    COUNT(pe.ID_Pedido) AS Total_Pedidos
FROM Pedidos pe
JOIN Cliente c ON pe.ID_Cliente = c.ID_Cliente
LEFT JOIN Pessoa_Fisica pf ON c.ID_Cliente = pf.ID_Cliente
LEFT JOIN Pessoa_Juridica pj ON c.ID_Cliente = pj.ID_Cliente
GROUP BY pf.Nome, pj.Razao_Social
ORDER BY Total_Pedidos DESC;
