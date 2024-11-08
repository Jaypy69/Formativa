create database bd_formativa_real;
use bd_formativa_real;

create table Universidade (
	id_Uni int primary key auto_increment,
    nome varchar(255) not null,
    telefone varchar(255) not null,
    rua varchar(255) not null,
    numero int not null,
    cep varchar(255) not null,
    bairro varchar(255) not null,
    cidade varchar(255) not null
);

create table Estudante(
	id_Estudante int primary key auto_increment,
	nome varchar(255) not null,
    telefone varchar(255) not null,
    rua varchar(255) not null,
    numero int not null,
    cep varchar(255) not null,
    bairro varchar(255) not null,
    cidade varchar(255) not null,
    id_uni int,
    foreign key (id_uni) references Universidade(id_uni)
);

insert into Universidade (nome, telefone, rua, numero, cep, bairro, cidade)
values ('Universidade braba', '123456789', 'Rua braba', '1234', '1819', 'Bairro brabo', 'Cidade braba'),
	   ('Universidade legal', '987654321', 'Rua legal', '4321', '1918', 'Bairro legal', 'Cidade legal'),
       ('Universidade maneira', '123456788', 'Rua maneira', '1233', '8191', 'Bairro maneiro', 'Cidade maneira'),
       ('Universidade radical', '123456777', 'Rua radical', '1222', '9181', 'Bairro radical', 'Cidade radical'),
       ('Universade Senka', '123456666', 'Rua Tomodachi', '2444', '7575', 'Bairro Takoyaki', 'Cidade Tokyo');
       
insert into Estudante (nome, telefone, rua, numero, cep, bairro, cidade, id_uni)
values ('Samuel Oliveira', '999999999', 'Rua da banana', '1278', '8721', 'Bairro Bacon', 'Itapetininga', 1),
	   ('Samuel Freitas', '999999998', 'Rua da cebola', '2187', '8722', 'Bairro Roblox', 'Itapetininga', 1),
       ('João Pedro', '999999988', 'Rua dos alfas', '6666', '5555', 'Bairro Cheetos', 'Itapetininga', 1),
       ('Paulo', '999999888', 'Rua do snorlax', '8888', '9999', 'Bairro Fnaf', 'Itapetininga', 1),
       ('Guilherme', '999998888','Rua do jiu', '4444', '2222', 'Bairro Jitsu', 'Itapetininga', 1);
       
select*from Universidade;
select*from Estudante;

update Estudante 
set nome = 'Jambrolhão'
where id_Estudante = 1;

update Universidade
set nome = 'Universidade Nescau'
where id_Uni = 3;

delete from Estudante
where id_Estudante = 5;

create view VW_estudante_estuda as 
select
	estudante.nome as Nome_Estudante,
    universidade.nome as Nome_Universidade
from
	estudante
inner join
	universidade on estudante.id_Uni = universidade.id_Uni;
    
select*from VW_estudante_estuda;

