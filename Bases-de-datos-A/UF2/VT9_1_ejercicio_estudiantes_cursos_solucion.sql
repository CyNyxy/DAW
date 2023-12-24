DROP DATABASE estudiantes_cursos;
CREATE DATABASE estudiantes_cursos;

USE estudiantes_cursos;


-- Tabla Estudiantes:
CREATE TABLE Estudiantes (
    id_estudiante INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

-- Tabla Cursos:
CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY,
    nombre_curso VARCHAR(50)
);

-- Tabla Inscripciones:
CREATE TABLE Inscripciones (
    id_estudiante INT,
    id_curso INT,
    calificacion INT,
    PRIMARY KEY (id_estudiante, id_curso),
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante)
    ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
    ON UPDATE CASCADE ON DELETE CASCADE
);

-- Insertar Estudiantes
INSERT INTO Estudiantes (id_estudiante, nombre, apellido) VALUES
(1, 'Ana', 'Pérez'),
(2, 'Luis', 'Gómez'),
(3, 'Carmen', 'Ruiz'),
(4, 'Mario', 'López'),
(5, 'Laura', 'Hernández'),
(6, 'Pedro', 'Martínez'),
(7, 'Isabel', 'Fernández'),
(8, 'Juan', 'García'),
(9, 'Elena', 'Díaz'),
(10, 'Sergio', 'Torres'),
(11, 'María', 'Ramírez'),
(12, 'Carlos', 'Sánchez'),
(13, 'Andrea', 'Vargas');

-- Insertar Cursos
INSERT INTO Cursos (id_curso, nombre_curso) VALUES
(1, 'Matemáticas'),
(2, 'Literatura'),
(3, 'Ciencias'),
(4, 'Historia'),
(5, 'Geografía'),
(6, 'Inglés'),
(7, 'Arte'),
(8, 'Física'),
(9, 'Química'),
(10, 'Educación Física'),
(11, 'Música'),
(12, 'Economía'),
(13, 'Informática');

-- Insertar Inscripciones
INSERT INTO Inscripciones (id_estudiante, id_curso, calificacion) VALUES
(1, 1, 8),
(2, 1, 9),
(1, 2, 8),
(3, 3, 7),
(4, 2, 7),
(5, 1, 8),
(6, 3, 9),
(7, 2, 6),
(8, 1, 7),
(9, 3, 8),
(10, 1, 9),
(11, 2, 7),
(12, 3, 8),
(13, 1, 6);



/*
1. Listar todos los estudiantes:
Obtener una lista que muestre los nombres y apellidos de todos los estudiantes
*/
SELECT 
    nombre, apellido
FROM
    Estudiantes;

/*
2. Listar cursos únicos en los que los estudiantes están inscritos:
Mostrar una lista de cursos únicos en los que al menos un estudiante está inscrito.
*/
SELECT DISTINCT nombre_curso FROM Cursos INNER JOIN Inscripciones ON Cursos.id_curso = Inscripciones.id_curso;

/*
3. Calcular la calificación promedio en el curso de Matemáticas:
Calcular y mostrar la calificación promedio de todos los estudiantes en el curso de Matemáticas.
*/

SELECT AVG(calificacion) AS Calificacion_Promedio FROM Inscripciones WHERE id_curso = 1;
SELECT AVG(calificacion) AS Calificacion_Promedio FROM Inscripciones WHERE nombre_curso LIKE '%Mates';

/*
4. Listar todos los estudiantes por apellido en orden ascendente:
Obtener una lista de estudiantes ordenados alfabéticamente por apellido en orden ascendente.
*/

SELECT * FROM Estudiantes ORDER BY apellido ASC;

/*
5. Encontrar los cursos con un promedio de calificaciones mayor a 8:
Identificar los cursos que tienen un promedio de calificaciones superior a 8 y mostrar el ID del curso junto con el promedio.
*/

SELECT id_curso, AVG(calificacion) AS Promedio
FROM Inscripciones
GROUP BY id_curso
HAVING AVG(calificacion) > 8;

