# MAPEOS A LAS TABLAS DE OMOP
El problema que se nos pide es hacer un mapeo de la base de datos IDEA4RC a OMOP CDM. Para ello, al no disponer de la base de datos desplegada y con ella datos de IDEA4RC, hemos seguido los siguientes pasos:
- En el archivo DataGenerationIDEA4RC se generan archivos CSV para cada tabla de IDEA4RC. Estos ejemplos se crean gracias al EXCEL de IDEA4RC (ver link docs.google abajo) y se guardan en la carpeta "ETL_idea4rc_to_omop/IDEA4RC-data/".
- Dentro de la carpeta "ETL_idea4rc_to_omop" tendremos notebooks correspondientes al mapeo de cada tabla a OMOP. En estos notebooks se realiza la lectura de los CSV, la limpieza y transformación de los datos necesaria, la creación de nuevos datos que no figuraban en IDEA4RC y eran necesarios para OMOP.
* Los mapeos que existen a día de hoy 05/06/2024 únicamente es para los valores NOT NULL obligatorios a introducir en algunas tablas de OMOP. Cabe realizar el resto.
* Valorar hacer un bucle for en cada notebook de tabla de IDEA4RC para que vaya leyendo todos los csv que tenga y realice esta transformación. Pensar en un despliegue automático con Docker.

En los próximos mapeos, cabe añadir y destacar un error que tiene que ser investigado y solucionado. Todos los mapeos van bien, se insertan de manera correcta los datos en OMOP, sin embargo, al cabo de 15-20 segundos se borran de OMOP. He probado a no cerrar la conexión al insertar los datos, pero ni aún así esto se soluciona (hay que averiguar si el error procede del repositorio desplegado para OMOP de IDEA4RC. De lo contrario, encontrar posibles errores en los códigos de mapeo de los notebooks.

Se ha intentado, con éxito, hacer el mapeo de algunos datos Patient a las columnas "values" de diversas tablas de OMOP. Esto se hará con los vocabularios "sobrantes" mencionados en el README dentro de lo especificaco en el notebook de generacio de datos en IDEA4RC-data (los que tienen #).

Para el resto de mapeo de tablas, hay que tener en cuenta que muchas de ellas coinciden nombres de columnas y valores, por tanto coincidirán a la hora de hacer el mapeo a su columna de la tabla correspondiente a OMOP. Habría que valorar hacer una trasnformación de ciertas tablas de IDEA4RC en este aspecto. Si nos fijamos en el EXCEL de IDEA4RC, las tablas "AdverseEVent" y "TreatmentResponse" tienen la misma columna "Episode Event Reference" por lo que sus valores al hacer el mapeo a "EPISODE.episode_id" pueden coincidir.

Otro aspecto a destacar es que supuestamente, los datos de IDEA4RC no contienen los "ExpectedValue" definidos en el Excel. Contienen directamente las referencias numéricas a los vocabularios o modifiers de OMOP. Por lo que un ejemplo de ello serían los CSV creados en la carpeta IDEAR4C-data

#### LINKS RECOMENDADOS (en cada notebook hay más)
https://docs.google.com/spreadsheets/d/1Vw1Dr2K4oG__cDQTutGaJhZvGUvQTLwc4qWreP6qMSs/edit#gid=1679851455

https://drive.google.com/file/d/1BQR6AAIVCSrJj1ZzQPaYH6Tg6VfMXb2V/view

https://github.com/OHDSI/Vocabulary-v5.0/wiki/Vocab.-TYPE_CONCEPT
