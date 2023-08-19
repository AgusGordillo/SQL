CREATE table if not exists areas (
id_area INT primary key NOT NULL, 
nombre_area text (30) NOT NULL);

CREATE table if not exists puestos (
id_puesto INT primary key NOT NULL, 
nombre_puesto text (20) NOT NULL);

CREATE table if not exists cuentas (
id_cuenta INT primary key NOT NULL,
nombre_cuenta text (25) NOT NULL);

CREATE table if not exists empleados (
id_legajo INT primary key NOT NULL AUTO_INCREMENT, 
cuenta INT,
puesto INT,
nombre text (25) NOT NULL, 
apellido text (20) NOT NULL, 
celular INT NOT NULL,  
mail VARCHAR (50) NOT NULL, 
nacimiento DATE NOT NULL, 
ingreso DATE NOT NULL, 
FOREIGN KEY (cuenta) REFERENCES cuentas (id_cuenta), 
FOREIGN KEY (puesto) REFERENCES puestos (id_puestos)
); 

CREATE table if not exists clientes (
id_cliente INT primary key NOT NULL AUTO_INCREMENT, 
cuenta INT, 
DNI INT NOT NULL, 
nombre text (25) NOT NULL,
apellido text (20) NOT NULL, 
celular INT NOT NULL, 
mail VARCHAR (50) NOT NULL, 
foreign key (cuenta) REFERENCES cuentas (id_cuenta)); 

 CREATE table if not exists llamadas (
id_llamada INT primary key NOT NULL auto_increment, 
cuenta INT not null, 
empleado INT not null, 
cliente INT not null, 
numero_gestion INT not null auto_increment, 
fecha_hora DATETIME, 
foreign key (cuenta) REFERENCES cuentas (id_cuenta), 
foreign key (empleado) REFERENCES empleados (id_empleado), 
foreign key (cliente) REFERENCES clientes (id_cliente))