/*
6. Listar estudiantes junto con los nombres de los cursos en los que están inscritos:
Mostrar una lista que incluya el nombre y apellido de los estudiantes junto con los nombres de los cursos en los que están inscritos.
*/
SELECT Estudiantes.nombre, Estudiantes.apellido, Cursos.nombre_curso
FROM Estudiantes
INNER JOIN Inscripciones ON Estudiantes.id_estudiante = Inscripciones.id_estudiante
INNER JOIN Cursos ON Inscripciones.id_curso = Cursos.id_curso;

/*
7. Listar todos los estudiantes y las calificaciones de los cursos en los que están inscritos, incluyendo estudiantes sin cursos:
Obtener una lista que incluya el nombre y apellido de todos los estudiantes junto con los nombres de los cursos en los que están inscritos, incluyendo estudiantes que no estén inscritos en ningún curso.
*/

SELECT Estudiantes.nombre, Estudiantes.apellido, Cursos.nombre_curso, Inscripciones.calificacion
FROM Estudiantes
LEFT JOIN Inscripciones ON Estudiantes.id_estudiante = Inscripciones.id_estudiante
LEFT JOIN Cursos ON Inscripciones.id_curso = Cursos.id_curso;

/*
8. Listar todos los cursos y los estudiantes inscritos en ellos, incluyendo cursos sin estudiantes:
Mostrar una lista que incluya el nombre del curso, el nombre y apellido de los estudiantes inscritos en cada curso y también incluir cursos que no tengan estudiantes inscritos.
*/
SELECT Cursos.nombre_curso, Estudiantes.nombre, Estudiantes.apellido, Inscripciones.calificacion
FROM Cursos
RIGHT JOIN Inscripciones ON Cursos.id_curso = Inscripciones.id_curso
RIGHT JOIN Estudiantes ON Inscripciones.id_estudiante = Estudiantes.id_estudiante;


/*
9. Listar estudiantes inscritos en el curso de Matemáticas con sus calificaciones:
Obtener una lista que incluya el nombre y apellido de los estudiantes que están inscritos en el curso de Matemáticas, junto con sus calificaciones en ese curso.
*/
SELECT E.nombre, E.apellido, I.calificacion
FROM Estudiantes AS E
INNER JOIN Inscripciones AS I ON E.id_estudiante = I.id_estudiante
INNER JOIN Cursos AS C ON I.id_curso = C.id_curso
WHERE C.nombre_curso = 'Matemáticas';


/*
10. Listar estudiantes que no están inscritos en ningún curso:
Identificar y mostrar una lista de estudiantes que no están inscritos en ningún curso.
*/
SELECT E.nombre, E.apellido
FROM Estudiantes AS E
LEFT JOIN Inscripciones AS I ON E.id_estudiante = I.id_estudiante
WHERE I.id_estudiante IS NULL;


/*
11. Encontrar al estudiante con la calificación más alta en el curso de Ciencias:
Identificar al estudiante con la calificación más alta Ciencias y mostrar su nombre y apellido.
*/
SELECT E.nombre, E.apellido
FROM Estudiantes AS E
INNER JOIN Inscripciones AS I ON E.id_estudiante = I.id_estudiante
WHERE I.id_curso = (
    SELECT id_curso
    FROM Cursos
    WHERE nombre_curso = 'Ciencias'
)
ORDER BY I.calificacion DESC
LIMIT 1;

/*
12. Encontrar el curso con la calificación promedio más alta utilizando una subconsulta:
Encuentra el nombre del curso que tiene la calificación promedio más alta entre todos los cursos en la base de datos.
*/
SELECT nombre_curso
FROM Cursos
WHERE id_curso = (
    SELECT id_curso
    FROM Inscripciones
    GROUP BY id_curso
    HAVING AVG(calificacion) = (
        SELECT MAX(promedio_calificaciones)
        FROM (
            SELECT id_curso, AVG(calificacion) AS promedio_calificaciones
            FROM Inscripciones
            GROUP BY id_curso
        ) AS subquery
    )
);




