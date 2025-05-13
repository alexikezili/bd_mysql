create database db_rh;
use db_rh;
create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
dtNascimento date not null,
salario decimal(10,2) not null,
dtContratacao datetime not null,
primary key (id)
);

insert into tb_colaboradores(nome, dtNascimento, salario, dtContratacao)
values("Alex", "1990-03-20", 1000.00, "2020-05-21");
insert into tb_colaboradores(nome, dtNascimento, salario, dtContratacao)
values("João", "1997-06-12", 2300.00, "2018-10-21");
insert into tb_colaboradores(nome, dtNascimento, salario, dtContratacao)
values("Maria", "1970-10-01", 8000.00, "2010-10-10");
insert into tb_colaboradores(nome, dtNascimento, salario, dtContratacao)
values("Pedro", "1992-03-20", 3000.00, "2018-05-21");
insert into tb_colaboradores(nome, dtNascimento, salario, dtContratacao)
values("Clara", "1990-03-20", 1400.00, "2019-05-21");

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 5000 where id = 1;