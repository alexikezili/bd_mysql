create database db_ecommerce;
use db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal(8,2) not null,
estoque bigint,
promocao boolean,
primary key(id)
);

insert into tb_produtos(nome, valor, estoque, promocao)
values("PS5", 3500, 200, 0);
insert into tb_produtos(nome, valor, estoque, promocao)
values("Xbox", 200, 2, 1);
insert into tb_produtos(nome, valor, estoque, promocao)
values("Switch 2", 4500, 100, 0);
insert into tb_produtos(nome, valor, estoque, promocao)
values("PS4", 1800, 36, 1);
insert into tb_produtos(nome, valor, estoque, promocao)
values("Joystick DualSense", 350, 500, 0);
insert into tb_produtos(nome, valor, estoque, promocao)
values("Elden Ring PS5", 350, 200, 1);
insert into tb_produtos(nome, valor, estoque, promocao)
values("HeadSet", 200, 100, 1);
insert into tb_produtos(nome, valor, estoque, promocao)
values("Monitor", 700, 23, 1);

update tb_produtos set valor = 150 where id = 2;

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;