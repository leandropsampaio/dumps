/*
default character set utf8
default collate utf8_general_ci;

create table pessoas( CRIANDO TABELA!
	id int not null auto_increment,
	nome varchar(30) not null,
	nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5,2),amizades,
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasil',   
	primary key(id)
) default charset = utf8;

insert into pessoas INSERINDO PESSOAS!
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('MARIA', '2000-12-05', 'F', '50.5', '1.70', 'Portugal'),
('PEDRO', '2000-12-05', 'M', '55.5', '1.70', 'França'),
('JOÃO', '2000-12-05', 'M', '50.5', '1.70', 'Suécia'),
('CARLOS', '2000-12-05', 'M', '50.5', '1.70', default);
*/
select * from pessoas; /*VER TODAS AS PESSOAS CADASTRADAS*/
describe pessoas; /*DESCREVER OS ATRIBUTOS DE PESSOAS*/


alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(10) after* nome;

alter table pessoas
add column codigo int first;

alter table pessoas
modify column profissao varchar(20) not null default '';

alter table pessoas
change column prof profissao varchar(20);

alter table teste
rename to pessoas;


create table if not exists cursos(
	nome varchar(30) not null unique,
	descricao text,
	carga int unsigned,
    totalaulas int,
    ano year default '2016'
) default charset = utf8;

alter table cursos
add column idCurso int first;

alter table cursos
add primary key(idcurso);

describe cursos;

/*drop table cursos; APAGAR TABELA CURSOS! */ 

/*MANIPULAÇÃO DE LINHAS!*/
select * from cursos;

insert into cursos values
('1', 'Html', 'Curso de Html', '30', '10', '2016'),
('2', 'Html1', 'Curso de Html', '30', '10', '2016'),
('3', 'Html2', 'Curso de Html', '30', '10', '2016'),
('4', 'Html3', 'Curso de Html', '30', '10', '2016'),
('5', 'Html4', 'Curso de Html', '30', '10', '2016'),
('6', 'Html5', 'Curso de Html', '30', '10', '2016');

update cursos
set nome = 'HTML10'
where idcurso = '1'; /*MODIFICAR DADO DE UMA LINHA!*/

update cursos
set nome = 'HTML25'
where idCurso = '1';

delete from cursos
where idCurso='5'; /*DELETAR UMA LINHA ESPECÍFICA*/

truncate cursos;

create database aularedesocial
default character set utf8
default collate utf8_general_ci;







