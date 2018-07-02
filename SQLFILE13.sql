select * from cursos;
select * from gafanhotos;

alter table gafanhotos
delete column cursopreferido;

describe gafanhotos;

alter table gafanhotos drop cursopreferido;

update gafanhotos set curso='6' where id = '14';

select gafanhotos.nome, gafanhotos.curso, cursos.nome 
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.curso;


/////////////////////////////////////////////////////////////;


select * from usuarios;

describe usuarios;

alter table usuarios
add column senha varchar(40);

truncate usuarios;

alter table usuarios drop senha;

INSERT INTO usuarios (id,email,senha) VALUES (default,'$email','$senha');

alter table usuarios
modify column id int not null auto_increment;

alter table usuarios
add primary key(id);




INSERT INTO usuarios VALUES ('default','$nome','$email','$senha');


