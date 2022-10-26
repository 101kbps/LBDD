create database Teste;
use teste;
drop table aluno;

create table aluno
(
matricula integer not null auto_increment,
nome char(80) not null,
rg integer not null,
sexo char(1),
curso smallint not null,
primary key(matricula),
foreign key (curso) references curso (idcurso)
)
engine=InnoDB;
 
create table curso
(
idcurso smallint not null auto_increment,
nome varchar(80) not null,
primary key(idcurso)
)
engine=InnoDB

select *
from curso;

select *
from aluno;
/* INSERIR COLUNA*/
Alter table aluno
add cpf integer not null;

/* DROPAR COLUNA*/
Alter table aluno
drop column cpf;

insert into curso
(idcurso,nome)
values
(3,'BD');

insert into curso
(nome)
values
('TSI');

select *
from curso;

insert into curso
values
(5,'MKT');

select *
from curso;

insert into curso
(nome,idcurso)
values
('RH',6);

select*
from curso;

INSERT INTO `teste`.`aluno`
(`matricula`,
`nome`,
`rg`,
`sexo`,
`curso`)
VALUES
(20,
"joao",
3456,
"M",
4);

select *
from aluno;

INSERT INTO `teste`.`aluno`
(`nome`,
`rg`,
`sexo`,
`curso`)
VALUES
(
"Paulo",
3456,
"M",
4);

select *
from Aluno;

UPDATE `teste`.`aluno`
SET `rg` = 9876
WHERE `matricula` = 21;

select*
from aluno;

delete from aluno
where matricula = 21;

select *
from aluno;
