
-- Registros de nsertar ciclos:
INSERT INTO CICLO (cod_ciclo, abr_ciclo, nom_ciclo) VALUES ('DAM', 'DAM', 'Desarrollo de Aplicaciones Multiplataforma');
INSERT INTO CICLO (cod_ciclo, abr_ciclo, nom_ciclo) VALUES ('DAW', 'DAW', 'Desarrollo de Aplicaciones Web');
INSERT INTO CICLO (cod_ciclo, abr_ciclo, nom_ciclo) VALUES ('SMIR', 'SMIR', 'Sistemas Microinformaticos y Redes');

-- Inserts de ASIGNATURAS
-- Inserts para ASIGNATURAS del ciclo DAM
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M01', 'Sistemas informáticos', 199.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M02A', 'Bases de datos A', 199.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M02B', 'Bases de datos B', 199.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M03A', 'Programación A', 199.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M03B', 'Programación B', 199.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M04', 'Lenguaje de marcas y sistemas de gestión de información', 99.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M05', 'Entornos de desarrollo', 99.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M11', 'Formación y orientación laboral', 99.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M06', 'Acceso a datos', 99.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M07', 'Desarrollo de interfaces', 99.00,'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M08', 'Programación multimedia y dispositivos móviles', 199.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M09', 'Programación de servicios y procesos', 99.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M10', 'Sistemas de gestión empresarial', 99.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M12', 'Empresa e iniciativa emprendedora', 99.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M13', 'Proyecto de desarrollo de aplicaciones multiplataforma', 199.00, 'DAM');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAM_M14', 'Formación en Centros de Trabajo (FCT)', 149.00, 'DAM');

-- Inserts para ASIGNATURAS del ciclo DAW
-- Inserts para ASIGNATURAS del ciclo DAW
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M01', 'Sistemas informáticos', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M02A', 'Bases de datos A', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M02B', 'Bases de datos B', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M03A', 'Programación A', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M03B', 'Programación B', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M04', 'Lenguajes de marcas y sistemas de gestión de información', 99.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M05', 'Entornos de desarrollo', 99.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M06', 'Desarrollo web en entorno cliente', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M07', 'Desarrollo web en entorno servidor', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M08', 'Despliegue de aplicaciones web', 99.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M09', 'Diseño de interfaces web', 99.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M10', 'Formación y orientación laboral', 99.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M11', 'Empresa e iniciativa emprendedora', 99.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M12', 'Proyecto de desarrollo de aplicaciones web', 199.00, 'DAW');
INSERT INTO ASIGNATURAS (cod_asig, nom_asig, precio, cod_ciclo) VALUES ('DAW_M13', 'Formación en Centros de Trabajo (FCT)', 149.00, 'DAW');

