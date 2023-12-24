USE ILERNA_PAC;

/* 1
Modificar el tipo de una columna:
Enunciado: Cambia el tipo de dato de la columna descuento en la tabla CICLO_MEDIO de INT a DECIMAL(5,2) para permitir descuentos con decimales.
Explicación: Aquí aprenderás cómo cambiar el tipo de datos de una columna existente, lo cual es útil cuando necesitas ajustar tu esquema de base de datos para satisfacer nuevos requerimientos.
*/
ALTER TABLE CICLO_MEDIO MODIFY COLUMN descuento DECIMAL(5,2);

/* 2
Eliminar una columna:
Enunciado: Elimina la columna abr_ciclo de la tabla CICLO ya que se ha decidido que no es necesaria.
Explicación: Este ejercicio te muestra cómo simplificar la estructura de tu tabla eliminando 
*/
ALTER TABLE CICLO DROP COLUMN abr_ciclo;

/* 3
Renombrar una columna:
Enunciado: Renombrar la columna bono_tsu en la tabla MODULO a beneficio_tsu.
Explicación: Se trabaja en cómo cambiar el nombre de una columna.
*/
ALTER TABLE MODULO RENAME COLUMN bono_tsu TO beneficio_tsu;

/* 4
Cambiar una restricción de clave foránea:
Enunciado: Cambiar la acción en cascada de la clave foránea fk_ciclosup_ciclo en la tabla CICLOSUP_TSU para que al eliminar o actualizar un ciclo, se eliminen también los registros correspondientes.
Explicación: Este ejercicio se centra en modificar el comportamiento de las restricciones de clave foránea.
*/
ALTER TABLE CICLOSUP_TSU DROP FOREIGN KEY fk_ciclosup_ciclo;
ALTER TABLE CICLOSUP_TSU ADD CONSTRAINT fk_ciclosup_ciclo FOREIGN KEY (cod_ciclo) REFERENCES CICLO_SUPERIOR(cod_ciclo) ON UPDATE CASCADE ON DELETE CASCADE;

/* 5
Añadir un índice:
Enunciado: Añadir un índice a la columna nom_provi en la tabla PROVINCIAS para mejorar la velocidad de búsqueda.
Explicación: Se aprende a mejorar la eficiencia de las consultas añadiendo índices.
*/
ALTER TABLE PROVINCIAS ADD INDEX idx_nom_provi (nom_provi);

/* 6
Añadir una columna con un valor por defecto:
Enunciado: Añadir una columna activo despues de cod_provi en la tabla PROFESOR que sea de tipo BOOLEAN y tenga un valor por defecto de TRUE.
Explicación: Se practica cómo establecer valores por defecto para las nuevas columnas.
*/
ALTER TABLE PROFESOR ADD COLUMN activo BOOLEAN DEFAULT TRUE AFTER cod_provi;

/* 7
Agregar una clave foránea:
Enunciado: Agrega una relación de clave foránea entre CICLOSUP_TSU y CICLO para que cod_ciclo en CICLOSUP_TSU referencie a cod_ciclo en CICLO.
Explicación: Refuerza la integridad referencial entre las tablas, asegurando que los valores de una columna coincidan con los valores de otra columna en una tabla diferente.
*/
ALTER TABLE CICLOSUP_TSU ADD CONSTRAINT fk_ciclosup_ciclo_ciclo FOREIGN KEY (cod_ciclo) REFERENCES CICLO(cod_ciclo);

/* 8
Cambiar una restricción:
Enunciado: Modifica la restricción de la columna nom_provi en la tabla PROVINCIAS para que no permita valores nulos (NOT NULL).
Explicación: Asegura que un campo importante siempre tenga un valor, evitando entradas nulas que podrían comprometer la integridad de los datos.
*/
ALTER TABLE PROVINCIAS MODIFY COLUMN nom_provi VARCHAR(255) NOT NULL;



