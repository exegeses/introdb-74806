# creación de tablas proyecto catálogo

-- tabla marcas
create table marcas
(
    idMarca smallint unsigned auto_increment primary key not null,
    mkNombre varchar(50) unique not null
);

-- tabla categorias
create table categorias
(
    idCategoria tinyint unsigned auto_increment primary key not null,
    catNombre varchar(50) unique not null
);


-- tabla productos
create table productos
(
    idProducto mediumint unsigned auto_increment primary key not null,
    prdNombre varchar(50) unique not null,
    prdPrecio decimal(10,2) unsigned not null,
    idMarca smallint unsigned not null,
    idCategoria tinyint unsigned not null,
    prdDescripcion varchar(1000),
    prdImagen varchar(50) not null,
    prdActivo boolean not null default(1),
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);
