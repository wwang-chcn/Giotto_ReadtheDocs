Multi omics integration with WNN
--------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/wnn.R#L11
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Multi omics integration with WNN

Usage
~~~~~

::

   runWNN(
     gobject,
     spat_unit = "cell",
     modality_1 = "rna",
     modality_2 = "protein",
     pca_name_modality_1 = "rna.pca",
     pca_name_modality_2 = "protein.pca",
     k = 20
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | A Giotto object with individual   |
|                                   | PCA modalities pre-calculated     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``modality_1``                    | modality 1 name. Default = "rna"  |
+-----------------------------------+-----------------------------------+
| ``modality_2``                    | modality 2 name. Default =        |
|                                   | "protein"                         |
+-----------------------------------+-----------------------------------+
| ``k``                             | k number, default = 20            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

A Giotto object with integrated UMAP (integrated.umap) within the
dimension_reduction slot and Leiden clusters (integrated_leiden_clus) in
the cellular metadata.
