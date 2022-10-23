-- Esta vista trae la facturacion total de la venta de un producto por medio de la secretaria
USE deposito_queso;
-- Trae la facturacion que es igual a 995
CREATE VIEW v_facturacion AS
SELECT *
FROM secretaria
WHERE facturacion_venta = 'total de 995'
ORDER BY id_producto ASC;
-- Seleccionamos para ver la facturacion total de 995
SELECT * FROM v_facturacion;
