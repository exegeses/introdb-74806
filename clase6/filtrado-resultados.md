# Filtrado de resultados

> filtrar resultados de una consulta significa traer solamente los registros que cumplan con una condición dada

> Para implementar un filtro utilizamos 
> la palabra reservada **WHERE** seguida de una condición

> Traer todos los destinos con un precio hasta 8500

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8500;

> Traer todos los destinos con un precio entre 6600 y 8500

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio >= 6600  
        AND precio <= 8500;

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6600 AND 8500;

> Traer todos los destinos de la región 5

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 5;

> Traer todos los destinos de las regiones 5 y 7

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 5
        OR idRegion = 7;  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion IN(5, 7);  

