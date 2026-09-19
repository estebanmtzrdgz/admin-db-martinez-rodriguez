


USE inventario_ventas;

START TRANSACTION;


INSERT INTO compras (fecha_compra, estado, total)
VALUES (NOW(), 'PENDIENTE', 0.00);

SET @id_compra = LAST_INSERT_ID();


UPDATE producto
SET    stock = stock - 1
WHERE  id_producto = 2;


INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario, subtotal)
SELECT @id_compra, id_producto, 1, precio, precio * 1
FROM   producto
WHERE  id_producto = 2;


INSERT INTO pagos (id_compra, monto, metodo_pago)
VALUES (@id_compra, 0.00, 'TARJETA');


ROLLBACK;


SELECT * FROM producto       WHERE id_producto = 2;           -- stock restaurado a 50
SELECT * FROM compras        ORDER BY id_compra DESC LIMIT 3; -- sin orden huérfana
SELECT * FROM detalle_compra ORDER BY id_detalle DESC LIMIT 3; -- sin detalle huérfano