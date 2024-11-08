create database bd_formativa;

use bd_formativa;

create table Aeronave (
	id_nave int primary key auto_increment,
    nome varchar(255) not null,
    comunicador varchar(255),
    destino varchar(255)
);

create table Passageiro (
	id_pass int primary key auto_increment,
	nome varchar(255) not null,
    telefone varchar(50),
    enedereço varchar(255),
    id_nave int,
    foreign key (id_nave) references Aeronave(id_nave)
);

insert into Aeronave (nome, comunicador, destino) values
	('Airbus A320', 'Comucador Alfa', 'Paris'),
    ('Boeing 737', 'Comunicador Bravo', 'Nova Iorque'),
    ('Embraer E195', 'Comunicador Charlie', 'Londres'),
    ('Cessna 172', 'Comunicador Delta', 'Tóquio'),
    ('G650', 'Comunicador Echo', 'Dubai');
    
insert into Passageiro (nome, telefone, enedereço, id_nave) values
	('Albert Einstein', '123456789', '123 Rua da Ciência', 1),
    ('Samuel Oliveira', '666666669', '666 Rua da Bananada', 1),
    ('Samuel Freitas', '696969696', '696 Rua da Cebola', 1),
    ('Lya Killa', '7575757575', '757 Rua do Peru', 1),
    ('João Pedro', '777777777', '101 Rua do Sigma', 1);

select*from Aeronave;
select*from Passageiro;

update Passageiro
set nome = "Cheetos"
where id_pass = 1;

delete from Passageiro
where id_pass = 5;

create view VW_passageiros_voam as 
select
	passageiro.nome as Nome_Passageiro,
    aeronave.nome as Nome_Aeronave,
    aeronave.destino as Destino_Aeronave
from
	passageiro
inner join
	aeronave on passageiro.id_nave = aeronave.id_nave;
    
select*from VW_passageiros_voam;