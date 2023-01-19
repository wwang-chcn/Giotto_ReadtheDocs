========================
createGiottoXeniumObject
========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L3431



   :format: latex
..

``createGiottoXeniumObject``
============================

Create 10x Xenium Giotto Object

Description
-----------

Given the path to a Xenium experiment output folder, creates a Giotto
object

Usage
-----

.. code:: r

   createGiottoXeniumObject(
     xenium_dir,
     data_to_use = c("subcellular", "aggregate"),
     load_format = "csv",
     h5_expression = TRUE,
     h5_gene_ids = c("symbols", "ensembl"),
     gene_column_index = 1,
     bounds_to_load = c("cell"),
     qv_threshold = 20,
     key_list = NULL,
     instructions = NULL,
     cores = NA,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``xenium_dir``                | full path to the exported xenium     |
|                               | directory                            |
+-------------------------------+--------------------------------------+
| ``data_to_use``               | which type(s) of expression data to  |
|                               | build the gobject with               |
|                               | (e.g. default: ‘subcellular’ ,       |
|                               | ‘aggregate’, or ‘all’)               |
+-------------------------------+--------------------------------------+
| ``load_format``               | files formats from which to load the |
|                               | data. Either ``csv`` or ``parquet``  |
|                               | currently supported.                 |
+-------------------------------+--------------------------------------+
| ``h5_expression``             | (boolean) whether to load            |
|                               | cell_feature_matrix from .h5 file.   |
|                               | Default is ``TRUE``                  |
+-------------------------------+--------------------------------------+
| ``h5_gene_ids``               | use gene symbols (default) or        |
|                               | ensembl ids for the .h5 gene         |
|                               | expression matrix                    |
+-------------------------------+--------------------------------------+
| ``gene_column_index``         | which column from the features or    |
|                               | genes .tsv file to use for row ids   |
+-------------------------------+--------------------------------------+
| ``bounds_to_load``            | vector of boundary information to    |
|                               | load (e.g. ``'cell'`` or             |
|                               | ``'nucleus'`` by themselves or       |
|                               | ``c('cell', 'nucleus')`` to load     |
|                               | both at the same time.)              |
+-------------------------------+--------------------------------------+
| ``qv_threshold``              | Minimum Phred-scaled quality score   |
|                               | cutoff to be included as a           |
|                               | subcellular transcript detection     |
|                               | (default = 20)                       |
+-------------------------------+--------------------------------------+
| ``key_list``                  | (advanced) list of grep-based        |
|                               | keywords to split the subcellular    |
|                               | feature detections by feature type.  |
|                               | See details                          |
+-------------------------------+--------------------------------------+
| ``instructions``              | list of instructions or output       |
|                               | result from                          |
|                               | ```createGiottoInstructi             |
|                               | ons`` <#creategiottoinstructions>`__ |
+-------------------------------+--------------------------------------+
| ``cores``                     | how many cores or threads to use to  |
|                               | read data if paths are provided      |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose when building Giotto      |
|                               | object                               |
+-------------------------------+--------------------------------------+

Details
-------

[ list(“QC feature types�) ] Xenium provides info on feature detections
that include more than only the Gene Expression specific probes.
Additional probes for QC are included: list(“blank codeword�) ,
list(“negative control codeword�) , and list(“negative control probe�) .
These additional QC probes each occupy and are treated as their own
feature types so that they can largely remain independent of the gene
expression information.

[ list(“key_list�) ] Related to ``data_to_use = 'subcellular'`` workflow
only: Additional QC probe information is in the subcellular feature
detections information and must be separated from the gene expression
information during processing. The QC probes have prefixes that allow
them to be selected from the rest of the feature IDs. Giotto uses a
named list of keywords ( ``key_list`` ) to select these QC probes, with
the list names being the names that will be assigned as the feature type
of these feature detections. The default list is used when ``key_list``
= NULL.

Default list: list(“:raw-latex:`\n`�, � list(blank_code =
‘BLANK\_’,:raw-latex:`\n`“,� neg_code =
‘NegControlCodeword\_’,:raw-latex:`\n`“,� neg_probe =
c(‘NegControlProbe_|antisense\_’)):raw-latex:`\n`“)

The Gene expression subset is accepted as the subset of feat_IDs that do
not map to any of the keys.

