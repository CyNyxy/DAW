DROP DATABASE IF EXISTS BIBLIOTECA_OPTIMA;
CREATE DATABASE BIBLIOTECA_OPTIMA;

USE BIBLIOTECA_OPTIMA;

-- Tabla USUARIOS
CREATE TABLE USUARIOS (
    cod_usuario INT PRIMARY KEY,
    nom_usuario VARCHAR(60),
    ape_usuario VARCHAR(60)
);

-- Tabla EDITORIALES
CREATE TABLE EDITORIALES (
    cod_editorial VARCHAR(4) PRIMARY KEY,
    nom_editorial VARCHAR(60),
    ciu_editorial VARCHAR(60)
);

-- Tabla libros
CREATE TABLE LIBROS (
    cod_libro INT PRIMARY KEY,
    tit_libro VARCHAR(200),
    cod_editorial VARCHAR(4),
    CONSTRAINT cod_editorial_fk FOREIGN KEY (cod_Editorial)
        REFERENCES EDITORIALES (cod_Editorial)
);


-- Tabla AUTORES
CREATE TABLE AUTORES (
	cod_libro INT,
	aut_libro VARCHAR(60),
    PRIMARY KEY (cod_libro, aut_libro),
    CONSTRAINT cod_libro_autor_fk FOREIGN KEY (cod_libro)
        REFERENCES LIBROS (cod_libro)
);

-- Tabla TELEFONOS
CREATE TABLE TELEFONOS (
    cod_usuario INT,
    telefono INT,
    PRIMARY KEY (cod_usuario , telefono),
    CONSTRAINT cod_usuario_tlfn_fk FOREIGN KEY (cod_usuario)
        REFERENCES USUARIOS (cod_usuario)
);

-- Tabla ALQUILERES
CREATE TABLE ALQUILERES (
    fec_alquiler DATE,
    cod_usuario INT,
    cod_libro INT,
    PRIMARY KEY (fec_alquiler, cod_libro , cod_usuario),
    CONSTRAINT cod_usuairo_fk FOREIGN KEY (cod_usuario)
        REFERENCES USUARIOS (cod_usuario),
    CONSTRAINT cod_libro_alquilado_fk FOREIGN KEY (cod_libro)
        REFERENCES libros (cod_libro)
);


-- EJECUTAR EL SCRIPT DE INTRODUCIR DATOS
USE BIBLIOTECA_OPTIMA;

