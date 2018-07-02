use cadastro;

alter table gafanhotos
add column cursopreferido int;

describe gafanhotos;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

update gafanhotos set cursopreferido='6' where id = '1';

select nome, ano from cursos;
select * from gafanhotos;

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido;




















