create database estoque;
use estoque;

create table vendas (
vendas_id int primary key auto_increment,
produto varchar(50) not null,
quantidade int not null,
preco double not null
);

insert into vendas ( produto, quantidade, preco)
values ('Produto A', 10, 19.99),
('Produto B', 5, 29.99),
('Produto A', 8, 19.99),
('Produto C', 15, 39.99),
('Produto B', 12, 29.99),
('Produto C', 7, 39.99);


select * from vendas;

#Count
select count(*) as total_vendas
from vendas;

#Sum
select sum(quantidade) as total_produtos_vendidos
from vendas;

#Avg
select avg(preco) as media_preco_produtos
from vendas;

#Min
select min(preco) as menor_preco
from vendas;

#Max
select max(preco) as maior_preco
from vendas;

# GROUP BY
select produto, count(*)  as total_vendas
from vendas
group by produto;

# GROUP BY +  SUM
select produto, sum(quantidade) as total_produtos_vendidos
from vendas
group by produto;

# GROUP BY + AVG
select produto, avg(preco) as preco_medio
from vendas
group by produto;

# GROUP BY + MIN
select produto, MIN(preco) as produto_min
from vendas
group by produto;

create database estoque;
use estoque;

create table vendas (
vendas_id int primary key auto_increment,
produto varchar(50) not null,
quantidade int not null,
preco double not null
);

insert into vendas ( produto, quantidade, preco)
values ('Produto A', 10, 19.99),
('Produto B', 5, 29.99),
('Produto A', 8, 19.99),
('Produto C', 15, 39.99),
('Produto B', 12, 29.99),
('Produto C', 7, 39.99);


select * from vendas;

#Count
select count(*) as total_vendas
from vendas;

#Sum
select sum(quantidade) as total_produtos_vendidos
from vendas;

#Avg
select avg(preco) as media_preco_produtos
from vendas;

#Min
select min(preco) as menor_preco
from vendas;

#Max
select max(preco) as maior_preco
from vendas;

# GROUP BY
select produto, count(*)  as total_vendas
from vendas
group by produto;

# GROUP BY +  SUM
select produto, sum(quantidade) as total_produtos_vendidos
from vendas
group by produto;

# GROUP BY + AVG
select produto, avg(preco) as preco_medio
from vendas
group by produto;

# GROUP BY + MIN
select produto, MIN(preco) as produto_min
from vendas
group by produto;

create database estoque;
use estoque;

create table vendas (
vendas_id int primary key auto_increment,
produto varchar(50) not null,
quantidade int not null,
preco double not null
);

insert into vendas ( produto, quantidade, preco)
values ('Produto A', 10, 19.99),
('Produto B', 5, 29.99),
('Produto A', 8, 19.99),
('Produto C', 15, 39.99),
('Produto B', 12, 29.99),
('Produto C', 7, 39.99);


select * from vendas;

#Count
select count(*) as total_vendas
from vendas;

#Sum
select sum(quantidade) as total_produtos_vendidos
from vendas;

#Avg
select avg(preco) as media_preco_produtos
from vendas;

#Min
select min(preco) as menor_preco
from vendas;

#Max
select max(preco) as maior_preco
from vendas;

# GROUP BY
select produto, count(*)  as total_vendas
from vendas
group by produto;

# GROUP BY +  SUM
select produto, sum(quantidade) as total_produtos_vendidos
from vendas
group by produto;

# GROUP BY + AVG
select produto, avg(preco) as preco_medio
from vendas
group by produto;

# GROUP BY + MIN
select produto, min(preco) as menor_preco
from vendas
group by produto;

# GROUP BY + MAX
select produto, max(preco) as maior_preco
from vendas
group by produto;

# group by com Having
select produto, sum(quantidade) as total_quantidade
from vendas
group by produto
having total_quantidade > 10;

#ORDER BY
select * from vendas
order by preco desc;

#limit
select * from vendas
limit 3;

#sub consulta
select produto, preco,
	(select max(preco) from vendas) as maior_produto
    from vendas;
    
select produto, preco
from vendas
where preco > (select avg(preco) from vendas);

