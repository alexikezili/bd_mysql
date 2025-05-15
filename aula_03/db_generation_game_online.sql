create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
id bigint not null auto_increment,
nome_classe varchar(255) not null,
poder varchar(255),
primary key(id)
);

create table tb_personagens (
id bigint not null auto_increment,
nome varchar(255) not null,
altura int not null,
poder_atk int not null,
poder_def int not null,
classe_id bigint not null,
primary key(id),
constraint fk_personagens_classes
foreign key(classe_id) references tb_classes(id)
);

insert into tb_classes(nome_classe, poder)
values 
("Guerreiro", "Ganha no empate de força"), 
("Mago", "Ataca à distância"),
("Tanque", "Sofre -30% de dano físico"),
("Atirador", "Causa acerto crítico 2.5x"),
("Curandeiro", "Cura aliados");

insert into tb_personagens(nome, altura, poder_atk, poder_def, classe_id)
values
("Pirulito", 210, 3000, 200, 2),
("Josias", 160, 2500, 1700, 1),
("Cleitin", 170, 2800, 1000, 4),
("Ronaldo", 183, 3000, 2500, 1),
("CR7", 187, 2000, 4000, 3),
("Gaúcho", 183, 8000, 1000, 2),
("Goku", 178, 2000, 3000, 3),
("Chicorita", 39, 1000, 1000, 5);

select * from tb_personagens where poder_atk > 2000;
select * from tb_personagens where poder_def between 1000 and 2000;
select * from tb_personagens where nome like "%c%";
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id;
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id where classe_id = 2;