-- SENTENCIAS
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