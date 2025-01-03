# Crear tablas en SQL

> Para crear una tabla dentro de una base de datos utilizamos comando **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla  
    (
        nombreCampo tipoDato características,
        nombreCampo2 tipoDato características,
        nombreCampo3 tipoDato características,
    );

> Ejemplo práctico: 

    CREATE TABLE personas  
    ( 
        id smallint unsigned not null,  
        apellido varchar(50) not null,  
        nombre varchar(50) not null,  
        dni int unsigned not null,  
        alta date not null
    );

