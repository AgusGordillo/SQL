-- VISTA 1: empleados que ocupan el puesto de representante 
CREATE OR REPLACE VIEW representantes AS 
(select nombre, apellido from empleados where puesto = 3);

select * from representantes; 

-- VISTA 2: Fitramos las llamadas de la cuenta Banco Macro indicando los nombres de los empleados que atendieron 
CREATE OR REPLACE VIEW llamadasbm AS 
(select llamadas.id_llamada, empleados.apellido, empleados.nombre 
FROM llamadas 
JOIN empleados 
ON llamadas.empleado = empleados.id_legajo
WHERE llamadas.cuenta = 6);

select * from llamadasbm; 

-- VISTA 3: clientes que llamaron más de una vez 
CREATE OR REPLACE VIEW recurrentes AS
(select cliente, count(*) as total  
from llamadas
group by cliente 
having count(*) > 1); 

select * from recurrentes; 

-- VISTA 4: antiguedad de cada empleado en años
CREATE OR REPLACE VIEW antiguedad as
(select id_legajo, nombre, apellido, YEAR(CURDATE())-YEAR(empleados.ingreso) as antiguedad
from empleados); 

select * from antiguedad; 

-- VISTA 5: cantidad de llamadas por dia 
CREATE OR REPLACE VIEW llamadasxdia as 
(select fecha_hora as dia, count(fecha_hora) as total
from llamadas
group by fecha_hora);

select * from llamadasxdia;

-- VISTA 6: todos los empleados del area de operaciones
CREATE OR REPLACE VIEW operaciones as
SELECT *
FROM empleados
WHERE puesto = (select id_puesto from puestos where area = 1 and empleados.puesto = puestos.id_puesto);

select * from operaciones