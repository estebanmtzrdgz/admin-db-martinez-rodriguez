
USE `martinez-rodriguez`;


ALTER TABLE mascotas
    ADD CONSTRAINT fk_mascota_cliente
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);


ALTER TABLE atenciones_medicas
    ADD CONSTRAINT fk_atencion_mascota
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id_mascota);


ALTER TABLE atenciones_medicas
    ADD CONSTRAINT fk_atencion_veterinario
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id_veterinario);


ALTER TABLE prescripciones
    ADD CONSTRAINT fk_prescripcion_atencion
    FOREIGN KEY (id_atencion) REFERENCES atenciones_medicas(id_atencion);

ALTER TABLE prescripciones
    ADD CONSTRAINT fk_prescripcion_medicamento
    FOREIGN KEY (id_medicamento) REFERENCES medicamentos(id_medicamento);