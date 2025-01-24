
create table proveedores
(
    idProveedor smallint unsigned auto_increment primary key,
    prvNombre varchar(50) not null,
    prvCuit varchar(13) unique not null,
    prvTelefono varchar(50) not null,
    prvDireccion varchar(100) not null
);

INSERT INTO proveedores
    (prvNombre, prvCuit, prvTelefono, prvDireccion)
  VALUES
    ('Distribuciones San Martín', '20-12345678-9', '011-4567-8901', 'Av. San Martín 1000, Buenos Aires'),
    ('Tecnologías Avanzadas SRL', '23-87654321-4', '011-5678-9012', 'Calle Florida 200, Córdoba'),
    ('Importaciones Gómez', '27-11223344-5', '0341-678-1234', 'Ruta Nacional 3 km 150, Rosario'),
    ('Soluciones Industriales', '30-99887766-3', '011-7890-2345', 'Av. Corrientes 3000, Buenos Aires'),
    ('Logística Pérez', '24-55667788-1', '0342-890-3456', 'Calle Mitre 400, Mendoza'),
    ('Materias Primas SA', '25-33445566-2', '011-8901-4567', 'Av. Belgrano 500, La Plata'),
    ('Servicios Integrales Lopez', '29-22334455-6', '0351-901-5678', 'Calle Rivadavia 600, Mar del Plata'),
    ('Electrodomésticos Rey', '22-66778899-0', '011-9012-6789', 'Av. San Juan 700, Bahía Blanca'),
    ('Construcciones Martínez', '28-44556677-8', '0343-012-7890', 'Calle Sarmiento 800, Paraná'),
    ('Alimentos del Sur', '26-77889900-4', '011-0123-8901', 'Av. Libertad 900, Santa Fe');

