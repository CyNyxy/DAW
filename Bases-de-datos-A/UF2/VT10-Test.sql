-- Crear la base de datos escuela
CREATE DATABASE Escuela;
USE Escuela;


-- Crear tabla de alumnos
CREATE TABLE alumnos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  grado INT
);


-- Crear tabla de asignaturas
CREATE TABLE asignaturas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50)
);


-- Crear tabla de notas
CREATE TABLE notas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  alumno_id INT,
  asignatura_id INT,
  calificacion DECIMAL(3, 1),
  CONSTRAINT alumno_fk FOREIGN KEY (alumno_id) REFERENCES alumnos(id)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT asignatura_fk FOREIGN KEY (asignatura_id) REFERENCES asignaturas(id)
  ON UPDATE CASCADE ON DELETE CASCADE
);


-- Insertar registros en alumnos
INSERT INTO alumnos (nombre, grado) VALUES
('Ana', 7),
('Luis', 7),
('Carlos', 8),
('Sofia', 8),
('Lucia', 7);


-- Insertar registros en asignaturas
INSERT INTO asignaturas (nombre) VALUES
('Matemáticas'),
('Ciencias'),
('Historia'),
('Literatura'),
('Educación Física');


-- Insertar registros en notas

INSERT INTO notas (alumno_id, asignatura_id, calificacion) VALUES
(1, 1, 8.5),
(2, 2, 7.0),
(3, 3, 9.0),
(4, 4, 6.5),
(5, 5, 10.0),
(1, 2, 7.5),  
(2, 3, 6.5), 
(3, 4, 8.0),  
(4, 5, 9.0),  
(5, 1, 7.0);



-- Vista 1: Alumnos de 7° grado
CREATE OR REPLACE VIEW AlumnosGrado7 AS
SELECT nombre, grado
FROM alumnos
WHERE grado = 7;


-- Vista 2: Calificaciones en Matemáticas
CREATE OR REPLACE VIEW NotasMatematicas AS
SELECT a.nombre AS Alumno, n.calificacion
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN asignaturas asg ON n.asignatura_id = asg.id
WHERE asg.nombre = 'Matemáticas';


-- Vista 3: Promedio de calificaciones por alumno
CREATE OR REPLACE VIEW PromedioCalificacionesAlumno AS
SELECT a.nombre AS Alumno, AVG(n.calificacion) AS Promedio
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
GROUP BY n.alumno_id;


-- Vista 4: Alumnos con calificación perfecta
CREATE OR REPLACE VIEW AlumnosCalificacionPerfecta AS
SELECT a.nombre AS Alumno, asg.nombre AS Asignatura
FROM alumnos a
INNER JOIN notas n ON a.id = n.alumno_id
INNER JOIN asignaturas asg ON n.asignatura_id = asg.id
WHERE n.calificacion = 10;


-- Vista 5: Calificación más baja por asignatura
CREATE OR REPLACE VIEW CalificacionMasBajaPorAsignatura AS
SELECT asg.nombre AS Asignatura, MIN(n.calificacion) AS CalificacionMasBaja
FROM notas n
INNER JOIN asignaturas asg ON n.asignatura_id = asg.id
GROUP BY asg.nombre;