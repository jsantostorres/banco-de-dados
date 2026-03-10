create table paciente (
	id int auto_increment unique,
    cpf char(14) primary key not null unique,
    nomeCompleto varchar(100) not null,
    dataNascimento date not null,
    telefone varchar(20) not null
);

create table medico (
	id int auto_increment primary key unique,
    codigoCRM varchar(10) not null unique,
    nomeCompleto varchar(100) not null,
    especialidade varchar(100) not null
);

create table consulta (
	id int auto_increment primary key unique,
    dataConsulta date not null,
    diagnostico varchar(254) not null,
    pacienteID int unique,
    medicoID int unique,
    foreign key (pacienteID) references paciente(id),
    foreign key (medicoID) references medico(id)
);

insert into paciente (cpf, nomeCompleto, dataNascimento, telefone) values ("83737283901", "Julius Robert Oppenheimer", "1984/04/22", "938726473829");
insert into paciente (cpf, nomeCompleto, dataNascimento, telefone) values ("74883902765", "Chuu do Loona", "1999/10/20", "92774638201");

insert into medico (codigoCRM, nomeCompleto, especialidade) values ("000.001/RJ", "Gregory House", "Doenças Infecciosas e Nefrologia");
insert into medico (codigoCRM, nomeCompleto, especialidade) values ("002.009/SP", "Drauzio Varella", "Oncologia");

insert into consulta (dataConsulta, diagnostico, pacienteID, medicoID) values ("2026/03/10", "Câncer Renal", 1, 2);

select * from paciente;
select * from medico;
select * from consulta;
