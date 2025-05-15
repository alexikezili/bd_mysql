create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
id bigint not null auto_increment,
nome_categoria varchar(255) not null,
descricao varchar(255),
primary key(id)
);

create table tb_pizzas (
id bigint not null auto_increment,
sabor varchar(255) not null,
descricao varchar(255),
valor decimal(5,2) not null,
tamanho varchar(1),
categoria_id bigint not null,
primary key(id),
constraint fk_pizzas_categoria
foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias(nome_categoria, descricao)
values 
("Tradicional", "Pizzas tradicionais, mais conhecidas"), 
("Premium", "Pizzas especiais"),
("Doce", "Pizzas doces"),
("Vegetariana", "Pizzas para vegetarianos (Podem conter ovos e laticínios)"),
("Sem glúten", "Pizzas com massa especial sem glúten");

insert into tb_pizzas(sabor, descricao, valor, tamanho, categoria_id)
values
("Calabresa", "Calabresa fatiada com cebola em tiras", 49.90, "G", 1),
("Atum", "Atum sólido com cebola em tiras", 69.90, "G", 2),
("4 Queijos", "Queijo gorgonzola, muçarela, requeijão culinário e parmesão", 69.90, "G", 4),
("Calabresa Especial", "Calabresa fatiada com catupiry e tomate", 59.90, "G", 2),
("Mussarela", "Muçarela e tomate", 49.90, "G", 1),
("Baiana", "Calabresa moída e molho de pimenta", 49.90, "G", 1),
("Frango Catupiry", "Frango desfiado com catupiry", 54.90, "G", 1),
("Chocolate", "Chocolate ao leite", 59.90, "B", 3);

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor between 50 and 100;
select * from tb_pizzas where sabor like "%m%";
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id where categoria_id = 3;