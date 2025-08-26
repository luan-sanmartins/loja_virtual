-- Iserir usuários
INSERT INTO usuarios (nome, email, cidade, data_cadastro) VALUES
('Luan Santos', 'luan@email.com', 'São Paulo', '2023-01-10'),
('Ana Oliveira', 'ana@email.com', 'Rio de janeiro', '2023-03-15'),
('Carlos Souza', 'carlos@email.com', 'Belo Horizonte', '2023-05-20');

INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook', 'Eletrônicos', 3500.00, 10),
('Mouse', 'Eletrônicos', 150.00, 50),
('Camiseta', 'Roupas', 80.00, 100),
('Tênis', 'Roupas', 200.00, 30);

-- Inserir pedidos
INSERT INTO pedidos (usuario_id, data_pedido, valor_total) VALUES
(1, '2023-08-01', 3650.00),
(2, '2023-08-05', 230.00);

-- Novo registro em pedidos
INSERT INTO pedidos (usuario_id, data_pedido, valor_total) VALUES
(1, '2023-10-09', 2000.00);

-- Novo registro em pedidos
INSERT INTO pedidos (usuario_id, data_pedido, valor_total) VALUES
(3, '2023-11-15', 1500.00);

-- Inserir itens do pedido
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 3500.00),
(1, 2, 1, 150.00),
(2, 3, 2, 80.00),
(2, 2, 1, 150.00);