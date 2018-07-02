use register;
show databases;
drop table pessoas;
drop table cursos;
drop database registerr;

describe pessoas;
describe cursos;

select * from pessoas;

create database register;

create table pessoas(
	matricula int auto_increment not null,
    nome varchar(45) not null,
    curso int,
    primary key(matricula)
) default charset = utf8;

alter table pessoas
delete column

create table cursos(
	id int auto_increment not null,
    nome varchar(45) not null,
    duracao int,
    primary key(id)
) default charset utf8;

alter table pessoas
add foreign key(curso) references cursos(id);

alter table pessoas
drop foreign key curso;

alter table pessoas
drop foreign key curso;

alter table pessoas
drop index curso;

create table assiste(
	matricula int,
    idCurso int,
    foreign key(matricula) references pessoas(matricula),
    foreign key(idCurso) references cursos(id)
) default charset utf8;

insert into pessoas (nome) values
('Leandro'),
('Adriana'),
('Ana Rita'),
('Jane'),
('William'),
('João'),
('Roberto'),
('Carlos'),
('Fabiana'),
('Jéssica'),
('Pedro'),
('João');





























