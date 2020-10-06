use estrelas;

insert into estado
values
('Goiás', 'GO', 'Centro-Oeste'),
('Paraíba', 'PB', 'Nordeste');

insert into cidade
values
('Princesa Isabel', '45932090', 78000, false, 'PB', 432.98, '1900-12-03'),
('Goiania', '12532780', 128000, true, 'GO', 890.98, '1870-06-17'),
('Campina Grande', '89743000', 97000, false, 'PB', 672.53, '1812-05-14'),
('Parnamirin', '56871340', 32000, false, 'PE', 322.98, '1913-07-10'),
('Uberlândia', '22012013', 234000, false, 'MG', 892.15, '1832-04-27');


-- 1 
select cidade.nome, cidade.estado, cidade.numero_habitantes
from cidade, estado
where cidade.estado = estado.sigla
and estado.nome in ('São Paulo', 'Goiás', 'Minas Gerais');


-- 2
select *
from cidade, estado
where cidade.estado = estado.sigla
and estado.nome not in ('São Paulo', 'Goiás', 'Minas Gerais');


-- 3
select *
from cidade, estado
where cidade.estado = estado.sigla
and estado.nome like ('M%');


-- 4
select count(*)
from cidade, estado
where cidade.estado = estado.sigla
and estado.regiao = 'Centro-Oeste'
and cidade.numero_habitantes > 400000;


-- 5
select sum(cidade.numero_habitantes)
from cidade, estado
where cidade.estado = estado.sigla
and estado.regiao = 'Sudeste';



-- 6
select avg(cidade.renda_percapita)
from cidade, estado
where cidade.estado = estado.sigla
and estado.regiao = 'Nordeste';


-- 7
select max(cidade.numero_habitantes)
from cidade, estado
where cidade.estado = estado.sigla
and estado.regiao = 'Centro-Oeste';


-- 8
select avg(cidade.renda_percapita)
from cidade, estado
where cidade.estado = estado.sigla
and cidade.capital = true;


-- 9
select min(cidade.data_fundacao)
from cidade, estado
where cidade.estado = estado.sigla
and estado.regiao = 'Sudeste'
and cidade.capital = false
and cidade.numero_habitantes > 100000;


-- 10
select avg(cidade.renda_percapita)
from cidade, estado
where cidade.estado = estado.sigla
and estado.regiao <> 'Sudeste'
and estado.regiao <> 'Nordeste'
and cidade.data_fundacao > '1500-04-01'
and cidade.nome like 'S%';










