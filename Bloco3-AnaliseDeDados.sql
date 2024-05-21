-- Curso básico de MySQL

-- BLOCO 3: ANALISE DE DADOS NO SQL

-- CALCULOS: COUNT, SUM, AVG, MIN, MAX

-- COUNT
select * from produtos;
select count(Nome_Produto) from produtos;

-- SUN
select * from pedidos;
select sum(Receita_Venda) from pedidos;

-- AVG, MIN, MAX
select * from produtos;
select 
	avg (Preco_Unit), 
	min(Preco_Unit), 
    max(Preco_Unit) 
from produtos;

-- GROUP BY

select Marca_Produto, count(*) from produtos group by Marca_Produto;

-- INNER JOIN: RELACIONAMENTOS 

select * from produtos;
select * from categorias;

select 
	Produtos.Nome_Produto,
    Produtos.ID_Categoria,
    Produtos.Marca_Produto,
    Categoria.Categoria 
from produto
inner join categorias 
on produto.ID_Categoria = categorias.ID_Categorias;

-- --------------------------------------------------------

select * from produtos;
select * from pedidos;

select
	Produtos.Marca_Produto,
    sum(Pedidos.Receita_Venda)
from Pedidos 
inner join Produtos
on Pedidos.ID_Produto = Produtos.ID_Produto
group by Produto.Marca_Produto;

-- VIEW

create view viewClientesM as select * from clientes where Sexo = 'M';

select * from viewClientesM; 