INSERT	INTO	USUARIOS	VALUES	(	6216755,	'ROBERTO',	'MATAMALA ELORZ');
INSERT	INTO	USUARIOS	VALUES	(	9298009,	'LORETO',	'DAMM MULOZ');
INSERT	INTO	USUARIOS	VALUES	(	9888548,	'MAURO',	'GONZÁLEZ CANGAS');
INSERT	INTO	USUARIOS	VALUES	(	10762286,	'PABLO',	'MOORE ROSS');
INSERT	INTO	USUARIOS	VALUES	(	12489165,	'JAVIERA',	'MAIRA MOYA');
INSERT	INTO	USUARIOS	VALUES	(	12700384,	'LORENZO',	'VILLA ZAPATA');
INSERT	INTO	USUARIOS	VALUES	(	13454600,	'DANIELA',	'URRUTIA GARCIA');
INSERT	INTO	USUARIOS	VALUES	(	13853359,	'MARCELA',	'COLOMA CASTRO');
INSERT	INTO	USUARIOS	VALUES	(	15294540,	'GIOVANNA',	'IUBINI VIDAL');
INSERT	INTO	USUARIOS	VALUES	(	15434067,	'CATALINA',	'ALAMO PALMA');
INSERT	INTO	USUARIOS	VALUES	(	15959579,	'LUIS',	'VALENZUELA ');
INSERT	INTO	USUARIOS	VALUES	(	16806523,	'FELIPE',	'MARTINEZ CORONA');
INSERT	INTO	USUARIOS	VALUES	(	20020526,	'JAVIERA',	'FRITIS SANTIBAÑEZ');
INSERT	INTO	USUARIOS	VALUES	(	24590987,	'JASPER',	'MOERNAUT ');
INSERT	INTO	USUARIOS	VALUES	(	26410131,	'ANDRÉ',	'RABELLO MESTRE');
INSERT	INTO	USUARIOS	VALUES	(	28942257,	'PATRICIO',	'TORRES HEVIA ');
INSERT	INTO	USUARIOS	VALUES	(	41257636,	'WALTER',	'SÁEZ CALDERA');
INSERT	INTO	USUARIOS	VALUES	(	46005600,	'TEODORO',	'KAUSEL KROLL');
INSERT	INTO	USUARIOS	VALUES	(	46827228,	'ILONA',	'CONCHA GRABINGER');
INSERT	INTO	USUARIOS	VALUES	(	48129668,	'LINA',	'BENITEZ BULICIC');
INSERT	INTO	USUARIOS	VALUES	(	48467555,	'FERNANDO',	'WITTWER MENGE');
INSERT	INTO	USUARIOS	VALUES	(	48764320,	'RENE',	'FRANJOLA TEPPER');
INSERT	INTO	USUARIOS	VALUES	(	50452077,	'SONIA',	'PUGA ROJAS');
INSERT	INTO	USUARIOS	VALUES	(	51372492,	'LEONARDO',	'VARGAS PUENTE');
INSERT	INTO	USUARIOS	VALUES	(	52207711,	'FRANCISCO',	'MARÍN HERRADA');
INSERT	INTO	USUARIOS	VALUES	(	54060157,	'JUAN',	'ALBORNOZ RPBERTSON');
INSERT	INTO	USUARIOS	VALUES	(	54356609,	'RAFAEL',	'TAMAYO CASTRO');
INSERT	INTO	USUARIOS	VALUES	(	55034265,	'MARCELA',	'MENDEZ CONCHA');
INSERT	INTO	USUARIOS	VALUES	(	55219737,	'DANIEL',	'ALOMAR ');
INSERT	INTO	USUARIOS	VALUES	(	57004304,	'GUILLERMO',	'CÁRDENAS GÓMEZ');
INSERT	INTO	USUARIOS	VALUES	(	57322063,	'MARIA',	'CALVO GIL');
INSERT	INTO	USUARIOS	VALUES	(	59538411,	'JUANA',	'ROMERO ZAMBRANO');
INSERT	INTO	USUARIOS	VALUES	(	60733902,	'JULIO',	'SANTAMARINA VIAPIANA');
INSERT	INTO	USUARIOS	VALUES	(	60869359,	'JUAN',	'SKEWES VODANOVIC');
INSERT	INTO	USUARIOS	VALUES	(	60976929,	'HORACIO',	'SANHUEZA B.');
INSERT	INTO	USUARIOS	VALUES	(	62167556,	'ROBERTO',	'MATAMALA ELORZ');
INSERT	INTO	USUARIOS	VALUES	(	63860093,	'MARIO',	'PINO QUIVIRA');
INSERT	INTO	USUARIOS	VALUES	(	64832670,	'JORGE',	'ARANCIBIA MUÑOZ');
INSERT	INTO	USUARIOS	VALUES	(	65692058,	'JULIO',	'CARVAJAL RIVERA');
INSERT	INTO	USUARIOS	VALUES	(	65752050,	'FREDY',	'RIADI AMAR');
INSERT	INTO	USUARIOS	VALUES	(	67969626,	'JORGE',	'VIDELA GODOY');
INSERT	INTO	USUARIOS	VALUES	(	69042228,	'LAURA',	'BÖHM STOFFEL');
INSERT	INTO	USUARIOS	VALUES	(	69201822,	'JORGE',	'RIVEROS SUDY');
INSERT	INTO	USUARIOS	VALUES	(	70034166,	'MONIKA',	'BAADER M.');
INSERT	INTO	USUARIOS	VALUES	(	70041464,	'VÍCTOR',	'GERDING SALAS');
INSERT	INTO	USUARIOS	VALUES	(	71970191,	'ESTER',	'FECCI PÉREZ');
INSERT	INTO	USUARIOS	VALUES	(	75545746,	'ENRIQUE',	'PAREDES HERBACH');
INSERT	INTO	USUARIOS	VALUES	(	78186666,	'PAOLA',	'PODESTÁ LÓPEZ');
INSERT	INTO	USUARIOS	VALUES	(	79908606,	'MISAEL',	'FUENTES PAREDES');
INSERT	INTO	USUARIOS	VALUES	(	80140835,	'CARLOS',	'FISCHER BECERRA');
INSERT	INTO	USUARIOS	VALUES	(	80506635,	'GASTÓN',	'VERGARA D');
INSERT	INTO	USUARIOS	VALUES	(	80945337,	'VLADIMIR',	'BARRAZA JERALDO');
INSERT	INTO	USUARIOS	VALUES	(	81560544,	'EMILIA',	'TÄGER FREY');
INSERT	INTO	USUARIOS	VALUES	(	81961883,	'CARLOS',	'MOLINET ');
INSERT	INTO	USUARIOS	VALUES	(	82076204,	'SERGIO',	'GUZMAN CARACOTCH');
INSERT	INTO	USUARIOS	VALUES	(	86552639,	'PATRICIA',	'TRIVIÑO VARGAS');
INSERT	INTO	USUARIOS	VALUES	(	86983338,	'ROBERT',	'MARTINEZ GONZALEZ');
INSERT	INTO	USUARIOS	VALUES	(	87231976,	'DEBBIE',	'GUERRA MLADONADO');
INSERT	INTO	USUARIOS	VALUES	(	87546357,	'SERGIO',	'ROJAS HOPPE');
INSERT	INTO	USUARIOS	VALUES	(	91065282,	'GUSTAVO',	'BLANCO WELLS');
INSERT	INTO	USUARIOS	VALUES	(	91496313,	'ELISA',	'CORDERO JAHR');
INSERT	INTO	USUARIOS	VALUES	(	92557715,	'MANUEL',	'MONTOLIO CARTES');
INSERT	INTO	USUARIOS	VALUES	(	93788435,	'CLAUDIA',	'BARRERA BERROCAL');
INSERT	INTO	USUARIOS	VALUES	(	96179278,	'ALFREDO',	'ERLWEIN VICUÑA');
INSERT	INTO	USUARIOS	VALUES	(	97136920,	'ELIANA',	'SANCHEZ MONTOYA');
INSERT	INTO	USUARIOS	VALUES	(	98849661,	'PATRICIO',	'GODOY MARTÍNEZ');
INSERT	INTO	USUARIOS	VALUES	(	98986642,	'LAURA',	'RODRÍGUEZ NEGRETE');
INSERT	INTO	USUARIOS	VALUES	(	99957638,	'JUAN',	'MANTERO B.');
INSERT	INTO	USUARIOS	VALUES	(	100492229,	'MANUEL',	'CONTRERAS SEITZ');
INSERT	INTO	USUARIOS	VALUES	(	104295711,	'ANDREA',	'BAEZ MONTENEGRO');
INSERT	INTO	USUARIOS	VALUES	(	104753523,	'CLAUDIO',	'ARAYA SASSI');
INSERT	INTO	USUARIOS	VALUES	(	106660093,	'LORENA',	'LÓPEZ TORRES');
INSERT	INTO	USUARIOS	VALUES	(	107461558,	'EMIL',	'OSORIO SCHMIED');
INSERT	INTO	USUARIOS	VALUES	(	107542248,	'RODRIGO',	'ECHEVERRÍA PEZOA');
INSERT	INTO	USUARIOS	VALUES	(	107564284,	'ALFIO',	'YORI FERNÁNDEZ');
INSERT	INTO	USUARIOS	VALUES	(	108059397,	'EDUARDO',	'CASTILLO RAMIREZ');
INSERT	INTO	USUARIOS	VALUES	(	108138106,	'RODRIGO',	'ARIAS INOSTROZA');
INSERT	INTO	USUARIOS	VALUES	(	108738979,	'MARCELO',	'ARANCIBIA ');
INSERT	INTO	USUARIOS	VALUES	(	109442860,	'XIMENA',	'LIZANA CAMPOS');
INSERT	INTO	USUARIOS	VALUES	(	109494992,	'GUILLERMO',	'NOVA CASTILLO');
INSERT	INTO	USUARIOS	VALUES	(	109766623,	'SERGIO',	'URIBE ESPINOZA');
INSERT	INTO	USUARIOS	VALUES	(	114259764,	'JEANNETTE',	'MÜLLER CONCHA');
INSERT	INTO	USUARIOS	VALUES	(	114915858,	'ESTEFANÍA',	'PEÑA STEEL');
INSERT	INTO	USUARIOS	VALUES	(	114960446,	'JOSE',	'ALONSO DÍAZ');
INSERT	INTO	USUARIOS	VALUES	(	115911430,	'XIMENA',	'VALENZUELA ');
INSERT	INTO	USUARIOS	VALUES	(	116698129,	'ALBERTO',	'GALAZ RUIZ');
INSERT	INTO	USUARIOS	VALUES	(	120056239,	'SUSANA',	'VALLE TOLEDO');
INSERT	INTO	USUARIOS	VALUES	(	120666843,	'RODRIGO',	'LÓPEZ MUÑOZ');
INSERT	INTO	USUARIOS	VALUES	(	120818325,	'ANDRES',	'NOVA REYES');
INSERT	INTO	USUARIOS	VALUES	(	122129624,	'IVAN',	'MAUREIRA BUTLER');
INSERT	INTO	USUARIOS	VALUES	(	122355993,	'GABRIEL',	'VALLEJOS CONTRERAS');
INSERT	INTO	USUARIOS	VALUES	(	122463729,	'FELIPE',	'OTONDO ');
INSERT	INTO	USUARIOS	VALUES	(	122643123,	'RODRIGO',	'ACUÑA L.');
INSERT	INTO	USUARIOS	VALUES	(	124891655,	'JAVIERA',	'MAIRA MOYA');
INSERT	INTO	USUARIOS	VALUES	(	124917212,	'RODOLFO',	'ROJAS MUÑOZ');
INSERT	INTO	USUARIOS	VALUES	(	124938546,	'RODRIGO',	'GÓMEZ MURA');
INSERT	INTO	USUARIOS	VALUES	(	127229813,	'ALEJANDRO',	'JEREZ MORA');
INSERT	INTO	USUARIOS	VALUES	(	127471533,	'CLAUDIA',	'CONTRERAS ');
INSERT	INTO	USUARIOS	VALUES	(	130104533,	'KAREN',	'MORENO FUENTEALBA');
INSERT	INTO	USUARIOS	VALUES	(	131042574,	'PAULA',	'VILLAGRA ');
INSERT	INTO	USUARIOS	VALUES	(	131304307,	'RICARDO',	'AYALA VALENZUELA');
INSERT	INTO	USUARIOS	VALUES	(	131311427,	'ALEJANDRO',	'FLORES Z.');
INSERT	INTO	USUARIOS	VALUES	(	131633572,	'TIRZA',	'BARRIA CATALAN');
INSERT	INTO	USUARIOS	VALUES	(	132407061,	'OLGA',	'BARBOSA ');
INSERT	INTO	USUARIOS	VALUES	(	133255508,	'ALICIA',	'ZAMBRANO DIAZ');
INSERT	INTO	USUARIOS	VALUES	(	134101229,	'DAVID',	'INOSTROZA ');
INSERT	INTO	USUARIOS	VALUES	(	135217190,	'FRANCISCO',	'IBARRA SOTO');
INSERT	INTO	USUARIOS	VALUES	(	135217743,	'MARIANNE',	'WERNER BECKER');
INSERT	INTO	USUARIOS	VALUES	(	135235512,	'JAVIER',	'PARADA SILVA');
INSERT	INTO	USUARIOS	VALUES	(	136100963,	'ALEXIA',	'GUERRA ');
INSERT	INTO	USUARIOS	VALUES	(	136450956,	'JOSELINE',	'TAPIA ZAMORA');
INSERT	INTO	USUARIOS	VALUES	(	136982834,	'ISABEL',	'SANTIBANEZ CAVIERES');
INSERT	INTO	USUARIOS	VALUES	(	137382237,	'NELSON',	'ABURTO ALMONACID');
INSERT	INTO	USUARIOS	VALUES	(	138290581,	'FELIPE',	'MUNITA JORDÁN');
INSERT	INTO	USUARIOS	VALUES	(	139650255,	'LUIS',	'CARTER LEAL');
INSERT	INTO	USUARIOS	VALUES	(	141022393,	'CRISTIAN',	'MONDACA MARINO');
INSERT	INTO	USUARIOS	VALUES	(	141192736,	'GONZALO',	'TAMPIER BROCKHAUS');
INSERT	INTO	USUARIOS	VALUES	(	141432346,	'CÉSAR',	'ULLOA LEAL');
INSERT	INTO	USUARIOS	VALUES	(	144856686,	'LEONARDO',	'PACHECO CARO');
INSERT	INTO	USUARIOS	VALUES	(	146037380,	'KONG',	'SHUN AH-HEN');
INSERT	INTO	USUARIOS	VALUES	(	146509290,	'RODRIGO',	'BOLAÑOS ');
INSERT	INTO	USUARIOS	VALUES	(	146966926,	'JOSÉ',	'GARCÉS VARGAS');
INSERT	INTO	USUARIOS	VALUES	(	151122108,	'MARIO',	'FLORES FLORES');
INSERT	INTO	USUARIOS	VALUES	(	152613768,	'ANDRES',	'HORN MORGENSTERN');
INSERT	INTO	USUARIOS	VALUES	(	153114307,	'RUBEN',	'SEGUEL VIDAL');
INSERT	INTO	USUARIOS	VALUES	(	153793654,	'EDUARDO',	'SILVA RODRIGUEZ');
INSERT	INTO	USUARIOS	VALUES	(	153825831,	'RODRIGO',	'VEGA SAN');
INSERT	INTO	USUARIOS	VALUES	(	154684441,	'CRISTIAN',	'OLIVARES RODRÍGUEZ');
INSERT	INTO	USUARIOS	VALUES	(	155955791,	'LUIS',	'VALENZUELA ');
INSERT	INTO	USUARIOS	VALUES	(	158495899,	'JUAN',	'REYES CANCINO');
INSERT	INTO	USUARIOS	VALUES	(	159345874,	'JAVIERA',	'PILAR BAHAMONDE');
INSERT	INTO	USUARIOS	VALUES	(	161118915,	'MIGUEL',	'FLORES CARDENAS');
INSERT	INTO	USUARIOS	VALUES	(	162095854,	'NICOLÁS',	'ANSOLEAGA PÉREZ');
INSERT	INTO	USUARIOS	VALUES	(	173269218,	'MARCELA',	'APABLAZA SANTIS');
INSERT	INTO	USUARIOS	VALUES	(	173976097,	'FRANCISCO',	'ARRIAGADA SOTO');
INSERT	INTO	USUARIOS	VALUES	(	177035807,	'RICARDO',	'PUEBLA BONILLA');
INSERT	INTO	USUARIOS	VALUES	(	191388720,	'DANIELA',	'URIBE CÁRDENAS');
INSERT	INTO	USUARIOS	VALUES	(	206017899,	'VALENTINA',	'VERA MALDONADO');
INSERT	INTO	USUARIOS	VALUES	(	209590581,	'CONSUELO',	'TRIVIÑOS INOSTROZA');
INSERT	INTO	USUARIOS	VALUES	(	215845168,	'CLARA',	'OLMEDO ');
INSERT	INTO	USUARIOS	VALUES	(	228211702,	'FRANK',	'SCHANACK ');
INSERT	INTO	USUARIOS	VALUES	(	233510629,	'REDA',	'ELHAMID ASHUUR');
INSERT	INTO	USUARIOS	VALUES	(	238653797,	'ALEXANDRE',	'CORGNE ');
INSERT	INTO	USUARIOS	VALUES	(	238871956,	'JESSICA',	'COSSART DEBAILLEUL');
INSERT	INTO	USUARIOS	VALUES	(	240811057,	'ANANDA',	'MULLER PEREIRA');
INSERT	INTO	USUARIOS	VALUES	(	242074084,	'DIANA',	'MOVILLA QUESADA');
INSERT	INTO	USUARIOS	VALUES	(	244320279,	'DAVID',	'ANDRES FERNANDEZ');
INSERT	INTO	USUARIOS	VALUES	(	246383928,	'BENJAMÍN',	'UBERTI ');
INSERT	INTO	USUARIOS	VALUES	(	247562486,	'GAËLLE',	'JULIE PLISSART');
INSERT	INTO	USUARIOS	VALUES	(	251725128,	'EDUARDO',	'NUÑEZ CASTELLANOS');



