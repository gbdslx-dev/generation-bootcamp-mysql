CREATE DATABASE db_lojinha;    

USE db_lojinha;

CREATE TABLE produtos (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(40) NOT NULL,
	valor DECIMAL(7,2) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    fornecedor VARCHAR(30) NOT NULL,
	fabricante VARCHAR(30) NOT NULL
);
           
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Disco Voador VW', '599.90', 'OVNI', 'Sirius INC', 'Sirius B UFO Builder');
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Challenger', '399.90', 'Onibus Espacial', 'Naves Usadas Ltda', 'NASA');
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Sputnik', '799.90', 'Satélite', 'Naves Usadas Ltda', 'USSR');
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Disco Voador Super Slim 5000', '299.90', 'OVNI', 'Naves Usadas Ltda', 'Sirius B UFO Builder');
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Shadowslider 2000', '499.90', 'Nave de corrida', 'Sirius INC', 'Sirius B UFO Builder');
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Varginha Traveller', '699.90', 'OVNI', 'Naves Usadas Ltda', 'Sirius B UFO Builder');
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Silver Light X570', '399.90', 'OVNI', 'Sirius INC', 'Sirius B UFO Builder');
INSERT INTO produtos (descricao, valor, tipo, fornecedor, fabricante)
VALUES ('Roswell Intruder', '599.90', 'OVNI', 'Sirius INC', 'Sirius B UFO Builder');

SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET
	descricao = 'Disco Voador VW Liga Leve',
    fabricante = 'Volkswagen'
    WHERE id = 1;
    