-- Inserts en tabla UF
-- Inserts para UF del ciclo DAM
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M01_UF1', 'UF1_Instalación, configuración y explotación del sistema informático', 132, 'DAM_M01');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M01_UF2', 'UF2_Gestión de la información y de recursos en una red', 132, 'DAM_M01');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M01_UF3', 'UF3_Implantación de software específico', 132, 'DAM_M01');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M02B_UF3', 'UF3_Lenguaje SQL: DCL y extensión procedimental. SGBD corporativo', 82, 'DAM_M02B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M02B_UF4', 'UF4_Bases de datos objeto-relacionales', 82, 'DAM_M02B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M03B_UF4', 'UF4_Programación orientada a objetos. Fundamentos', 77, 'DAM_M03B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M03B_UF5', 'UF5_POO. Librerías de clases fundamentales', 77, 'DAM_M03B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M03B_UF6', 'UF6_POO. Introducción a la persistencia en BD', 77, 'DAM_M03B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M04_UF1', 'UF1_Programación con XML', 99, 'DAM_M04');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M04_UF2', 'UF2_Ámbitos de aplicación de la XML', 99, 'DAM_M04');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M04_UF3', 'UF3_Sistemas de gestión empresarial', 99, 'DAM_M04');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M05_UF1', 'UF1_Desarrollo de software', 66, 'DAM_M05');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M05_UF2', 'UF2_Optimización del software', 66, 'DAM_M05');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M05_UF3', 'UF3_Introducción al diseño orientado a objetos', 66, 'DAM_M05');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M06_UF1', 'UF1_Persistencia en ficheros', 99, 'DAM_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M06_UF2', 'UF2_Persistencia en BDR-BDOR-BDOO', 99, 'DAM_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M06_UF3', 'UF3_Persistencia en BD nativas XML', 99, 'DAM_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M06_UF4', 'UF4_Componentes de acceso a datos', 99, 'DAM_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M07_UF1', 'UF1_Diseño e implementación de interfaces', 99, 'DAM_M07');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M07_UF2', 'UF2_Preparación y distribución de aplicaciones', 99, 'DAM_M07');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M08_UF1', 'UF1_Desarrollo de aplicaciones por dispositivos móviles', 132, 'DAM_M08');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M08_UF2', 'UF2_Programación multimedia', 132, 'DAM_M08');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M08_UF3', 'UF3_Desarrollo de juegos por dispositivos móviles', 132, 'DAM_M08');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M09_UF1', 'UF1_Seguridad y criptografía', 66, 'DAM_M09');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M09_UF2', 'UF2_Procesos e hilos', 66, 'DAM_M09');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M09_UF3', 'UF3_Zócalos y servicios', 66, 'DAM_M09');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M10_UF1', 'UF1_Sistemas ERP-CRM. Implantación', 99, 'DAM_M10');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M10_UF2', 'UF2_Sistemas ERP-CRM. Explotación y adecuación', 99, 'DAM_M10');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M11_UF1', 'UF1_Incorporación al trabajo', 66, 'DAM_M11');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M11_UF2', 'UF2_Prevención de riesgos laborales', 66, 'DAM_M11');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M12_UF1', 'UF1_Empresa e iniciativa emprendedora', 66, 'DAM_M12');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M13_UF1', 'UF1_Proyecto de desarrollo de aplicaciones multiplataforma', 297, 'DAM_M13');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAM_M14_UF1', 'UF1_Formación en Centros de Trabajo (FCT)', 383, 'DAM_M14');

