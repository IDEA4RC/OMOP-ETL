# MAPEOS A LAS TABLAS DE OMOP

En los próximos mapeos, cabe añadir y destacar un error que tiene que ser investigado y solucionado. Todos los mapeos van bien, se insertan de manera correcta los datos en OMOP, sin embargo, al cabo de 15-20 segundos se borran de OMOP. He probado a no cerrar la conexión al insertar los datos, pero ni aún así esto se soluciona (hay que averiguar si el error procede del repositorio desplegado para OMOP de IDEA4RC.

También hay que resaltar que los próximos mapeos son únicamente a las variables "NOT NULL" de las tablas de OMOP. Cabe realizar el resto.

Se ha intentado, con éxito, hacer el mapeo a las columnas "values" de diversas tablas de OMOP. Esto se hará con los vocabularios "sobrantes" mencionados al principio (los que tienen #).

#### DUDAS DE CIERTOS MAPEOS
Respecto a las tablas de Observation, Measurement y Condition_occurence, ¿se mete en la misma fila de los observation_concept_id todos los valores de las observaciones? ¿O se crean varias filas?

Si se repite algún observation_concept_id ¿se eliminan? Pueden generarse multitud de datos de lo contrario.

#### LINKS RECOMENDADOS
https://docs.google.com/spreadsheets/d/1Vw1Dr2K4oG__cDQTutGaJhZvGUvQTLwc4qWreP6qMSs/edit#gid=1679851455

https://inspiredata.network/etl/IDSR2OMOP/IDS2OMOP-Assay-Part-1-v1.0/measurement.html

https://github.com/OHDSI/OMOP-Queries/blob/master/md/Condition_Occurence.md

https://drive.google.com/file/d/1BQR6AAIVCSrJj1ZzQPaYH6Tg6VfMXb2V/view

https://github.com/OHDSI/Vocabulary-v5.0/wiki/Vocab.-TYPE_CONCEPT
