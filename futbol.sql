DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol;
Use futbol;

CREATE TABLE equipo (
   id INT PRIMARY KEY,
   nombre VARCHAR(100),
   ciudad VARCHAR(100)
);
CREATE TABLE jugador (
    dni VARCHAR(100) PRIMARY KEY,
    nombre VARCHAR(100),
    nacionalidad VARCHAR(100),
    dorsal INT,
    altura FLOAT,
    id_equipo INT,
    FOREIGN KEY (id_equipo) REFERENCES equipo(id)
);

INSERT INTO equipo VALUES 
(53256,'Real Madrid','Madrid'),
(777, 'Albacete balonpie', 'Albacete');

INSERT INTO jugador VALUES
('49095018L','Pepe','Española', 3, 1.68, 53256),
('Y1733662J','Manuel','Rumano', 69, 1.99, 53256),
('48556018J','Gonzalo','Argentina', 12, 1.80, 777),
('40000001K','Kelvin','Nigeriana', 30, 2.13, 777);

