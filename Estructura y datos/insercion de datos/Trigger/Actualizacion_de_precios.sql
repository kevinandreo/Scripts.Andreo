-- Este trigger sirve para actualizar precios, y a la vez trae 
-- los precios viejos y nuevos modificados
USE deposito_queso;
-- Creo una nueva tabla de productos
CREATE TABLE IF NOT EXISTS new_productos (
	id_producto INT AUTO_INCREMENT PRIMARY KEY,
nombre_producto INT,
before_producto INT,
after_producto INT,
descrip_producto INT
);

DELIMITER $$
-- Creo un trigger que recibe un precio nuevo y viejo
CREATE TRIGGER tr_new_precio
AFTER UPDATE 
ON productos FOR EACH ROW
BEGIN
	IF OLD.precio_producto <> NEW.precio_producto THEN
		INSERT INTO new_productos (before_producto, after_producto)
		VALUES(OLD.precio_producto, NEW.precio_producto);
	END IF;
END$$

DELIMITER ;
-- Aca actulizamos el primer producto que es el id_producto 1
UPDATE productos
SET precio_producto = 1550
WHERE id_producto = 1;
-- Seleccionamos la tabla new_productos para ver el precio viejo y nuevo
SELECT * FROM new_productos;
-- Seleccionamos para ver si se actualizo el precio
SELECT * FROM productos;
