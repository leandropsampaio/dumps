show databases;

use test;

show tables;

describe usuario;
describe cursos;

create table cursos(
	id int auto_increment not null,
    nome varchar(45),
	primary key(id)
);

alter table usuario
add column cursopreferido int;

alter table usuario
add foreign key(cursopreferido) references cursos(id);

insert into usuario values
(null, "Adriana", null),
(null, "Leandro", null);

insert into cursos values
(null, 'Java'),
(null, 'C');

select * from usuario;
select * from cursos;

update usuario
set cursopreferido='1'
where id='1';

alter table usuario
modify column nome varchar(45) unique;

truncate usuario;

delete table usuario;
