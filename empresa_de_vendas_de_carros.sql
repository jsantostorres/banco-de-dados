CREATE TABLE DISTRIBUIDORA (
  id int primary key,
  name varchar(50) not null,
  email varchar(100) not null,
  telefone varchar(20) not null,
  endereco varchar(254) not null
);

CREATE TABLE EMPRESA_DE_VENDAS (
  id int,
  distribuidora_id int,
  name varchar(50) not null,
  endereco varchar(254) not null,
  email varchar(50) not null,
  telefone varchar(20) not null,
  primary key(id),
  foreign key (distribuidora_id) references DISTRIBUIDORA(id)
);

CREATE TABLE CARRO (
  id int,
  empresa_id int,
  marca varchar(50) not null,
  modelo varchar(100) not null,
  cor varchar(50) not null,
  placa char(7) not null,
  preco double not null,
  primary key(id),
  foreign key (empresa_id) references EMPRESA_DE_VENDAS(id)
);

CREATE TABLE CLIENTE (
  id int,
  carro_id int,
  cpf char(14) not null,
  nome varchar(50) not null,
  email varchar(50) not null,
  endereco varchar(254) not null,
  telefone varchar(20) not null,
  primary key(id),
  foreign key (carro_id) references CARRO(id)
);