INSERT	INTO	EDITORIALES	VALUES	(	1,	'ALFAOMEGA',	'MADRID');
INSERT	INTO	EDITORIALES	VALUES	(	2,	'ALMUZARA',	'BARCELONA');
INSERT	INTO	EDITORIALES	VALUES	(	3,	'ANAYA',	'OVIEDO');
INSERT	INTO	EDITORIALES	VALUES	(	4,	'CENGAGE LEARNING LATIN AMERICA',	'VALENCIA');
INSERT	INTO	EDITORIALES	VALUES	(	5,	'ANDINA',	'BARCELONA');
INSERT	INTO	EDITORIALES	VALUES	(	6,	'MC GRAW HILL',	'BARCELONA');
INSERT	INTO	EDITORIALES	VALUES	(	7,	'EMPRESA ACTIVA',	'BARCELONA');
INSERT	INTO	EDITORIALES	VALUES	(	8,	'EMPRESA EDITORA MACRO',	'OVIEDO');
INSERT	INTO	EDITORIALES	VALUES	(	9,	'FOX ANDINA',	'MADRID');
INSERT	INTO	EDITORIALES	VALUES	(	10,	'MP',	'MADRID');
INSERT	INTO	EDITORIALES	VALUES	(	11,	'PARANINFO',	'MADRID');
INSERT	INTO	EDITORIALES	VALUES	(	12,	'PEARSON',	'MADRID');
INSERT	INTO	EDITORIALES	VALUES	(	13,	'PLANETA JUNIOR',	'OVIEDO');
INSERT	INTO	EDITORIALES	VALUES	(	14,	'PROFIT',	'VALENCIA');
INSERT	INTO	EDITORIALES	VALUES	(	15,	'RC LIBROS',	'ZARAGOZA');
INSERT	INTO	EDITORIALES	VALUES	(	16,	'REVERTE',	'MADRID');
INSERT	INTO	EDITORIALES	VALUES	(	17,	'USERS',	'BARCELONA');


