-- Criar e selecionar banco de dados da quitanda
CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

-- Criar tabela categoria
CREATE TABLE tb_categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(30),
    fornecedor VARCHAR(30)
);

-- Criar tabela de produtos
CREATE TABLE tb_produto(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    valor FLOAT,
    quantidade INT,
	id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

-- Inserir itens na tabela categoria
INSERT INTO tb_categoria(categoria, fornecedor) VALUES 
	("Fruta", "Seu Abel"),
	("Verduras", "Dona Marcelina"),
	("Temperos", "Seu Joaquim");

SELECT * FROM tb_categoria;

INSERT INTO tb_produto(nome, valor, quantidade, id_categoria) VALUES
	("Limão", 5.40, 10, 1),
	("Rúcula", 9.50, 50, 2),
	("Orégano", 6.70, 7, 3),
	("Maçã muito cara", 70.40, 10, 1),
	("Manjericão", 9.90, 30, 3),
	("Alface", 3.30, 7, 2),
	("Cenoura", 5.90, 10, 2),
	("Morango", 89.70, 7, 1);

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
        
-- Selecionar todos os temperos
SELECT * FROM tb_produto WHERE id_categoria = 3;