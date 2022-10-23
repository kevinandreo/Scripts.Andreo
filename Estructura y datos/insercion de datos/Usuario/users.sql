USE mysql;
-- Creamos un usuario
CREATE USER 'andreo'@'localhost' IDENTIFIED BY 'Password';
-- Seleccionamos si el usuario existe
SELECT * FROM USER;
-- Le otorgamos permisos para leer al usuario andreo
GRANT SELECT ON deposito_queso.* TO 'andreo'@'localhost';
-- Mostramos si el usuario tiene los permisos
SHOW GRANTS FOR 'andreo'@'localhost';
-- Seleccionamos si el usuario andreo existe
SELECT * FROM mysql.user WHERE user LIKE 'andreo%';
--
-- Creamos un nuevo usuario
CREATE USER 'permisos'@'localhost' IDENTIFIED BY 'miPassword';
-- Seleccionamos si el usuario existe
SELECT * FROM USER;
-- Le otorgamos permisos para leer, insertar y modificar
GRANT SELECT, INSERT, UPDATE ON deposito_queso.* TO 'permisos'@'localhost';
-- Mostramos si el usuario tiene los permisos
SHOW GRANTS FOR 'permisos'@'localhost';
-- Seleccionamos si el usuarios permisos existe
SELECT * FROM mysql.user WHERE user LIKE 'permisos%';

DROP USER 'andreo'@'localhost';
DROP USER 'permisos'@'localhost';


