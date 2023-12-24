DROP DATABASE empresa;
-- Crear la base de datos de empleados y departamentos
CREATE DATABASE IF NOT EXISTS Empresa;
USE Empresa;

-- Crear tabla de departamentos
CREATE TABLE Departamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);

-- Crear tabla de empleados
CREATE TABLE Empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    departamento_id INT NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT departamento_fk FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

-- Insertar registros en la tabla de departamentos
INSERT INTO Departamentos (nombre) VALUES
('Contabilidad'),
('Marketing'),
('IT'),
('Recursos Humanos'),
('Ventas');

-- Insertar registros en la tabla de empleados
INSERT INTO Empleados (nombre, departamento_id, salario) VALUES
('Juan Perez', 1, 30000.00),
('Ana Gómez', 2, 32000.00),
('Luis Ramírez', 3, 35000.00),
('Sofia Morales', 1, 30500.00),
('Carlos Fernández', 2, 28000.00),
('Laura Martínez', 4, 33000.00),
('Oscar Ruiz', 5, 25000.00),
('Patricia Solis', 3, 40000.00),
('Manuel Cifuentes', 4, 36000.00),
('Sandra Nuñez', 5, 27000.00);


-- EJEMPLO 1) Empleados de IT
CREATE OR REPLACE VIEW EmpleadosIT AS
SELECT nombre, departamento_id, salario
FROM Empleados
WHERE departamento_id = 3
WITH CHECK OPTION;

SELECT * FROM EmpleadosIT;

-- EJEMPLO 2) Empleados con salario Menor a 30000
CREATE OR REPLACE VIEW EmpleadosSalarioBajo AS
SELECT nombre, departamento_id, salario
FROM Empleados
WHERE salario < 30000;

SELECT * FROM EmpleadosSalarioBajo;

-- EJEMPLO 3) Empleados de Recursos Humanos
CREATE OR REPLACE VIEW EmpleadosRRHH AS
SELECT e.id, e.nombre, d.nombre AS departamento
FROM Empleados e
JOIN Departamentos d ON e.departamento_id = d.id
WHERE d.nombre = 'Recursos Humanos';

SELECT * FROM EmpleadosRRHH;

-- EJEMPLO 4) Empleados por departamento con INNER JOIN
CREATE OR REPLACE VIEW EmpleadosPorDepartamento AS
SELECT d.nombre AS departamento, e.nombre
FROM Empleados e
INNER JOIN Departamentos d ON e.departamento_id = d.id;

SELECT * FROM EmpleadosPorDepartamento;

-- EJEMPLO 5) Promedio de salario por departamento con GROUP BY
CREATE OR REPLACE VIEW PromedioSalarioPorDepartamento AS
SELECT d.nombre AS departamento, AVG(e.salario) AS promedio_salario
FROM Empleados e
JOIN Departamentos d ON e.departamento_id = d.id
GROUP BY d.nombre;

SELECT * FROM PromedioSalarioPorDepartamento;

-- EJEMPLO 6) Departamentos con al menos un empleado con salario mayor a 30000 (SUBCONSULTA)
CREATE OR REPLACE VIEW DepartamentosSalarioAlto AS
SELECT d.nombre AS departamento
FROM Departamentos d
WHERE EXISTS (
    SELECT 1
    FROM Empleados e
    WHERE e.departamento_id = d.id AND e.salario > 30000
);

SELECT * FROM DepartamentosSalarioAlto;

--  INSERT a través de una vista simple
INSERT INTO EmpleadosIT VALUES ('Emilio Saurina', 1, 36000);
INSERT INTO EmpleadosIT VALUES ('Emilio Saurina', 3, 36000);

SELECT * FROM EmpleadosIT;

--  DELETE a través de una vista simple
DELETE FROM EmpleadosIT WHERE nombre = 'Emilio Saurina';

-- UPDATE a través de una vista simple para aumentar 100€ a los de Marketing que cobran menos de 30000
UPDATE EmpleadosSalarioBajo SET salario = salario + 100 WHERE departamento_id = 2;
SELECT * FROM EmpleadosSalarioBajo;

-- INSERT a través de una vista compleja (debería fallar)
INSERT INTO EmpleadosPorDepartamento (departamento, nombre) VALUES ('IT', 'Empleado Ficticio');

-- UPDATE a través de una vista compleja (debería fallar)
UPDATE PromedioSalarioPorDepartamento SET promedio_salario = promedio_salario + 500 WHERE departamento = 'Marketing';


-- OTRAS VISTAS

-- EJEMPLO 7) Lista de empleados y el nombre de su departamento
CREATE OR REPLACE VIEW VistaEmpleadoDepartamento AS
SELECT e.nombre AS Empleado, d.nombre AS Departamento
FROM Empleados e
JOIN Departamentos d ON e.departamento_id = d.id;

-- EJEMPLO 8) Lista de departamentos y la cantidad de empleados en cada uno
CREATE OR REPLACE VIEW VistaConteoEmpleadosDepartamento AS
SELECT d.nombre AS Departamento, COUNT(e.id) AS CantidadEmpleados
FROM Departamentos d
LEFT JOIN Empleados e ON d.id = e.departamento_id
GROUP BY d.nombre;

-- EJEMPLO 9) Lista de empleados con salarios entre 25000 y 35000
CREATE OR REPLACE VIEW VistaEmpleadosSalarioIntermedio AS
SELECT nombre, salario
FROM Empleados
WHERE salario BETWEEN 25000 AND 35000;

-- EJEMPLO 10) Lista de los 3 departamentos con los salarios más altos promedio
CREATE VIEW VistaTop3DepartamentosSalarioAlto AS
SELECT d.nombre AS Departamento, AVG(e.salario) AS PromedioSalario
FROM Departamentos d
JOIN Empleados e ON d.id = e.departamento_id
GROUP BY d.nombre
ORDER BY PromedioSalario DESC
LIMIT 3;

-- EJEMPLO 11) ista de empleados cuyo nombre comienza con 'L'
CREATE VIEW VistaEmpleadosNombreL AS
SELECT nombre, departamento_id, salario
FROM Empleados
WHERE nombre LIKE 'L%';


-- EJEMPLO 12) SELECT utilizando una vista como subconsulta o INNER JOIN
/*
Obtener el nombre del departamento y la cantidad de empleados que tienen un salario bajo 
Usamos la vista EmpleadosSalarioBajo y contiene los id de los empleados y los id de sus departamentos correspondientes.
*/
SELECT d.nombre AS Departamento, COUNT(*) AS EmpleadosSalarioBajo
FROM empleados e
INNER JOIN departamentos d ON e.departamento_id = d.id
WHERE e.nombre IN (
    SELECT nombre
    FROM EmpleadosSalarioBajo
)
GROUP BY e.departamento_id;

-- Otra forma de sacar esta selección
SELECT d.nombre AS Departamento, COUNT(*) AS EmpleadosSalarioBajo
FROM Departamentos d
INNER JOIN Empleados e ON e.departamento_id = d.id
INNER JOIN EmpleadosSalarioBajo esb ON e.nombre = esb.nombre
GROUP BY d.id;