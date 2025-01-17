# Consultas de coincidencia (que contenga una cadena de caractéres)

> Las consultas de coincidencia se utilizan para obtener registros que vamos a filtrar utilizando una cadena de caracterés
> Eso quiere decir que como filtro vamos a explicitar que contenga cierta cadena de caracterés

> Traer nombre, precio, descripcion
> de la tabla productos
> que en la columna descripción contenga la palabra 'bluetooth'

    SELECT prdNombre, prdPrecio, prdDescripcion     
      FROM productos  
      WHERE prdDescripcion LIKE '%bluetooth%';

> Utilizamos la palabra reservada **LIKE** en combinación
> con el carácter de **%** (porcentaje) como una especie de comodín que podía ocupar 1 (uno), varios o hasta ningún carácter.

