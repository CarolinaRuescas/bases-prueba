DROP DATABASE IF EXISTS tipos_datos;
CREATE DATABASE tipos_datos;
USE tipos_datos;

CREATE TABLE TiposDatos (
  flotante FLOAT(5,2),
  decimales DECIMAL(7,3),
  codigo CHAR(4),
  texto TEXT,
  dia DATE,
  momento DATETIME,
  hora TIME,
  color ENUM('Rojo', 'Verde', 'Azul')
);

INSERT INTO TiposDatos VALUES
(5.56, 4.5, '521', 'carolina', '1996-07-29', '1996-07-29 12:25:05', '12:25:05', 'verde'),
(7.15, 8.3, '125', 'ana', '1996-02-15', '1996-02-15 12:25:55', '12:25:55', 'azul');
