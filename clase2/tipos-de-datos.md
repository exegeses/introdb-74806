# Tipos de datos en SQL

## Numéricos

    tinyint   -128 a 127 | 255 (unsigned)  
    smallint  -32768 a 32767 | 65535 (unsigned)  
    mediumint -8388608 a 8388607 | 16777215  
    int  -2147483648 to 2147483647 | 4294967295  
    bigint 18446744073709551615  

    boolean    |  1 ó 0     --- tiniynt(1)  

    float   0.402823466  
    double  0.402823466402823466  

    decimal  

    bit     10


## Alfanuméricos

    char        255  
    varchar     65535  
    tinyText    
    smallText  
    mediumText  
    Text       

## Fechas

    date        '2020-05-04'  yyyy-mm-dd    
    datetime    '2022-02-03 11:13:42'  yyyy-mm-dd hh:mm:ss
    time        '11:13:42'
    year        '2023'
    timestamp   '1680532244' 

> UNIX timestamp: El tiempo transcurrido expresado en milisegundos desde el 01-01-1970