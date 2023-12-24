/*
Escenario y Objetivo del Ejercicio
Tenemos una base de datos de un banco con una tabla llamada cuentas que contiene información sobre el saldo de los clientes.
Hay tres usuarios (A, B y C) que realizarán operaciones en esta base de datos.
Objetivo:

Demostrar cómo las transacciones afectan la integridad de los datos y los problemas de concurrencia (lectura sucia, irrepetible y fantasma).
Aplicar técnicas de control de concurrencia como bloqueos y marcas de tiempo.
Paso 1: Creación de la Tabla y Datos Iniciales
Creación de la Tabla cuentas:
*/

CREATE DATABASE transacciones_cuentas;

USE transacciones_cuentas;

-- Tabla de cuentas
CREATE TABLE cuentas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50),
    saldo DECIMAL(10, 2) CHECK (saldo > 1)
);

-- Insertar Registros Iniciales:

INSERT INTO cuentas (usuario, saldo) VALUES
('UsuarioA', 1000.00),
('UsuarioB', 2000.00),
('UsuarioC', 3000.00);

/*
Transacción del Usuario A
Esta transacción inicia con START TRANSACTION, luego resta 500 del saldo de UsuarioA y suma 500 al saldo de UsuarioB. 
Al final, COMMIT confirma las operaciones.
*/
START TRANSACTION;
UPDATE cuentas SET saldo = saldo - 500 WHERE usuario = 'UsuarioA';
UPDATE cuentas SET saldo = saldo + 500 WHERE usuario = 'UsuarioB';
COMMIT;

/*
Transacción del Usuario B
Similar a la transacción de A, pero aquí se transfieren 300 de UsuarioB a UsuarioC.
*/
START TRANSACTION;
UPDATE cuentas SET saldo = saldo - 300 WHERE usuario = 'UsuarioB';
UPDATE cuentas SET saldo = saldo + 300 WHERE usuario = 'UsuarioC';
COMMIT;

/*
Consultas de saldos
Para simular las consultas de C, se ejecutarían comandos SELECT durante las transacciones de A y B.
*/
SELECT saldo FROM cuentas WHERE usuario = 'UsuarioA';
-- Esperar un tiempo antes de la próxima consulta para simular la concurrencia
SELECT saldo FROM cuentas WHERE usuario = 'UsuarioB';
-- Esperar un tiempo antes de la próxima consulta para simular la concurrencia
SELECT saldo FROM cuentas WHERE usuario = 'UsuarioC';

/* 
Control de Concurrencia con Bloqueos
Para implementar bloqueos, se usarían comandos como LOCK TABLES cuentas WRITE; 
al principio de cada transacción y UNLOCK TABLES; al final. 
Sin embargo, esto bloquearía la tabla para otros usuarios, previniendo la concurrencia real.
*/

-- REALIZAR PRUEBAS CON DIFERENTES CONEXIONES Y USUARIOS PARA VER COMO SE BLOQUEAN LAS TABLAS

-- Usuario A:
LOCK TABLES cuentas WRITE;
START TRANSACTION;
UPDATE cuentas SET saldo = saldo - 500 WHERE usuario = 'UsuarioA';
UPDATE cuentas SET saldo = saldo + 500 WHERE usuario = 'UsuarioB';
COMMIT;
UNLOCK TABLES;

-- Usuario B:
LOCK TABLES cuentas WRITE;
START TRANSACTION;
UPDATE cuentas SET saldo = saldo - 300 WHERE usuario = 'UsuarioB';
UPDATE cuentas SET saldo = saldo + 300 WHERE usuario = 'UsuarioC';
COMMIT;
UNLOCK TABLES;

/*
Cada transacción comienza bloqueando la tabla cuentas para evitar que otras transacciones modifiquen los datos simultáneamente. 
Después de realizar las operaciones y confirmarlas con COMMIT, se liberan los bloqueos con UNLOCK TABLES.
*/







