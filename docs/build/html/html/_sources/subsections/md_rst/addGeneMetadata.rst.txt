.. _addGeneMetadata:
``addGeneMetadata``
=======================

Add gene metadata

Description
-----------

adds gene metadata to the giotto object

Usage
-----

.. code-block:: r

   addGeneMetadata(gobject, new_metadata, by_column = F, column_gene_ID = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``new_metadata``
     - new metadata to use
   * - ``by_column``
     - merge metadata based on gene_ID column in `\ ``fDataDT`` <#fdatadt>`_
   * - ``column_gene_ID``
     - column name of new metadata to use if ``by_column = TRUE``


Details
-------

You can add additional gene metadata in two manners:


#. Provide a data.table or data.frame with gene annotations in the same order as the gene_ID column in fDataDT(gobject)
#. Provide a data.table or data.frame with gene annotations and specify which column contains the gene IDs,
   these gene IDs need to match with the gene_ID column in fDataDT(gobject)

Value
-----

giotto object
