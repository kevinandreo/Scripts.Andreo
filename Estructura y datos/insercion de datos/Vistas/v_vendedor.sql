USE deposito_queso;
-- Creamos una vista de vendedor, donde unimos la tabla empleados
-- a la de secretaria, donde s.id_vendedor es igual a e.id_vendedor
CREATE VIEW v_vendedor AS
SELECT s.id_envios AS 'id envios',
	   s.id_vendedor AS 'id vendedor',
	   nombre_empleado AS Nombre,
       documento AS Documento
FROM secretaria as s
INNER JOIN empleados as e
ON s.id_vendedor = e.id_vendedor;
-- Seleccionamos para comprobrar la vista vendedor
SELECT * FROM v_vendedor;


   