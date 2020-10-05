use estrelas;

select nome, renda_percapita
from cidade
where numero_habitantes > 5000;

select*
from cidade
where data_fundacao > '1432-03-12';

select nome
from cidade
where cep = '38180000';

select *
from cidade, estado
where cidade.estado = estado.sigla
and estado.nome = 'São Paulo'
and numero_habitantes > 100000;


select *
from cidade, estado
where cidade.estado = estado.sigla
and estado.nome = 'São Paulo';


select nome
from cidade
where capital = true 
and renda_percapita > 30000;

select cidade.nome, estado.nome
from cidade, estado
where cidade.estado = estado.sigla
and sigla = 'SP';


select regiao, estado.nome, cidade.nome, numero_habitantes
from cidade, estado
where cidade.estado = estado.sigla
and renda_percapita > 20000 and capital = false;

select *
from cidade, estado
where cidade.estado = estado.sigla
and regiao = 'Sudeste';

select cidade.nome, numero_habitantes
from cidade, estado
where cidade.estado = estado.sigla
and regiao = 'Sudeste' and capital = false
and sigla <> 'MG' and renda_percapita > 15000;








