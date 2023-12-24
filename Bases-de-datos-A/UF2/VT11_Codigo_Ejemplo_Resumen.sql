
/* ----- 1) Creación Base de datos */
DROP DATABASE tienda_ilerna;
CREATE DATABASE tienda_ilerna;
USE tienda_ilerna;

/* ----- 2) Creación de tablas */

-- Crear la tabla de cliente
CREATE TABLE cliente (
    dni VARCHAR(9) PRIMARY KEY, -- dni es clave única que identifica el cliente
    nombre VARCHAR(60) NOT NULL,
    direccion VARCHAR(60),
    email VARCHAR(30) NOT NULL -- NOT NULL quiere decir que es un campo que es obligatorio llenar
);

-- Crear la tabla de telefono y cliente
CREATE TABLE telefono_cliente (
    dni VARCHAR(9), -- dni es clave única que identifica el cliente
    telefono INT,
    PRIMARY KEY (dni, telefono),
    CONSTRAINT dni_tlf_fk FOREIGN KEY (dni) -- Clave ajena que se conecta con cliente
        REFERENCES cliente (dni)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear la tabla de portatil
CREATE TABLE portatil (
    num_serie INT PRIMARY KEY,  -- num_serie es clave única que identifica el portatil
    modelo VARCHAR(30) NOT NULL,
    ram INT NOT NULL,
    precio DECIMAL(8,2),
    descuento DECIMAL(8,2) CHECK (descuento <= 50), -- Comprueba que el descuento siempre es menor o igual a 50
    precio_final DECIMAL(8,2) AS (ROUND(precio - (precio * descuento / 100),2))
);


-- Crear la tabla de compra entre cliente y portátiles
CREATE TABLE compra (
    num_serie INT PRIMARY KEY,
    dni VARCHAR(9) NOT NULL,
    fecha_compra VARCHAR(9), -- Tenemos la fecha como un VARCHAR
    fin_garantia DATE AS (DATE_ADD(fecha_compra, INTERVAL 4 YEAR)),
    CONSTRAINT num_serie_fk FOREIGN KEY (num_serie) -- Clave ajena que se conecta con portatil
        REFERENCES portatil (num_serie)
        ON DELETE CASCADE ON UPDATE CASCADE, -- Si actualizamos o modficicamos el campo raiz afecta a la tabla
    CONSTRAINT dni_fk FOREIGN KEY (dni) -- Clave ajena que se conecta con cliente
        REFERENCES cliente (dni)
        ON DELETE CASCADE ON UPDATE CASCADE
); 

/* ----- 3) Modificar estructura de tablas */

-- Modificar tipo de dato de la columna nombre
ALTER TABLE cliente MODIFY nombre VARCHAR(100);

-- Modificar la tabla 'portatil' para permitir valores nulos en la columna 'ram'
ALTER TABLE portatil MODIFY ram INT NULL;

-- Agregar una restricción para verificar que 'ram' sea al menos múltiplo de 2
ALTER TABLE portatil ADD CONSTRAINT ram_multiplo_de_dos CHECK (ram IS NULL OR ram % 2 = 0);

-- Quitar la restricción
ALTER TABLE portatil DROP CONSTRAINT ram_multiplo_de_dos;

-- Modificar tipo de dato, en este caso el atributo fecha_compra ha de ser de tipo fecha
ALTER TABLE compra MODIFY COLUMN fecha_compra DATE NOT NULL;

-- Modificar tabla compra para agregar una columna numero_albaran a la tabla compra que sea de tipo INT y que se autoincremente automáticamente
ALTER TABLE compra ADD COLUMN numero_albaran INT AUTO_INCREMENT, ADD UNIQUE (numero_albaran);

ALTER TABLE compra AUTO_INCREMENT = 1000;

/* ----- 4) Insertar datos en las tablas */
-- Insertar datos de cliente
INSERT INTO cliente VALUES 
('11111111A', 'Eduardo Cruz Ruiz', 'C/ Bailen 169, 4,4 Barcelona', 'educr@gmail.com'),
('22222222B', 'Lilian Valecia Carrillo', 'C/ Valencia 50, 1,4 Madrid', 'lvalencia@gmail.com'),
('33333333C', 'Juan Carlos Segundo Elias', 'C/ Libertad 234, 5,6 Sevilla', 'jcsegundo@gmail.com'),
('44444444D', 'Laura Segura Lopez', 'C/ Soledad 34, Huesca', 'lausegura@hotmail.com'),
('55555555E', 'Dario Cuellar Artega', 'C/ Callao 122, 2,1 Madrid', 'darioca@gmail.com');

-- Insertar datos de telefonos de cliente
INSERT INTO telefono_cliente VALUES 
('11111111A', 616161611),
('11111111A', 611111111),
('22222222B', 626262622),
('33333333C', 636363633),
('44444444D', 646464644),
('44444444D', 644444444),
('55555555E', 656565655);

-- Insertar datos de portatil
INSERT INTO portatil (num_serie, modelo, ram, precio, descuento) VALUES 
(1, 'Asus Vivabook 667', 16, 989.99, 10),
(2, 'HP 100', 32, 1500.50, 10),
(3, 'Lenovo Yoga', 8, 999.99, 15),
(4, 'Asus Zenbook 976', 16, 850.15, 5),
(5, 'HP 500', 16, 1000, 0),
(6, 'HP 510', 8, 500.50, 30),
(7, 'Lenovo Ideapad', 32, 1600.99, 20),
(8, 'Asus Zenbook 500', 16, 950.90, 0),
(9, 'Dell Basic', 4, 200.90, 0);

-- Insertar datos de compras
INSERT INTO compra (num_serie, dni, fecha_compra)  VALUES 
(1, '22222222B', '2022-08-24'),
(2, '33333333C', '2022-09-13'),
(8, '33333333C', '2022-10-09'),
(3, '44444444D', '2022-09-02'),
(4, '11111111A', '2022-07-14'),
(5, '11111111A', '2022-07-14');

SELECT * FROM COMPRA;

/* ----- 5) Actualizar y Borrar datos en las tablas */

-- Actualizar el precio del portatil 5
UPDATE portatil SET precio = '1100.33', descuento = 10  WHERE num_serie = 5;

-- Borrar de la lista el portatil 9
DELETE FROM portatil WHERE num_serie = 9;

/* ----- 6) Seleccionar datos en las tablas */

-- 6.1) Lista de cliente que usen gmail en su correo ordenados por nombre
SELECT 
    *
