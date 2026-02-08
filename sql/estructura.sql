-- =========================
-- CREACIÓN BASE DE DATOS
-- =========================
CREATE DATABASE IF NOT EXISTS contactos;
USE contactos;

-- =========================
-- TABLA PERSONA
-- =========================
CREATE TABLE IF NOT EXISTS persona (
    id_persona INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- =========================
-- TABLA CATEGORIA
-- =========================
CREATE TABLE IF NOT EXISTS categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50)
);

-- =========================
-- TABLA DIRECCION
-- =========================
CREATE TABLE IF NOT EXISTS direccion (
    id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(50),
    barrio VARCHAR(50),
    direccion VARCHAR(100),
    id_persona INT,
    FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
);

-- =========================
-- TABLA RELACIÓN (N:M)
-- =========================
CREATE TABLE IF NOT EXISTS contacto_categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_persona INT,
    id_categoria INT,
    FOREIGN KEY (id_persona) REFERENCES persona(id_persona),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);
