USE deposito_queso;
-- Creamos una vista de productos baratos, donde el precio sea menor a 1000
CREATE VIEW v_productobarato AS
SELECT nombre_producto AS 'Nombre producto', precio_producto AS 'Precio'
FROM productos
WHERE precio_producto < 1000;
-- Seleccionamos para comprobrar la vista de los productos baratos
SELECT * FROM v_productobarato;