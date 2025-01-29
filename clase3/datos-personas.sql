# importar múltiples registros

## Ejemplo para insertar múltiples registros

/*
INSERT INTO personas
    ( apellido, nombre, dni, alta )
VALUES
    ( 'Page', 'Jimmy', 18543219, '1944-01-09' ),
    ( 'Plant', 'Robert', 18543220, '1948-08-20' ),
    ( 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
    ( 'Jones', 'John', 18543222, '1946-01-03' );
*/

INSERT INTO personas
VALUES
    ( DEFAULT, 'Page', 'Jimmy', 18543219, '1944-01-09' ),
    ( DEFAULT, 'Plant', 'Robert', 18543220, '1948-08-20' ),
    ( DEFAULT, 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
    ( DEFAULT, 'Jones', 'John', 18543222, '1946-01-03' );
