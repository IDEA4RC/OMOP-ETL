# Relevant Information
Each file consists of a notebook that develops the mapping of a table from IDEA4RC to OMOP.

In some files, the code creates a dataframe called "df_tables" for values that we don't have in our IDEA4RC database but are necessary in OMOP.

Additionally, for most tables, if not all, their insertion into OMOP requires conversion to the "Object" type. In some cases, this conversion is performed, while in others it is commented out with a `# just in case`. In these cases, it’s not necessary to execute those lines of code.

To follow the rest of the table mapping process, refer to the "Patient to OMOP" notebook to see how it is developed. Keep in mind that for the rest of the mappings, certain columns in IDEA4RC tables coincide. There's no need to duplicate data.

Figure out what to do with the data that is required in OMOP but not available in IDEA4RC. Additionally, certain data available in IDEA4RC might not have a specified mapping to OMOP tables, which also needs to be addressed.

Consider mapping the rest of the tables that are not marked as NOT NULL and how to generate this data in IDEA4RC.

Also, perform reverse mapping from IDEA4RC to OMOP. This can be done by reading the data from each table using SQL queries, exporting the data from each OMOP table to a CSV, converting each one to a dataframe, and reading it with Pandas, mapping the corresponding columns to IDEA4RC manually.

Once we have completed the mapping from IDEA4RC to OMOP or from OMOP to IDEA4RC, to map any file, it would simply involve changing the name of the CSV being read in the code and executing it. When dealing with a large amount of data, consider using a for loop to read each CSV and execute the mapping code.



# Main doubts

-What to do with the Drugs For Treatments mapping since it is not specified.
- What codes to use for some specific mappings that are required, this problem is mentioned every time it appears.