INSERT	INTO	LIBROS	VALUES	(	1234,	'OFFICE DESDE CERO CONOZCA TODOS SUS SECRETOS Y APROVECHE SUS VENTAJAS',	10);
INSERT	INTO	LIBROS	VALUES	(	1235,	'EXCEL 2007 PARA TORPES/ EXCEL 2007 FOR DUMMIES',	3);
INSERT	INTO	LIBROS	VALUES	(	1236,	'DRUPAL',	17);
INSERT	INTO	LIBROS	VALUES	(	1237,	'TABLAS DINAMICAS EN EXCEL 2007 [C/CD ROM]',	1);
INSERT	INTO	LIBROS	VALUES	(	1238,	'PHYTON FACIL',	1);
INSERT	INTO	LIBROS	VALUES	(	1239,	'EL LIBRO OFICIAL DE UBUNTU. EDICIÓN 2009 (TÍTULOS ESPECIALES)',	3);
INSERT	INTO	LIBROS	VALUES	(	1240,	'ADMINISTRACIÓN DE SISTEMAS LINUX',	17);
INSERT	INTO	LIBROS	VALUES	(	1241,	'TECNOLOGIA DIGITAL PARA DOCENTES',	5);
INSERT	INTO	LIBROS	VALUES	(	1242,	'ADMINISTRACION DE PROYECTOS DE SOFTWARE',	6);
INSERT	INTO	LIBROS	VALUES	(	1243,	'CLAVES DE POWER POINT Y ACCESS AVANZA',	9);
INSERT	INTO	LIBROS	VALUES	(	1244,	'SISTEMAS OPERATIVOS',	6);
INSERT	INTO	LIBROS	VALUES	(	1245,	'ENCICLOPEDIA DE MICROSOFT VISUAL C#',	1);
INSERT	INTO	LIBROS	VALUES	(	1246,	'C#. LENGUAJE Y APLICACIONES, 2/ED C/CD',	17);
INSERT	INTO	LIBROS	VALUES	(	1247,	'FINANZAS BASICAS CON EXCEL',	1);
INSERT	INTO	LIBROS	VALUES	(	1248,	'EXCEL 2007 (MANUALES IMPRESCINDIBLES)',	3);
INSERT	INTO	LIBROS	VALUES	(	1249,	'CREACION DE DISTRIBUCIONES LINUX PERSONALIZACION EXTREMA PARA CADA NECESIDAD',	10);
INSERT	INTO	LIBROS	VALUES	(	1250,	'FUNCIONES EN EXCEL: ESPANOL, MANUAL USERS, MANUALES USERS',	5);
INSERT	INTO	LIBROS	VALUES	(	1251,	'ADOBE INDESIGN CS4',	6);
INSERT	INTO	LIBROS	VALUES	(	1252,	'WINDOWS VISTA PASO A PASO',	6);
INSERT	INTO	LIBROS	VALUES	(	1253,	'HARDWARE DESDE CERO',	10);
INSERT	INTO	LIBROS	VALUES	(	1254,	'WINDOWS SERVER 2008 MANUAL DE REFERENCIA',	6);
INSERT	INTO	LIBROS	VALUES	(	1255,	'DESARROLLO DE BASE DE DATOS',	1);
INSERT	INTO	LIBROS	VALUES	(	1256,	'AMPLIAR, CONFIGURAR Y REPARAR SU PC,C/CD',	17);
INSERT	INTO	LIBROS	VALUES	(	1257,	'BASES DE DATOS CON VISUAL BASIC',	1);
INSERT	INTO	LIBROS	VALUES	(	1258,	'PHP Y MYSQL PRACTICO PARA DISENADORES',	3);
INSERT	INTO	LIBROS	VALUES	(	1259,	'REDES CISCO CCNP A FONDO GUIA DE ESTUDIO PARA PROFESION  ALES',	1);
INSERT	INTO	LIBROS	VALUES	(	1260,	'REDES CISCO: GUIA DE ESTUDIO PARA LA CERTIFICACION CCNA 640',	1);
INSERT	INTO	LIBROS	VALUES	(	1261,	'WORD 2007 (MANUALES IMPRESCINDIBLES)',	3);
INSERT	INTO	LIBROS	VALUES	(	1262,	'WINDOWS SERVER 2008',	3);
INSERT	INTO	LIBROS	VALUES	(	1263,	'BIG DATA PARA DIRECTIVOS',	7);
INSERT	INTO	LIBROS	VALUES	(	1264,	'WORD 2007 PASO A PASO',	6);
INSERT	INTO	LIBROS	VALUES	(	1265,	'MICROSOFT OFFICE EXCEL 2007 PASO A PASO/ MICROSOFT OFFICE EXCEL 2007 STEP BY STEP',	6);
INSERT	INTO	LIBROS	VALUES	(	1266,	'INGENIERÍA DE SOFTWARE',	12);
INSERT	INTO	LIBROS	VALUES	(	1267,	'GUIA PRACTICA REDES LOCALES',	3);
INSERT	INTO	LIBROS	VALUES	(	1268,	'WINDOWS VISTA : REGISTRO Y CONFIGURACIÓN',	17);
INSERT	INTO	LIBROS	VALUES	(	1269,	'ANÁLISIS Y DISEÑO DE SISTEMAS Y METODOS',	6);
INSERT	INTO	LIBROS	VALUES	(	1270,	'CABLEADO DE REDES PARA VOZ, VIDEO Y DATOS',	4);
INSERT	INTO	LIBROS	VALUES	(	1271,	'WORD 2007',	3);
INSERT	INTO	LIBROS	VALUES	(	1272,	'APRENDE A PROGRAMAR CON PYTHON',	15);
INSERT	INTO	LIBROS	VALUES	(	1273,	'A PROGRAMAR SE APRENDE JUGANDO',	11);
INSERT	INTO	LIBROS	VALUES	(	1274,	'SIMULACION CON SOFTWARE ARENA 4ED. C/CDROM',	6);
INSERT	INTO	LIBROS	VALUES	(	1275,	'ANIMACIÓN Y EFECTOS ESPECIALES CON AFTER EFFECTS: MANUALES USERS (SPANISH EDITION)',	5);
INSERT	INTO	LIBROS	VALUES	(	1276,	'FINANZAS CON MICROSOFT EXCEL',	5);
INSERT	INTO	LIBROS	VALUES	(	1277,	'PROGRAMACIÓN Y CÁLCULO NUMÉRICO',	17);
INSERT	INTO	LIBROS	VALUES	(	1278,	'PROGRAMACION EN C. C++, JAVA Y UML',	6);
INSERT	INTO	LIBROS	VALUES	(	1279,	'DISEÑAR CUADROS DE MANDO CON EXCEL UTILIZANDO LAS TABLAS DINÁMICAS',	14);
INSERT	INTO	LIBROS	VALUES	(	1280,	'DISEÑO APLICACION Y ADMINISTRACION DE BA',	6);
INSERT	INTO	LIBROS	VALUES	(	1281,	'PROGRAMACION TRANSACT CON SQL SERVER 2012',	8);
INSERT	INTO	LIBROS	VALUES	(	1282,	'EXPRIME WINDOWS VISTA',	3);
INSERT	INTO	LIBROS	VALUES	(	1283,	'PHP AVANZADO DOMINE EL LENGUAJE.',	10);
INSERT	INTO	LIBROS	VALUES	(	1284,	'DESARROLLO PHP + MYSQL POTENCIE SUS SITIOS CON EL PODER  DE AMBAS HERRAMIENTAS',	17);
INSERT	INTO	LIBROS	VALUES	(	1285,	'DREAMWEAVER 8',	3);
INSERT	INTO	LIBROS	VALUES	(	1286,	'INNOVACIONES EN SQL SERVER 2008',	6);
INSERT	INTO	LIBROS	VALUES	(	1287,	'PROGRAMACION CON VISUAL BASIC 2008',	6);
INSERT	INTO	LIBROS	VALUES	(	1288,	'C? MO PROGRAMAR EN JAVA NOVENA EDICION (SPANISH EDITION)',	12);
INSERT	INTO	LIBROS	VALUES	(	1289,	'CINEMATOGRAFIA EN ALTA DEFINICION',	17);
INSERT	INTO	LIBROS	VALUES	(	1290,	'METODOS NUMERICOS CON APLICACIONES EN EXCEL (LIBRO EN ESPAÑOLISBN: 9686708596. ISBN',	16);
INSERT	INTO	LIBROS	VALUES	(	1291,	'ERGONOMIA 2',	1);
INSERT	INTO	LIBROS	VALUES	(	1292,	'OFFICE 2016 (SPANISH EDITION)',	5);
INSERT	INTO	LIBROS	VALUES	(	1293,	'MACROS CON EXCEL 2007',	6);
INSERT	INTO	LIBROS	VALUES	(	1294,	'SQL SERVER 2008 MANUAL DE REFERENCIA',	6);
INSERT	INTO	LIBROS	VALUES	(	1295,	'STEP 7, UNA MANERA FACIL DE PROGRAMAR PLC DE SIEMENS',	1);
INSERT	INTO	LIBROS	VALUES	(	1296,	'METODOS AGILES UNA ALTERNATIVA REAL Y COMPETITIVA A LOS PROCESOS TRADICIONALES DE DESARROLLO',	10);
INSERT	INTO	LIBROS	VALUES	(	1297,	'FUNDAMENTOS DE LA PRÁCTICA DE ENFERMERÍA',	6);
INSERT	INTO	LIBROS	VALUES	(	1298,	'INGENIERIA DEL SOFTWARE UN ENFOQUE PRACTICO',	6);
INSERT	INTO	LIBROS	VALUES	(	1299,	'JAVA 8',	3);
INSERT	INTO	LIBROS	VALUES	(	1300,	'ESTRUCTURA Y TECNOLOGIA DE COMPUTADORAS: TEORIA Y PROBLEMAS RESUELTOS (LIBRO EN ESP FECHA PUBLICACIÓN: 26',	6);
INSERT	INTO	LIBROS	VALUES	(	1301,	'OFFICE 2008 PARA MAC',	6);
INSERT	INTO	LIBROS	VALUES	(	1302,	'REDES 200 RESPUETAS',	10);
INSERT	INTO	LIBROS	VALUES	(	1303,	'SHAREPOINT SERVER 2007',	3);
INSERT	INTO	LIBROS	VALUES	(	1304,	'ACCESS DESDE CERO',	5);
INSERT	INTO	LIBROS	VALUES	(	1305,	'LINUX DESDE CERO: MANUALES USERS',	5);
INSERT	INTO	LIBROS	VALUES	(	1306,	'TÉCNICO PROFESIONAL DE PC: MANUALES USERS',	5);
INSERT	INTO	LIBROS	VALUES	(	1307,	'DESARROLLADOR WEB CLAVES Y TECNICAS PARA OPTIMIZAR SITIOS',	10);
INSERT	INTO	LIBROS	VALUES	(	1308,	'REDES WIRELESS INST.CONFIG.Y MANTENI',	10);
INSERT	INTO	LIBROS	VALUES	(	1309,	'BIG DATA. JOYANES. 1ED',	1);
INSERT	INTO	LIBROS	VALUES	(	1310,	'BIBLIA SERVIDOR PACHE 2',	3);
INSERT	INTO	LIBROS	VALUES	(	1311,	'APRENDE A PROGRAMAR',	13);
INSERT	INTO	LIBROS	VALUES	(	1312,	'WORD 2007 (MANUALES TECNOLÓGICOS "PASO A PASO")',	2);
INSERT	INTO	LIBROS	VALUES	(	1313,	'200 RESPUESTAS EXCEL',	10);
INSERT	INTO	LIBROS	VALUES	(	1314,	'PROGRAMACION JAVA. INTRO A LA PROGRAMACI',	6);


