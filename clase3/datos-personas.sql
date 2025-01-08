# importar múltiples registros

## Ejemplo para insertar múltiples registros

/*
INSERT INTO personas
    ( apellido, nombre, dni, alta )
VALUES
    ( 'Page', 'Jimmy', 18543219, '1954-01-09' ),
    ( 'Plant', 'Robert', 18543220, '1960-01-09' ),
    ( 'Bonham', 'Bonzo', 18543221, '1960-01-09' ),
    ( 'Jones', 'John', 18543222, '1960-01-09' );
*/

INSERT INTO personas
VALUES
    ( DEFAULT, 'Page', 'Jimmy', 18543219, '1954-01-09' ),
    ( DEFAULT, 'Plant', 'Robert', 18543220, '1960-01-09' ),
    ( DEFAULT, 'Bonham', 'Bonzo', 18543221, '1960-01-09' ),
    ( DEFAULT, 'Jones', 'John', 18543222, '1960-01-09' );
