CREATE SCHEMA if not exists contactcenter; 

-- CREACION DE TABLAS
CREATE table if not exists areas (
id_area INT primary key NOT NULL, 
nombre_area text (30) NOT NULL);

CREATE table if not exists puestos (
id_puesto INT primary key NOT NULL, 
nombre_puesto text (40) NOT NULL,
area INT not null, 
foreign key (area) REFERENCES areas (id_area));

CREATE table if not exists cuentas (
id_cuenta INT primary key NOT NULL,
nombre_cuenta text (25) NOT NULL);

CREATE table if not exists empleados (
id_legajo INT primary key NOT NULL AUTO_INCREMENT, 
cuenta INT,
puesto INT,
nombre text (25) NOT NULL, 
apellido text (20) NOT NULL, 
celular BIGINT NOT NULL,  
mail VARCHAR (50) NOT NULL, 
nacimiento DATE NOT NULL, 
ingreso DATE NOT NULL, 
FOREIGN KEY (cuenta) REFERENCES cuentas (id_cuenta), 
FOREIGN KEY (puesto) REFERENCES puestos (id_puesto)
); 

CREATE table if not exists clientes (
id_cliente INT primary key NOT NULL AUTO_INCREMENT, 
DNI INT NOT NULL, 
nombre text (25) NOT NULL,
apellido text (20) NOT NULL, 
celular BIGINT NOT NULL, 
mail VARCHAR (50) NOT NULL); 

CREATE table if not exists llamadas (
id_llamada INT primary key NOT NULL auto_increment, 
cuenta INT not null, 
empleado INT not null, 
cliente INT not null, 
numero_gestion varchar (15) not null, 
fecha_hora DATETIME, 
foreign key (cuenta) REFERENCES cuentas (id_cuenta), 
foreign key (empleado) REFERENCES empleados (id_legajo), 
foreign key (cliente) REFERENCES clientes (id_cliente)); 

-- INSERCION DE DATOS
INSERT INTO areas (id_area, nombre_area) VALUES 
(1, 'operaciones'),
(2, 'capital humano'),
(3, 'calidad'),
(4, 'capacitacion'),
(5, 'work force mangement'),
(6, 'administracion'),
(7, 'infraestructura'),
(8, 'tecnologia y sistemas'),
(9, 'cultura organizacional'),
(10, 'direccion'); 

INSERT INTO puestos VALUES 
(1, 'gerente de operaciones', 1),
(2, 'supervisor operativo', 1),
(3, 'representante', 1), 
(4, 'gerente de capital humano', 2),
(5, 'analista de liquidacion', 2), 
(6, 'analista de seleccion', 2), 
(7, 'gerente de calidad', 3), 
(8, 'supervisor de calidad', 3),
(9, 'analista de calidad', 3), 
(10, 'supervisor de capacitacion', 4),
(11, 'analista de capacitacion', 4),
(12, 'gerente de wfm', 5),
(13, 'supervisor de wfm', 5), 
(14, 'analista de reporting', 5), 
(15, 'analista de gtr', 5), 
(16, 'gerente de administracion', 6), 
(17, 'analista de contabilidad', 6), 
(18, 'analista administrativo', 6),
(19, 'recepcionista', 6),
(20, 'gerente de infraestructura', 7), 
(21, 'auxiliar de mantenimiento', 7), 
(22, 'auxiliar de hys', 7), 
(23, 'gerente de sistemas', 8),
(24, 'supervisor de sistemas', 8),
(25, 'analista de sistemas', 8), 
(26, 'gerente de cultura', 9), 
(27, 'analista de cultura', 9), 
(28, 'analista de comunicación', 9),
(29, 'director', 10); 

INSERT INTO cuentas (id_cuenta, nombre_cuenta) VALUES 
(1, 'claro'),
(2, 'banco galicia'),
(3, 'sanatorio allende'),
(4, 'naranja x'),
(5, 'mercado libre'),
(6, 'banco macro'); 

