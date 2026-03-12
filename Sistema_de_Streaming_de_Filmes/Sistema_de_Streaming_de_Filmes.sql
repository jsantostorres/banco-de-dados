CREATE TABLE usuario (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE filme (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    titulo VARCHAR(254) NOT NULL,
    genero VARCHAR(100) NOT NULL,
    anoLancamento INT NOT NULL,
    duracao VARCHAR(5) NOT NULL
);

CREATE TABLE ator (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nomeCompleto VARCHAR(100) NOT NULL,
    filmeID INT,
    FOREIGN KEY(filmeID) REFERENCES filme (id)
);

CREATE TABLE avaliacao (
	id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nota FLOAT,
    comentario VARCHAR(254),
    filmeID INT,
    usuarioID INT,
    FOREIGN KEY(filmeID) REFERENCES filme (id),
    FOREIGN KEY(usuarioID) REFERENCES usuario (id)
);

INSERT INTO usuario (nome, email) VALUES ("Shadow", "theultimatelifeform@gmail.com");
INSERT INTO usuario (nome, email) VALUES ("Snoopy", "esnupidog@gmail.com");
INSERT INTO usuario (nome, email) VALUES ("Garfield", "amolasagna@gmail.com");

INSERT INTO filme (titulo, genero, anoLancamento, duracao) VALUES (
	"Passivonas",
    "Comédia",
    2023,
    "01:31"
);

INSERT INTO filme (titulo, genero, anoLancamento, duracao) VALUES (
	"El Camino",
    "Ação, Crime, Drama, Suspense",
    2019,
    "02:02"
);

INSERT INTO filme (titulo, genero, anoLancamento, duracao) VALUES (
	"O Diário de um Banana",
    "Comédia",
    2010,
    "01:39"
);

INSERT INTO filme (titulo, genero, anoLancamento, duracao) VALUES (
	"Velozes e Furiosos",
    "Ação",
    2001,
    "01:46"
);

INSERT INTO filme (titulo, genero, anoLancamento, duracao) VALUES (
	"Viagem ao Centro da Terra",
    "Aventura",
    2008,
    "01:33"
);

INSERT INTO filme (titulo, genero, anoLancamento, duracao) VALUES (
	"The Fall Guy",
    "Ação, Comédia",
    2024,
    "02:06"
);

INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Ryan Gosling", 6);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Adam Sandler", 6);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Devon Bostick", 3);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Josh Hutcherson", 5);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Bryan Cranston", 2);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Dwayne Jhonson", 5);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Vin Diesel", 4);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Aaron Paul", 2);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Giancarlo Esposito", 2);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Ruby Cruz", 1);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Paul Walker", 4);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Bob Odenkirk", 2);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Zachary Gordon", 3);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Robert Capron", 3);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Rachel Sennott", 1);
INSERT INTO ator (nomeCompleto, filmeID) VALUES ("Ayo Edebiri", 1);

INSERT INTO avaliacao (nota, comentario, filmeID, usuarioID) VALUES (
	9.0,
    "Muito engraçado, me diverti bastante assistindo com minha irmã!",
    3,
    1
);

SELECT * FROM usuario;
SELECT * FROM filme;
SELECT * FROM ator;
SELECT * FROM avaliacao;

SELECT * FROM ator WHERE filmeID = 3;
SELECT * FROM ator WHERE filmeID = 1;
