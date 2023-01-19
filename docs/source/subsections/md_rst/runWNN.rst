======
runWNN
======

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/wnn.R#L11



==========

Multi omics integration with WNN

Description
-----------

Multi omics integration with WNN

Usage
-----

.. code:: r

   runWNN(
     gobject,
     spat_unit = "cell",
     modality_1 = "rna",
     modality_2 = "protein",
     pca_name_modality_1 = "rna.pca",
     pca_name_modality_2 = "protein.pca",
     k = 20,
     integrated_feat_type = NULL,
     matrix_result_name = NULL,
     w_name_modality_1 = NULL,
     w_name_modality_2 = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A Giotto object with individual PCA  |
|                               | modalities pre-calculated            |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``modality_1``                | modality 1 name. Default = “rna�     |
+-------------------------------+--------------------------------------+
| ``modality_2``                | modality 2 name. Default = “protein� |
+-------------------------------+--------------------------------------+
| ``pca_name_modality_1``       | Default = ‘rna.pca’                  |
+-------------------------------+--------------------------------------+
| ``pca_name_modality_2``       | Default = ‘protein.pca’              |
+-------------------------------+--------------------------------------+
| ``k``                         | k number, default = 20               |
+-------------------------------+--------------------------------------+
| ``integrated_feat_type``      | integrated feature type              |
|                               | (e.g. ‘rna_protein’)                 |
+-------------------------------+--------------------------------------+
| ``matrix_result_name``        | Default = ‘theta_weighted_matrix’    |
+-------------------------------+--------------------------------------+
| ``w_name_modality_1``         | name for modality 1 weights          |
+-------------------------------+--------------------------------------+
| ``w_name_modality_2``         | name for modality 2 weights          |
+-------------------------------+--------------------------------------+

Value
-----

A Giotto object with integrated UMAP (integrated.umap) within the
dimension_reduction slot and Leiden clusters (integrated_leiden_clus) in
the cellular metadata.
