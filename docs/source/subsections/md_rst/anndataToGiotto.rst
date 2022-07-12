
``anndataToGiotto``
=======================

anndataToGiotto

Description
-----------

Converts a spatial anndata (e.g. scanpy) .h5ad file into a Giotto object

Usage
-----

.. code-block:: r

   anndataToGiotto(
     anndata_path,
     metadata_cols = c("total_counts", "pct_counts_mt"),
     instructions = NULL,
     ...
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``anndata_path``
     - path to the .h5ad file
   * - ``metadata_cols``
     - metadata columns to include
   * - ``instructions``
     - giotto instructions
   * - ``list()``
     - additional parameters to `\ ``createGiottoObject`` <#creategiottoobject>`_


Details
-------

Function in beta. Converts a .h5ad file into a Giotto object.

Value
-----

Giotto object
