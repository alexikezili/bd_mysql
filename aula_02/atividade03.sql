create database db_escola;
use db_escola;
create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
dtNascimento date not null,
nota decimal(4,1) not null,
sala bigint not null,
primary key (id)
);

insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("Ash", "2000-01-10", 10, 4);
insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("Misty", "2000-03-12", 9, 4);
insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("Brock", "1996-09-07", 7, 8);
insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("Red", "2000-06-20", 10, 4);
insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("Jesse", "1996-01-18", 3, 8);
insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("James", "1996-10-28", 2, 8);
insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("Meowth", "1999-01-02", 4, 5);
insert into tb_estudantes(nome, dtNascimento, nota, sala)
values("Satoshi", "1999-01-10", 10, 5);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 10 where id = 2;