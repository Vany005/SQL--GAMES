CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nomeclasse VARCHAR(255),
especie VARCHAR(255),
PRIMARY KEY (id)
);


CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
poderataque BIGINT,
poderdefesa BIGINT,
genero VARCHAR(255),

tb_classes_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (tb_classes_id) REFERENCES tb_classes(id)
);
 INSERT INTO tb_classes(nomeclasse, especie)
 VALUES ("feiticeira", "Bruxa"),
 ("saqueador", "Anão"),
 ("Mago", "Elfo"),
 ("Guerreiro", "trols"),
 ("Magia", "fada");
 
 INSERT INTO tb_personagens(nome, poderataque, poderdefesa, genero, tb_classes_id)
 VALUES( "Mistica", 5000, 4000,"feminino", 1),
 ("Zangado", 3000, 1000, "Masculino", 2),
 ("Soneca", 3000, 1000, "Masculino", 2),
 ("Ciri", 4000, 6000, "Feminino", 3),
 ("Blob", 6000, 7000, "Masculino", 4),
 ("Bloom", 5000, 3000, "Feminino", 5),
 ("Stella", 5000, 3000, "Feminino", 5),
 ("Belatrix", 5000, 4000, "Feminino", 1);

 SELECT * FROM tb_personagens;
 SELECT * FROM tb_classes;
 
 SELECT * FROM tb_personagens WHERE poderataque > 2000;
 SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;
 
 SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
 
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.tb_classes_id = tb_classes.id;

SELECT tb_personagens.id, nome, poderataque, poderdefesa, genero, tb_classes.nomeclasse, tb_classes.especie 
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.tb_classes_id = tb_classes.id
WHERE tb_classes_id = 1;

SELECT tb_personagens.id, nome, poderataque, poderdefesa, genero, tb_classes.nomeclasse, tb_classes.especie 
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.tb_classes_id = tb_classes.id
WHERE tb_classes_id = 2;



 
