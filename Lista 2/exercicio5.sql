-- Cria o banco de dados
CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

-- Tabela categoria
CREATE TABLE tb_categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(30),
    fornecedor VARCHAR(30)
);

-- Tabela Produto
CREATE TABLE tb_produto(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    valor FLOAT,
    quantidade INT,
	id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

-- Inserir categorias
INSERT INTO tb_categoria(categoria, fornecedor) VALUES 
	("Alvenaria", "Seu Abel"),
	("Elétrica", "Dona Marcelina"),
	("Encanamento", "Seu Joaquim");

SELECT * FROM tb_categoria;

-- Inserir produtos
INSERT INTO tb_produto(nome, valor, quantidade, id_categoria) VALUES
	("Bloco baiano", 5.40, 10, 1),
	("Tijolo", 9.50, 50, 1),
	("Cano PVC 50mm", 6.70, 7, 3),
	("Torneira Shostner", 70.40, 10, 3),
	("Tomada", 9.90, 30, 2),
	("Fio de cobre", 3.30, 7, 2),
	("Cimento 5kg", 25.90, 10, 1),
	("Muita Areia", 89.70, 7, 1);

SELECT * FROM tb_produto;

-- Selecionar produtos com valor maior que R$ 50,00
SELECT * FROM tb_produto WHERE valor > 50;

-- Selecionar produtos com valor entre R$ 3,00 e R$ 60,00
SELECT * FROM tb_produto WHERE valor > 3 and valor < 60;

-- Produtos que tem a letra C
SELECT * FROM tb_produto WHERE nome like '%C%';

-- Inner join entre tb_produto e tb_categoria
SELECT P.id_produto, P.nome, P.valor, P.quantidade,
	C.id_categoria, C.categoria, C.fornecedor
		FROM tb_produto as P
		INNER JOIN tb_categoria as C
		ON P.id_categoria = C.id_categoria;
        
-- Selecionar todos os produtos de alvenaria
SELECT * FROM tb_produto WHERE id_categoria = 1;