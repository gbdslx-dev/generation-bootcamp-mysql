CREATE DATABASE db_escuelita;

USE db_escuelita;

CREATE TABLE alunos (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    idade INT NOT NULL,
    telefone BIGINT NOT NULL,
    media INT NOT NULL        
);

INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Pedrinho', '8', '11943455566', '6');
INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Mariazinha', '7', '11943436633', '8');
INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Claudinho', '11', '11934456644', '8');
INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Borges', '7', '11946778990', '4');
INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Rodolfo', '8', '11966635367', '6');
INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Josefina', '10', '11946663772', '9');
INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Gertrudes', '9', '11962849874', '8');
INSERT INTO alunos (nome, idade, telefone, media)
VALUES ('Wesley', '8', '11973854566', '9');

SELECT * FROM alunos WHERE media > 7;

SELECT * FROM alunos WHERE media < 7;

UPDATE alunos SET 
	nome = 'Filipa',
    idade = '8',
    telefone = '11936789667',
	media = '4'
    WHERE id = 2;