select * from cursos 
order by nome desc; /*desc-Ordem decrescente*/

select * from cursos 
order by nome; /*Ordem crescente*/

select carga,nome from cursos
order by carga, nome;

select * from cursos
where ano = '2016'
order by nome;

select nome,descricao,ano from cursos
where ano <= '2015'
order by ano,nome;

select nome,ano from cursos
where ano between '2014' and '2016';

select nome, descricao, ano from cursos
where ano in(2014,2016)
order by ano;

select * from cursos
where carga > 35 and totaulas < 30;

select * from cursos
where nome like 'a%'; /*Todos os cursos que começam com a letra a*/

select * from cursos
where nome like '%a'; /*Todos os cursos que terminam com a letra a*/

select * from cursos
where nome like '%a%'; /*LETRA A EM TODOS OS LUGARES DO NOME*/

select * from cursos
where nome not like '%a%'; /*Nomes onde não possui letra a*/

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos;

select * from cursos where carga>40;

select max(carga) from cursos;

select min(carga) from cursos;

select nome, min(carga) from cursos;

select sum(totaulas) from cursos where ano = '2016';

select avg(totaulas) from cursos;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select ano, count(*) from cursos
group by ano
having ano > '2013'
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > '2015'
group by carga
having carga > '36.6';