FROM
    cliente
WHERE
    email LIKE '%gmail.com'
ORDER BY nombre ASC;

-- 6.2) Lista de portatil de 16 GB de RAM ordenados de más barato a más caro*/
SELECT 
    *
FROM
    portatil
WHERE
    ram = 16
ORDER BY precio ASC;

-- Gasto de cliente
SELECT 
    cl.nombre,
    SUM(po.precio) AS 'Gasto_Cliente'
FROM
    compra AS co
        INNER JOIN
    cliente AS cl ON co.dni = cl.dni
		INNER JOIN
	portatil AS po ON co.num_serie = po.num_serie
GROUP BY cl.dni
ORDER BY gasto_cliente DESC;

-- 6.3) Nombre cliente y telefonos de contacto
SELECT 
    cl.nombre,
    tc.telefono
FROM
    cliente AS cl
        INNER JOIN
    telefono_cliente AS tc ON cl.dni = tc.dni
ORDER BY cl.nombre DESC;

-- 6.4) cuantos dias le quedan a cada portatil de garantia
SELECT 
    co.num_serie,
    po.modelo,
    po.precio_final,
    co.fin_garantia,
    DATEDIFF(co.fin_garantia,NOW()) AS 'Dias_fin_garantia'
FROM
    compra AS co
        INNER JOIN
    portatil AS po ON co.num_serie = po.num_serie
ORDER BY Dias_fin_garantia DESC;


-- 6.5) Encuentra los modelos de portátiles que tienen un precio final superior al precio final medio de todos los portátiles.
SELECT modelo 
FROM portatil
WHERE precio_final > (
    SELECT AVG(precio_final) 
    FROM portatil
);

/* ----- 7) Vistas de tablas */

-- 7.1) Vista simple - vista_portatil_precio_bajo de portatiles de precio base menor a 900€
CREATE OR REPLACE VIEW vista_portatil_precio_bajo AS
SELECT 
    num_serie,
    modelo,
    ram,
    precio
FROM portatil
WHERE precio < 900;


-- 7.2) Hacer un UPDATE a partir de la vista vista_portatil_precio_bajo
SELECT * FROM vista_portatil_precio_bajo;

UPDATE vista_portatil_precio_bajo SET precio = 900 WHERE num_serie = 4;

-- 7.3) Vista Compleja - Crea una vista vista_clientes_con_gasto que muestre el nombre del cliente y su gasto total en compras.
CREATE OR REPLACE VIEW vista_clientes_con_gasto AS
SELECT 
    cl.nombre,
    SUM(po.precio) AS gasto_total
FROM
    compra co
    JOIN cliente cl ON co.dni = cl.dni
    JOIN portatil po ON co.num_serie = po.num_serie
GROUP BY cl.nombre;

SELECT * FROM vista_clientes_con_gasto;


/* ----- 8) Transacciones actulaiza el precio y descuento de portatiles */

-- Iniciar una transacción para asegurar la consistencia de la base de datos
START TRANSACTION;

UPDATE portatil 
SET 
    precio = 800,
    descuento = 20
WHERE
    num_serie = 6;

UPDATE portatil 
SET 
    precio = 1200,
    descuento = 50
WHERE
    num_serie = 7;

COMMIT;

