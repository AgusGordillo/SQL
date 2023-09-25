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

-- citamos al SP para verificar
CALL `orden_fecha_ingreso`;

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

-- citamos al SP 
call `new_calls` (''); 
call `new_calls` (1); 