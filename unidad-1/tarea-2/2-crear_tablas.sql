
USE `martinez-rodriguez`;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    rut_dni VARCHAR(15) NOT NULL UNIQUE,
    nombre_completo VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE mascotas (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50),
    fecha_nacimiento DATE,
    id_cliente INT NOT NULL
);

CREATE TABLE veterinarios (
    id_veterinario INT AUTO_INCREMENT PRIMARY KEY,
    documento_identidad VARCHAR(15) NOT NULL UNIQUE,
    nombre_completo VARCHAR(150) NOT NULL,
    especialidad VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE atenciones_medicas (
    id_atencion INT AUTO_INCREMENT PRIMARY KEY,
    fecha_hora DATETIME NOT NULL,
    diagnostico TEXT,
    costo DECIMAL(10,2) NOT NULL,
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL
);

CREATE TABLE medicamentos (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    nombre_comercial VARCHAR(100) NOT NULL,
    laboratorio VARCHAR(100),
    precio_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE prescripciones (
    id_atencion INT NOT NULL,
    id_medicamento INT NOT NULL,
    cantidad VARCHAR(50) NOT NULL,
    indicaciones VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_atencion, id_medicamento)
);