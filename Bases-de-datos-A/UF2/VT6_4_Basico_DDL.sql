-- EJEMPLO BASICO 1 DE SQL
-- Crear una base de datos
DROP DATABASE ILERNA;
CREATE DATABASE ILERNA;

-- Entramos a la base de datos que hemos creado
USE ILERNA;

-- Crear tablas alumnos
CREATE TABLE alumnos (
    dni VARCHAR(9),
    nom_completo_alu VARCHAR(100),
    fec_nacimiento DATE
);

-- Crear tablas modulos
CREATE TABLE modulos (
    cod_asig VARCHAR(10) PRIMARY KEY,
    des_asig VARCHAR(60)
);

-- Crear tablas profesores
CREATE TABLE profesores (
    id_profe INT PRIMARY KEY AUTO_INCREMENT,
    nom_profe VARCHAR(60),
    fec_nacimiento DATE
);

-- Borrar tabla profesores
DROP TABLE profesores;

RENAME TABLE modulos to asignaturas;

-- USAR LA SENTENCIA ALTER PARA TABLA ALUMNOS

-- Añadir clave primaria DNI a la tabla “ALUMNOS”
ALTER TABLE alumnos ADD PRIMARY KEY (dni);

-- Añade una columna APELLIDO1 a la tabla “ALUMNOS”
ALTER TABLE alumnos ADD apellido1 VARCHAR(30) AFTER nom_completo_alu ;

-- Añade una columna APELLIDO2 a la tabla “ALUMNOS" después de APELLIDO1
-- Si no pones AFTER, te lo pone al final, como ultima columna
ALTER TABLE alumnos ADD apellido2 VARCHAR(30) AFTER apellido1;

-- Cambiar el tipo de dato de la columna nom_completo_alu tabla “ALUMNOS”
ALTER TABLE alumnos MODIFY COLUMN nom_completo_alu VARCHAR(30) ;

-- Cambiar el nom_completo_alu de “ALUMNOS” a nom_alu
ALTER TABLE alumnos RENAME COLUMN nom_completo_alu TO nom_alu;

-- Cambiar la columna nom_alu de “ALUMNOS” a nombre y su tipo de dato
-- Posible hacer un Modify y un Rename con el CHANGE
ALTER TABLE alumnos CHANGE COLUMN nom_alu nombre VARCHAR(50);

-- Elimnar una columna
ALTER TABLE alumnos DROP COLUMN dni;

-- Añadir una columna en primera posición y como primary key
ALTER TABLE alumnos ADD id_alumno INT PRIMARY KEY AUTO_INCREMENT FIRST ;

-- Añadir una columna en precio a la tabla asignaturas
ALTER TABLE asignaturas ADD precio DECIMAL(5,2);

-- Añadir una columna en precio a la tabla asignaturas
ALTER TABLE asignaturas ADD horas INT;

-- Ver la definición de la tabla
DESCRIBE alumnos;
DESCRIBE asignaturas;

-- Añadir tabla notas
CREATE TABLE notas (
    id_alumno INT,
    cod_asig VARCHAR(10),
    nota_final DECIMAL(4 , 2 ),
    semestre VARCHAR(10),
    PRIMARY KEY (id_alumno , cod_asig),
    CONSTRAINT id_alumno_fk FOREIGN KEY (id_alumno)
        REFERENCES alumnos (id_alumno)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT cod_asig_fk FOREIGN KEY (cod_asig)
        REFERENCES asignaturas (cod_asig)
        ON UPDATE CASCADE ON DELETE CASCADE
);

DESCRIBE notas;

-- EN DML PODREMOS VER COMO INSERTAR DATOS EN LAS TABLAS

-- Para insertar datos en la tabla "alumnos" puedes usar la siguiente sentencia:


INSERT INTO alumnos (id_alumno, nombre, apellido1, apellido2, fec_nacimiento)
VALUES (1, 'Juan', 'Pérez', 'González', '2000-05-14');

-- Para insertar datos en la tabla "asignaturas" puedes usar la siguiente sentencia:

INSERT INTO asignaturas (cod_asig, des_asig, precio, horas)
VALUES ('DAX_M02A', 'Bases de Datos A', 199.00, 60);

-- Para insertar datos en la tabla "notas" puedes usar la siguiente sentencia:

INSERT INTO notas (id_alumno, cod_asig, nota_final, semestre)
VALUES (1, 'DAX_M02A', 7.5, '2s2223');
