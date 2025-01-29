-- creación de tabla pivot
/*
    Esta es una tabla intermedia que nos servirá para relacionar
    la tabla productos con la tabla proveedores
*/
create table productos_proveedores
(
    idProducto mediumint unsigned not null,
    idProveedor smallint unsigned not null,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);

INSERT INTO productos_proveedores
    (idProducto, idProveedor)
  VALUES
    (1, 1),  -- Producto 1 es suministrado por Proveedor 1
    (2, 2),  -- Producto 2 es suministrado por Proveedor 2
    (3, 3),  -- Producto 3 es suministrado por Proveedor 3
    (4, 4),  -- Producto 4 es suministrado por Proveedor 4
    (5, 5),  -- Producto 5 es suministrado por Proveedor 5
    (6, 6),  -- Producto 6 es suministrado por Proveedor 6
    (2, 7),  -- Producto 7 es suministrado por Proveedor 7
    (2, 8),  -- Producto 8 es suministrado por Proveedor 8
    (3, 9),  -- Producto 9 es suministrado por Proveedor 9
    (3, 10), -- Producto 10 es suministrado por Proveedor 10
    (5, 8), -- Producto 10 es suministrado por Proveedor 10
    (5, 6), -- Producto 10 es suministrado por Proveedor 10
    (6, 10); -- Producto 10 es suministrado por Proveedor 10