-- Active: 1789853535995@@127.0.0.1@3306@ecommerce

-- Categoria
INSERT INTO categoria (nome, descricao) VALUES ('Eletrônicos', 'Produtos eletrônicos em geral');
INSERT INTO categoria (nome, descricao) VALUES ('Informática', 'Produtos para computadores e notebooks');
INSERT INTO categoria (nome, descricao) VALUES ('Celulares', 'Celulares e smartphones');
INSERT INTO categoria (nome, descricao) VALUES ('Acessórios', 'Acessórios para dispositivos eletrônicos');
INSERT INTO categoria (nome, descricao) VALUES ('Games', 'Produtos para jogos e videogames');

-- Produto

INSERT INTO produto (nome, descricao, estoque, preco)
VALUES ('Notebook', 'Notebook para uso pessoal', 10, 3500.00);

INSERT INTO produto (nome, descricao, estoque, preco)
VALUES ('Mouse', 'Mouse sem fio', 25, 80.00);

INSERT INTO produto (nome, descricao, estoque, preco)
VALUES ('Teclado', 'Teclado USB', 20, 120.00);

INSERT INTO produto (nome, descricao, estoque, preco)
VALUES ('Monitor', 'Monitor LED 24 polegadas', 15, 900.00);

INSERT INTO produto (nome, descricao, estoque, preco)
VALUES ('Headset', 'Headset com microfone', 12, 180.00);

-- Cliente

INSERT INTO cliente (nome, email, telefone)
VALUES ('João Silva', 'joao@email.com', '14999990001');

INSERT INTO cliente (nome, email, telefone)
VALUES ('Maria Souza', 'maria@email.com', '14999990002');

INSERT INTO cliente (nome, email, telefone)
VALUES ('Pedro Santos', 'pedro@email.com', '14999990003');

INSERT INTO cliente (nome, email, telefone)
VALUES ('Ana Oliveira', 'ana@email.com', '14999990004');

INSERT INTO cliente (nome, email, telefone)
VALUES ('Lucas Costa', 'lucas@email.com', '14999990005');

-- Pedidos

INSERT INTO pedido (data, status, valor_total, cliente_id)
VALUES ('2026-09-15 10:00:00', 'PENDENTE', 150.00, 1);

INSERT INTO pedido (data, status, valor_total, cliente_id)
VALUES ('2026-09-16 11:30:00', 'PAGO', 250.00, 2);

INSERT INTO pedido (data, status, valor_total, cliente_id)
VALUES ('2026-09-17 14:00:00', 'ENVIADO', 350.00, 3);

INSERT INTO pedido (data, status, valor_total, cliente_id)
VALUES ('2026-09-18 09:15:00', 'PENDENTE', 180.00, 4);

INSERT INTO pedido (data, status, valor_total, cliente_id)
VALUES ('2026-09-19 16:45:00', 'PAGO', 420.00, 5);

-- ItemPedido

INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id)
VALUES (2, 80.00, 1, 1);

INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id)
VALUES (1, 3500.00, 2, 2);

INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id)
VALUES (3, 120.00, 3, 3);

INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id)
VALUES (1, 900.00, 4, 4);

INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id)
VALUES (2, 180.00, 5, 5);

--Pagamento 

INSERT INTO pagamento (valor, data, status, pedido_id)
VALUES (150.00, '2026-09-15 10:30:00', 'PAGO', 1);

INSERT INTO pagamento (valor, data, status, pedido_id)
VALUES (250.00, '2026-09-16 12:00:00', 'PAGO', 2);

INSERT INTO pagamento (valor, data, status, pedido_id)
VALUES (350.00, '2026-09-17 14:30:00', 'PENDENTE', 3);

INSERT INTO pagamento (valor, data, status, pedido_id)
VALUES (180.00, '2026-09-18 09:45:00', 'PAGO', 4);

INSERT INTO pagamento (valor, data, status, pedido_id)
VALUES (420.00, '2026-09-19 17:00:00', 'PENDENTE', 5);
SHOW TABLES

SELECT id FROM pedido;

SELECT id FROM produto;