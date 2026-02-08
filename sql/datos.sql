USE contactos;

-- =========================
-- PERSONAS
-- =========================
INSERT INTO persona (nombre, apellido, telefono, email) VALUES
('Maria', 'Cano', '3001234567', 'maria@gmail.com'),
('Juan', 'Perez', '3104567890', 'juan@gmail.com'),
('Laura', 'Gomez', '3209876543', 'laura@gmail.com');

-- =========================
-- CATEGORIAS
-- =========================
INSERT INTO categoria (nombre_categoria) VALUES
('Familia'),
('Amigos'),
('Trabajo');

-- =========================
-- DIRECCIONES
-- =========================
INSERT INTO direccion (ciudad, barrio, direccion, id_persona) VALUES
('Medellin', 'Centro', 'Calle 10 #20-30', 1),
('Bogota', 'Chapinero', 'Carrera 7 #45-20', 2),
('Cali', 'San Fernando', 'Calle 5 #30-10', 3);

-- =========================
-- RELACIONES PERSONA-CATEGORIA
-- =========================
INSERT INTO contacto_categoria (id_persona, id_categoria) VALUES
(1, 1), -- Maria - Familia
(1, 2), -- Maria - Amigos
(2, 3), -- Juan - Trabajo
(3, 2); -- Laura - Amigos