INSERT INTO empleados (id_legajo, cuenta, puesto, nombre, apellido, celular, mail, nacimiento, ingreso) VALUES 
(NULL, NULL, 1, 'jose', 'amarillo', 3513654789, 'pepeamarillo@hotmail.com', '1970-01-15', '2005-08-23'), 
(NULL, 1, 3, 'florencia', 'blanca', 3510235897, 'florenciablanca@outlook.es', '1996-12-12', '2017-03-01'), 
(NULL, 1, 2, 'juan', 'rojo', 3514785693, 'juanrojo@gmail.com', '2000-05-25', '2022-09-15'), 
(NULL, NULL, 16, 'pedro', 'azul', 3510556987, 'pedroazul@hotmail.com', '1987-08-30', '2015-11-10'), 
(NULL, 2, 3, 'juana', 'rosa', 3512589743, 'juanarosa@outlook.com', '1988-07-05', '2011-04-25'), 
(NULL, NULL, 12, 'celeste', 'gomez', 3510239875, 'celestegomez@gmail.com', '1995-06-07', '2014-02-10'), 
(NULL, 3, 3, 'blanca', 'lopez', 3510589741, 'blancalopez@gmail.com', '1996-01-31', '2017-03-16'), 
(NULL, NULL, 8, 'camila', 'juarez', 3451068974, 'camilajuarez@gmail.com', '1964-01-12', '2005-06-01'), 
(NULL, NULL, 27, 'laura', 'paz', 3510147896, 'laurapaz@hotmail.com', '1991-09-28', '2013-06-26'), 
(NULL, 2, 2, 'pablo', 'ortiz', 3514789556, 'pabloortiz@gmail.com', '1992-04-15', '2018-12-01'), 
(NULL, NULL, 8, 'miriam', 'gonzalez', 3510235789, 'miriamgonzalez@yahoo.com', '1985-02-01', '2010-01-30'), 
(NULL, 4, 3, 'natalia', 'perez', 3510025789, 'nataliaperez@hotmail.com', '1978-12-04', '2009-03-16'), 
(NULL, NULL, 9, 'hugo', 'alfonso', 3519996312, 'hugoalfonso23@outlook.es', '1986-11-08', '2009-03-16'), 
(NULL, NULL, 24, 'hector', 'gonzalez perez', 3258791578, 'hectorgp89@gmail.com', '1990-12-16', '2020-03-14'), 
(NULL, NULL, 26, 'antonella', 'fernandez', 3510236987, 'antonellafernandez@gmail.com', '1993-06-10', '2016-08-09'), 
(NULL, 5, 3, 'carla', 'romano', 3510148792, 'carlaromano@gmail.com', '1996-07-03', '2017-03-01'), 
(NULL, 3, 2, 'vanesa', 'hidalgo', 3518925434, 'vanesahidalgo@hotmail.com', '1965-02-14', '2009-03-01'), 
(NULL, NULL, 28, 'sabrina', 'rosas', 3514445891, 'sabrinarosas@outlook.com', '1987-05-23', '2011-04-04'), 
(NULL, NULL, 9, 'ezequiel', 'arjona', 3518886317, 'ezequielarjona@outlook.com', '1996-06-08', '2018-05-02'), 
(NULL, NULL, 4, 'evelyn', 'bueno', 3518947355, 'evelynbueno@hotmail.com', '1987-10-13', '2012-01-10'), 
(NULL, 6, 3, 'agostina', 'luna', 1158931595, 'agostinaluna@gmail.com', '2000-08-12', '2022-09-17'), 
(NULL, 4, 2, 'romina', 'gimenez', 3517964524, 'rominagimenez@gmail.com', '1995-07-20', '2016-04-13'), 
(NULL, 1, 3, 'mariela', 'jimenez', 3694891258, 'marielajimenez@gmail.com', '1999-08-29', '2022-09-17'), 
(NULL, NULL, 21, 'ricardo', 'rossi', 3514892558, 'ricardorossi@gmail.com', '1990-12-01', '2015-06-09'), 
(NULL, 2, 3, 'alejandra', 'pereyra', 3516669842, 'alejandrapereyra@outlook.com', '2000-12-25', '2022-09-17'), 
(NULL, 5, 2, 'maria', 'velez', 3512224896, 'mariavelez999@hotmail.com', '1998-06-12', '2021-12-10'), 
(NULL, NULL, 25, 'giuliana', 'santos', 3546982159, 'giulianasantos@hotmail.com', '2001-06-30', '2009-02-03'), 
(NULL, NULL, 9, 'victor', 'rodriguez', 3514792200, 'victorrodriguez@gmail.com', '1994-01-20', '2014-07-20'), 
(NULL, 3, 3, 'nahuel', 'cordoba', 3517770123, 'nahuelcba@outlook.com', '1988-01-31', '2017-03-01'), 
(NULL, NULL, 23, 'juan', 'rivera', 3516699105, 'juanrivera@hotmail.com', '1980-05-10', '2009-02-03'), 
(NULL, 6, 2, 'manuel', 'flores', 3517075996, 'manuelflores@gmail.com', '2000-03-04', '2009-02-03'), 
(NULL, NULL, 29, 'gianina', 'amato', 2359204591, 'gianinaamato@gmail.com', '1996-02-28', '2016-04-13'), 
(NULL, NULL, 26, 'rocio', 'nieto', 3512589761, 'rocionieto@hotmail.com', '1992-12-22', '2016-04-13'), 
(NULL, 4, 3, 'luz', 'pluto', 3510231456, 'luzpluto@outlook.es', '1997-06-06', '2017-03-01'), 
(NULL, 5, 3, 'sofia', 'marte', 3519977882, 'sofiamarte@hotmail.es', '1999-01-02', '2017-03-01'), 
(NULL, NULL, 5, 'aldana', 'casas', 3511111112, 'aldanacasas@gmail.com', '1997-11-08', '2017-07-20'), 
(NULL, 6, 3, 'paola', 'tapia', 3518974463, 'paolatapia@hotmail.com', '1982-06-15', '2011-04-25'), 
(NULL, NULL, 11, 'paulo', 'londra', 3514793520, 'paulolondra@yahoo.com.ar', '1995-11-16', '2017-03-01'), 
(NULL, NULL, 7, 'sebastian', 'bianco', 3535697523, 'sebastianbianco@outlook.com', '1999-02-18', '2009-02-03'), 
(NULL, NULL, 22, 'sebastian', 'funes', 3549752163, 'sebastianfunes@gmail.com', '1980-04-30', '2009-02-03'), 
(NULL, NULL, 6, 'belen', 'nieves', 3515578932, 'belennieves@gmail.com', '1995-09-07', '2017-03-01'), 
(NULL, 1, 3, 'marcelo', 'reynoso', 3517951100, 'reynosomarcelo@yahoo.com.ar', '1979-03-03', '2011-04-25'), 
(NULL, NULL, 10, 'juan', 'zalazar', 3588894560, 'juanzalazar@gmail.com', '1989-10-19', '2009-02-03'), 
(NULL, NULL, 14, 'mario', 'almiron', 3516352419, 'marioalmiron@yahoo.com.ar', '1991-11-11', '2017-03-01'), 
(NULL, NULL, 17, 'carlos', 'gallardo', 3511125361, 'carlosgallardo@hotmail.com', '1995-12-23', '2017-03-01'), 
(NULL, NULL, 18, 'soledad', 'artaza', 3517485962, 'soledadartaza@hotmail.com', '1976-02-09', '2009-02-03'), 
(NULL, NULL, 15, 'alejo', 'cejas', 3519685745, 'alejocejas@gmail.com', '1987-05-02', '2009-02-03'), 
(NULL, NULL, 20, 'juana', 'alarcon', 3414789623, 'juanaalarcon@yahoo.com', '2000-09-30', '2009-02-03'), 
(NULL, NULL, 19, 'sofia', 'paredes', 3512596321, 'sofiaparedes@yahoo.com.ar', '1985-08-25', '2009-02-03'), 
(NULL, NULL, 13, 'camila', 'ontivero', 3517922556, 'camilaontivero@gmail.com', '2000-08-31', '2009-02-03'); 

