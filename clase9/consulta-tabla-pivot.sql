# consulta a través de una tabla intermedia (pivot)

-- obtener el nombre del producto (tabla productos)
-- obtener el nombre del proveedor (tabla proveedores)

SELECT prdNombre, prvNombre
FROM productos
JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON productos_proveedores.idProveedor = proveedores.idProveedor;

SELECT
        prdNombre as producto,
        mkNombre as marca,
        catNombre as categoría,
        prvNombre as proveedor,
        prvTelefono as contacto
FROM productos as prod
JOIN marcas m ON m.idMarca = prod.idMarca
JOIN categorias c ON c.idCategoria = prod.idCategoria
JOIN productos_proveedores pp on prod.idProducto = pp.idProducto
JOIN proveedores p ON pp.idProveedor = p.idProveedor;