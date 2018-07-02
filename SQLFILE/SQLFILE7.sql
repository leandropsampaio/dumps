create database bancodedados;

use bancodedados;

create table usuarios(
	id int,
	nome varchar(30) not null,
    primary key(id)
)default charset = utf8;

drop table cursos;
drop table usuarios;

truncate usuarios;

insert into usuarios (nome, saldo) values
('Adriana', 100),
('Leandro', 800),
('Carlos', 223),
('Pedro', 47),
('Felipe', 65),
('Igor', 97),
('João', 750),
('William', 760),
('Ana Rita', 300),
('Jane', 630);

select *from usuarios;

alter table usuarios
modify column id int auto_increment;

alter table usuarios
add primary key(id);

describe usuarios;

select * from usuarios;

alter table usuarios
add column saldo int not null default '0';

///////////////////////////////////////////////////////////////////;

truncate usuarios;

select * from usuarios;

select * from usuarios
order by saldo desc;

select * from usuarios
where saldo <= 500;

select count(*) from usuarios;


describe mensagens;

select * from mensagens;

///////////////////////////////////////////////////////////////////;


use cadastro3;
describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);

select * from gafanhotos;

select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';

select gafanhotos.nome, cursos.nome
from gafanhotos join cursos /*inner join ou apenas join | left join e right join*/
on gafanhotos.cursopreferido = cursos.idcurso;
order by gafanhotos.nome;

create table assiste(
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key(idgafanhoto) references gafanhotos(id),
    foreign key(idcurso) references cursos(idcurso)
) default charset = utf8;

insert into assiste values
(default, '2015-03-01', '1', '2');

select * from assiste;

select * from gafanhotos
join assiste
on gafanhotos.id = assiste.idgafanhoto
join cursos c
on c.idcurso = assiste.idcurso
order by gafanhotos.nome;



