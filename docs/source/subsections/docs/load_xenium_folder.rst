Load xenium data from folder
----------------------------

Description
~~~~~~~~~~~

Load xenium data from folder

Usage
~~~~~

::

   load_xenium_folder(
     path_list,
     load_format = "csv",
     data_to_use = "subcellular",
     h5_expression = "FALSE",
     h5_gene_ids = "symbols",
     gene_column_index = 1,
     cores,
     verbose = TRUE
   )

   load_xenium_folder_csv(
     path_list,
     cores,
     data_to_use = "subcellular",
     h5_expression = FALSE,
     h5_gene_ids = "symbols",
     gene_column_index = 1,
     verbose = TRUE
   )

   load_xenium_folder_parquet(
     path_list,
     cores,
     data_to_use = "subcellular",
     h5_expression = FALSE,
     h5_gene_ids = "symbols",
     gene_column_index = 1,
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``path_list``                     | list of full filepaths from       |
|                                   | read_xenium_folder                |
+-----------------------------------+-----------------------------------+
| ``load_format``                   | files formats from which to load  |
|                                   | the data. Either 'csv' or         |
|                                   | 'parquet' currently supported.    |
+-----------------------------------+-----------------------------------+
| ``data_to_use``                   | which type(s) of expression data  |
|                                   | to build the gobject with (e.g.   |
|                                   | default: **'subcellular'**,       |
|                                   | 'aggregate', or 'all')            |
+-----------------------------------+-----------------------------------+
| ``h5_expression``                 | (boolean) whether to load         |
|                                   | cell_feature_matrix from .h5      |
|                                   | file. Default is ``TRUE``         |
+-----------------------------------+-----------------------------------+
| ``h5_gene_ids``                   | use gene symbols (default) or     |
|                                   | ensembl ids for the .h5 gene      |
|                                   | expression matrix                 |
+-----------------------------------+-----------------------------------+
| ``gene_column_index``             | which column from the features or |
|                                   | genes .tsv file to use for row    |
|                                   | ids                               |
+-----------------------------------+-----------------------------------+
| ``cores``                         | how many cores or threads to use  |
|                                   | to read data if paths are         |
|                                   | provided                          |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose when building Giotto   |
|                                   | object                            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

list of loaded in xenium data

Functions
~~~~~~~~~

-  ``load_xenium_folder_csv()``: Load from csv files

-  ``load_xenium_folder_parquet()``: Load from parquet files
