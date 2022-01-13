-- Criar e selecionar banco de dados do game
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Criar tabela de classes de personagem
CREATE TABLE tb_classe(
	id_classe INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    carisma INT NOT NULL,    
    inteligencia INT NOT NULL
);

-- Criar tabela de personagens
CREATE TABLE tb_personagem (
	id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    origem VARCHAR(30) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    id_classe INT NOT NULL,
    FOREIGN KEY (id_classe) REFERENCES tb_classe(id_classe)
);

-- Preencher tabela de classes
INSERT INTO tb_classe (tipo, carisma, inteligencia) VALUES
	('Arqueiro', 6, 8),
    ('Druida', 7,6),
    ('Bardo', 4, 5),
    ('Paladino', 7, 5),
    ('Louco do saco', 9, 9);
    
SELECT * FROM tb_classe;
    
-- Preencher tabela personagens
INSERT INTO tb_personagem (nome, origem, ataque, defesa, id_classe) VALUES
	('Homero', 'Vale das Laranjas', 1400, 1600, 4),
    ('Seu Gerônimo', 'Desconhecida', 5000, 5000, 5),
    ('Rose', 'Montanha Amarela', 900, 1200, 3),
    ('Florismundo', 'Além-Mar', 3400, 1000, 1),
    ('Fausto Silva', 'Onde o sol é laranja', 5500, 1000, 1),
    ('Cléber', 'Logo ali', 8800, 3000, 2),
    ('Rodolfo', 'Ponte Vermelha', 3500, 3000, 4),
    ('Bete', 'Vale dos Pinhoes', 6600, 400, 3);

SELECT * FROM tb_personagem;

-- Personagens com ataque maior do que 200
SELECT * FROM tb_personagem WHERE ataque > 2000;

-- Personagem com defesa entre 1000 e 2000
SELECT * FROM tb_personagem WHERE defesa > 1000 AND defesa < 2000;

-- Personagens que tem a letra C
SELECT * FROM tb_personagem WHERE nome LIKE '%C%';

-- Inner join entre tb_personagem e tb_classe
SELECT P.id_personagem, P.nome, P.origem, P.ataque, P.defesa,
	C.id_classe, C.tipo, C.carisma, C.inteligencia
		FROM tb_personagem as P
		INNER JOIN tb_classe as C
		ON P.id_classe = C.id_classe;
    
-- Selecionar só personagens arqueiros
SELECT * FROM tb_personagem
	WHERE id_classe = 1;