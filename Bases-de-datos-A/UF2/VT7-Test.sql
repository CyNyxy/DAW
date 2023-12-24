CREATE DATABASE EJERCICIO_3FN;

USE EJERCICIO_3FN;

CREATE TABLE SEDE_PROVINCIA (
  codigo VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(100),
  direccion VARCHAR(100)
);

CREATE TABLE PROFESOR (
  id_profe VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(100),
  id_profe_jefe VARCHAR(10) NULL,
  CONSTRAINT id_profe_jefe_fk FOREIGN KEY (id_profe_jefe)
    REFERENCES PROFESOR (id_profe)
    ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE DESTINO (
  id_profe VARCHAR(10),
  codigo VARCHAR(10),
  fecha_inicio DATE,
  fecha_fin DATE,
  PRIMARY KEY (id_profe , codigo),
  CONSTRAINT id_profe_fk FOREIGN KEY (id_profe)
    REFERENCES PROFESOR (id_profe)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT codigo_fk FOREIGN KEY (codigo)
    REFERENCES SEDE_PROVINCIA (codigo)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE AULAS_SEDE (
  codigo VARCHAR(10),
  aula VARCHAR(50),
  PRIMARY KEY (codigo , aula),
  CONSTRAINT codigo_fk_aula FOREIGN KEY (codigo)
    REFERENCES SEDE_PROVINCIA (codigo)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE TLFN_PROFE (
  id_profe VARCHAR(10),
  telefono VARCHAR(15),
  PRIMARY KEY (id_profe , telefono),
  CONSTRAINT id_profe_fk_tlf FOREIGN KEY (id_profe)
    REFERENCES PROFESOR (id_profe)
    ON UPDATE CASCADE ON DELETE CASCADE
);

-- ----------------------------------------

-- Añadir ciudad a la tabla SEDE_PROVINCIA
ALTER TABLE SEDE_PROVINCIA ADD COLUMN ciudad VARCHAR(50);

-- Añadir ciudad de origen a la tabla PROFESOR
ALTER TABLE PROFESOR ADD COLUMN ciudad_origen VARCHAR(50);

-- Añadir un campo calculado llamado dias_sede en la tabla DESTINO que se calcule en función de fecha_fin menos fecha_inicio
ALTER TABLE DESTINO ADD COLUMN dias_sede INTEGER AS (DATEDIFF(fecha_fin, fecha_inicio));

-- Añadir campo num_alumnos en la tabla AULAS_SEDE
ALTER TABLE AULAS_SEDE ADD COLUMN num_alumnos INTEGER;

-- ----------------------------------------

-- insertar varios registros en la tabla SEDE_PROVINCIA:
INSERT INTO SEDE_PROVINCIA (codigo, nombre, direccion, ciudad)
VALUES
 ('S01', 'Sede Barcelona', 'Lepanto 123', 'Barcelona'),
 ('S02', 'Sede Baleares', 'Avenida Secundaria 456', 'Mallorca'),
 ('S03', 'Sede Segovia', 'Avenida Libertad 156', 'Segovia'),
 ('S04', 'Sede Pamplona', 'Calle domingos 22', 'Pamplona'),
 ('S05', 'Sede Canarias', 'Calle Altericando 44', 'Gran Canarias');

-- insertar varios registros en la tabla PROFESOR:
INSERT INTO PROFESOR (id_profe, nombre, id_profe_jefe, ciudad_origen)
VALUES
 (1, 'Emilio Saurina', null, 'Menorca' ),
 (2, 'María Malen', 1, 'Lleida'),
 (3, 'Pedro Ruiz', 1, 'Madrid'),
 (4, 'Luisa González', 2, 'Leon'),
 (5, 'Carlos Jiménez', 3, 'Soria');

-- insertar varios registros en la tabla DESTINO:
INSERT INTO DESTINO (id_profe, codigo, fecha_inicio, fecha_fin)
VALUES
 (1, 'S01', '2022-06-01', '2022-06-05'),
 (1, 'S02', '2022-06-06', '2022-06-12'),
 (2, 'S02', '2022-06-01', '2022-06-03'),
 (3, 'S01', '2022-06-01', '2022-06-03'),
 (3, 'S02', '2022-06-04', '2022-06-06'),
 (3, 'S03', '2022-06-07', '2022-06-09'),
 (3, 'S04', '2022-06-10', '2022-06-14'),
 (3, 'S05', '2022-06-15', '2022-06-16'),
 (4, 'S03', '2022-06-01', '2022-06-07'),
 (5, 'S02', '2022-06-01', '2022-06-05');

-- insertar varios registros en la tabla AULAS_SEDE:
INSERT INTO AULAS_SEDE (codigo, aula, num_alumnos)
VALUES
 ('S01', 'Aula 101', 35),
 ('S01', 'Aula 102', 33),
 ('S02', 'Aula 201', 40),
 ('S02', 'Aula 202', 35),
 ('S03', 'Aula 301', 30),
 ('S03', 'Aula 302', 25);

INSERT INTO TLFN_PROFE (id_profe, telefono)
VALUES
 (1, '66661234'),
 (2, '66662345'),
 (3, '66663456'),
 (4, '66664567'),
 (5, '66665678');
 
 -- -------------------------------------------------------
 
 -- SELECT sencillo: Selecciona los nombres de todas las sedes provinciales.
SELECT nombre FROM SEDE_PROVINCIA;

-- DISTINCT: Selecciona todas las ciudades distintas donde los profesores tienen su origen.
SELECT DISTINCT ciudad_origen FROM PROFESOR;

-- ORDER BY: Lista todos los profesores ordenados alfabéticamente por su nombre.
SELECT nombre FROM PROFESOR ORDER BY nombre;

-- INNER JOIN: Muestra la relación entre profesores y sus destinos, solo donde hay coincidencia.
SELECT PROFESOR.nombre, DESTINO.codigo
FROM PROFESOR
INNER JOIN DESTINO ON PROFESOR.id_profe = DESTINO.id_profe;

-- LEFT JOIN: Muestra todos los profesores y sus destinos, incluyendo aquellos sin destino asignado.
SELECT PROFESOR.nombre, DESTINO.codigo
FROM PROFESOR
LEFT JOIN DESTINO ON PROFESOR.id_profe = DESTINO.id_profe;