CREATE DATABASE tienda_ilerna;

USE tienda_ilerna;

CREATE TABLE cliente (
	dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
    email VARCHAR(30)
) ;

CREATE TABLE telefono_cliente (
	dni VARCHAR(9),
    telefono int,
    PRIMARY KEY (dni, telefono),
    CONSTRAINT dni_fk FOREIGN KEY (dni)
		REFERENCES cliente (dni)
);

CREATE TABLE portatil (
	num_serie INT PRIMARY KEY,
    modelo VARCHAR(30),
    ram INT,
    precio INT,
    descuento INT,
    precio_final INT
);

CREATE TABLE compra (
	num_serie INT PRIMARY KEY,
    dni VARCHAR(9),
    CONSTRAINT num_serie_fk FOREIGN KEY (num_serie)
		REFERENCES portatil (num_serie),
	CONSTRAINT dni_compra_fk FOREIGN KEY (dni)
		REFERENCES cliente (dni),
	fecha_compra DATE,
    fin_garantia DATE
);

-- 4.1
ALTER TABLE cliente 
MODIFY COLUMN nombre VARCHAR(100);

ALTER TABLE portatil 
MODIFY COLUMN ram INT NULL;

