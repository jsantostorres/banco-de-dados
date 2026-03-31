CREATE TABLE curso (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE aluno (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome VARCHAR(100) NOT NULL,
    cursoID int,
    FOREIGN KEY (cursoID) REFERENCES curso (id)
);

INSERT INTO curso (nome) VALUES ("Enfermagem");
INSERT INTO curso (nome) VALUES ("Técnico em Desenvolvimento de Sistemas");
INSERT INTO curso (nome) VALUES ("Técnico em Medicina Veterinária");
INSERT INTO curso (nome) VALUES ("Engenharia Mecatrônica");
INSERT INTO curso (nome) VALUES ("Administração");
INSERT INTO curso (nome) VALUES ("Técnico em Segurança do Trabalho");
INSERT INTO curso (nome) VALUES ("Técnico em Automação");
INSERT INTO curso (nome) VALUES ("Arquitetura e Urbanismo");
INSERT INTO curso (nome) VALUES ("Técnico em Informática");
INSERT INTO curso (nome) VALUES ("Fisioterapia");
INSERT INTO curso (nome) VALUES ("Biologia");

INSERT INTO aluno (nome, cursoID) VALUES ("Giulia Gomes", 3);
INSERT INTO aluno (nome, cursoID) VALUES ("Isaac Xavier", 9);
INSERT INTO aluno (nome, cursoID) VALUES ("Jas Rodrigues", 11);
INSERT INTO aluno (nome, cursoID) VALUES ("Alex Souza", 9);
INSERT INTO aluno (nome, cursoID) VALUES ("Geovana Silva", 8);
INSERT INTO aluno (nome, cursoID) VALUES ("Noah Mesquita", 10);
INSERT INTO aluno (nome, cursoID) VALUES ("Cauan Santos", 3);
INSERT INTO aluno (nome, cursoID) VALUES ("Yuri Santos", 2);
INSERT INTO aluno (nome, cursoID) VALUES ("Gabrielle Machado", 5);
INSERT INTO aluno (nome) VALUES ("Alex Carvalho");
INSERT INTO aluno (nome, cursoID) VALUES ("Júlia Sales", 7);
INSERT INTO aluno (nome, cursoID) VALUES ("Vitória Alves", 9);
INSERT INTO aluno (nome) VALUES ("Robert Amorim");

SHOW TABLES;
SELECT * FROM curso;
SELECT * FROM aluno;
SELECT aluno.nome, curso.nome FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id;
SELECT aluno.*, curso.* FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id;

SELECT aluno.nome, curso.nome AS curso FROM aluno LEFT JOIN curso ON aluno.cursoID = curso.id;
SELECT curso.nome, COUNT(aluno.id) AS total_alunos FROM aluno INNER JOIN curso ON aluno.cursoID = curso.id GROUP BY curso.nome;