INSERT INTO clientes (id_cliente, dni, nombre, apellido, celular, mail) VALUES 
(NULL, 12345678, 'pedro', 'perez', 96325874, 'pedroperez@gmail.com'),
(NULL, 98765432, 'juan', 'casas', 14785236, 'juancasas@gmail.com'),
(NULL, 36985214, 'maria', 'flores', 12398745, 'mariaflores@gmail.com'),
(NULL, 14785236, 'eugenia', 'barrios', 32145698, 'eugeniabarrios@hotmail.com'),
(NULL, 96325874, 'sandra', 'estrella', 10236547, 'sandraestrella@gmail.com'),
(NULL, 98732165, 'tadeo', 'luna', 89631478, 'tadeoluna@outlook.es'),
(NULL, 32145697, 'franco', 'gomez', 32185236, 'francogomez@gmail.com'),
(NULL, 72679925, 'cintia', 'pereyra', 14789631, 'cintiapereyra@gmail.com'),
(NULL, 76918289, 'carolina', 'ochoa', 12345679, 'carolinaochoa@yahoo.com.ar'),
(NULL, 81156652, 'monica', 'juarez', 20136547, 'monicajuarez@gmail.com'),
(NULL, 85395016, 'jeremias', 'peralta', 32589648, 'jeremiasperalta@gmail.com'),
(NULL, 89633380, 'lautaro', 'gutierrez', 54796314, 'lautarogutierrez@outlook.es'),
(NULL, 93871743, 'lucas', 'gonzalez', 56873633, 'lucasgonzalez@gmail.com'),
(NULL, 98110107, 'federico', 'madera',	66554478, 'federicomadera@gmail.com'),
(NULL, 10234847, 'mario', 'rosas',33155587, 'mariorosas@gmail.com'),
(NULL, 10658683, 'cristian', 'martinez', 33322256, 'cristianmartinez@gmail.com'),
(NULL, 11082519, 'sebastian', 'potter', 99855746, 'sebastianpotter@gmail.com'),
(NULL, 11506356, 'lorena', 'everdeen', 55963347, 'lorenaeverdeen@outlook.com'),
(NULL, 11930192, 'belen', 'swift', 66955822, 'belenswift@gmail.com'),
(NULL, 26895743, 'bianca', 'malfoy', 13479954, 'biancamalfoy@gmail.com'),
(NULL, 30025789, 'miriam', 'granger', 33566997, 'miriamgranger@gmail.com'),
(NULL, 89515436, 'daniela', 'krum', 55698223, 'danielakrum@gmail.com'),
(NULL, 89156247, 'jorge', 'lovegood', 88975333, 'jorgelovegood@gmail.com'),
(NULL, 20358972, 'nicolas', 'crabe', 33551166, 'nicolascrabe@gmail.com'),
(NULL, 16599813, 'daniel', 'goyle', 66698551, 'danielgoyle@gmail.com'),
(NULL, 33256971, 'susana', 'riddle', 11111336, 'susanariddle@yahoo.com.ar'),
(NULL, 39561158, 'agostina', 'nieve', 33333221, 'agostinanieve@gmail.com'),
(NULL, 26158632, 'ignacio', 'plaza', 22222111, 'ignacioplaza@gmail.com'),
(NULL, 56971233, 'gustavo', 'rojo', 55555998, 'gustavorojo@gmail.com'),
(NULL, 25489236, 'melisa', 'limon', 77777888, 'melisalimon@gmail.com'),
(NULL, 68746305, 'carmen', 'perez', 22255779, 'carmenperez@hotmail.com'); 

