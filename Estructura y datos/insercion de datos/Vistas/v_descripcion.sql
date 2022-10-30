USE deposito_queso;
-- Creamos una vista de descripcion_de_productos 
-- concatenada en un grupo ordenado por el id del producto
CREATE VIEW v_descripcion AS
SELECT GROUP_CONCAT(DISTINCT descrip_producto ORDER BY id_producto) AS descripcion_de_productos
FROM productos;
-- Seleccioanmos para comprobrar la vista de descripcion
SELECT * FROM v_descripcion;