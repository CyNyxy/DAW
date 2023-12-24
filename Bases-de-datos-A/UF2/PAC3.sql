CREATE DATABASE AutoUsers;

USE AutoUsers;

-- Creación de la tabla usuarios
CREATE TABLE usuarios(
 DNI VARCHAR(9) PRIMARY KEY,     -- Definición del campo DNI como clave primaria y de tipo VARCHAR
 Nombre VARCHAR(30) NOT NULL,     -- Definición del campo Nombre. No puede ser nulo.
 Apellidos VARCHAR(60) NOT NULL    -- Definición del campo Apellidos. No puede ser nulo.
);

-- Creación de la tabla vehiculo
CREATE TABLE vehiculo (
 Matricula VARCHAR(10) PRIMARY KEY,  -- Definición del campo Matricula como clave primaria
 Marca VARCHAR(20) NOT NULL,     -- Definición del campo Marca de tipo VARCHAR. No puede ser nulo.
 Modelo VARCHAR(20) NOT NULL,     -- Definición del campo Modelo de tipo VARCHAR. No puede ser nulo.
 Motor VARCHAR(20) NOT NULL,     -- Definición del campo Motor de tipo VARCHAR. No puede ser nulo.
 DNI_usuario VARCHAR(9),       -- Definición del campo DNI_usuario de tipo VARCHAR propietario del vehículo.
 CONSTRAINT usuario_fk FOREIGN KEY (DNI_usuario) -- Creación de una restricción de clave foránea
  REFERENCES usuarios(DNI)      -- Esta clave foránea hace referencia al campo DNI de la tabla usuarios.
  ON DELETE CASCADE ON UPDATE CASCADE 
-- Establece que si un registro de la tabla usuarios es eliminado o actualizado, se eliminarán o actualizarán en cascada los registros relacionados en la tabla vehiculo.
);

-- Insertar 5 registros en la tabla "usuarios"
INSERT INTO usuarios (DNI, Nombre, Apellidos) VALUES
('123456789', 'Juan', 'Pérez García'),
('987654321', 'María', 'López Martínez'),
('456789123', 'Alberto', 'Rodríguez Sánchez'),
('789123456', 'Laura', 'González Fernández'),
('321654987', 'Pedro', 'Díaz Rodríguez');

-- Insertar 5 registros en la tabla "vehiculo"
INSERT INTO vehiculo (Matricula, Marca, Modelo, Motor, DNI_usuario) VALUES
('ABC123', 'Toyota', 'Corolla', 'Gasolina', '123456789'),
('DEF456', 'Honda', 'Civic', 'Diésel', '987654321'),
('GHI789', 'Ford', 'Focus', 'Gasolina', '456789123'),
('JKL012', 'Volkswagen', 'Golf', 'Diésel', '789123456'),
('MNO345', 'Chevrolet', 'Cruze', 'Gasolina', '321654987'),
('MXF123', 'Mazda', 'CX5', 'Gasolina', '321654987');


-- Encontrar vehículos de usuarios con nombres que comienzan con "A" y devolver el modelo y motor
SELECT Modelo, Motor
FROM vehiculo
WHERE DNI_usuario IN (SELECT DNI FROM usuarios WHERE Nombre LIKE 'A%');

-- Encontrar usuarios con vehículos de la marca "Toyota" y devolver el nombre y apellidos de dichos usuarios
SELECT nombre, apellidos
FROM USUARIOS
WHERE DNI IN (SELECT DNI_USUARIO FROM vehiculo WHERE Marca = 'Toyota');

-- Encontrar usuarios con más de un vehículo asociado
SELECT u.DNI, u.Nombre, u.Apellidos
FROM usuarios u
WHERE u.DNI IN (
  SELECT DNI_usuario
  FROM vehiculo
  GROUP BY DNI_usuario
  HAVING COUNT(Matricula) > 1
);