-- FUNCION 1: filtrar las llamadas por representante
delimiter $$
CREATE FUNCTION ´llamadaxrac´ (IDempleado int)
RETURNS int
READS sql data
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
select ´llamadaxrac´ () as llamadas;

-- FUNCION 2: calcular el promedio de llamadas atentidas en el mes
drop function promedio_llamadas
delimiter $$  
CREATE FUNCTION promedio_llamadas ()
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

SELECT promedio_llamadas ();CREATE FUNCTION llamadaxrac (empleado int) RETURNS table  (id_llamada int,  fecha_hora datetime)  READS sql data BEGIN declare resultado int; select id_llamada from llamadas where empleado = empleado into resultado ; RETURN resultado; END
