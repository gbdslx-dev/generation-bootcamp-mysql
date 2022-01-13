-- Criar e selecionar banco de dados da pizzaria
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

DROP DATABASE db_pizzaria_legal;

-- Criar tabela de categorias de pizza
CREATE TABLE tb_categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(10) NOT NULL,
    sabor VARCHAR(30) NOT NULL,    
    valor FLOAT NOT NULL
);

-- Criar tabela de pizzas
CREATE TABLE tb_pizza(
	id_pizza INT PRIMARY KEY AUTO_INCREMENT,
    tamanho VARCHAR(10) NOT NULL,
    quantidade INT NOT NULL,
    num_pedido INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

-- Preencher tabela categoria
INSERT INTO tb_categoria (tipo, sabor, valor) VALUES
	('Doce', 'Brigadeiro', 35.00),
    ('Doce', 'Goiabada', 40.00),
    ('Salgada', 'Napolitana', 45.00),
    ('Salgada', 'Calabresa', 25.00),
    ('Salgada', 'Carne', 65.00);
    
SELECT * FROM tb_categoria;
    
-- Preencher tabela pizza
INSERT INTO tb_pizza (tamanho, quantidade, num_pedido, id_categoria) VALUES
	('Pequena', 1, 1, 3),
    ('Grande', 3, 1, 5),
    ('Média', 2, 2, 4),
    ('Pequena', 5, 2, 1),
    ('Grande', 20, 3, 2),
    ('Grande', 30, 3, 4),
    ('Pequena', 1, 4, 2),
    ('Pequena', 2, 5, 3);

SELECT * FROM tb_pizza;

-- Produtos com valor maior do que R$ 45,00
SELECT * FROM tb_categoria WHERE valor > 45;

-- Produtos com valor entre R$ 29,00 e R$ 60,00
SELECT * FROM tb_categoria WHERE valor > 29 AND valor < 60;

-- Produtos que tem a letra C
SELECT * FROM tb_categoria WHERE sabor LIKE 'C%';

-- Inner join entre tb_categoria e tb_pizza
SELECT P.id_pizza, P.tamanho, P.quantidade, P.num_pedido, C.id_categoria, C.tipo, C.sabor, C.valor
	FROM tb_pizza as P
	INNER JOIN tb_categoria as C
	ON P.id_categoria = C.id_categoria;
    
-- Selecionar só pizzas doces
SELECT * FROM tb_categoria
	WHERE tipo = 'Doce';