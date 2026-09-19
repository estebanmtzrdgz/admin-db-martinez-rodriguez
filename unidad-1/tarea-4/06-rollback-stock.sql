

USE inventario_ventas;

START TRANSACTION;


INSERT INTO compras (fecha_compra, estado, total)
VALUES (NOW(), 'PENDIENTE', 0.00);

SET @id_compra = LAST_INSERT_ID();


UPDATE producto
SET    stock = stock - 8
WHERE  id_producto = 3;


ROLLBACK;


SELECT * FROM producto WHERE id_producto = 3;         
SELECT * FROM compras  ORDER BY id_compra DESC LIMIT 3; 