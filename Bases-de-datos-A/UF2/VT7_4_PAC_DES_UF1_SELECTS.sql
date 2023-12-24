/*
Seleccionar datos específicos:
Enunciado: Seleccionar todos los nombres de las asignaturas que tengan un precio mayor a 100 euros.
Explicación: Este ejercicio ayuda a entender cómo filtrar datos basándose en una condición.
*/

SELECT nom_asig FROM ASIGNATURAS WHERE precio > 100;

/*
Uso de JOIN:
Enunciado: Seleccionar todos los nombres de los profesores junto con los nombres de las provincias donde residen.
Explicación: Se enseña cómo unir tablas para obtener datos relacionados.
*/
SELECT PROFESOR.nom_profe, PROVINCIAS.nom_provi FROM PROFESOR JOIN PROVINCIAS ON PROFESOR.cod_provi = PROVINCIAS.cod_provi;

/*
Agrupar resultados:
Enunciado: Seleccionar el número total de horas de las unidades formativas para cada asignatura.
Explicación: Este ejercicio muestra cómo usar GROUP BY para agrupar resultados y realizar cálculos agregados.
*/
SELECT cod_asig, SUM(horas_uf) FROM UF GROUP BY cod_asig;

/*
Ordenar resultados:
Enunciado: Seleccionar todos los nombres de los módulos y ordenarlos por el bono_tsu de forma descendente.
Explicación: Aprender a ordenar los resultados basándose en una columna específica.
*/
SELECT nom_mod, beneficio_tsu FROM MODULO ORDER BY beneficio_tsu DESC;

/*
Contar registros:
Enunciado: Contar el número total de profesores en la base de datos.
Explicación: Se practica cómo contar el número de filas en una tabla.
*/
SELECT COUNT(*) FROM PROFESOR;

/*
Selección condicional con múltiples tablas:
Enunciado: Seleccionar el nombre de los ciclos que tienen asignaturas con un precio mayor a 150 euros.
Explicación: Combina condiciones con la unión de múltiples tablas.
*/
SELECT DISTINCT CICLO.nom_ciclo FROM CICLO JOIN ASIGNATURAS ON CICLO.cod_ciclo = ASIGNATURAS.cod_ciclo WHERE ASIGNATURAS.precio > 150;

/*
Uso de LIKE para filtrar datos:
Enunciado: Seleccionar todas las asignaturas cuyo nombre comience con 'Pro'.
Explicación: Enseña a filtrar datos basándose en patrones de texto.
*/
SELECT nom_asig FROM ASIGNATURAS WHERE nom_asig LIKE 'Pro%';

/*
Calcular el costo total de un ciclo en función del precio de sus asignaturas:
Enunciado: Crea una consulta que use INNER JOIN para calcular el costo total de cada ciclo basado en el precio sumado de todas sus asignaturas.
Explicación: Este ejercicio busca proporcionar una visión financiera de los ciclos, sumando el costo de todas las asignaturas que pertenecen a cada ciclo. El uso de INNER JOIN asegura que solo se consideren las asignaturas que tienen un ciclo correspondiente.
*/
SELECT 
  CICLO.cod_ciclo, 
  CICLO.nom_ciclo, 
  SUM(ASIGNATURAS.precio) AS 'Costo Total del Ciclo'
FROM 
  CICLO
INNER JOIN ASIGNATURAS ON CICLO.cod_ciclo = ASIGNATURAS.cod_ciclo
GROUP BY 
  CICLO.cod_ciclo, 
  CICLO.nom_ciclo
  -- HAVING SUM(ASIGNATURAS.precio) > 2334.00;