-- Inserts para UF del ciclo DAM
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M01_UF1', 'UF1_Instalación, configuración y explotación del sistema informático', 132, 'DAW_M01');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M01_UF2', 'UF2_Gestión de la información y de recursos en una red', 132, 'DAW_M01');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M01_UF3', 'UF3_Implantación de software específico', 132, 'DAW_M01');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M02A_UF1', 'UF1_Introducción a las bases de datos', 83, 'DAW_M02A');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M02A_UF2', 'UF2_Lenguajes SQL: DML y DDL', 83, 'DAW_M02A');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M03A_UF1', 'UF1_Programación estructurada', 154, 'DAW_M03A');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M03A_UF2', 'UF2_Diseño modular', 154, 'DAW_M03A');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M03A_UF3', 'UF3_Fundamentos de gestión de ficheros', 154, 'DAW_M03A');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M02B_UF3', 'UF3_Lenguaje SQL: DCL y extensión procedimental. SGBD corporativo', 82, 'DAW_M02B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M02B_UF4', 'UF4_Bases de datos objeto-relacionales', 82, 'DAW_M02B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M03B_UF4', 'UF4_Programación orientada a objetos. Fundamentos', 77, 'DAW_M03B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M03B_UF5', 'UF5_POO. Librerías de clases fundamentales', 77, 'DAW_M03B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M03B_UF6', 'UF6_POO. Introducción a la persistencia en BD', 77, 'DAW_M03B');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M04_UF1', 'UF1_Programación con XML', 99, 'DAW_M04');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M04_UF2', 'UF2_Ámbitos de aplicación de la XML', 99, 'DAW_M04');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M04_UF3', 'UF3_Sistemas de gestión empresarial', 99, 'DAW_M04');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M05_UF1', 'UF1_Desarrollo de software', 66, 'DAW_M05');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M05_UF2', 'UF2_Optimización del software', 66, 'DAW_M05');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M05_UF3', 'UF3_Introducción al diseño orientado a objetos', 66, 'DAW_M05');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M06_UF1', 'UF1_Sintaxis del lenguaje. Objetos predefinidos del lenguaje', 165, 'DAW_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M06_UF2', 'UF2_Estructuras definidas por el programador. Objetos', 165, 'DAW_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M06_UF3', 'UF3_Acontecimientos. Manejo de formularios. Modelo de objetos del documento', 165, 'DAW_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M06_UF4', 'UF4_Comunicación asíncrona cliente-servidor', 165, 'DAW_M06');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M07_UF1', 'UF1_Desarrollo web en entorno servidor', 165, 'DAW_M07');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M07_UF2', 'UF2_Generación dinámica de páginas web', 165, 'DAW_M07');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M07_UF3', 'UF3_Acceso a datos', 165, 'DAW_M07');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M07_UF4', 'UF4_Servicios web. Páginas dinámicas interactivas. Webs Híbridas', 165, 'DAW_M07');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M08_UF1', 'UF1_Servidores web y de transferencia de ficheros', 66, 'DAW_M08');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M08_UF2', 'UF2_Servidores de aplicaciones web', 66, 'DAW_M08');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M08_UF3', 'UF3_Despliegue de aplicaciones web', 66, 'DAW_M08');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M08_UF4', 'UF4_Control de versiones y documentación', 66, 'DAW_M08');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M09_UF1', 'UF1_Diseño de la interfaz. Estilos', 99, 'DAW_M09');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M09_UF2', 'UF2_Elementos multimedia: creación e integración', 99, 'DAW_M09');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M09_UF3', 'UF3_Accesibilidad y usabilidad', 99, 'DAW_M09');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M10_UF1', 'UF1_Incorporación al trabajo', 66, 'DAW_M10');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M10_UF2', 'UF2_Prevención de riesgos laborales', 66, 'DAW_M10');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M11_UF1', 'UF1_Empresa e iniciativa emprendedora', 66, 'DAW_M11');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M12_UF1', 'UF1_Proyecto de desarrollo de aplicaciones web', 297, 'DAW_M12');
INSERT INTO UF (cod_uf, nom_uf, horas_uf, cod_asig) VALUES ('DAW_M13_UF1', 'UF1_Formación en Centros de Trabajo (FCT)', 383, 'DAW_M13');

-- Insertar en tabla PAC
-- Ejemplos de PACs para las Unidades Formativas del ciclo DAM

-- Ejemplos de PACs para UFs del ciclo DAM
-- PACs para DAM_M01_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF1', 1, 'Configuración del sistema operativo', '2023-09-25', '2023-11-02');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF1', 2, 'Gestión de usuarios y permisos', '2023-09-30', '2023-11-02');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF1', 3, 'Instalación de software de red', '2023-10-05', '2023-11-02');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF1', 4, 'Mantenimiento del sistema', '2023-10-10', '2023-11-02');

-- PACs para DAM_M01_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF2', 1, 'Análisis de requisitos de red', '2023-11-03', '2023-12-01');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF2', 2, 'Diseño de infraestructura de red', '2023-11-08', '2023-12-01');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF2', 3, 'Implementación de red local', '2023-11-13', '2023-12-01');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF2', 4, 'Pruebas de seguridad de red', '2023-11-18', '2023-12-01');

-- PACs para DAM_M01_UF3
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF3', 1, 'Despliegue de aplicaciones', '2023-12-02', '2024-01-15');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF3', 2, 'Automatización de tareas', '2023-12-07', '2024-01-15');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF3', 3, 'Monitorización de sistemas', '2023-12-12', '2024-01-15');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M01_UF3', 4, 'Actualización y mejora de sistemas', '2023-12-17', '2024-01-15');