INSERT INTO llamadas (id_llamada, cuenta, empleado, cliente, numero_gestion, fecha_hora) VALUES
(NULL, 1, 2, 1, 'C01', '2023-08-01'),
(NULL, 2, 5, 3, 'BG01', '2023-08-01'),
(NULL, 4, 12, 5, 'NX01', '2023-08-01'),
(NULL, 5, 16, 7, 'ML04', '2023-08-01'),
(NULL, 1, 2, 9, 'C02', '2023-08-01'),
(NULL, 1, 23, 11, 'C03', '2023-08-01'),
(NULL, 4, 34, 13, 'NX02', '2023-08-01'),
(NULL, 5, 35, 15, 'ML02',  '2023-08-01'),
(NULL, 2, 25, 17, 'BG02', '2023-08-01'),
(NULL, 5, 16, 19, 'ML03', '2023-08-02'),
(NULL, 1, 42, 21, 'C04', '2023-08-02'),
(NULL, 2, 5, 23, 'BG03', '2023-08-02'),
(NULL, 6, 37, 25, 'BM01', '2023-08-02'),
(NULL, 1, 23, 27, 'C05', '2023-08-02'),
(NULL, 5, 16, 29, 'ML04', '2023-08-02'),
(NULL, 1, 2, 31, 'C06',	'2023-08-02'),
(NULL, 4, 34, 2, 'NX03', '2023-08-02'),
(NULL, 3, 29, 4, 'S01',	'2023-08-02'),
(NULL, 1, 42, 6, 'C07',	'2023-08-02'),
(NULL, 2, 5, 8,	'BG04',	'2023-08-03'),
(NULL, 3, 7, 10, 'S02', '2023-08-03'),
(NULL, 2, 25, 12, 'BG05', '2023-08-03'),
(NULL, 1, 23, 14, 'C08', '2023-08-03'),
(NULL, 2, 5, 16, 'BG06', '2023-08-03'),
(NULL, 5, 16, 18, 'ML05', '2023-08-04'),
(NULL, 1, 42, 20, 'C09', '2023-08-04'),
(NULL, 4, 34, 22, 'NX04', '2023-08-04'),
(NULL, 3, 7, 24, 'S03',	'2023-08-05'),
(NULL, 3, 29, 26, 'S04', '2023-08-05'),
(NULL, 1, 2, 28, 'C10',	'2023-08-05'),
(NULL, 4, 34, 30, 'NX05', '2023-08-06'),
(NULL, 2, 25, 5, 'BG07', '2023-08-06'),
(NULL, 6, 21, 9, 'BM02', '2023-08-06'),
(NULL, 3, 29, 20, 'S05', '2023-08-06'),
(NULL, 4, 12, 7, 'NX06', '2023-08-06'),
(NULL, 5, 35, 15, 'ML06', '2023-08-07'),
(NULL, 3, 7, 3,	'S06',	'2023-08-07'),
(NULL, 3, 29, 8, 'S07',	'2023-08-07'),
(NULL, 4, 12, 4, 'NX07', '2023-08-17'),
(NULL, 5, 35, 11, 'ML07', '2023-08-17'),
(NULL, 2, 5, 25, 'BG08', '2023-08-18'),
(NULL, 6, 21, 1, 'BM03', '2023-08-19'),
(NULL, 3, 7, 18, 'S08', '2023-08-19'),
(NULL, 6, 37, 21, 'BM04', '2023-08-20'),
(NULL, 1, 2, 30, 'C11',	'2023-08-21'),
(NULL, 5, 16, 12, 'ML08', '2023-08-21'),
(NULL, 3, 29, 31, 'S09', '2023-08-22'),
(NULL, 6, 37, 19, 'BM05', '2023-08-22'),
(NULL, 6, 21, 14, 'BM06', '2023-08-23'),
(NULL, 4, 12, 3,'NX08',	'2023-08-23');

