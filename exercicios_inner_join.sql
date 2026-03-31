CREATE TABLE curso (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome VARCHAR(100) NOT NULL,
    duracao VARCHAR(100) NOT NULL,
    createAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updateAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE aluno (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    cursoID INT,
    FOREIGN KEY (cursoID) REFERENCES curso (id),
    semestre VARCHAR(50),
    createAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updateAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO curso (nome, duracao) VALUES ("Fisioterapia", "4 anos"); -- 1
INSERT INTO curso (nome, duracao) VALUES ("Geografia", "4 anos"); -- 2
INSERT INTO curso (nome, duracao) VALUES ("Tecnologia da Informação", "5 anos"); -- 3
INSERT INTO curso (nome, duracao) VALUES ("Análise e Desenvolvimento de Sistemas", "3 anos"); -- 4
INSERT INTO curso (nome, duracao) VALUES ("Arquitetura e Urbanismo", "4 anos"); -- 5
INSERT INTO curso (nome, duracao) VALUES ("Astronomia", "6 anos"); -- 6
INSERT INTO curso (nome, duracao) VALUES ("Medicina Veterinária", "4 anos"); -- 7
INSERT INTO curso (nome, duracao) VALUES ("Biomedicina", "4 anos"); -- 8
INSERT INTO curso (nome, duracao) VALUES ("Administração", "4 anos"); -- 9
INSERT INTO curso (nome, duracao) VALUES ("Pedagogia", "4 anos"); -- 10
INSERT INTO curso (nome, duracao) VALUES ("Engenharia de Produção", "5 anos"); -- 11
INSERT INTO curso (nome, duracao) VALUES ("Música", "5 anos"); -- 12
INSERT INTO curso (nome, duracao) VALUES ("Biologia", "4 anos"); -- 13
INSERT INTO curso (nome, duracao) VALUES ("História", "4 anos"); -- 14
INSERT INTO curso (nome, duracao) VALUES ("Engenharia Mecatrônica", "5 anos"); -- 15

INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Eduardo Nascimento",
	21,
    "edunasciment0222@gmail.com",
    12,
    "Terceiro Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Giulia Gomes",
    20,
    "giubisgg@gmail.com",
    7,
    "Segundo Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Noah Mesquita",
    18,
    "nonohjk07@gmail.com",
    1,
    "Primeiro Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Geovana Silva",
    19,
    "gegeomitaleoa2@gmail.com",
    5,
    "Segundo Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Jas Rodrigues",
    19,
    "leon4sskennedy@gmail.com",
    13,
    "Terceiro Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Vick Alves",
    19,
    "plimplim2006@gmail,com",
    10,
    "Primeiro Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Yuri Santos",
    19,
    "yusant007@gmail.com",
    4,
    "Segundo Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Lucas Silva",
    20,
    "luqit031@gmail.com",
    9,
    "Terceiro Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Matheus Pinheiro",
    23,
    2,
    "Sexto Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Valéria Souza",
    26,
    6,
    "Quinto Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Flávia Almeida",
    22,
    8,
    "Terceiro Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Alex Ribeiro",
    21,
    "lelezao@gmail.com",
    3,
    "Quinto Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Camilla Paixão",
    32,
    7,
    "Terceiro Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Gabrielle Almeida",
    27,
    9,
    "Quarto Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Robert Silva",
    29,
    9,
    "Quarto Período"
);
INSERT INTO aluno (nome, idade, email, cursoID, semestre) VALUES (
	"Gabriel Chaves",
    21,
    "gabzi9384@gmail.com",
    12,
    "Terceiro Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Emily Mota",
    24,
    3,
    "Sxto Período"
);
INSERT INTO aluno (nome, idade, cursoID, semestre) VALUES (
	"Maria Ribeiro",
    34,
    7,
    "Quinto Período"
);
INSERT INTO aluno (nome, idade, email) VALUES (
	"Karine Santos",
    24,
    "kakasantos2013@gmail.com"
);

SELECT * FROM curso;
SELECT * FROM aluno;
SELECT aluno.nome, curso.nome FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id;
SELECT aluno.*, curso.* FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id;
SELECT aluno.nome, curso.nome AS curso FROM aluno LEFT JOIN curso ON aluno.cursoID = curso.id;

SELECT curso.nome, COUNT(aluno.id) AS total_alunos FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY curso.nome;
SELECT curso.nome, COUNT(aluno.id) > 1 AS total_alunos FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY curso.nome;

SELECT aluno.nome, curso.nome AS curso FROM aluno LEFT JOIN curso ON aluno.cursoID = curso.id WHERE aluno.cursoID IS NULL;
SELECT curso.nome, COUNT(aluno.id) AS quant_alunos FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY curso.nome;

SELECT curso.nome AS curso, AVG(aluno.idade) AS media_idade FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY curso.nome;

SELECT * FROM aluno ORDER BY nome ASC;
SELECT * FROM curso ORDER BY nome ASC;
SELECT aluno.*, curso.* FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id ORDER BY aluno.nome ASC;

SELECT curso.nome AS curso, COUNT(aluno.id)
AS quant_alunos FROM aluno
INNER JOIN curso
ON aluno.cursoID = curso.id
GROUP BY curso.nome
ORDER BY curso.nome ASC;

SELECT curso.nome, COUNT(aluno.id) > 3 AS total_alunos FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY curso.nome;

SELECT curso.nome AS curso, MAX(aluno.idade) AS mais_velho FROM aluno
INNER JOIN curso ON aluno.cursoID = curso.id
GROUP BY curso.nome;

SELECT curso.nome AS curso, MIN(aluno.idade) AS mais_novo FROM aluno
INNER JOIN curso ON aluno.cursoID = curso.id
GROUP BY curso.nome;

SELECT aluno.nome AS aluno, curso.nome AS curso FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id WHERE curso.id = 3;

SELECT curso.nome, COUNT(aluno.id) AS total_alunos FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY aluno.id;
SELECT curso.nome AS curso, SUM(aluno.idade) AS soma_idades FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY curso.nome;
