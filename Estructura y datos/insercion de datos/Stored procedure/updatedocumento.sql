-- Este procedimiento sirve para cambiar el tipo de documento,
-- ya que puede ser posible que el empleado pierda el DNI oficial
-- y tenga la posibilidad de recurrir a otros tipos de documentos
USE deposito_queso

DELIMITER $$
-- Procedimiento que cambia el tipo de documento del empleado
CREATE PROCEDURE sp_update_tipodedocumento (IN e_id INT, IN d_documento VARCHAR(50))
BEGIN
UPDATE empleados
SET
documento = d_documento
WHERE id_empleado = e_id;
END$$

DELIMITER ;
-- Los id de empleados son 12, 23, 45, 57, 88
-- Donde esta el pasaporte podremos insetar otro tipo de documento
CALL sp_update_tipodedocumento (45, 'Pasaporte');
SELECT * FROM empleados;