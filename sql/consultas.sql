USE contactos;

-- Ver tablas
SELECT * FROM persona;
SELECT * FROM categoria;
SELECT * FROM direccion;
SELECT * FROM contacto_categoria;

-- Personas con sus categorías
SELECT 
    p.nombre,
    p.apellido,
    c.nombre_categoria
FROM persona p
JOIN contacto_categoria cc ON p.id_persona = cc.id_persona
JOIN categoria c ON cc.id_categoria = c.id_categoria;

-- Personas con dirección
SELECT
    p.nombre,
    p.apellido,
    d.ciudad,
    d.barrio,
    d.direccion
FROM persona p
JOIN direccion d ON p.id_persona = d.id_persona;