-- VISTAS 
-- VISTA 1: empleados que ocupan el puesto de representante 
CREATE OR REPLACE VIEW representantes AS 
(select nombre, apellido from empleados where puesto = 3);

-- VISTA 2: Fitramos las llamadas de la cuenta Banco Macro indicando los nombres de los empleados que atendieron 
CREATE OR REPLACE VIEW llamadasbm AS 
(select llamadas.id_llamada, empleados.apellido, empleados.nombre 
FROM llamadas 
JOIN empleados 
ON llamadas.empleado = empleados.id_legajo
WHERE llamadas.cuenta = 6);

-- VISTA 3: clientes que llamaron más de una vez 
CREATE OR REPLACE VIEW recurrentes AS
(select cliente, count(*) as total  
from llamadas
group by cliente 
having count(*) > 1); 

-- VISTA 4: antiguedad de cada empleado en años
CREATE OR REPLACE VIEW antiguedad as
(select id_legajo, nombre, apellido, YEAR(CURDATE())-YEAR(empleados.ingreso) as antiguedad
from empleados); 

-- VISTA 5: cantidad de llamadas por dia 
CREATE OR REPLACE VIEW llamadasxdia as 
(select fecha_hora as dia, count(fecha_hora) as total
from llamadas
group by fecha_hora);

