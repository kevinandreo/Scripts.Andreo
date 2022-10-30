USE deposito_queso;
-- Creamos una vista de nombre producto donde nombre_producto
-- coincida con la palabra Pr ordenado por id_producto descendente
CREATE VIEW v_nombre_producto AS
SELECT id_producto AS id,
	   nombre_producto AS nombre, 
	   descrip_producto AS descripcion
FROM productos
WHERE nombre_producto 
LIKE '%Pr%'
ORDER BY id_producto DESC;
-- Seleccionamos para comprobrar la vista nombre_producto
SELECT * FROM v_nombre_producto;