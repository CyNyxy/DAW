DROP DATABASE IF EXISTS libreria_casa;
-- Crear la base de datos
CREATE DATABASE libreria_casa;

-- Seleccionar la base de datos para usar
USE libreria_casa;

-- Crear una tabla básica para libros
CREATE TABLE libros_casa (
    LibroID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor VARCHAR(255) NOT NULL
);

-- Cambia el nombre de la columna 'Autor' a 'NombreAutor'
ALTER TABLE libros_casa RENAME COLUMN Autor TO NombreAutor;

-- Añade una columna 'Genero' después de la columna 'NombreAutor'
ALTER TABLE libros_casa ADD COLUMN Genero VARCHAR(100) AFTER NombreAutor;

-- Añade una columna 'ISBN' como la primera columna de la tabla 'libros_casa'
ALTER TABLE libros_casa ADD COLUMN ISBN VARCHAR(20) FIRST;

-- Modifica la columna 'NombreAutor' para que pueda almacenar hasta 100 caracteres
ALTER TABLE libros_casa MODIFY COLUMN NombreAutor VARCHAR(100);


DESCRIBE libros_casa;

-- Insertar 10 registros en la tabla libros_casa
-- El campo LibroID es autoincrementable, por lo que se pasa NULL para que MySQL asigne el valor automáticamente.
INSERT INTO libros_casa (ISBN, LibroID, Titulo, NombreAutor, Genero) VALUES
('978-3-16-148410-0', NULL, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Novela'),
('978-0-14-032872-1', NULL, 'La sombra del viento', 'Carlos Ruiz Zafón', 'Novela'),
('978-84-376-0494-7', NULL, 'El tiempo entre costuras', 'María Dueñas', 'Ficción histórica'),
('978-84-322-1351-2', NULL, 'Patria', 'Fernando Aramburu', 'Drama'),
('978-84-204-8291-4', NULL, 'La Reina Descalza', 'Ildefonso Falcones', 'Ficción histórica'),
('978-84-663-4708-9', NULL, 'El Asedio', 'Arturo Pérez-Reverte', 'Novela histórica'),
('978-84-233-5442-1', NULL, 'Los renglones torcidos de Dios', 'Torcuato Luca de Tena', 'Misterio'),
('978-84-670-5246-1', NULL, 'El prisionero del cielo', 'Carlos Ruiz Zafón', 'Novela'),
('978-84-08-16388-8', NULL, 'El laberinto de los espíritus', 'Carlos Ruiz Zafón', 'Novela'),
('978-84-339-7030-5', NULL, 'Las tres bodas de Manolita', 'Almudena Grandes', 'Novela');

SELECT * FROM libros_Casa;

-- Quitar la clave primaria actual
ALTER TABLE libros_casa DROP COLUMN LibroID;

-- Añadir una nueva clave primaria al campo ISBN
-- Asegúrate de que la columna ISBN tenga valores únicos y no nulos antes de ejecutar esto
ALTER TABLE libros_casa ADD PRIMARY KEY (ISBN);

-- Eliminar el liboID

-- Seleccionar todos los libros de misterio
SELECT * FROM libros_casa WHERE Genero = 'Misterio';

/*Cuando está habilitado, MySQL aborta las declaraciones UPDATE o DELETE que no usan una clave en la cláusula WHERE o LIMIT.
Esto hace posible detectar declaraciones ACTUALIZAR o ELIMINAR donde las claves no se usan correctamente y que probablemente cambiarían o eliminarían una gran cantidad de filas.*/

SET SQL_SAFE_UPDATES=0; -- Inhabilita el modo seguro

-- Actualizar el genero de  'El laberinto de los espíritus' a 'Misterio'
UPDATE libros_casa
SET Genero = 'Misterio'
WHERE Titulo = 'El laberinto de los espíritus'; -- Suponemos que no tenemos dos titulos iguales


-- Eliminar 'El laberinto de los espíritus'
DELETE FROM libros_casa
WHERE Titulo = 'El laberinto de los espíritus'; -- Suponemos que no tenemos dos titulos iguales

SELECT * FROM libros_casa WHERE nombreautor LIKE '%S';




