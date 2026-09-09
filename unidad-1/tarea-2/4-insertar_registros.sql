
USE `martinez-rodriguez`;


INSERT INTO clientes (rut_dni, nombre_completo, telefono, email) VALUES
('12345678-9', 'Maria Fernanda Lopez', '55512340', 'mflopez@correo.com'),
('23456789-0', 'Jorge Andres Perez', '55512341', 'jperez@correo.com'),
('34567890-1', 'Carla Beatriz Soto', '55512342', 'csoto@correo.com'),
('45678901-2', 'Ricardo Antonio Diaz', '55512343', 'rdiaz@correo.com'),
('56789012-3', 'Valentina Rojas Munoz', '55512344', 'vrojas@correo.com');


INSERT INTO mascotas (nombre, especie, raza, fecha_nacimiento, id_cliente) VALUES
('Toby', 'Perro', 'Labrador', '2020-03-10', 1),
('Michi', 'Gato', 'Comun Europeo', '2021-07-22', 2),
('Rocky', 'Perro', 'Bulldog Frances', '2019-11-05', 3),
('Luna', 'Gato', 'Siames', '2022-01-15', 4),
('Max', 'Perro', 'Golden Retriever', '2018-05-30', 1);


INSERT INTO veterinarios (documento_identidad, nombre_completo, especialidad, telefono) VALUES
('11122333-4', 'Dr. Felipe Gonzalez', 'Medicina General', '55598761'),
('22233444-5', 'Dra. Paula Herrera', 'Dermatologia', '55598762'),
('33344555-6', 'Dr. Ignacio Vargas', 'Cirugia', '55598763'),
('44455666-7', 'Dra. Camila Torres', 'Odontologia', '55598764'),
('55566777-8', 'Dr. Sebastian Reyes', 'Medicina General', '55598765');


INSERT INTO atenciones_medicas (fecha_hora, diagnostico, costo, id_mascota, id_veterinario) VALUES
('2026-08-01 09:30:00', 'Control de rutina', 15000.00, 1, 1),
('2026-08-02 10:00:00', 'Dermatitis alergica', 22000.00, 2, 2),
('2026-08-03 11:15:00', 'Extraccion de cuerpo extrano', 45000.00, 3, 3),
('2026-08-04 14:00:00', 'Limpieza dental', 18000.00, 4, 4),
('2026-08-05 16:30:00', 'Vomito y decaimiento', 25000.00, 5, 1);


INSERT INTO medicamentos (codigo, nombre_comercial, laboratorio, precio_unitario) VALUES
('MED001', 'Amoxicilina 250mg', 'LabVet', 3500.00),
('MED002', 'Meloxicam 1.5mg', 'PetPharma', 4200.00),
('MED003', 'Dexametasona', 'LabVet', 2800.00),
('MED004', 'Omeprazol 10mg', 'VidaAnimal', 3100.00),
('MED005', 'Cefalexina 500mg', 'PetPharma', 3900.00);


INSERT INTO prescripciones (id_atencion, id_medicamento, cantidad, indicaciones) VALUES
(1, 1, '1 caja', '1 pastilla cada 12 horas por 7 dias'),
(2, 3, '1 frasco', '1 aplicacion cada 24 horas por 5 dias'),
(3, 5, '1 caja', '1 pastilla cada 8 horas por 10 dias'),
(4, 2, '1 caja', '1 pastilla cada 24 horas por 5 dias'),
(5, 4, '1 caja', '1 pastilla cada 12 horas por 3 dias');