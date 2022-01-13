-- Criar banco de dados
CREATE DATABASE db_hresources;

-- Selecionar o banco de dados
USE db_hresources;

-- Criar tabela
CREATE TABLE funcionarios ( 
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(45) NOT NULL, 
    salario DECIMAL (7,2) NOT NULL, 
    cpf BIGINT NOT NULL,
    cargo VARCHAR(25) NOT NULL    
);

-- Inserir valores na tabela
INSERT INTO funcionarios (id, nome, salario, cpf, cargo) 
VALUES ('1', 'David', '5000.00', '2312312312', 'Chefe'); 
INSERT INTO funcionarios (id, nome, salario, cpf, cargo) 
VALUES ('2', 'Armandão da massa', '20000.00', '2312312312', 'Chefe supremo'); 
INSERT INTO funcionarios (id, nome, salario, cpf, cargo) 
VALUES ('3', 'Gabriela', '5000.00', '2312312312', 'Crítica de filmes'); 
INSERT INTO funcionarios (id, nome, salario, cpf, cargo) 
VALUES ('4', 'Evelyn', '30000.00', '2312312312', 'CEO'); 
INSERT INTO funcionarios (id, nome, salario, cpf, cargo) 
VALUES ('5', 'Edgar', '5000.00', '2312312312', 'Mestre de Toddy'); 

-- Mostrar o que tem na tabela
SELECT * FROM funcionarios;

SELECT * FROM funcionarios WHERE salario < 2000;

SELECT * FROM funcionarios WHERE salario > 2000;