INSERT	INTO	AUTORES	VALUES	(	1234,	'ALEJANDRO DAGOSTINO');
INSERT	INTO	AUTORES	VALUES	(	1235,	'ANA MARTOS RUBIO');
INSERT	INTO	AUTORES	VALUES	(	1236,	'ANGELA BYRON');
INSERT	INTO	AUTORES	VALUES	(	1237,	'ANTONIO MENCHEN PEÑUELA');
INSERT	INTO	AUTORES	VALUES	(	1238,	'ARNALDO PEREZ CASTANO');
INSERT	INTO	AUTORES	VALUES	(	1239,	'BENJAMIN MAKO HILL');
INSERT	INTO	AUTORES	VALUES	(	1240,	'BILL LUBANOVIC TOM ADELSTEIN');
INSERT	INTO	AUTORES	VALUES	(	1241,	'CACCURI VIRGINIA');
INSERT	INTO	AUTORES	VALUES	(	1242,	'CAPERS JONES');
INSERT	INTO	AUTORES	VALUES	(	1243,	'CARBALLEIRO');
INSERT	INTO	AUTORES	VALUES	(	1244,	'CARRETERO');
INSERT	INTO	AUTORES	VALUES	(	1245,	'CEBALLOS');
INSERT	INTO	AUTORES	VALUES	(	1246,	'CEBALLOS');
INSERT	INTO	AUTORES	VALUES	(	1247,	'CESAR PEREZ');
INSERT	INTO	AUTORES	VALUES	(	1248,	'CLAUDIA VALDÉS-MIRANDA; ZOE PLASENCIA LÓPEZ');
INSERT	INTO	AUTORES	VALUES	(	1249,	'CLAUDIO PEÑA');
INSERT	INTO	AUTORES	VALUES	(	1250,	'CLAUDIO SANCHEZ');
INSERT	INTO	AUTORES	VALUES	(	1251,	'CRUISE');
INSERT	INTO	AUTORES	VALUES	(	1252,	'CURT SIMMONS');
INSERT	INTO	AUTORES	VALUES	(	1253,	'DAMIAN COTTINO');
INSERT	INTO	AUTORES	VALUES	(	1254,	'DANIELLE RUEST');
INSERT	INTO	AUTORES	VALUES	(	1255,	'DOLORES CUADRA');
INSERT	INTO	AUTORES	VALUES	(	1256,	'DURAN');
INSERT	INTO	AUTORES	VALUES	(	1257,	'DURAN LUIS');
INSERT	INTO	AUTORES	VALUES	(	1258,	'ELLIE QUIGLEY,MARKO GARGENTA');
INSERT	INTO	AUTORES	VALUES	(	1259,	'ERNESTO ARIGANELLO');
INSERT	INTO	AUTORES	VALUES	(	1260,	'ERNESTO ARIGANELLO');
INSERT	INTO	AUTORES	VALUES	(	1261,	'FRANCISCO CHARTE');
INSERT	INTO	AUTORES	VALUES	(	1262,	'FRANCISCO CHARTE OJEDA');
INSERT	INTO	AUTORES	VALUES	(	1263,	'GENIS ROCA');
INSERT	INTO	AUTORES	VALUES	(	1264,	'GUY HART-DAVIS');
INSERT	INTO	AUTORES	VALUES	(	1265,	'GUY HART-DAVIS,ELOY PINEDA (TRN) ROJAS');
INSERT	INTO	AUTORES	VALUES	(	1266,	'IAN SOMMERVILLE');
INSERT	INTO	AUTORES	VALUES	(	1267,	'J. FÉLIX RÁBAGO');
INSERT	INTO	AUTORES	VALUES	(	1268,	'JAVIER SÁNCHEZ BAÑOS');
INSERT	INTO	AUTORES	VALUES	(	1269,	'JEFFREY L. WHITTEN');
INSERT	INTO	AUTORES	VALUES	(	1270,	'JIM HAYES PAUL ROSENBERG');
INSERT	INTO	AUTORES	VALUES	(	1271,	'JOAN PREPPERNAU,JOYCE COX');
INSERT	INTO	AUTORES	VALUES	(	1272,	'JOSEACUTE DIMA CASTILLO');
INSERT	INTO	AUTORES	VALUES	(	1273,	'JOSE MAESTRE TORRE, RIQUELME SAEZ');
INSERT	INTO	AUTORES	VALUES	(	1274,	'KELTON W DAVID');
INSERT	INTO	AUTORES	VALUES	(	1275,	'LEONARDO OLIVITO');
INSERT	INTO	AUTORES	VALUES	(	1276,	'LUCAS PADIN');
INSERT	INTO	AUTORES	VALUES	(	1277,	'LUIS GAVETE CORVINOS F. MICHAVILA');
INSERT	INTO	AUTORES	VALUES	(	1278,	'LUIS JOYANES AGUILAR');
INSERT	INTO	AUTORES	VALUES	(	1279,	'LUÍS MUÑIZ');
INSERT	INTO	AUTORES	VALUES	(	1280,	'MANNINO MICHAEL');
INSERT	INTO	AUTORES	VALUES	(	1281,	'MANUEL TORRES');
INSERT	INTO	AUTORES	VALUES	(	1282,	'MATT KLOSKOWSKI Y KLEBER STEPHENSON');
INSERT	INTO	AUTORES	VALUES	(	1283,	'MINERA F.');
INSERT	INTO	AUTORES	VALUES	(	1284,	'MINERA FRANCISC');
INSERT	INTO	AUTORES	VALUES	(	1285,	'ÓSCAR PEÑA');
INSERT	INTO	AUTORES	VALUES	(	1286,	'OTEY');
INSERT	INTO	AUTORES	VALUES	(	1287,	'PATRICK');
INSERT	INTO	AUTORES	VALUES	(	1288,	'PAUL DEITEL');
INSERT	INTO	AUTORES	VALUES	(	1289,	'PAUL WHEELER');
INSERT	INTO	AUTORES	VALUES	(	1290,	'PEDRO QUINTANA');
INSERT	INTO	AUTORES	VALUES	(	1291,	'PEDRO R. MONDELO');
INSERT	INTO	AUTORES	VALUES	(	1292,	'PEÑA MILLAHUAL CLAUDIO ALEJANDRO');
INSERT	INTO	AUTORES	VALUES	(	1293,	'PERRY');
INSERT	INTO	AUTORES	VALUES	(	1294,	'PETKOVIC');
INSERT	INTO	AUTORES	VALUES	(	1295,	'PILAR MENGUAL');
INSERT	INTO	AUTORES	VALUES	(	1296,	'PRIOLO SEBASTIA');
INSERT	INTO	AUTORES	VALUES	(	1297,	'RICHARD HOGSTON');
INSERT	INTO	AUTORES	VALUES	(	1298,	'ROGER S. PRESSMAN');
INSERT	INTO	AUTORES	VALUES	(	1299,	'ROGERS CADENHEAD');
INSERT	INTO	AUTORES	VALUES	(	1300,	'ROMERO TERNERO');
INSERT	INTO	AUTORES	VALUES	(	1301,	'STEVE SCHWARTZ');
INSERT	INTO	AUTORES	VALUES	(	1302,	'SUAREZ O.');
INSERT	INTO	AUTORES	VALUES	(	1303,	'TISSEGHEM PATRICK');
INSERT	INTO	AUTORES	VALUES	(	1304,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1305,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1306,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1307,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1308,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1309,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1310,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1311,	'VARIOS AUTORES');
INSERT	INTO	AUTORES	VALUES	(	1312,	'VARIOS AUTORES');
INSERT	INTO	AUTORES	VALUES	(	1313,	'VIRGINIA CACCARI');
INSERT	INTO	AUTORES	VALUES	(	1314,	'WU ALICE');
INSERT	INTO	AUTORES	VALUES	(	1235,	'VARIOS AUTORES');
INSERT	INTO	AUTORES	VALUES	(	1236,	'VARIOS AUTORES');
INSERT	INTO	AUTORES	VALUES	(	1237,	'VIRGINIA CACCARI');
INSERT	INTO	AUTORES	VALUES	(	1238,	'WU ALICE');
INSERT	INTO	AUTORES	VALUES	(	1239,	'WU ALICE');
INSERT	INTO	AUTORES	VALUES	(	1240,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1241,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1242,	'USERS STAFF');
INSERT	INTO	AUTORES	VALUES	(	1242,	'USERS STAFF');




