# creación de tablas destinos y regiones

create table regiones
(
    idRegion smallint unsigned primary key auto_increment not null,
    nombre varchar(50) unique not null
);

-- Inserción de datos en la tabla regiones
insert into regiones
VALUES
    ( DEFAULT, 'América del Sur' ),
    ( DEFAULT, 'América Central' ),
    ( DEFAULT, 'Caribe y México' ),
    ( DEFAULT, 'América del Norte' ),
    ( DEFAULT, 'Europa Occidental'),
    ( DEFAULT, 'Europa del Este'),
    ( DEFAULT, 'Asia'),
    ( DEFAULT, 'Oceanía');

create table  destinos
(
    idDestino smallint unsigned auto_increment primary key not null,
    aeropuerto varchar(50) unique not null,
    precio decimal(10,2) unsigned not null,
    idRegion smallint unsigned not null,
    activo boolean not null default (1),
    foreign key (idRegion) references regiones (idRegion)
);

-- inserción de datos en tabla destinos
INSERT INTO destinos
VALUES
    (1, 'Londres (Heathrow)', 9711, 5, 1),
    (2, 'Amsterdam (Schiphol)', 6231, 5, 1),
    (3, 'Miami (Wilcox Field)', 6517, 4, 1),
    (4, 'Tokio (Narita)', 8704, 7, 1),
    (5, 'Kuala Lumpur (KLIA)', 8570, 7, 1),
    (6, 'Bangkok (Suvarnabhumi)', 8469, 7, 1),
    (7, 'París (Charles de Gaulle)', 7713, 5, 1),
    (8, 'Cancún (Cancún)', 6494, 3, 1),
    (9, 'Milán (Malpensa)', 6756, 5, 1);

