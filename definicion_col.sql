DROP DATABASE IF EXISTS definicion_col;
CREATE DATABASE definicion_col;
USE definicion_col;

CREATE TABLE tabla (
  uno INt NOT NULL,
  dos VARCHAR(5) DEFAULT 'ABC'
);

INSERT INTO tabla VALUES (1, 'hola');
INSERT INTO tabla(uno, dos) VALUES (1, 'bye');
INSERT INTO tabla(dos, uno) VALUES ('otra', 3);

INSERT INTO tabla(uno) VALUES (2);
INSERT INTO tabla VALUES (5, NULL);

SELECT * FROM tabla;
