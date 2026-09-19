USE inventario_ventas;


ALTER TABLE detalle_compra
    ADD CONSTRAINT fk_detalle_compra
    FOREIGN KEY (id_compra) REFERENCES compras(id_compra);


ALTER TABLE detalle_compra
    ADD CONSTRAINT fk_detalle_producto
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto);


ALTER TABLE pagos
    ADD CONSTRAINT fk_pago_compra
    FOREIGN KEY (id_compra) REFERENCES compras(id_compra);