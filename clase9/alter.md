# Modificaciones de estructura en una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla 
        CHANGE nombreOLD nombreNEW tipoDeDado;  

> tener en cuenta que debemos repetir el tipo de datos, sino, dará error.  

## Cambiar tipos de datos o modificadores de un campo

    ALTER TABLE nombreTabla
        MODIFY nombreColumna VARCHAR(150) not null;  

## Agregar una calumna a una tabla

    ALTER TABLE nombreTabla
        ADD nombreCampo tipoDeDato modif;

## Eliminar campos en una tabla 

    ALTER TABLE nombreTabla
        DROP nombreColumna;  

## Agregar primary key

    ALTER TABLE nombreTabla  
        MODIFY nombreColumna tipoDato primary key auto_increment not null   


## Agregar Foreign key

    ALTER TABLE abonados. 
     ADD  
     FOREIGN KEY(idCompania) 
     REFERENCES companias(idCompania); 


## Cambiar nombre de una tabla

    RENAME TABLE nombreOLD TO nombreNEW;  

## Renombrar base 

  ALTER DATABASE old MODIFY NAME = new
