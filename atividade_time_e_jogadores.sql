create table jogador (
	id int auto_increment primary key,
    nome varchar(100) not null,
    numero_camisa int not null unique
);

insert into jogador (nome, numero_camisa) values ("Ronaldo", "9");
insert into jogador (nome, numero_camisa) values ("Neymar Jr.", "10");
insert into jogador (nome, numero_camisa) values ("Pelé", "11");
insert into jogador (nome, numero_camisa) values ("Leo Linck", "24");
insert into jogador (nome, numero_camisa) values ("Ronaldinho Gaúcho", "90");
insert into jogador (nome, numero_camisa) values ("Formiga", "8");
insert into jogador (nome, numero_camisa) values ("Vini Jr.", "7");
insert into jogador (nome, numero_camisa) values ("Yago Pikachu", "22");
insert into jogador (nome, numero_camisa) values ("Everton Cebolinha", "19");
insert into jogador (nome, numero_camisa) values ("Bruno Henrique", "27");

select * from jogador;

describe jogador;
alter table jogador add altura float;
alter table jogador add data_de_nascimento date;
describe jogador;
drop table jogador;

show tables;

create table jogador (
	id int auto_increment unique,
    nome varchar(100) not null,
    altura int not null,
    data_de_nascimento date not null,
    numero_camisa int not null
);

insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Ronaldo", "183", "1976/09/18", "9");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Neymar Jr.", "175", "1992/02/05", "10");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Pelé", "173", "1940/10/23", "11");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Leo Linck", "195", "1982/09/03", "24");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Ronaldinho Gaúcho", "182", "1980/03/21", "90");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Formiga", "162", "1978/03/03", "8");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Vini Jr.", "176", "2000/07/12", "7");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Yago Pikachu", "169", "1992/06/05", "22");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Everton Cebolinha", "174", "1996/03/22", "19");
insert into jogador (nome, altura, data_de_nascimento, numero_camisa) values ("Bruno Henrique", "184", "1990/12/30", "27");

select * from jogador;
truncate table jogador;

alter table jogador modify numero_camisa varchar(3);
alter table jogador add unique (numero_camisa);
alter table jogador change data_de_nascimento data_nsc date;
alter table jogador add id_time int;
alter table jogador add foreign key (id_time) references times(id);

insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Ronaldo", "183", "1976/09/18", "9");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Neymar Jr.", "175", "1992/02/05", "10");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Pelé", "173", "1940/10/23", "11");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Leo Linck", "195", "1982/09/03", "24");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Ronaldinho Gaúcho", "182", "1980/03/21", "90");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Formiga", "162", "1978/03/03", "8");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Vini Jr.", "176", "2000/07/12", "7");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Yago Pikachu", "169", "1992/06/05", "22");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Everton Cebolinha", "174", "1996/03/22", "19");
insert into jogador (nome, altura, data_nsc, numero_camisa) values ("Bruno Henrique", "184", "1990/12/30", "27");

select * from jogador;