-- PACs para DAM_M02B_UF3
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF3', 1, 'Introducción al SQL', '2024-01-16', '2024-02-15');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF3', 2, 'Gestión de bases de datos', '2024-01-21', '2024-02-15');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF3', 3, 'Procedimientos almacenados y triggers', '2024-01-26', '2024-02-15');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF3', 4, 'Optimización de consultas', '2024-01-31', '2024-02-15');

-- PACs para DAM_M02B_UF4
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF4', 1, 'Diseño de bases de datos objeto-relacionales', '2024-02-16', '2024-03-16');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF4', 2, 'Implementación con ORDBMS', '2024-02-21', '2024-03-16');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF4', 3, 'Uso de tipos complejos en consultas', '2024-02-26', '2024-03-16');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M02B_UF4', 4, 'Herencia y polimorfismo en SQL', '2024-03-03', '2024-03-16');

-- PACs para DAM_M03B_UF4
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF4', 1, 'Principios de la POO', '2024-03-17', '2024-04-14');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF4', 2, 'Abstracción y encapsulamiento', '2024-03-22', '2024-04-14');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF4', 3, 'Herencia en programación', '2024-03-27', '2024-04-14');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF4', 4, 'Polimorfismo y patrones de diseño', '2024-04-01', '2024-04-14');

-- PACs para DAM_M03B_UF5
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF5', 1, 'Librerías de clases en Java', '2024-04-15', '2024-05-13');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF5', 2, 'Gestión de colecciones', '2024-04-20', '2024-05-13');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF5', 3, 'Manejo de excepciones', '2024-04-25', '2024-05-13');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF5', 4, 'Programación de eventos', '2024-04-30', '2024-05-13');

-- PACs para DAM_M03B_UF6
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF6', 1, 'Introducción a la persistencia', '2024-05-14', '2024-06-11');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF6', 2, 'Mapeo objeto-relacional', '2024-05-19', '2024-06-11');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF6', 3, 'Uso de ORM frameworks', '2024-05-24', '2024-06-11');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M03B_UF6', 4, 'Persistencia en aplicaciones móviles', '2024-05-29', '2024-06-11');

-- Ejemplos de PACs para DAM_M04_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF2', 1, 'Aplicaciones de XML', '2024-07-11', '2024-08-08');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF2', 2, 'XML en la web', '2024-07-16', '2024-08-08');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF2', 3, 'Uso de XQuery', '2024-07-21', '2024-08-08');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF2', 4, 'Integración XML con Java', '2024-07-26', '2024-08-08');

-- Ejemplos de PACs para DAM_M04_UF3
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF3', 1, 'Sistemas ERP', '2024-08-09', '2024-09-06');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF3', 2, 'Sistemas CRM', '2024-08-14', '2024-09-06');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF3', 3, 'Gestión empresarial con sistemas de información', '2024-08-19', '2024-09-06');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M04_UF3', 4, 'Análisis de datos con BI', '2024-08-24', '2024-09-06');

-- Ejemplos de PACs para DAM_M05_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF2', 1, 'Refactoring de código', '2024-09-07', '2024-10-05');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF2', 2, 'Optimización de algoritmos', '2024-09-12', '2024-10-05');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF2', 3, 'Testing de rendimiento', '2024-09-17', '2024-10-05');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF2', 4, 'Gestión de memoria', '2024-09-22', '2024-10-05');

-- Ejemplos de PACs para DAM_M05_UF3
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF3', 1, 'Principios de diseño OO', '2024-10-06', '2024-11-03');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF3', 2, 'Patrones de diseño', '2024-10-11', '2024-11-03');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF3', 3, 'Diseño de interfaces', '2024-10-16', '2024-11-03');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M05_UF3', 4, 'Arquitecturas de software', '2024-10-21', '2024-11-03');

