# Modificación de datos (registro) de una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**
> Debemos especificar un filtro 
> con el comando **WHERE** seguido de una condición

> Sintáxis: 

    UPDATE nombreTabla  
      SET nombreCampo = valor,  
          nombreCampo2 = valor2
      WHERE condicion;


> Ejemplo práctico: 

    UPDATE personas  
      SET dni = 31025678  
      WHERE id = 6;  

    UPDATE personas  
      SET apellido = 'Torres',    
          nombre = 'Fernando'  
      WHERE id = 14;