-- VISTA 6: todos los empleados del area de operaciones
CREATE OR REPLACE VIEW operaciones as
SELECT *
FROM empleados
WHERE puesto = (select id_puesto from puestos where area = 1 and empleados.puesto = puestos.id_puesto);

-- FUNCIONES
-- FUNCION 1: filtrar las llamadas por representante
delimiter $$
CREATE FUNCTION `llamadaxrac` (IDempleado int)
RETURNS int
READS SQL DATA
BEGIN
declare resultado int;
set resultado = id_llamada;
select *
into resultado
from llamadas
where empleado = IDempleado
;
RETURN resultado;
END $$
delimiter $$

-- FUNCION 2: calcular el promedio de llamadas atentidas en el mes
delimiter $$  
CREATE FUNCTION `promedio_llamadas` ()
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
DECLARE total_llamadas INT;
DECLARE total_dias INT;
DECLARE promedio DECIMAL(10, 2);

SELECT COUNT(*) INTO total_llamadas FROM llamadas;
SELECT COUNT(DISTINCT fecha_hora) INTO total_dias FROM llamadas;

SET promedio = total_llamadas / total_dias;

RETURN promedio;
END $$
delimiter $$  

-- STORED PROCEDURES
-- STORED PROCEDURES 1: ordenar el listado de empleados del mas reciente al mas antiguo
-- eliminar el procedimiento si es que existe
DROP PROCEDURE IF EXISTS orden_fecha_ingreso

-- se vuelve a crear procedimiento con el delimitador
-- se elige como orden la fecha de ingreso
DELIMITER // 
CREATE PROCEDURE `orden_fecha_ingreso` ()
BEGIN
SELECT id_legajo, nombre, apellido, ingreso
FROM empleados
WHERE 1 = 1 
ORDER BY ingreso desc; 

PREPARE ejecutar from @empleados;
EXECUTE ejecutar;
DEALLOCATE PREPARE ejecutar;
END // 
DELIMITER //

-- STORED PROCEDURES 2: registro de las nuevas llamadas que ingresan
-- eliminamos la tabla si es que existe 
drop table if exists nuevas_llamadas; 
-- creamos la tabla para insertar las nuevas llamadas 
create table nuevas_llamadas (
id int auto_increment primary key, 
fecha_hora datetime); 

-- se elimina SP si existe
drop procedure if exists new_calls
-- se crea SP 
DELIMITER //
CREATE PROCEDURE `new_calls` (IN id varchar (50))
BEGIN 
if id = '' then 
select 'llamada no cargada' as message;
else
insert into nuevas_llamadas (id, fecha_hora) values (id, current_timestamp());
END IF; 
END // 
DELIMITER // 

-- TRIGGERS
-- TRIGGER 1: ver la fecha y hora en que se ingresó un nuevo registro a la tabla llamadas. 
-- Creamos la tabla donde se registrarán las actualizaciones de la tabla llamadas
create table if not exists act_calls (
id_llamada int, 
fecha_hora datetime, 
usuario varchar (50),

foreign key (id_llamada) references llamadas (id_llamada)); 

-- Creamos el trigger
CREATE TRIGGER `fechahora_actualizaciones`
AFTER INSERT ON `llamadas`
FOR EACH ROW
INSERT INTO `act_calls` (id_llamada, fecha_hora, usuario) 
VALUES (new.id_llamada, current_timestamp(), session_user());

-- TRIGGER 2: crear un trigger para registrar cualquier modificacion en la tabla llamadas
-- Creamos la tabla de auditoria para registrar estos cambios
CREATE TABLE IF NOT EXISTS modif_llamadas (
fecha_hora datetime,
usuario varchar (50),
mensaje varchar (50)); 

-- Creamos el trigger 
CREATE TRIGGER `cambios_llamadas`
BEFORE UPDATE ON `llamadas`
FOR EACH ROW
INSERT INTO modif_llamadas (fecha_hora, usuario, mensaje) 
VALUES (current_timestamp(), session_user(), 'ha modificado un registro');

-- TRIGGER 3: creamos un trigger para modificar el puesto de un empleado
-- Creamos la tabla de registro de modificaicones
CREATE TABLE IF NOT EXISTS cambio_puesto (
nombre text (25), 
apellido text (25), 
puesto int, 
nuevo_puesto int); 

