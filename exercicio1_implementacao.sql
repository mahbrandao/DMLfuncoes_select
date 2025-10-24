#atividade1
create database bd_atividade1funcao;
use  bd_atividade1funcao;

create table funcionario(
id_func int primary key auto_increment,
nomefunc varchar(100) not null,
sexofunc varchar(10) not null,
bairrofunc varchar(50) not null,
salariofunc int not null,
setorfunc varchar(50) not null
);

select * from funcionario;

insert into funcionario ( nomefunc, sexofunc, bairrofunc, salariofunc, setorfunc)
values ('Maria Brandao', 'F', 'Jabaquara', 1200.00, 'Marketing'),
('Selma Nunes', 'F', 'Grajaú', 3800.00, 'Vendas'),
('Leandro Henrique', 'M', 'Socorro', 2950.00, 'RH'),
('Amelia Brandao', 'F', 'Socorro', 4200.00, 'Marketing'),
('Claudio Jorge', 'M', 'Jabaquara', 1480.00, 'Vendas'),
('Luciano Souza', 'M', 'Pedreira', 1000.00, 'Vendas'),
('Gabrieli Nunes', 'F', 'Jabaquara', 4150.00, ''),
('Rafaela Vieira', 'F', 'Jurubatuba', 700.00, 'Marketing'),
('Suzana Crispim', 'F', 'Grajaú', 5600.00, 'Produção'),
('Sabrina Oliveira', 'F', 'Pedreira', 2900.00, 'Marketing'),
('Jarbas Nunes', 'M', 'Jurubatuba', 5300.00, 'Produção'),
('Ralf Borges', 'F', 'Jabaquara', 1600.00, 'Marketing');

select *from funcionario;

select sum(salariofunc) as total_salario
from funcionario;

select count(*)  as quant_funmar
from funcionario
where setorfunc = 'Marketing';

select setorfunc, avg(salariofunc) as media_salario
from funcionario
group by setorfunc
order by media_salario desc;


SELECT COUNT(*) AS quantidade_funcionarios
FROM funcionario
WHERE salariofunc < 3000
  AND bairrofunc = 'Socorro';
  
SELECT setorfunc, count(*) AS quantidade_funcionarios
FROM funcionario
GROUP BY setorfunc
HAVING COUNT(*) > 3;







