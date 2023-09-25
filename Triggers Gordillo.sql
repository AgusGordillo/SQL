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

-- Insertamos un registro nuevo en la tabla de llamadas 
insert into llamadas values (null, 1, 1, 1, 'C55', current_timestamp()); 

-- Verificamos en la tabla de llamadas 
select * from llamadas
where 1 = 1 
order by fecha_hora desc; 

-- Verificamos el trigger aplicado 
select * from act_calls; 

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

-- Modificamos un registro
UPDATE llamadas
SET fecha_hora = '2023-08-08 12:00:00'
WHERE id_llamada = 5; 

-- Verificamos el trigger aplicado 
select * from modif_llamadas; 

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

-- Probamos modificando un registro
UPDATE empleados
SET puesto = 5
WHERE id_legajo = 20; 

-- Verificamos la tabla de auditoria para comprobar el cambio 
select * from cambio_puesto; 

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

-- Probamos el trigger insertando datos y luego consultando la tabla de auditoría 
INSERT INTO empleados VALUES (null, 1, 1, 'mario', 'bros', 3517071992, 'mariobros@lego.com.ar', '2000-08-15', '2023-09-01'); 

select * from new_empleado; 