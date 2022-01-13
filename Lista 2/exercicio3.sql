-- Criar e selecionar banco de dados da farmácia
CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

DROP DATABASE db_farmacia_do_bem;

-- Criar tabela de categorias
CREATE TABLE tb_categoria (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(30) NOT NULL,
    subcategoria VARCHAR(30) NOT NULL
);

-- Criar tabela de produtos
CREATE TABLE tb_produto (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    lote BIGINT NOT NULL,
    valor FLOAT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

-- Preencher tabela de categoria
INSERT INTO tb_categoria (categoria, subcategoria) VALUES
	('Farmácia', 'Analgésicos'),
    ('Farmácia', 'Tarja Preta'),
    ('Cosméticos', 'Condicionador'),
    ('Nutrição', 'Suplmemento alimentar'),
    ('Cosméticos', 'Creme dental');
    
SELECT * FROM tb_categoria;
    
-- Preencher tabela produtos
INSERT INTO tb_produto (nome, lote, valor, id_categoria) VALUES
	('Creme dental Sorriso', 6876876, 5.00, 5),
    ('Creme dental Colgate', 6344476, 2.30, 5),
	('Dipirona', 5674445, 10.00, 1),
    ('Rivotril', 4457776, 30.00, 2),
    ('Suplemento super boi', 5577844, 65.00, 4),
    ('Condicionador Skala', 7668998, 25.00, 3),
    ('Paracetamol', 5577899, 2.00, 1),
    ('Sei lá', 5566443, 70.00, 2);

SELECT * FROM tb_produto;

-- Produtos com valor maior do que 50
SELECT * FROM tb_produto WHERE valor > 50;

-- Produtos com valor entre 3 e 60
SELECT * FROM tb_produto WHERE valor > 3 AND valor < 60;

-- Produtos que tem a letra C
SELECT * FROM tb_produto WHERE nome LIKE '%B%';

-- Inner join entre tb_produto e tb_categoria
SELECT P.id_produto, P.nome, P.lote, P.valor,
	C.id_categoria, C.categoria, C.subcategoria
		FROM tb_produto as P
		INNER JOIN tb_categoria as C
		ON P.id_categoria = C.id_categoria;
    
-- Selecionar só itens de farmácia
SELECT * FROM tb_produto
	WHERE id_categoria = 1;