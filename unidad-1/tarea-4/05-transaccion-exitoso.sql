
USE inventario_ventas;

START TRANSACTION;

-- 1. Cabecera de la compra
INSERT INTO compras (fecha_compra, estado, total)
VALUES (NOW(), 'PENDIENTE', 0.00);

SET @id_compra = LAST_INSERT_ID();


UPDATE producto
SET    stock = stock - 2
WHERE  id_producto = 1;


INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario, subtotal)
SELECT @id_compra, id_producto, 2, precio, precio * 2
FROM   producto
WHERE  id_producto = 1;


UPDATE compras
SET    total = (SELECT SUM(subtotal) FROM detalle_compra WHERE id_compra = @id_compra)
WHERE  id_compra = @id_compra;


INSERT INTO pagos (id_compra, monto, metodo_pago)
VALUES (@id_compra, (SELECT total FROM compras WHERE id_compra = @id_compra), 'TARJETA');


UPDATE compras
SET    estado = 'COMPLETADA'
WHERE  id_compra = @id_compra;


COMMIT;


SELECT * FROM producto        WHERE id_producto = 1;  
SELECT * FROM compras         WHERE id_compra   = @id_compra;
SELECT * FROM detalle_compra  WHERE id_compra   = @id_compra;
SELECT * FROM pagos           WHERE id_compra   = @id_compra;