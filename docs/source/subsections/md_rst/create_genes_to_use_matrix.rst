create_genes_to_use_matrix
--------------------------

Description
~~~~~~~~~~~

subsets matrix based on vector of genes or hvf column

Usage
~~~~~

::

   create_feats_to_use_matrix(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     sel_matrix,
     feats_to_use,
     verbose = FALSE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``sel_matrix``                    | selected expression matrix        |
+-----------------------------------+-----------------------------------+
| ``feats_to_use``                  | feats to use, character or vector |
|                                   | of features                       |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | verbosity                         |
+-----------------------------------+-----------------------------------+

Value
~~~~~

subsetted matrix based on selected genes
