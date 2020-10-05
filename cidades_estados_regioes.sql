create database estrelas;
use estrelas;

create table cidade (
nome varchar (45) not null,
cep varchar (8) not null primary key,
numero_habitantes int unsigned not null,
capital boolean not null,
estado varchar (2) not null,
renda_percapita decimal (10,2) not null,
data_fundacao date not null
);

insert into cidade (nome,
cep,
numero_habitantes,
capital,
estado,
renda_percapita,
data_fundacao)
values
('Serra Talhada', '56912230', 84970, false, 'PE', 404.23, '1822-09-07'),
('Macapá', '68900015', 369278, true, 'AP', 709.12, '1834-03-12'),
('Joinville', '89201095', 486803, false, 'SC', 698.28, '1822-05-27'),
('Belo Horizonte', '07262130', 1433728, true, 'MG', 892.54, '1733-12-19'),
('Recife', '53123900', 1285390, true, 'PE', 800.32, '1532-07-03');

delete from cidade
where cep = '53123900';

select*from cidade;

update cidade
set numero_habitantes = numero_habitantes * 1.1
where cep = '07262130';

create table estado (
nome varchar (45) not null,
silgla varchar (2) not null primary key
);

alter table estado
change silgla sigla varchar (2);

insert into estado (nome,
sigla)
value
('Pernambuco','PE'), ('Amapá', 'AP'), ('Santa Catarina', 'SC'), ('Minas Gerais', 'MG');

alter table cidade
add constraint estado_fk
foreign key (estado)
references estado (sigla)
on delete no action
on update no action;

insert into cidade
value
('Araraquara', '54802100', 432000, false, 'SP', 532.98, '1874-04-13');

insert into estado
value
('São Paulo', 'SP');

alter table estado
add column regiao text (200) default 'Nada a declarar sobre essa região ainda';

select*from estado;

update estado
set regiao = 'Região de clima quente e lindas paisagens'
where sigla = 'PE';





