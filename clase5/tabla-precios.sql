-- tabla precios
create table precios
(
    id tinyint unsigned auto_increment primary key,
    exacto decimal(10,2) unsigned not null,
    aproximado float unsigned not null
);

insert into precios
    VALUES
        ( DEFAULT, 59, 59 ),
        ( DEFAULT, 99.99, 99.99 ),
        ( DEFAULT, 78.83, 78.83 ),
        ( DEFAULT, 22.3, 22.3 ),
        ( DEFAULT, 100.99, 100.99 ),
        ( DEFAULT, 60, 60 );

/*
    la función SUM() se utiliza
    para sumar todos los valores de una columna
*/
SELECT SUM(exacto), SUM(aproximado)
    FROM precios;


