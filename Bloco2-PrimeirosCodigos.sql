-- Curso básico de MySQL

-- BLOCO 2: PRIMEIROS CÓDIGOS NO SQL

-- Selecionando todas as colunas de uma tabela
select * from produtos;
select * from categorias;
select * from clientes;
select * from locais;

-- Selecionando algumas colunas de uma tabela: AS
select Nome as Nome_Completo, Email, Telefone from clientes;

-- Trabalhar com valores distinto: DISTINCT
select distinct Marca_Produto from produtos;

-- Ordenar as informações de uma tabela: ORDER BY
	-- asc: crescente 
    -- desc: decrescente
    -- Limitar a quantidade de linhas: LIMIT
    
select * from produtos
order by Preco_Unit asc;

select * from clientes
order by Nome asc, Sobrenome asc;

select * from produtos
order by Preco_Unit desc
limit 5;

-- FILTROS: WHERE, AND, OR, IN, BETWENN, LIKE, IS NULL
select * from clientes
where Qtd_Filhos > 0;

select * from clientes
where Renda_Anual >= 50000
order by Renda_Anual;

select * from clientes
where Escolaridade = 'Parcial';

-- Mais de um filtro
select * from clientes
where Sexo = 'M' and Qtd_Filhos > 0
order by Qtd_Filhos;

-- OR
select * from produtos
where Marc_Produto = 'DELL' or Preco_Unit >= 1000;

-- IN
select * from produtos
where Marca_Produto in ('DELL', 'SAMSUNG', 'MOTOROLA');

-- BETWEEN
select * from produtos
where Preco_Unit between 1000 and 3000;

-- lIKE
select * from produtos
where Nome_Produto like '%Microfone%';

-- IS NULL
select * from clientes
where Telefone is null;


