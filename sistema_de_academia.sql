create table aluno (
	id int auto_increment primary key unique,
    matricula int not null unique,
    nome varchar(100) not null,
    telefone varchar(20)
);

create table instrutor (
	id int auto_increment primary key unique,
    nome varchar(100) not null,
    especialidade varchar(50) not null
);

create table treino (
	id int auto_increment primary key unique,
    nome varchar(100) not null,
    nvlDificuldade varchar(10),
    instrutorID int,
    alunoID int,
    foreign key(instrutorID) references instrutor (id),
    foreign key(alunoID) references aluno (id)
);