-- Ejemplos de PACs para DAM_M06_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF1', 1, 'Persistencia en ficheros planos', '2024-11-04', '2024-12-02');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF1', 2, 'Persistencia en ficheros XML', '2024-11-09', '2024-12-02');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF1', 3, 'Persistencia en ficheros JSON', '2024-11-14', '2024-12-02');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF1', 4, 'Serialización de objetos', '2024-11-19', '2024-12-02');

-- Ejemplos de PACs para DAM_M06_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF2', 1, 'Bases de datos relacionales', '2024-12-03', '2025-01-07');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF2', 2, 'Bases de datos orientadas a objetos', '2024-12-10', '2025-01-07');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF2', 3, 'Bases de datos NoSQL', '2024-12-17', '2025-01-07');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF2', 4, 'Integración de Bases de Datos', '2024-12-24', '2025-01-07');

-- Ejemplos de PACs para DAM_M06_UF3
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF3', 1, 'XML y bases de datos', '2025-01-08', '2025-02-05');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF3', 2, 'JSON y bases de datos', '2025-01-15', '2025-02-05');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF3', 3, 'Servicios web y bases de datos', '2025-01-22', '2025-02-05');

-- Ejemplos de PACs para DAM_M06_UF4
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF4', 1, 'Componentes de acceso a datos en Java', '2025-02-06', '2025-03-06');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF4', 2, 'Componentes de acceso a datos en .NET', '2025-02-13', '2025-03-06');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF4', 3, 'Acceso a datos con ORM', '2025-02-20', '2025-03-06');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M06_UF4', 4, 'MicroORMs y herramientas de acceso a datos', '2025-02-27', '2025-03-06');

-- Ejemplos de PACs para DAM_M07_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF1', 1, 'Fundamentos de diseño de interfaces', '2025-03-07', '2025-04-04');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF1', 2, 'Herramientas de diseño gráfico', '2025-03-14', '2025-04-04');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF1', 3, 'Prototipado y wireframes', '2025-03-21', '2025-04-04');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF1', 4, 'Usabilidad y experiencia de usuario', '2025-03-28', '2025-04-04');

-- Ejemplos de PACs para DAM_M07_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF2', 1, 'Preparación del entorno de desarrollo', '2025-04-05', '2025-05-03');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF2', 2, 'Gestión de dependencias y librerías', '2025-04-12', '2025-05-03');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF2', 3, 'Distribución de aplicaciones', '2025-04-19', '2025-05-03');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M07_UF2', 4, 'Automatización de procesos de build', '2025-04-26', '2025-05-03');

-- Ejemplos de PACs para DAM_M08_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF1', 1, 'Configuración de servidores web', '2025-05-04', '2025-06-01');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF1', 2, 'Configuración de servidores de ficheros', '2025-05-11', '2025-06-01');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF1', 3, 'Seguridad en servidores web y de ficheros', '2025-05-18', '2025-06-01');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF1', 4, 'Monitorización de servidores', '2025-05-25', '2025-06-01');

-- Ejemplos de PACs para DAM_M08_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF2', 1, 'Despliegue de aplicaciones en contenedores', '2025-06-02', '2025-06-29');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF2', 2, 'Gestión de servidores de aplicaciones', '2025-06-09', '2025-06-29');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF2', 3, 'Balanceo de carga y alta disponibilidad', '2025-06-16', '2025-06-29');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF2', 4, 'Automatización del despliegue de aplicaciones', '2025-06-23', '2025-06-29');

-- Ejemplos de PACs para DAM_M08_UF3
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF3', 1, 'Publicación de aplicaciones web', '2025-06-30', '2025-07-28');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF3', 2, 'Gestión de dominios y DNS', '2025-07-07', '2025-07-28');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF3', 3, 'Certificados SSL y seguridad', '2025-07-14', '2025-07-28');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M08_UF3', 4, 'CDN y optimización de entrega de contenido', '2025-07-21', '2025-07-28');

