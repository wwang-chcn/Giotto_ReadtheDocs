=================
runIntegratedUMAP
=================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/wnn.R#L463



=====================

Run integrated UMAP

Description
-----------

Run integrated UMAP

Usage
-----

.. code:: r

   runIntegratedUMAP(
     gobject,
     spat_unit = "cell",
     modality1 = "rna",
     modality2 = "protein",
     integrated_feat_type = NULL,
     integration_method = "WNN",
     matrix_result_name = "theta_weighted_matrix",
     k = 20,
     spread = 5,
     min_dist = 0.01,
     ...
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A giotto object                      |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``modality1``                 | modality 1 name. Default = “rna�     |
+-------------------------------+--------------------------------------+
| ``modality2``                 | modality 2 name. Default = “protein� |
+-------------------------------+--------------------------------------+
| ``integrated_feat_type``      | integrated feature type              |
|                               | (e.g. ‘rna_protein’)                 |
+-------------------------------+--------------------------------------+
| ``integration_method``        | multiomics integration method used.  |
|                               | Default = ‘WNN’                      |
+-------------------------------+--------------------------------------+
| ``matrix_result_name``        | Default = ‘theta_weighted_matrix’    |
+-------------------------------+--------------------------------------+
| ``k``                         | k number                             |
+-------------------------------+--------------------------------------+
| ``spread``                    | UMAP param: spread                   |
+-------------------------------+--------------------------------------+
| ``min_dist``                  | UMAP param: min_dist                 |
+-------------------------------+--------------------------------------+
| ``...``                       | additional UMAP parameters           |
+-------------------------------+--------------------------------------+

Value
-----

A Giotto object with integrated UMAP
