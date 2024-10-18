DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

-- EJERCICIO 1
CREATE TABLE ej1 (
  a INT,
  b DATE,
  c VARCHAR(5)
);

-- Insertar:
-- 1. Valores en a, b y c
INSERT INTO ej1 VALUES (1, '2023-01-01', 'hey');
-- 2. valores en orden b, c, a
INSERT INTO ej1 (b, c, a) VALUES ('2024-01-08', 'HOLA', 2);
-- 3. valores en c y b
INSERT INTO ej1  (c, b) VALUES ('bye', '2024-10-14');
-- 4. Valor en b
INSERT INTO ej1 (b) VALUES ('2025-10-11');

SELECT * FROM ej1;

-- EJERCICIO 2
CREATE TABLE ej2 (
  a INT NOT NULL,
  b INT NOT NULL DEFAULT 0,
  c VARCHAR(5),
  d VARCHAR(5) DEFAULT 'Hola'
);


-- Insertar:
-- 1. Valores en a, b, d
INSERT INTO ej2 (a, b, d) VALUES (2, 11, 'flor');
-- 2. Valores en a, b, c
INSERT INTO ej2 (a, b, c) VALUES (5, 10, 'Adios');
-- 3. Valores en c, a y default en b, d es NULL
INSERT INTO ej2 (c, a, d) VALUES ('perro', 80, NULL);
-- 4. Valor en a con default en b y d
INSERT INTO ej2 (a) VALUES (2);
-- 5. valor en a con NULL en d
INSERT INTO ej2 (a, d) VALUES (9, NULL);


SELECT * FROM ej2;



-- EJERCICIO 3
-- Cuando usamos AUTO_INCREMET si no podemos ningun numero 
-- parte del 1 y se va incrementando uno más hsata que se diga lo contrario
CREATE TABLE ej3 (
  a INT AUTO_INCREMENT PRIMARY KEY,
  b VARCHAR(5) UNIQUE KEY,
  c VARCHAR(5) DEFAULT 'hola'
);

INSERT INTO ej3 (b,c) VALUES  
 ('flor', 'prue'),
 ('baba', 'toma');
INSERT INTO ej3 VALUES (5, 'bla', 'pepe');
INSERT INTO ej3 (b,c) VALUES ('otra', 'mas');


SELECT * FROM ej3;