INSERT	INTO	TELEFONOS	VALUES	(	6216755,	699658972);
INSERT	INTO	TELEFONOS	VALUES	(	9298009,	677730785);
INSERT	INTO	TELEFONOS	VALUES	(	9888548,	667921712);
INSERT	INTO	TELEFONOS	VALUES	(	10762286,	621947684);
INSERT	INTO	TELEFONOS	VALUES	(	12489165,	695456473);
INSERT	INTO	TELEFONOS	VALUES	(	12700384,	673637163);
INSERT	INTO	TELEFONOS	VALUES	(	13454600,	616335520);
INSERT	INTO	TELEFONOS	VALUES	(	13853359,	616177119);
INSERT	INTO	TELEFONOS	VALUES	(	15294540,	650549611);
INSERT	INTO	TELEFONOS	VALUES	(	15434067,	668967744);
INSERT	INTO	TELEFONOS	VALUES	(	15959579,	696973471);
INSERT	INTO	TELEFONOS	VALUES	(	16806523,	676278618);
INSERT	INTO	TELEFONOS	VALUES	(	20020526,	627681946);
INSERT	INTO	TELEFONOS	VALUES	(	24590987,	620420511);
INSERT	INTO	TELEFONOS	VALUES	(	26410131,	667650292);
INSERT	INTO	TELEFONOS	VALUES	(	28942257,	691693607);
INSERT	INTO	TELEFONOS	VALUES	(	41257636,	671523243);
INSERT	INTO	TELEFONOS	VALUES	(	46005600,	631830159);
INSERT	INTO	TELEFONOS	VALUES	(	46827228,	656868924);
INSERT	INTO	TELEFONOS	VALUES	(	48129668,	623969415);
INSERT	INTO	TELEFONOS	VALUES	(	48467555,	695401517);
INSERT	INTO	TELEFONOS	VALUES	(	48764320,	667086060);
INSERT	INTO	TELEFONOS	VALUES	(	50452077,	616774033);
INSERT	INTO	TELEFONOS	VALUES	(	51372492,	630394800);
INSERT	INTO	TELEFONOS	VALUES	(	52207711,	642870024);
INSERT	INTO	TELEFONOS	VALUES	(	54060157,	656278448);
INSERT	INTO	TELEFONOS	VALUES	(	54060157,	639827448);
INSERT	INTO	TELEFONOS	VALUES	(	54356609,	637268400);
INSERT	INTO	TELEFONOS	VALUES	(	54356609,	671933151);
INSERT	INTO	TELEFONOS	VALUES	(	55034265,	696032498);
INSERT	INTO	TELEFONOS	VALUES	(	55034265,	673684212);
INSERT	INTO	TELEFONOS	VALUES	(	55219737,	616994654);
INSERT	INTO	TELEFONOS	VALUES	(	55219737,	635992462);
INSERT	INTO	TELEFONOS	VALUES	(	57004304,	670466671);
INSERT	INTO	TELEFONOS	VALUES	(	57004304,	681580392);
INSERT	INTO	TELEFONOS	VALUES	(	57322063,	637408996);
INSERT	INTO	TELEFONOS	VALUES	(	57322063,	624040504);
INSERT	INTO	TELEFONOS	VALUES	(	57322063,	657767784);
INSERT	INTO	TELEFONOS	VALUES	(	59538411,	623111406);
INSERT	INTO	TELEFONOS	VALUES	(	60733902,	674530133);
INSERT	INTO	TELEFONOS	VALUES	(	60869359,	635773516);
INSERT	INTO	TELEFONOS	VALUES	(	60976929,	664851529);
INSERT	INTO	TELEFONOS	VALUES	(	62167556,	662392713);
INSERT	INTO	TELEFONOS	VALUES	(	63860093,	676404021);
INSERT	INTO	TELEFONOS	VALUES	(	64832670,	670582924);
INSERT	INTO	TELEFONOS	VALUES	(	65692058,	643280994);
INSERT	INTO	TELEFONOS	VALUES	(	65752050,	626761202);
INSERT	INTO	TELEFONOS	VALUES	(	67969626,	647264612);
INSERT	INTO	TELEFONOS	VALUES	(	69042228,	697082162);
INSERT	INTO	TELEFONOS	VALUES	(	69201822,	638440922);
INSERT	INTO	TELEFONOS	VALUES	(	70034166,	660375604);
INSERT	INTO	TELEFONOS	VALUES	(	70041464,	696240565);
INSERT	INTO	TELEFONOS	VALUES	(	70041464,	619544897);
INSERT	INTO	TELEFONOS	VALUES	(	70041464,	646794274);
INSERT	INTO	TELEFONOS	VALUES	(	71970191,	667574965);
INSERT	INTO	TELEFONOS	VALUES	(	71970191,	619616312);
INSERT	INTO	TELEFONOS	VALUES	(	71970191,	631923008);
INSERT	INTO	TELEFONOS	VALUES	(	75545746,	698380128);
INSERT	INTO	TELEFONOS	VALUES	(	75545746,	683355059);
INSERT	INTO	TELEFONOS	VALUES	(	78186666,	684956254);
INSERT	INTO	TELEFONOS	VALUES	(	78186666,	628195964);
INSERT	INTO	TELEFONOS	VALUES	(	79908606,	673954140);
INSERT	INTO	TELEFONOS	VALUES	(	79908606,	674232780);
INSERT	INTO	TELEFONOS	VALUES	(	80140835,	645408901);
INSERT	INTO	TELEFONOS	VALUES	(	80140835,	638335924);
INSERT	INTO	TELEFONOS	VALUES	(	80506635,	635533119);
INSERT	INTO	TELEFONOS	VALUES	(	80945337,	627607968);
INSERT	INTO	TELEFONOS	VALUES	(	81560544,	692862839);
INSERT	INTO	TELEFONOS	VALUES	(	81961883,	677443167);
INSERT	INTO	TELEFONOS	VALUES	(	82076204,	691680027);
INSERT	INTO	TELEFONOS	VALUES	(	86552639,	640149677);
INSERT	INTO	TELEFONOS	VALUES	(	86983338,	624871242);
INSERT	INTO	TELEFONOS	VALUES	(	87231976,	614478187);
INSERT	INTO	TELEFONOS	VALUES	(	87546357,	659062461);
INSERT	INTO	TELEFONOS	VALUES	(	91065282,	680379533);
INSERT	INTO	TELEFONOS	VALUES	(	91496313,	688219312);
INSERT	INTO	TELEFONOS	VALUES	(	92557715,	624642595);
INSERT	INTO	TELEFONOS	VALUES	(	93788435,	621545336);
INSERT	INTO	TELEFONOS	VALUES	(	96179278,	638456187);
INSERT	INTO	TELEFONOS	VALUES	(	97136920,	630344586);
INSERT	INTO	TELEFONOS	VALUES	(	98849661,	628282621);
INSERT	INTO	TELEFONOS	VALUES	(	98986642,	684616720);
INSERT	INTO	TELEFONOS	VALUES	(	99957638,	679539791);
INSERT	INTO	TELEFONOS	VALUES	(	100492229,	656426885);
INSERT	INTO	TELEFONOS	VALUES	(	104295711,	650763241);
INSERT	INTO	TELEFONOS	VALUES	(	104753523,	632225717);
INSERT	INTO	TELEFONOS	VALUES	(	106660093,	698446388);
INSERT	INTO	TELEFONOS	VALUES	(	107461558,	660734411);
INSERT	INTO	TELEFONOS	VALUES	(	107542248,	643103445);
INSERT	INTO	TELEFONOS	VALUES	(	107564284,	623219746);
INSERT	INTO	TELEFONOS	VALUES	(	108059397,	696091490);
INSERT	INTO	TELEFONOS	VALUES	(	108138106,	618629824);
INSERT	INTO	TELEFONOS	VALUES	(	108738979,	632060737);
INSERT	INTO	TELEFONOS	VALUES	(	109442860,	679447536);
INSERT	INTO	TELEFONOS	VALUES	(	109494992,	678187782);
INSERT	INTO	TELEFONOS	VALUES	(	109766623,	640157606);
INSERT	INTO	TELEFONOS	VALUES	(	114259764,	653061448);
INSERT	INTO	TELEFONOS	VALUES	(	114915858,	613169399);
INSERT	INTO	TELEFONOS	VALUES	(	114960446,	681340402);
INSERT	INTO	TELEFONOS	VALUES	(	115911430,	612816807);
INSERT	INTO	TELEFONOS	VALUES	(	116698129,	686610039);
INSERT	INTO	TELEFONOS	VALUES	(	120056239,	698453521);
INSERT	INTO	TELEFONOS	VALUES	(	120666843,	691578266);
INSERT	INTO	TELEFONOS	VALUES	(	120818325,	689500128);
INSERT	INTO	TELEFONOS	VALUES	(	122129624,	677490616);
INSERT	INTO	TELEFONOS	VALUES	(	122355993,	642069641);
INSERT	INTO	TELEFONOS	VALUES	(	122463729,	684160605);
INSERT	INTO	TELEFONOS	VALUES	(	122643123,	658559504);
INSERT	INTO	TELEFONOS	VALUES	(	124891655,	692679907);
INSERT	INTO	TELEFONOS	VALUES	(	124917212,	638698991);
INSERT	INTO	TELEFONOS	VALUES	(	124938546,	633481926);
INSERT	INTO	TELEFONOS	VALUES	(	127229813,	625739310);
INSERT	INTO	TELEFONOS	VALUES	(	127471533,	647688171);
INSERT	INTO	TELEFONOS	VALUES	(	130104533,	645229647);
INSERT	INTO	TELEFONOS	VALUES	(	131042574,	698076863);
INSERT	INTO	TELEFONOS	VALUES	(	131304307,	617065012);
INSERT	INTO	TELEFONOS	VALUES	(	131311427,	622539809);
INSERT	INTO	TELEFONOS	VALUES	(	131633572,	693757842);
INSERT	INTO	TELEFONOS	VALUES	(	132407061,	628317698);
INSERT	INTO	TELEFONOS	VALUES	(	133255508,	656882337);
INSERT	INTO	TELEFONOS	VALUES	(	134101229,	643012385);
INSERT	INTO	TELEFONOS	VALUES	(	135217190,	647506483);
INSERT	INTO	TELEFONOS	VALUES	(	135217743,	615185839);
INSERT	INTO	TELEFONOS	VALUES	(	135235512,	626390832);
INSERT	INTO	TELEFONOS	VALUES	(	136100963,	656869143);
INSERT	INTO	TELEFONOS	VALUES	(	136450956,	698864463);
INSERT	INTO	TELEFONOS	VALUES	(	136982834,	637752409);
INSERT	INTO	TELEFONOS	VALUES	(	137382237,	618770843);
INSERT	INTO	TELEFONOS	VALUES	(	138290581,	670985167);
INSERT	INTO	TELEFONOS	VALUES	(	139650255,	652395861);
INSERT	INTO	TELEFONOS	VALUES	(	141022393,	647391106);
INSERT	INTO	TELEFONOS	VALUES	(	141192736,	684599602);
INSERT	INTO	TELEFONOS	VALUES	(	141432346,	663018421);
INSERT	INTO	TELEFONOS	VALUES	(	144856686,	695386630);
INSERT	INTO	TELEFONOS	VALUES	(	146037380,	652282636);
INSERT	INTO	TELEFONOS	VALUES	(	146509290,	640305082);
INSERT	INTO	TELEFONOS	VALUES	(	146966926,	650030701);
INSERT	INTO	TELEFONOS	VALUES	(	151122108,	680286024);
INSERT	INTO	TELEFONOS	VALUES	(	152613768,	660626202);
INSERT	INTO	TELEFONOS	VALUES	(	153114307,	639210156);
INSERT	INTO	TELEFONOS	VALUES	(	153793654,	665045118);
INSERT	INTO	TELEFONOS	VALUES	(	153825831,	632399204);
INSERT	INTO	TELEFONOS	VALUES	(	154684441,	611198447);
INSERT	INTO	TELEFONOS	VALUES	(	155955791,	681317104);
INSERT	INTO	TELEFONOS	VALUES	(	158495899,	695453864);
INSERT	INTO	TELEFONOS	VALUES	(	159345874,	623523278);
INSERT	INTO	TELEFONOS	VALUES	(	161118915,	620264474);
INSERT	INTO	TELEFONOS	VALUES	(	162095854,	620462834);
INSERT	INTO	TELEFONOS	VALUES	(	173269218,	691737771);
INSERT	INTO	TELEFONOS	VALUES	(	173976097,	646282493);
INSERT	INTO	TELEFONOS	VALUES	(	177035807,	679770049);
INSERT	INTO	TELEFONOS	VALUES	(	191388720,	676353894);
INSERT	INTO	TELEFONOS	VALUES	(	206017899,	666153188);
INSERT	INTO	TELEFONOS	VALUES	(	209590581,	636013087);
INSERT	INTO	TELEFONOS	VALUES	(	215845168,	679620644);
INSERT	INTO	TELEFONOS	VALUES	(	228211702,	665519201);
INSERT	INTO	TELEFONOS	VALUES	(	233510629,	655103860);
INSERT	INTO	TELEFONOS	VALUES	(	238653797,	619268956);
INSERT	INTO	TELEFONOS	VALUES	(	238871956,	692473076);
INSERT	INTO	TELEFONOS	VALUES	(	240811057,	646740506);
INSERT	INTO	TELEFONOS	VALUES	(	242074084,	645919456);
INSERT	INTO	TELEFONOS	VALUES	(	244320279,	623298098);
INSERT	INTO	TELEFONOS	VALUES	(	246383928,	684693734);
INSERT	INTO	TELEFONOS	VALUES	(	246383928,	686651131);
INSERT	INTO	TELEFONOS	VALUES	(	247562486,	637849854);
INSERT	INTO	TELEFONOS	VALUES	(	247562486,	678324799);
INSERT	INTO	TELEFONOS	VALUES	(	251725128,	649579261);


