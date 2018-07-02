create database empresa2;
use empresa;

drop database cadastrousuariousuárioanúncioanúncio;

drop table fufuncionarios_possui_funcoes;
drop table funcionario;
drop table funcao;

create table funcionario(
	idFuncionario int not null auto_increment,
    nome varchar(30) not null,
    primary key(idFuncionario)
);

create table funcionarios_possui_funcoes(
	idFuncionario int,
    idFuncao int,
	foreign key(idFuncionario) references funcionario(idFuncionario),
    foreign key(idFuncao) references funcao(idFuncao)
);

create table funcao(
	idFuncao int not null auto_increment,
    nome varchar(30) not null,
    primary key(idFuncao)
);

insert into funcionario values
(default, 'Leandro'),
(default, 'Adriana'),
(default, 'Jane'),
(default, 'Ana Rita'),
(default, 'Pedro'),
(default, 'Dunga');

select * from funcionario;
describe funcao;

insert into funcao values
(default, 'Lavador'),
(default, 'Gerente'),
(default, 'Empresário'),
(default, 'Pintor'),
(default, 'Eletricista');

select * from funcao;
describe funcionarios_possui_funcoes;

insert into funcionarios_possui_funcoes values
('1','1'),
('2','1'),
('3','2'),
('2','4'),
('3','5'),
('3','1'),
('4','2'),
('1','4'),
('4','5'),
('3','3');

select * from funcionarios_possui_funcoes;

select * from funcionario
join funcionarios_possui_funcoes
on funcionario.idFuncionario = funcionarios_possui_funcoes.idFuncionario
join funcao
on funcao.idFuncao = funcionarios_possui_funcoes.idFuncao
order by funcionario.nome;

