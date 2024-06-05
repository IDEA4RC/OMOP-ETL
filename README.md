# MAPEOS A LAS TABLAS DE OMOP

En los próximos mapeos, cabe añadir y destacar un error que tiene que ser investigado y solucionado. Todos los mapeos van bien, se insertan de manera correcta los datos en OMOP, sin embargo, al cabo de 15-20 segundos se borran de OMOP. He probado a no cerrar la conexión al insertar los datos, pero ni aún así esto se soluciona (hay que averiguar si el error procede del repositorio desplegado para OMOP de IDEA4RC.

También hay que resaltar que los próximos mapeos son únicamente a las variables "NOT NULL" de las tablas de OMOP. Cabe realizar el resto.

Se ha intentado, con éxito, hacer el mapeo a las columnas "values" de diversas tablas de OMOP. Esto se hará con los vocabularios "sobrantes" mencionados en el README de IDEA4RC data (los que tienen #).


#### LINKS RECOMENDADOS (en cada notebook hay más)
https://docs.google.com/spreadsheets/d/1Vw1Dr2K4oG__cDQTutGaJhZvGUvQTLwc4qWreP6qMSs/edit#gid=1679851455

https://drive.google.com/file/d/1BQR6AAIVCSrJj1ZzQPaYH6Tg6VfMXb2V/view

https://github.com/OHDSI/Vocabulary-v5.0/wiki/Vocab.-TYPE_CONCEPT
