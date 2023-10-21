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