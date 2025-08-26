-- Selecionar todos os usuários que moram em "São Paulo".
SELECT * FROM usuarios WHERE cidade = 'São Paulo';

-- Listar o nome e preço dos produtos da categoria "Roupas".
SELECT nome, preco FROM produtos WHERE categoria = 'Roupas';

-- Mostrar todos os pedidos com valor total maior que 300.
SELECT * FROM pedidos WHERE valor_total > 300;

-- Exibir os nomes dos usuários e os valores totais de seus pedidos.
SELECT u.nome, p.valor_total FROM usuarios u JOIN pedidos p ON u.id = p.usuario_id;

-- Listar os produtos que ainda têm estoque menor que 20 unidades.
SELECT * FROM produtos WHERE estoque < 20;

-- Contar quantos pedidos cada usuário fez.
SELECT u.nome, p.usuario_id FROM usuarios u JOIN pedidos p ON u.id = p.usuario_id;

-- Mostrar todos os itens de pedido do pedido com id = 1, incluindo nome do produto.
SELECT u.nome, COUNT(p.id) AS total_pedidos
FROM usuarios u
LEFT JOIN pedidos p ON u.id = p.usuario_id
GROUP BY u.nome;

-- Atualizar o preço do produto “Mouse” para 180.
UPDATE produtos SET preco = 180.00 WHERE id = 2;

-- Excluir todos os pedidos feitos por usuários da cidade “Belo Horizonte”.
DELETE p FROM pedidos p JOIN usuarios u ON p.usuario_id = u.id WHERE u.cidade = 'Belo Horizonte';

-- Listar os 3 produtos mais caros.
SELECT nome, preco FROM produtos ORDER BY preco DESC LIMIT 3;
