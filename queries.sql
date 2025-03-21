CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;


CREATE TABLE libro (
  id INT PRIMARY KEY AUTO_INCREMENT,
  descripcion CHAR(100) NOT NULL,
  nropagina INT NOT NULL,
  precio INT NOT NULL,
  id_materia INT NOT NULL,
  FOREIGN KEY (id_materia) REFERENCES materia(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE materia (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre CHAR(50) NOT NULL
);

CREATE TABLE autor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre CHAR(50) NOT NULL
);

CREATE TABLE editorial (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre CHAR(50) NOT NULL
);

CREATE TABLE liautedi (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_libro INT NOT NULL,
  id_autor INT NOT NULL,
  id_editorial INT NOT NULL,
  FOREIGN KEY (id_libro) REFERENCES libro(id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_autor) REFERENCES autor(id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_editorial) REFERENCES editorial(id) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO materia (nombre) VALUES 
('Calculo'),
('Matematicas'),
('Estructura de datos'),
('Ingl'),
('Diagramacion'),
('Contabilidad'),
('Redes'),
('Sistemas de Inf.'),
('Base de datos');

INSERT INTO autor (nombre) VALUES 
('Luis Joyanes'),
('Jorge Vasquez Posada'),
('Jhon Soars'),
('Riaz Khadem'),
('Robert Lorber'),
('Mario Dream');

INSERT INTO editorial (nombre) VALUES 
('Oveja Negra'),
('Norma'),
('Mc Graw Hill');

INSERT INTO libro (descripcion, nropagina, precio, id_materia) VALUES 
('Calculo II', 120, 55000, 1),
('BD II', 150, 65000, 9),
('Estructura de datos', 180, 85000, 3),
('Diagramacion', 85, 45000, 8),
('Admon en una pagina', 70, 7500, 5),
('Contabilidad I', 170, 27500, 6),
('Redes', 370, 32500, 7),
('Ingles', 280, 105000, 4);

INSERT INTO liautedi (id_libro, id_autor, id_editorial) VALUES 
(2, 1, 1),
(2, 5, 3),
(6, 2, 2),
(7, 5, 3),
(4, 4, 1),
(4, 4, 2),
(4, 4, 3);


SELECT * FROM libro;

SELECT * FROM autor;

SELECT * FROM editorial;

SELECT * FROM materia;

SELECT descripcion, precio FROM libro;


RENAME TABLE materia TO asignatura;


SELECT * FROM libro WHERE descripcion LIKE '%redes%';


SELECT * FROM libro WHERE descripcion LIKE '%t%';


SELECT * FROM libro WHERE descripcion LIKE '%s';


SELECT * FROM libro WHERE descripcion LIKE 'c%';


SELECT * FROM libro WHERE id IN (3, 4, 5);


SELECT * FROM libro WHERE id BETWEEN 2 AND 6;


SELECT * FROM libro WHERE nropagina >= 100 AND precio >= 65000;


SELECT * FROM libro WHERE descripcion = 'Redes';

SELECT descripcion, nropagina, precio FROM libro WHERE precio > 50000;


SELECT * FROM libro WHERE nropagina < 160;

