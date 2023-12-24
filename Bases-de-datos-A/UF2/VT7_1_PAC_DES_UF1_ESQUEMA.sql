CREATE DATABASE ILERNA_PAC;

USE ILERNA_PAC;

-- Creación de la tabla CICLO
CREATE TABLE CICLO (
    cod_ciclo VARCHAR(20) PRIMARY KEY,
    abr_ciclo VARCHAR(255),
    nom_ciclo VARCHAR(255)
);-- Tabla que almacena información de los ciclos formativos';

-- Creación de la tabla ASIGNATURAS
CREATE TABLE ASIGNATURAS (
  cod_asig VARCHAR(20) PRIMARY KEY, -- 'ID único para cada asignatura'
  nom_asig VARCHAR(255), -- 'Nombre de la asignatura'
  precio DECIMAL(10,2), -- 'Precio de la asignatura'
  cod_ciclo VARCHAR(20), -- 'Clave foránea que vincula la asignatura con su ciclo'
  CONSTRAINT fk_asignaturas_ciclo FOREIGN KEY (cod_ciclo) REFERENCES CICLO(cod_ciclo)
  ON UPDATE CASCADE ON DELETE CASCADE
); -- 'Tabla de asignaturas que pertenecen a cada ciclo';

-- Creación de la tabla UF (Unidades Formativas)
CREATE TABLE UF (
    cod_uf VARCHAR(20) PRIMARY KEY,
    nom_uf VARCHAR(255),
    horas_uf INT,
    cod_asig VARCHAR(20),
    CONSTRAINT fk_uf_asignaturas FOREIGN KEY (cod_asig)
        REFERENCES ASIGNATURAS (cod_asig)
        ON UPDATE CASCADE ON DELETE CASCADE
); -- Tabla que almacena las unidades formativas de cada asignatura';

-- Creación de la tabla PAC (Pruebas de Acreditación de Competencias)
CREATE TABLE PAC (
  cod_uf VARCHAR(20), -- 'Clave foránea que vincula la PAC con su unidad formativa'
  num_pac INT, -- 'Número identificativo para cada PAC'
  nom_pac VARCHAR(255), -- 'Nombre de la PAC'
  fecha_ini DATE NOT NULL, -- 'Fecha de inicio de la PAC'
  fecha_fin DATE NOT NULL, -- 'Fecha de fin de la PAC'
  dias_abierto FLOAT AS (DATEDIFF(fecha_fin, fecha_ini)), -- 'Número de días que la PAC está disponible, calculado automáticamente'
  PRIMARY KEY (cod_uf, num_pac),
  CONSTRAINT fk_pac_uf FOREIGN KEY (cod_uf) REFERENCES UF(cod_uf)
  ON UPDATE CASCADE ON DELETE CASCADE
) ; -- Tabla que almacena las PACs de cada unidad formativa';

-- Creación de la tabla CICLO_MEDIO
CREATE TABLE CICLO_MEDIO (
    cod_ciclo VARCHAR(20) PRIMARY KEY,
    descuento INT,
    CONSTRAINT fk_ciclomedio_ciclo FOREIGN KEY (cod_ciclo)
        REFERENCES CICLO (cod_ciclo)
        ON UPDATE CASCADE ON DELETE CASCADE
); -- Tabla que almacena información específica de los ciclos medios';

-- Creación de la tabla CICLO_SUPERIOR
CREATE TABLE CICLO_SUPERIOR (
  cod_ciclo VARCHAR(20) PRIMARY KEY, -- 'Clave primaria y foránea que referencia al ciclo'
  ramo VARCHAR(255), -- 'Especialización o rama del ciclo superior'
  CONSTRAINT fk_ciclosuperior_ciclo FOREIGN KEY (cod_ciclo) REFERENCES CICLO(cod_ciclo)
  ON UPDATE CASCADE ON DELETE CASCADE
) ; -- Tabla que almacena información específica de los ciclos superiores';

-- Creación de la tabla TSU (Técnico Superior Universitario)
CREATE TABLE TSU (
  cod_tsu VARCHAR(20) PRIMARY KEY, -- 'ID único para cada TSU'
  nom_tsu VARCHAR(255), -- 'Nombre del TSU'
  precio DECIMAL(10,2) -- 'Precio del TSU'
) ; -- Tabla que almacena los TSUs ofrecidos';

-- Creación de la tabla CICLOSUP_TSU
CREATE TABLE CICLOSUP_TSU (
    cod_ciclo VARCHAR(20),
    cod_tsu VARCHAR(20),
    precio_pack DECIMAL(10 , 2 ),
    PRIMARY KEY (cod_ciclo , cod_tsu),
    CONSTRAINT fk_ciclosup_ciclo FOREIGN KEY (cod_ciclo)
        REFERENCES CICLO_SUPERIOR (cod_ciclo)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_ciclosup_tsu FOREIGN KEY (cod_tsu)
        REFERENCES TSU (cod_tsu)
        ON UPDATE CASCADE ON DELETE CASCADE
); -- Tabla de relación entre ciclos superiores y TSUs';

-- Creación de la tabla PROVINCIAS
CREATE TABLE PROVINCIAS (
  cod_provi INT PRIMARY KEY, -- 'ID único para cada provincia'
  nom_provi VARCHAR(255) -- 'Nombre de la provincia'
) ; -- Tabla que almacena las provincias';


-- Creación de la tabla PROFESOR
CREATE TABLE PROFESOR (
    id_profe INT PRIMARY KEY,
    nom_profe VARCHAR(255),
    cod_provi INT,
    id_profe_resp INT NULL,
    CONSTRAINT fk_profesor_provincias FOREIGN KEY (cod_provi)
        REFERENCES PROVINCIAS (cod_provi),
    CONSTRAINT fk_profesor_resp FOREIGN KEY (id_profe_resp)
        REFERENCES PROFESOR (id_profe)
        ON UPDATE CASCADE ON DELETE SET NULL
); -- Tabla que almacena información sobre los profesores';

-- Creación de la tabla TELEFONO_PROFESOR
CREATE TABLE TELEFONO_PROFESOR (
    id_profe INT,
    telefono INT,
    PRIMARY KEY (id_profe , telefono),
    CONSTRAINT fk_telefono_profesor FOREIGN KEY (id_profe)
        REFERENCES PROFESOR (id_profe)
        ON UPDATE CASCADE ON DELETE CASCADE
); -- Tabla que almacena los teléfonos de contacto de los profesores';

-- Creación de la tabla MODULO
CREATE TABLE MODULO (
    cod_mod VARCHAR(20) PRIMARY KEY,
    nom_mod VARCHAR(255),
    bono_tsu DECIMAL(10 , 2 ),
    cod_tsu VARCHAR(20),
    id_profe INT,
    CONSTRAINT fk_modulo_tsu FOREIGN KEY (cod_tsu)
        REFERENCES TSU (cod_tsu)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_modulo_profesor FOREIGN KEY (id_profe)
        REFERENCES PROFESOR (id_profe)
        ON UPDATE CASCADE ON DELETE SET NULL
); -- Tabla que almacena los módulos que componen un TSU';
