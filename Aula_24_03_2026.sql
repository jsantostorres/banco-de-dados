CREATE TABLE pessoa (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome VARCHAR(254),
    email VARCHAR(254)
);

INSERT INTO pessoa (nome, email) VALUES ("Manuel", "manuel@gmail.com");
INSERT INTO pessoa (nome, email) VALUES ("Plinio", "manuel@gmail.com");
SELECT * FROM pessoa;

UPDATE pessoa SET email = 'plinio@gmail.com' WHERE id = 2;

DELETE FROM pessoa WHERE id = 1;
SELECT COUNT(*) FROM pessoa;
SELECT AVG(id) FROM pessoa;
SELECT SUM(id) FROM pessoa;
SELECT MAX(id) FROM pessoa;
SELECT MIN(id) FROM pessoa;

SELECT * FROM pessoa ORDER BY id DESC;
SELECT * FROM pessoa ORDER BY nome ASC;
