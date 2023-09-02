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

-- en el caso de tabla empleados, clientes y llamadas al ser muchos registros realizamos la importacion de datos

select * from empleados;
select * from clientes;
select * from llamadas;