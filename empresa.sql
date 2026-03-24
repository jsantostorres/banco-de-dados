CREATE TABLE funcionario (
 id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
 nome VARCHAR(150) NOT NULL,
 salario DOUBLE NOT NULL,
 departamento VARCHAR(50) NOT NULL,
 createAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updateAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO funcionario (nome, salario, departamento) VALUES ("Carlos", 3000, "TI");
INSERT INTO funcionario (nome, salario, departamento) VALUES ("Maria", 4500, "RH");
INSERT INTO funcionario (nome, salario, departamento) VALUES ("João", 5000, "TI");
INSERT INTO funcionario (nome, salario, departamento) VALUES ("Ana", 3500, "Financeiro");
INSERT INTO funcionario (nome, salario, departamento) VALUES ("Pedro", 2800, "RH");

SELECT * FROM funcionario;
SELECT COUNT(*) FROM funcionario;

SELECT * FROM funcionario WHERE departamento = "TI";
SELECT COUNT(*) FROM funcionario WHERE departamento = "TI";

SELECT * FROM funcionario WHERE salario > 4000;
SELECT COUNT(*) FROM funcionario WHERE salario > 4000;

INSERT INTO funcionario (nome, salario, departamento) VALUES ("Juliana", 4200, "TI");
UPDATE funcionario SET salario = 3500 WHERE id = 1;

UPDATE funcionario SET salario = salario*1.10 WHERE departamento = "RH";
DELETE FROM funcionario WHERE id = 5;

SELECT * FROM funcionario ORDER BY salario DESC;
SELECT AVG (salario) FROM funcionario;
SELECT MAX (salario) FROM funcionario;
SELECT MIN (salario) FROM funcionario;

UPDATE funcionario SET salario = salario*0.05 WHERE departamento = "TI" AND salario < 4000;
