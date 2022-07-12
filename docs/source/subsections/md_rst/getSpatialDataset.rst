
``getSpatialDataset``
=========================

getSpatialDataset

Description
-----------

This package will automatically download the spatial locations and
 expression matrix for the chosen dataset. These files are already in the right format
 to create a Giotto object. If wget is installed on your machine, you can add
 'method = wget' to the parameters to download files faster.

Usage
-----

.. code-block:: r

   getSpatialDataset(
     dataset = c("ST_OB1", "ST_OB2", "codex_spleen", "cycif_PDAC", "starmap_3D_cortex",
       "osmfish_SS_cortex", "merfish_preoptic", "seqfish_SS_cortex", "seqfish_OB",
       "slideseq_cerebellum", "ST_SCC"),
     directory = getwd(),
     verbose = TRUE,
     ...
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``dataset``
     - dataset to download
   * - ``directory``
     - directory to save the data to
   * - ``verbose``
     - be verbose
   * - ``list()``
     - additional parameters to `\ ``download.file`` <#download.file>`_

