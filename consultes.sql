Consultes_clientes_reservas

SELECT * FROM clientes_reservas;

SELECT * FROM  clientes_reservas
WHERE id = 1;

SELECT id, nombre 
FROM  clientes_reservas
WHERE num_habitacion = 102;

ALTER TABLE  clientes_reservas
ADD fecha_nacimiento DATE;

UPDATE  clientes_reservas
SET fecha_nacimiento = '1990-01-01';

UPDATE  clientes_reservas
SET direccion = 'Nueva direccion actulizada'
WHERE num_habitacion = 102;

UPDATE  clientes_reservas
SET direccion = 'Adreça Nova', correo = 'nou.correu@example.com'
WHERE num_habitacion = 102 AND nombre = 'Maria Lopez';

DELETE FROM  clientes_reservas
WHERE num_habitacion = 102 AND correo = 'maria.lopez@example.com';

Consultes_habitaciones
  
SELECT * FROM habitaciones;

WHERE num_habitacion = 101;

SELECT num_habitacion, descripcion
FROM habitaciones
WHERE disponibilidad = 0;

ALTER TABLE habitaciones
ADD COLUMN fecha_creacion DATE;

UPDATE habitaciones
SET fecha_creacion = '2024-11-14';

UPDATE habitaciones
SET fecha_creacion = '2024-11-15'
WHERE Tipo_de_habitación = 'suite';

UPDATE habitaciones
SET precio_habitacion = 250, fecha_creacion = '2024-11-16'
WHERE disponibilidad = 0 AND Tipo_de_habitación = 'suite';

DELETE FROM habitaciones
WHERE disponibilidad = 0 AND Tipo_de_habitación = 'suite';

