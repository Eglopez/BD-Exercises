@author eglopezl@unah.hn
@date 15/10/2020

Funcionalidades Generales Usando SQL
====

Ejemplos de uso de SQL
----

Funcionalidades que se pueden ejecutar en SQL:
    
    -- Generacion de aleatorios
    SELECT rand();
    
    -- Generar un entero basado en un flotante aleatorio
    SELECT CAST(rand()*(101-1)+1 AS INT);

    -- Generación de fechas
    SELECT NOW();

    -- Extracción de datos de fechas
    SELECT
        YEAR(NOW()) AS "Año"
        MONTH(NOW()) AS "Mes"
        DAY(NOW()) AS "Dia"
        Hour(NOW()) AS "Hora"
        MINUTE(NOW()) AS "Minuto"
        SECOND(NOW()) AS "Segundo"
    ;

    -- Concatenar
    SELECT CONCAT("Hola", " ", "Mundo") AS "Cadena de Hola Mundo";

    -- Generación de SQL mediante SQL
    SELECT CONCAT("SELECT ","Campo1,","Campo2,","Campo3 ","FROM DATABASE.TABLENAME") AS "Query de SQL";

    
Ejercicio
----

Dentro de una oficina se desea registrar una lista de TODO's la cual puede ser utilizada por multiples usuarios a la vez. Un usuario
puede poseer una o multiples listas. Una vez que el sistema este en marcha, la alta gerencia desea saber el porcentaje de tareas 
pendientes y realizadas sobre el total de tareas de cada departamento, empleado y de la gerencia en total. Haga uso de de ER para
crear su modelado usando MYSQL 5.7/MariaDB 10.3 como SGBD. 