INSERT	INTO	ALQUILERES	VALUES	(	'2022-07-24',	9298009,	1273);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-10-03',	26410131,	1252);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-07-12',	46005600,	1307);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-08-17',	46827228,	1295);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-05',	59538411,	1275);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-10-12',	59538411,	1235);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-10-10',	60733902,	1258);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-03-21',	63860093,	1300);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-30',	63860093,	1241);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-06-17',	70034166,	1262);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-12',	75545746,	1275);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-06-23',	78186666,	1245);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-03-03',	80140835,	1270);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-03-30',	82076204,	1296);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-09-10',	87231976,	1292);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-08-06',	87546357,	1289);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-06-30',	91065282,	1239);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-03-01',	91496313,	1313);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-09-10',	136450956,	1259);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-05',	146037380,	1268);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-08-14',	146966926,	1270);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-22',	146966926,	1234);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-07-10',	152613768,	1240);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-09-02',	152613768,	1312);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-05',	108738979,	1252);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-19',	109442860,	1286);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-09-24',	122129624,	1264);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-10-07',	122129624,	1245);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-09-28',	122355993,	1268);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-07-21',	127471533,	1240);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-07',	130104533,	1247);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-10-03',	130104533,	1244);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-07-10',	131311427,	1306);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-28',	132407061,	1263);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-06-08',	133255508,	1235);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-03-19',	135217190,	1243);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-28',	135217743,	1261);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-06',	135235512,	1242);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-18',	136450956,	1254);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-08-26',	146037380,	1288);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-30',	146966926,	1302);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-09-20',	146966926,	1303);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-03-11',	152613768,	1299);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-15',	152613768,	1270);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-12',	153793654,	1307);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-06',	161118915,	1269);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-05-05',	206017899,	1311);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-07-29',	228211702,	1239);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-04-06',	244320279,	1279);
INSERT	INTO	ALQUILERES	VALUES	(	'2022-10-18',	247562486,	1267);

