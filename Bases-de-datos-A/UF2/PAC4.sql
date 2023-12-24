CREATE DATABASE PAC4;

USE PAC4;

-- Creación de la tabla producto
CREATE TABLE producto (
 codigo INT PRIMARY KEY,       -- Clave primaria para identificar cada producto
 nombre VARCHAR(60) NOT NULL,     -- Nombre del producto
 precio DECIMAL(8,2) NOT NULL,    -- Precio del producto
 cantidad_stock INT NOT NULL,     -- Cantidad de productos en stock
 fecha_ingreso DATE NOT NULL,     -- Fecha en que el producto fue ingresado al inventario
 categoria VARCHAR(50)        -- Categoría del producto (ejemplo: electrónicos, ropa, alimentos, etc.)
);

-- Insertar 4 registros en la tabla "producto"
INSERT INTO producto (codigo, nombre, precio, cantidad_stock, fecha_ingreso, categoria) VALUES
(1, 'Teléfono móvil', 399.99, 50, '2023-11-01', 'Electrónicos'),
(2, 'Portátil HP', 799.99, 30, '2023-11-02', 'Electrónicos'),
(3, 'Camiseta negra', 19.99, 100, '2023-11-03', 'Ropa'),
(4, 'Cargador USB', 9.99, 75, '2023-11-04', 'Electrónicos');


/* La siguiente sentencia permite establecer el valor de SQL_SAFE_UPDATES a 0, lo que significa que se desactiva la restricción 
y permite realizar operaciones UPDATE o DELETE sin necesidad de que la cláusula WHERE se refiera a una clave primaria o única.*/

SET SQL_SAFE_UPDATES=0;

-- Insertar nuevo producto
INSERT INTO producto (codigo, nombre, precio, cantidad_stock, fecha_ingreso, categoria)
VALUES (1012, 'Laptop Pro', 1200.50, 15, '2023-05-10', 'electrónicos');

-- Cambiar la categoría de todos los productos con precio menor o igual a 50 a categoría de "económicos"
UPDATE producto
SET categoria = 'económicos'
WHERE precio <= 50;

-- Listar todos los productos ingresados después del 1 de enero de 2023
SELECT nombre, fecha_ingreso
FROM producto
WHERE fecha_ingreso > '2023-01-01';

-- Eliminar los productos que empiezan por "camisa" y tengan un precio entre 5 y 20
DELETE FROM producto
WHERE nombre LIKE 'camisa%' AND precio BETWEEN 5 AND 20;

INSERT INTO producto (codigo, nombre, precio, cantidad_stock, fecha_ingreso, categoria) VALUES
(101, 'Teclado Mecánico', 45.99, 20, '2023-05-15', 'electrónicos'),
(102, 'Mouse Inalámbrico', 25.50, 30, '2023-05-16', 'electrónicos'),
(103, 'Camisa Algodón', 15.00, 50, '2023-05-17', 'ropa');


-- Selecciona todos los registros de la tabla producto donde la cantidad en stock sea mayor que 25
SELECT * FROM producto WHERE cantidad_stock > 25;

-- Elimina todos los registros de la tabla producto donde la categoría sea "ropa"
DELETE FROM producto WHERE categoria = 'ropa';

-- La cláusula SET debería estar actualizando la columna "marca" con un valor, pero en su lugar se utiliza "<="
UPDATE producto SET marca <= 'Logitech' WHERE nombre = 'Mouse Inalámbrico';

-- Intenta insertar un nuevo registro en la tabla producto, pero falta especificar la columna "cantidad_stock"
-- Error Code: 1364. Field 'cantidad_stock' doesn't have a default value
INSERT INTO producto (codigo, nombre, precio) VALUES (102, 'Pantalón Jeans', 30.00);

-- Intenta insertar un nuevo registro en la tabla producto, pero falta especificar las columnas "cantidad_stock", "fecha_ingreso" y "categoria" que son NOT NULL
-- Error Code: 1136. Column count doesn't match value count at row 1
INSERT INTO producto VALUES (104, 'Pantalón short', 30.00, '2023-06-17', 'ropa');

-- Actualiza el precio del producto "Teclado Mecánico" a $50
UPDATE producto SET precio = 50 WHERE nombre = 'Teclado Mecánico';
