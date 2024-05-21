-- Curso básico de MySQL

-- BLOCO 4: CRIAÇÃO DE BANCO DE DADOS

-- Criar Banco de Dados
create database cursosql;

-- Usar o Banco de Dados criado
use cursosql;

-- CONSTRAINTS
	-- NOT NULL
	-- UNIQUE
    -- CHECK
    -- PRIMARY KEY
    -- FOREIGN KEY

-- Criar tabela
create table alunos(
	id_aluno int not null,
	nome varchar(100) not null,
	nota decimal(10, 2) not null,
	curso varchar(100) not null
);

select * from alunos;

-- Inserir dados na tabela
insert into alunos(id_aluno, nome, nota, curso)
values 
	(1, 'Ana', 8.5, 'SQL'),
	(2, 'Breno', 7, 'Python'),
	(3, 'Carla', 5, 'Excel');
    
-- Excluir tabela
drop table alunos;

-- Atualizar dados 
update alunos 
set nota = 8
where id_aluno = 3; 

-- Excluir dados da tabela 
delete from alunos
where id_aluno = 2;