-- Ver como podemos conseguir el mismo formato del EXCEL combinando las diferentes tablas
SELECT 
    al.fec_alquiler, al.cod_usuario, al.cod_libro, li.tit_libro, ed.cod_editorial, ed.nom_editorial, ed.ciu_editorial,
	au.aut_libro, us.nom_usuario, us.ape_usuario, te.telefono
FROM
    ALQUILERES al
        INNER JOIN
    USUARIOS us ON al.cod_usuario = us.cod_usuario
        INNER JOIN
    LIBROS li ON al.cod_libro = li.cod_libro
        INNER JOIN
    EDITORIALES ed ON li.cod_editorial = ed.cod_editorial
        INNER JOIN
    AUTORES au ON li.cod_libro = au.cod_libro
        INNER JOIN
    TELEFONOS te ON te.cod_usuario = us.cod_usuario
ORDER BY al.fec_alquiler ASC;


-- Añadir el campo PRECIO a la tabla Libros
ALTER TABLE LIBROS ADD precio decimal(6,2);

-- Añadir el campo NUM_PAGINAS a la tabla Libros
ALTER TABLE LIBROS ADD NUM_PAGINAS INT;

-- Modo seguro activo (1) Inactivo(0), permite por ejemplo realizar operaciones sin el WHERE.
SET SQL_SAFE_UPDATES=0;

-- rand da un numero aleatorio entre 0 y 1
UPDATE LIBROS SET precio = ROUND(1 + (rand() * 23),2);

-- rand da un numero aleatorio entre 0 y 1
UPDATE LIBROS SET NUM_PAGINAS = ROUND(50 + (rand() * 99),0);

-- Crear un dos nuevos registro de alquiler para hoy
INSERT INTO ALQUILERES VALUES (CURDATE(), 9298009, 1234);
INSERT INTO ALQUILERES VALUES (CURDATE(), 9298009, 1254);

-- Ver que pasa si ponemos un libro que no existe
-- INSERT INTO ALQUILERES VALUES (CURDATE(), 9298009, 2341);

-- Eliminar uno de los registros
DELETE FROM ALQUILERES 
WHERE
    fec_alquiler = CURDATE()
    AND cod_usuario = 9298009
    AND cod_libro = 1234;

-- Contar cuantos libros tiene cada autor
SELECT 
    aut_libro, COUNT(cod_libro) AS 'Libros_autor'
FROM
    autores
GROUP BY aut_libro
ORDER BY Libros_autor DESC;     

-- Ver el telefono de cada usuario
SELECT 
    u.cod_usuario, u.nom_usuario, u.ape_usuario, t.telefono
FROM
    USUARIOS AS u
        INNER JOIN
    TELEFONOS AS t ON u.cod_usuario = t.cod_usuario
ORDER BY cod_usuario ASC;

-- Subconsulta. Seleccionar el libro con mayor número de páginas
SELECT * FROM LIBROS WHERE num_paginas = (SELECT MAX(num_paginas) from libros);

-- Subconsulta. Seleccionar el libro con mayor número de páginas de la editorial ANAYA (3)
SELECT 
    *
FROM
    LIBROS AS l
        INNER JOIN
    EDITORIALES AS e ON l.cod_editorial = e.cod_editorial
WHERE
    e.cod_editorial = 3
        AND l.num_paginas = (SELECT 
            MAX(num_paginas)
        FROM
            LIBROS AS l
                INNER JOIN
            EDITORIALES AS e ON l.cod_editorial = e.cod_editorial
        WHERE
            e.cod_editorial = 3);
       
       
-- Crear una Vista para ver los alquileres del mes actual
CREATE OR REPLACE VIEW alquileres_mes AS
    SELECT DISTINCT
        a.fec_alquiler,
        u.cod_usuario,
        u.nom_usuario,
        u.ape_usuario,
        l.cod_libro,
        l.tit_libro
    FROM
        alquileres a
            INNER JOIN
        usuarios u ON a.cod_usuario = u.cod_usuario
            INNER JOIN
        libros l ON a.cod_libro = l.cod_libro
    WHERE
        a.fec_alquiler BETWEEN DATE(CONCAT_WS('-', YEAR(CURDATE()), MONTH(CURDATE()), '1')) AND LAST_DAY(CURDATE())
        ORDER BY a.fec_alquiler ASC;

-- Ver la vista
SELECT 
    *
FROM
    alquileres_mes;
