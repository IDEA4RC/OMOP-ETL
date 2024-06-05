# MAPEOS A LAS TABLAS DE OMOP

En los próximos mapeos, cabe añadir y destacar un error que tiene que ser investigado y solucionado. Todos los mapeos van bien, se insertan de manera correcta los datos en OMOP, sin embargo, al cabo de 15-20 segundos se borran de OMOP. He probado a no cerrar la conexión al insertar los datos, pero ni aún así esto se soluciona (hay que averiguar si el error procede del repositorio desplegado para OMOP de IDEA4RC.

También hay que resaltar que los próximos mapeos son únicamente a las variables "NOT NULL" de las tablas de OMOP. Cabe realizar el resto.

Se ha intentado, con éxito, hacer el mapeo a las columnas "values" de diversas tablas de OMOP. Esto se hará con los vocabularios "sobrantes" mencionados en el README de IDEA4RC data (los que tienen #).

Para el resto de mapeo de tablas, hay que tener en cuenta que muchas de ellas coinciden nombres de columnas y valores, por tanto coincidirán a la hora de hacer el mapeo a su columna de la tabla correspondiente a OMOP. Habría que valorar hacer una trasnformación de ciertas tablas de IDEA4RC en este aspecto. Si nos fijamos en el EXCEL de IDEA4RC, las tablas "AdverseEVent" y "TreatmentResponse" tienen la misma columna "Episode Event Reference" por lo que sus valores al hacer el mapeo a "EPISODE.episode_id" pueden coincidir.

Otro aspecto a destacar es que supuestamente, los datos de IDEA4RC no contienen los "ExpectedValue" definidos en el Excel. Contienen directamente las referencias numéricas a los vocabularios o modifiers de OMOP. Por lo que un ejemplo de ello serían los CSV creados en la carpeta IDEAR4C-data

#### LINKS RECOMENDADOS (en cada notebook hay más)
https://docs.google.com/spreadsheets/d/1Vw1Dr2K4oG__cDQTutGaJhZvGUvQTLwc4qWreP6qMSs/edit#gid=1679851455

https://drive.google.com/file/d/1BQR6AAIVCSrJj1ZzQPaYH6Tg6VfMXb2V/view

https://github.com/OHDSI/Vocabulary-v5.0/wiki/Vocab.-TYPE_CONCEPT
