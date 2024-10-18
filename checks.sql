DROP DATABASE IF EXISTS checks;
CREATE DATABASE checks;
USE checks;

-- El check *inline* sólo puede referirse a su propio atributo.
-- El check al final me permite relacionar varios atributos.
CREATE TABLE checks (
  a INT CHECK (a >= 3),
  b INT,
  c INT,
  CHECK (b < 10),
  CHECK ( a > c),
  CHECK ( a <> b ), -- a y b diferentes
-- para dar un nombre al check
  CONSTRAINT chk_nombre CHECK (b > a AND b > c ) ENFORCED
);

INSERT INTO checks VALUES (1,1,1);
SELECT * FROM checks;
