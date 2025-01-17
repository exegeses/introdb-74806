# Consultas en SQL

## Consultas a servidor de base de datos

    -- listar todas las bases de datos  
    SHOW DATABASES;  

> La palabra reservada más importante o al menos la más utilizada para las consultas es la palabra **SELECT**

    -- Ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de una base de datos

    -- Listar todas las tablas dentro de una base de datos  
    SHOW TABLES;  

    -- Mostrar la estructura de una tabla;  
    DESCRIBE destinos;

> Para realizar consultas a una tabla y que nos traiga listas de datos (registros) vamos a utilizar 
> la palabra reservada **SELECT**
> acompañada de la palabra **FROM**  

    SELECT * FROM nombreTabla;  

    SELECT * FROM regiones;  
    SELECT * FROM destinos;  

> Si queremos traer los datos de **algunas** columnas de una tabla debemos mencionar dichas columnas separadas por comas

    SELECT nombreCampo, nombreCampo    
        FROM nombreTabla;  

    SELECT aeropuerto, precio  
        FROM destinos;


### Orden de resultados
> Para ordenar los resultados de una columna 
> utilizamos **ORDER BY** 

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY prdPrecio;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY aeropuerto;    

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY aeropuerto;  

    SELECT aeropuerto, precio
      FROM destinos
      ORDER BY idRegion, precio;