-- Ejemplos de PACs para DAM_M09_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF1', 1, 'Fundamentos de seguridad informática', '2025-07-29', '2025-08-26');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF1', 2, 'Criptografía y uso de certificados', '2025-08-05', '2025-08-26');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF1', 3, 'Protección contra malware y ataques', '2025-08-12', '2025-08-26');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF1', 4, 'Seguridad en redes y comunicaciones', '2025-08-19', '2025-08-26');

-- Ejemplos de PACs para DAM_M09_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF2', 1, 'Gestión de procesos en sistemas operativos', '2025-08-27', '2025-09-17');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF2', 2, 'Programación multihilo', '2025-09-07', '2025-09-27');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF2', 3, 'Sincronización y comunicación entre procesos', '2025-09-17', '2025-10-07');

-- Ejemplos de PACs para DAM_M09_UF3
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF3', 1, 'Implementación de sockets', '2025-10-08', '2025-10-28');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF3', 2, 'Servicios de red', '2025-10-18', '2025-11-07');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M09_UF3', 3, 'Desarrollo de aplicaciones de red', '2025-10-28', '2025-11-17');

-- Ejemplos de PACs para DAM_M10_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M10_UF1', 1, 'Fundamentos de sistemas ERP', '2025-11-18', '2025-12-08');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M10_UF1', 2, 'Implementación de módulos de ERP', '2025-11-28', '2025-12-18');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M10_UF1', 3, 'Adaptación y personalización de ERP', '2025-12-08', '2025-12-28');

-- Ejemplos de PACs para DAM_M10_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M10_UF2', 1, 'Gestión y mantenimiento de ERP', '2025-12-29', '2026-01-18');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M10_UF2', 2, 'CRM: Customer Relationship Management', '2026-01-08', '2026-01-28');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M10_UF2', 3, 'Análisis de datos con sistemas ERP y CRM', '2026-01-18', '2026-02-07');

-- Ejemplos de PACs para DAM_M11_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M11_UF1', 1, 'Integración en el entorno laboral', '2026-02-08', '2026-02-28');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M11_UF1', 2, 'Dinámica de trabajo en equipo', '2026-02-18', '2026-03-10');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M11_UF1', 3, 'Gestión del tiempo y recursos', '2026-02-28', '2026-03-20');

-- Ejemplos de PACs para DAM_M11_UF2
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M11_UF2', 1, 'Conceptos básicos de prevención de riesgos', '2026-03-21', '2026-04-10');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M11_UF2', 2, 'Riesgos específicos en informática', '2026-03-31', '2026-04-20');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M11_UF2', 3, 'Planes de emergencia y evacuación', '2026-04-10', '2026-04-30');

-- Ejemplos de PACs para DAM_M12_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M12_UF1', 1, 'Desarrollo del pensamiento emprendedor', '2026-05-01', '2026-05-21');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M12_UF1', 2, 'Creación de una startup tecnológica', '2026-05-11', '2026-05-31');
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M12_UF1', 3, 'Financiación y modelos de negocio', '2026-05-21', '2026-06-10');

-- Ejemplos de PACs para DAM_M13_UF1
INSERT INTO PAC (cod_uf, num_pac, nom_pac, fecha_ini, fecha_fin) VALUES ('DAM_M13_UF1', 1, 'Presentación del proyecto final', '2026-07-01', '2026-07-21');


-- Insertar en tabla CICLO_MEDIO
INSERT INTO CICLO_MEDIO (cod_ciclo, descuento) VALUES ('SMIR', 15);

-- Insertar en tabla CICLO_SUPERIOR
INSERT INTO CICLO_SUPERIOR (cod_ciclo, ramo) VALUES ('DAM', 'Informática');
INSERT INTO CICLO_SUPERIOR (cod_ciclo, ramo) VALUES ('DAW', 'Informática');


-- Insertar en tabla TSU (Técnico Superior Universitario)
INSERT INTO TSU (cod_tsu, nom_tsu, precio) VALUES ('TSU_ADS', 'Diploma Universitario en Análisis y Diseño del Software', 1200.00);
INSERT INTO TSU (cod_tsu, nom_tsu, precio) VALUES ('TSU_PRA', 'Diploma Universitario en Programación Avanzada', 1100.00);

