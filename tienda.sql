DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
Use tienda;

CREATE TABLE fabricante (
   codigo INT PRIMARY KEY,
   nombre VARCHAR(100)
);
  
  CREATE TABLE producto (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DOUBLE,
    codigo_fabricante INT,
    FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO fabricante VALUES (50, 'Intel');
INSERT INTO fabricante VALUES (51, 'Asus');

INSERT INTO producto VALUES
(1, 'Procesador i3', 70.12, 50),
(2, 'Procesador i5', 90.55, 50),
(3, 'Procesador i7', 120.90, 50);



