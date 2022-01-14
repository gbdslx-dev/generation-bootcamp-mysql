-- Cria o banco de dados
CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

-- Tabela categoria
CREATE TABLE tb_categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(30),
    certificado TINYINT
);

-- Tabela Curso
CREATE TABLE tb_curso(
	id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    valor FLOAT,
    instrutor VARCHAR(50),
	id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

-- Inserir categorias
INSERT INTO tb_categoria(categoria, certificado) VALUES 
	("Programação", 1),
	("Culinária", 0),
	("Física", 1);

SELECT * FROM tb_categoria;

-- Inserir cursos
INSERT INTO tb_curso(nome, valor, instrutor, id_categoria) VALUES
	("Java Básico", 5.40, "Cléber", 1),
	("Python", 9.50, "Maria", 1),
	("Hackeando a Nasa", 6.70, "João", 1),
	("Como fazer gelatina", 70.40, "Aloisio", 2),
	("Suco de saquinho pra iniciantes", 9.90, "Jeferson", 2),
	("Colidindo partículas em casa", 3.30, "Felipe", 3),
	("Como criar uma bomba nuclear", 25.90, "Rosa", 3),
	("Fazendo bolo", 89.70, "Cleide", 2);

SELECT * FROM tb_curso;

-- Selecionar cursos com valor maior que R$ 50,00
SELECT * FROM tb_curso WHERE valor > 50;

-- Selecionar cursos com valor entre R$ 3,00 e R$ 60,00
SELECT * FROM tb_curso WHERE valor > 3 and valor < 60;

-- Cursos que tem a letra C
SELECT * FROM tb_curso WHERE nome like '%C%';

-- Inner join entre tb_curso e tb_categoria
SELECT P.id_curso, P.nome, P.valor, P.quantidade,
	C.id_categoria, C.categoria, C.fornecedor
		FROM tb_curso as P
		INNER JOIN tb_categoria as C
		ON P.id_categoria = C.id_categoria;
        
-- Selecionar todos os cursos de programação
SELECT * FROM tb_curso WHERE id_categoria = 1;