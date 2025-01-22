# Alias en SQL
/*
En SQL podemos re nombrar el enunciado de una columna
con el motivo de que quede mejor en el reporte.
Nota: No se cambia definitivamente el nombre de la columna
    sino que se renombre temporalmente sólo para el reporte
Implementamos un alias con la palabra reservada **AS**
(Se puede omitir)
*/

    SELECT
        prdNombre AS Producto,
        prdPrecio AS Precio,
        mkNombre AS Marca,
        catNombre AS Categoría
    FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca
     JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;

SELECT
    prdNombre AS Producto,
    prdPrecio AS 'Precio Contado',
    prdPrecio * 1.05 AS 'Precio Lista',
    mkNombre AS Marca,
    catNombre AS Categoría
FROM productos AS p
 JOIN marcas AS m
    ON p.idMarca = m.idMarca
 JOIN categorias AS c
    ON p.idCategoria = c.idCategoria;