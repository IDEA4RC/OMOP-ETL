# Información relevante
Cada archivo consiste en un notebook que desarrolla el mapeo de una tabla de IDEA4RC a OMOP.

En algunos archivos, en el código se crea un dataframe "df_tables" para valores que no tenemos en nuestra base de datos IDEA4RC y que son necesarios en OMOP.

Para seguir el resto de mapeo de tablas, mirar Patient to OMOP para ver como se desarrolla. Tener en cuenta para el resto de mapeos que hay columnas de IDEA4RC de ciertas tablas que coinciden. No hay que repetir datos. 

Averiguar qué hacer con los datos que son necesarios en OMOP y no tenemos en IDEA4RC.

Valorar hacer también el mapeo del resto de tablas que no son NOT NULL y cómo generar esos datos en IDEA4RC.

Hacer también mapeo a la inversa, de IDEA4RC to OMOP. Esto puede basarse en leer los datos de cada tabla con consultas SQL y exportar los datos de cada tabla de OMOP a un csv, convertirlos cada uno a un dataframe y leerlo así con Pandas, e ir mapeando manualmente las columnas de las tablas correspondientes a IDEA4RC. 

Cuando ya lo tengamos hecho el mapeo de IDEA4RC a OMOP o de OMOP a IDEA4RC, para hacer el mapeo de cualquier archivo consistiría en cambiar el nombre de lectura de cada csv en el código y ejecutar. Valorar cuando tenemos muchos datos, hacer un for que vaya leyendo cada CSV y ejecutando el codigo para mapeo.