-- CInsertar en tabla CICLOSUP_TSU
INSERT INTO CICLOSUP_TSU (cod_ciclo, cod_tsu, precio_pack) VALUES ('DAM', 'TSU_ADS', 3000.00);
INSERT INTO CICLOSUP_TSU (cod_ciclo, cod_tsu, precio_pack) VALUES ('DAM', 'TSU_PRA', 2800.00);
INSERT INTO CICLOSUP_TSU (cod_ciclo, cod_tsu, precio_pack) VALUES ('DAW', 'TSU_ADS', 3000.00);
INSERT INTO CICLOSUP_TSU (cod_ciclo, cod_tsu, precio_pack) VALUES ('DAW', 'TSU_PRA', 2800.00);

-- Insertar en tabla PROVINCIAS
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (04, 'Almería');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (11, 'Cádiz');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (14, 'Córdoba');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (18, 'Granada');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (21, 'Huelva');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (23, 'Jaén');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (29, 'Málaga');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (41, 'Sevilla');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (22, 'Huesca');
INSERT INTO PROVINCIAS (cod_provi, nom_provi) VALUES (44, 'Teruel');

-- Creación de la tabla PROFESOR
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (6, 'Pablo Manuel Díaz García', 44, NULL);
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (1, 'Alvaro Alonso', 4, 6);
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (2, 'Armando Cea', 11, 6);
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (3, 'Emilio Saurina', 18, 6);
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (4, 'Gotzon Valcarcel', 23, 6);
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (5, 'Laura Bermúdez', 22, 6);
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (7, 'Fernando Mendez Castellar', 29, 6);
INSERT INTO PROFESOR (id_profe, nom_profe, cod_provi, id_profe_resp) VALUES (8, 'Mario Gago', 23, 6);

-- Creación de la tabla TELEFONO_PROFESOR
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (1, '900123457');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (1, '900123456');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (2, '900234568');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (2, '900234567');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (3, '900345678');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (4, '900456789');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (5, '900567890');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (6, '900678901');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (7, '900789012');
INSERT INTO TELEFONO_PROFESOR (id_profe, telefono) VALUES (8, '900890123');


-- Creación de la tabla MODULO
-- Inserts para 'Diploma Universitario en Análisis y Diseño del Software'
INSERT INTO MODULO (cod_mod, nom_mod, bono_tsu, cod_tsu, id_profe) VALUES ('TSU_ADS_M1', 'Ingeniería de Requisitos', 100, 'TSU_ADS', 1);
INSERT INTO MODULO (cod_mod, nom_mod, bono_tsu, cod_tsu, id_profe) VALUES ('TSU_ADS_M2', 'Modelado del Software', 100, 'TSU_ADS', 2);
INSERT INTO MODULO (cod_mod, nom_mod, bono_tsu, cod_tsu, id_profe) VALUES ('TSU_ADS_M3', 'Calidad del Software', 100, 'TSU_ADS', 6);
INSERT INTO MODULO (cod_mod, nom_mod, bono_tsu, cod_tsu, id_profe) VALUES ('TSU_ADS_M4', 'Soluciones Informáticas para la Empresa', 100, 'TSU_ADS', 4);

-- Inserts para 'Diploma Universitario en Programación Avanzada'
INSERT INTO MODULO (cod_mod, nom_mod, bono_tsu, cod_tsu, id_profe) VALUES ('TSU_PRA_M1', 'Fundamentos de Programación II', 150, 'TSU_PRA', 5);
INSERT INTO MODULO (cod_mod, nom_mod, bono_tsu, cod_tsu, id_profe) VALUES ('TSU_PRA_M2', 'Algoritmia', 150, 'TSU_PRA', 3);
INSERT INTO MODULO (cod_mod, nom_mod, bono_tsu, cod_tsu, id_profe) VALUES ('TSU_PRA_M3', 'Programación Paralela', 150, 'TSU_PRA', 7);
