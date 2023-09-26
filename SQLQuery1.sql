/*	aula de 1205 introducao a linguagem sql 
	comando para criacao de banco de dados*/

create database teste;

/*	comando para acessar o banco de dados criado*/

use teste;

/*	tabela aluno*/

create table aluno (
	ra int,
	nome varchar(50),
	telefone int
	);

select * from aluno;

/*	comando alter, altera e inclui a coluna endereco com preenchimento obrigatorio*/

alter table aluno
add endereco varchar(50) not null;

/*comando drop (elminia)*/

alter table aluno
drop column telefone;

/*	comando para excluir a tabela aluno*/ 

drop table aluno;

/*	comando para eliminar o banco de dados inteiro*/ 

use master;
drop database teste;

/*	criacao da tabela aluno com restricoes de integridade e vazio*/

create database teste;

use teste;

create table aluno (
	ra int not null primary key,
	nome varchar(50) not null,
	telefone int
	);

/*	alterar a tabela aluno e incluir a coluna cpf compreenchimento obrigatorio*/

alter table aluno
add cpf varchar(11) not null;

/*	sql - dml (insert, update, delete select)*/

select * from aluno;

/*	selecionar apenas nome e telefone dos alunos*/

select nome, telefone from aluno; 

/*	insercao de dados na tabela aluno*/

insert into aluno values(
	21349,
	'brener',
	11975293,
	'aaaaa'
	);

/*	insercao apenas nas colunas com preenchimento obrigatorio*/

insert into aluno(ra, nome, cpf)
values(
	555,
	'ari',
	'kakaka'
	);

select * from aluno;

/*	insercao de varias linhas no mesmo comando*/

insert into aluno 
values (
	65165,
	'marta',
	64454654,
	'lnkdlkdn'
	),
		(65156,
		'branda',
		6615861,
		'ehgdhbfdg'
		);

/*	comando update que atualiza os registros*/
/*	atualizar o registro sem o telefone*/

update aluno 
set telefone = 64525465
where ra = 555;

/*	comando para eliminar linhas na tabela*/

delete from aluno 
where ra = 65156;