-- Creamos el trigger para registrar el cambio 
CREATE TRIGGER `edit_puesto`
AFTER UPDATE ON empleados 
FOR EACH ROW 
INSERT INTO cambio_puesto (nombre, apellido, puesto, nuevo_puesto)
VALUES (old.nombre, old.apellido, old.puesto, new.puesto); 

-- TRIGGER 4: registrar cuando se actualiza la nomina por inserción de datos en la tabla empleados 
-- Creamos la tabla new_empleado como bitácora
CREATE TABLE new_empleado (
id_empleado int,
registro date,
usuario varchar (50));

-- Creamos el trigger para que al insertar datos en la tabla empleados, se realice el registro en la tabla new_empleado
CREATE TRIGGER `add_empleado` 
BEFORE INSERT ON `empleados`
FOR EACH ROW
INSERT INTO `new_empleado` (id_empleado, registro, usuario) 
VALUES (new.id_legajo, current_timestamp(), session_user()); 

-- CREACION DE USUARIOS Y PERMISOS CORRESPONDIENTES
-- USUARIO 1: solo tendrá permisos de lectura de las tablas del modelo. 
-- Creamos el usuario "administrador_n1" y su contraseña. 
CREATE USER 'administrador_n1'@'localhost' IDENTIFIED BY 'contactcenter2023'; 

-- Una vez creado, le otorgamos sólo el permiso para consultar las tablas del modelo específico. 
GRANT SELECT ON contactcenter.* TO 'administrador_n1'@'localhost'; 

-- USUARIO 2: solo tendrá permisos de lectura, insertar nuevos datos y modificar datos de las tablas del modelo. 
-- Al igual que en el primer usuario, primero lo creamos y le asignamos la contraseña. 
CREATE USER 'administrador_full'@'localhost' IDENTIFIED BY 'ccadministrador'; 

-- A posterior, le brindamos los permisos mencionados sobre el modelo. 
GRANT SELECT, INSERT, UPDATE ON contactcenter.* TO 'administrador_full'@'localhost'; 

-- TCL 
SET @@autocommit = 0; 

-- TABLA LLAMADAS
-- previamente también borramos los datos de la tabla act_calls creada como trigger para que se puedan borrar los datos de la tabla principal
DELETE FROM act_calls 
WHERE id_llamada = 1;
DELETE FROM act_calls 
WHERE id_llamada = 2;

-- luego borramos los datos correspondientes de la tabla llamadas
START TRANSACTION; 
DELETE FROM llamadas 
WHERE id_llamada = 1;
DELETE FROM llamadas 
WHERE id_llamada = 2;

-- aplicamos el rollback 
ROLLBACK;

-- aplicamos el commit 
COMMIT; 

-- se crean las sentencias para insertar nuevamente esos datos por si es necesario
INSERT INTO LLAMADAS VALUES 
(1, 1, 2, 1, 'C01', '2023-08-01 00:00:00'),
(2, 2, 5, 3, 'BG01', '2023-08-01 00:00:00'); 

-- TABLA CLIENTES
INSERT INTO clientes VALUES 
(null, 21398949, 'india', 'perez', 3518812985, 'india.perez@hotmail.com'),
(null, 16987567, 'pedro', 'jimenez', 3588419875, 'jimenez_pedro@gmail.com'),
(null, 33598354, 'karen', 'blanco', 3519955778, 'karen.b@gmail.com'),
(null, 12710354, 'susana', 'tevez', 3517485962, 'susanatevez1964@yahoo.com.ar');
savepoint clientes1; 

INSERT INTO clientes VALUES 
(null, 17963852, 'juan', 'alfonso', 3541235479, 'alfonsojuan5@yahoo.com.ar'),
(null, 24659875, 'carolina', 'herrera', 3517895134, 'hhcarolina@hotmail.com.ar'),
(null, 39949620, 'agustina', 'ramos', 3519651325, 'ramosagustina@gmail.com'),
(null, 98752625, 'jennifer', 'smith', 11325792145, 'smjennifer@gmail.com');
savepoint clientes2; 

rollback to clientes1;