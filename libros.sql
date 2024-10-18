DROP DATABASE IF EXISTS libros;
CREATE DATABASE libros;
USE libros;



CREATE TABLE Autor (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(50),
 dni VARCHAR(10) UNIQUE KEY
);

INSERT INTO Autor VALUES (2, 'Federico  Valverde', '49095016k');
INSERT INTO Autor (nombre,dni) VALUES ('Caorlina Ruescas','49095016L');

SELECT * FROM Autor;


CREATE TABLE Tienda (
 cif VARCHAR(10) PRIMARY KEY,
 ubicación VARCHAR(255),
 Web VARCHAR(255)
);

INSERT INTO Tienda VALUES ('J50210520', 'Calle Villaveza (MADRID,28021)', 'www.federicovalverde.es');


SELECT * FROM Tienda;



CREATE TABLE Libro (
 isbn VARCHAR(255) PRIMARY KEY,
 titulo VARCHAR(255),
 genero VARCHAR(255) DEFAULT 'Fantasia',
 precio DOUBLE,
 fecha_publicación DATE,
 CHECK (Fecha_publicación > '2014-01-01'),
 CHECK (Precio < 50),
 id_Autor INT,
 cif_Tienda VARCHAR(10),
 FOREIGN KEY (id_Autor) REFERENCES Autor(id),
 FOREIGN KEY (cif_Tienda) REFERENCES Tienda(cif)
);

SELECT * FROM Libro;
