CREATE DATABASE personas_aficiones;

USE personas_aficiones;

-- Crear tabla de personas
CREATE TABLE Personas (
    PersonaID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

-- Crear tabla de aficiones
CREATE TABLE Aficiones (
    AficionID INT PRIMARY KEY,
    AficionNombre VARCHAR(50)
);

-- Crear tabla de relaciones entre personas y aficiones
CREATE TABLE PersonasAficiones (
    PersonaID INT,
    AficionID INT,
    CONSTRAINT PersonaID_fk FOREIGN KEY (PersonaID) REFERENCES Personas(PersonaID)
    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT AficionID_fk FOREIGN KEY (AficionID) REFERENCES Aficiones(AficionID)
    ON UPDATE CASCADE ON DELETE CASCADE
);


-- Insertar registros en la tabla de personas
INSERT INTO Personas (PersonaID, Nombre)
VALUES (1, 'Juan'),
       (2, 'María'),
       (3, 'Carlos'),
       (4, 'Ana'),
       (5, 'Luis');

-- Insertar registros en la tabla de aficiones
INSERT INTO Aficiones (AficionID, AficionNombre)
VALUES (101, 'Fútbol'),
       (102, 'Pintura'),
       (103, 'Música'),
       (104, 'Jardinería'),
       (105, 'Cocina');

-- Insertar registros en la tabla de relaciones
INSERT INTO PersonasAficiones (PersonaID, AficionID)
VALUES (1, 101),
       (1, 103),
       (2, 102),
       (3, 103),
       (3, 104),
       (3, 102),
       (5, 102),
       (5, 101);


/*Encontrar el número de personas por cada nombre único:
las personas por nombre y contamos cuántas personas tienen cada nombre único. 
Esto te dará un recuento de cuántas personas comparten cada nombre en la base de datos.
*/
SELECT Nombre, COUNT(*) AS CantidadDePersonas
FROM Personas
GROUP BY Nombre;


-- INNER JOIN - Personas con Aficiones:
SELECT Personas.Nombre, Aficiones.AficionNombre
FROM Personas
INNER JOIN PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
INNER JOIN Aficiones ON PersonasAficiones.AficionID = Aficiones.AficionID;

-- LEFT JOIN - Todas las Personas con sus Aficiones (Incluso si no tienen):
SELECT Personas.Nombre, Aficiones.AficionNombre
FROM Personas
LEFT JOIN PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
LEFT JOIN Aficiones ON PersonasAficiones.AficionID = Aficiones.AficionID;


-- RIGHT JOIN - Todas las Aficiones con las Personas relacionadas (Incluso si no tienen):
SELECT Personas.Nombre, Aficiones.AficionNombre
FROM Personas
RIGHT JOIN PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
RIGHT JOIN Aficiones ON PersonasAficiones.AficionID = Aficiones.AficionID;


/*
Encontrar las personas que tienen al menos una afición y listar sus aficiones ordenadas alfabéticamente:
Esta consulta utiliza INNER JOIN para combinar las tablas de personas y aficiones. 
Luego, muestra las personas que tienen al menos una afición y lista sus aficiones ordenadas alfabéticamente por nombre de persona y nombre de afición.
*/
SELECT Personas.Nombre, Aficiones.AficionNombre
FROM Personas
INNER JOIN PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
INNER JOIN Aficiones ON PersonasAficiones.AficionID = Aficiones.AficionID
ORDER BY Personas.Nombre, Aficiones.AficionNombre;

/*
Encontrar la cantidad de personas que tienen cada afición y ordenar las aficiones por la cantidad de personas que las tienen de manera descendente:
Esta consulta utiliza LEFT JOIN para combinar las tablas de aficiones y personas, 
y luego GROUP BY para contar cuántas personas tienen cada afición. 
Luego, ordena las aficiones en orden descendente según la cantidad de personas que las tienen.
*/
SELECT Aficiones.AficionNombre, COUNT(PersonasAficiones.PersonaID) AS CantidadDePersonas
FROM Aficiones
LEFT JOIN PersonasAficiones ON Aficiones.AficionID = PersonasAficiones.AficionID
GROUP BY Aficiones.AficionNombre
ORDER BY CantidadDePersonas DESC;

/*
Encontrar las aficiones únicas que tienen las personas y listarlas en orden alfabético:
Esta consulta utiliza INNER JOIN para combinar las tablas de aficiones y personas, 
y luego utiliza DISTINCT para obtener las aficiones únicas que tienen las personas. 
Luego, lista las aficiones en orden alfabético por nombre de afición.
*/
SELECT DISTINCT Aficiones.AficionNombre
FROM Aficiones
INNER JOIN PersonasAficiones ON Aficiones.AficionID = PersonasAficiones.AficionID
ORDER BY Aficiones.AficionNombre;



-- SUBCONSULTAS

-- Encontrar personas que tienen una afición específica (usando IN):
SELECT 
    Nombre
FROM
    Personas
WHERE
    PersonaID IN (SELECT 
            PersonaID
        FROM
            PersonasAficiones
        WHERE
            AficionID = 101);

-- Encontrar personas que tienen mas de dos aficiones:
SELECT 
    Nombre
FROM
    Personas
WHERE
    PersonaID IN (SELECT 
            PersonaID
        FROM
            PersonasAficiones
        GROUP BY PersonaID
        HAVING COUNT(*) > 2);


-- Encontrar personas que tienen al menos una afición en común con 'Juan' (PersonaID = 1)
-- En esta consulta, usamos EXISTS en la cláusula WHERE para encontrar personas que tienen al menos una afición en común con 'Juan'. 

SELECT DISTINCT
    Personas.Nombre
FROM
    Personas
        INNER JOIN
    PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
WHERE
    Personas.PersonaID <> 1
        AND PersonasAficiones.AficionID IN (SELECT 
            AficionID
        FROM
            PersonasAficiones
        WHERE
            PersonaID = 1);

-- Encontrar personas cuyos nombres contienen la letra 'a'
SELECT 
    Nombre
FROM
    Personas
WHERE
    Nombre LIKE '%a%';

