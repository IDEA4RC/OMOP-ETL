# MAPPINGS TO OMOP TABLES
## Deployment Instructions
1. Run the notebook inside `"OMOP-ETL-main\ETL_idea4rc_to_omop\IDEA4RC-data"` to generate the CSV files.
2. Execute the mapping notebooks.
3. Connect to the database and query the tables in the `omopcdm` schema.

*This repository has been run with Jupyter on Anaconda. Download Anaconda and start Anaconda Navigator to interact with Jupyter.*

The task is to map the IDEA4RC database to OMOP CDM. Since we do not have access to the deployed IDEA4RC database and its data, we followed these steps:
- The `DataGenerationIDEA4RC` file generates CSV files for each IDEA4RC table. These examples are created using the IDEA4RC Excel (see Google Docs link below) and are saved in the folder `"ETL_idea4rc_to_omop/IDEA4RC-data/"`.
- Within the folder `"ETL_idea4rc_to_omop"`, we have notebooks corresponding to the mapping of each table to OMOP. In these notebooks, the CSV files are read, the necessary data cleaning and transformation are performed, and new data that wasn’t present in IDEA4RC but is required for OMOP is created.

*As of today, 06/05/2024, mappings exist only for the mandatory NOT NULL values to be inserted into certain OMOP tables. The rest still needs to be done.*
*Consider implementing a `for` loop in each IDEA4RC table notebook to read all the CSVs and perform this transformation. Think about an automatic deployment with Docker.*

In future mappings, an error must be noted and investigated. While all mappings are working fine and data is inserted correctly into OMOP, the data is deleted from OMOP after 15-20 seconds. I’ve tried not closing the connection after inserting the data, but this hasn’t resolved the issue. It’s necessary to determine whether the error comes from the deployed OMOP repository for IDEA4RC. Otherwise, we must look for potential errors in the mapping code of the notebooks.

There has been success mapping some Patient data to the "values" columns in various OMOP tables. This will be done using the "extra" vocabularies mentioned in the README and specified in the data generation notebook within IDEA4RC-data (those with `#`).

For the rest of the table mappings, keep in mind that many columns and values have the same names, so they will align when mapped to their corresponding OMOP table columns. Consider transforming certain IDEA4RC tables for this purpose. If we look at the IDEA4RC Excel file, the "AdverseEvent" and "TreatmentResponse" tables share the same column "Episode Event Reference," so their values could coincide when mapped to "EPISODE.episode_id."

Another important point is that, supposedly, the IDEA4RC data does not contain the "ExpectedValue" defined in the Excel file. It contains direct numeric references to OMOP vocabularies or modifiers. An example of this can be seen in the CSV files created in the IDEA4RC-data folder.

#### RECOMMENDED LINKS (more are included in each notebook)
https://docs.google.com/spreadsheets/d/1Vw1Dr2K4oG__cDQTutGaJhZvGUvQTLwc4qWreP6qMSs/edit#gid=1679851455

https://ohdsi.github.io/CommonDataModel/cdm54.html#observation

https://drive.google.com/file/d/1BQR6AAIVCSrJj1ZzQPaYH6Tg6VfMXb2V/view

https://github.com/OHDSI/Vocabulary-v5.0/wiki/Vocab.-TYPE_CONCEPT