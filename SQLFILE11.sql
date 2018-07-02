use cadastro;
describe gafanhotos;

select * from cursos;
select * from gafanhotos;

select nome, curso from gafanhotos;

alter table gafanhotos add curso int;

alter table gafanhotosanuncio
add foreign key(curso)
references cursos(idcurso);

update gafanhotos set curso = '100' where id = '10';

delete from cursos where id = '6';

select gafanhotos.nome, cursos.nome 
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.curso
order by gafanhotos.nome;

//////////////////////////////////////////////////

ALTER TABLE estado DROP FOREIGN KEY idEstado;

drop database mydb;

truncate table cidade;

create database aularedesocial;










