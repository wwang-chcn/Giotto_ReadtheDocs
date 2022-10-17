=============
runDWLSDeconv
=============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1817

Description
===========

Function to perform DWLS deconvolution based on single cell expression
data

Usage
=====

.. code:: r

   runDWLSDeconv(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized"),
     logbase = 2,
     cluster_column = "leiden_clus",
     sign_matrix,
     n_cell = 50,
     cutoff = 2,
     name = NULL,
     return_gobject = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``expression_values``         | expression values to use             |
+-------------------------------+--------------------------------------+
| ``logbase``                   | base used for log normalization      |
+-------------------------------+--------------------------------------+
| ``cluster_column``            | name of cluster column               |
+-------------------------------+--------------------------------------+
| ``sign_matrix``               | sig matrix for deconvolution         |
+-------------------------------+--------------------------------------+
| ``n_cell``                    | number of cells per spot             |
+-------------------------------+--------------------------------------+
| ``cutoff``                    | cut off (default = 2)                |
+-------------------------------+--------------------------------------+
| ``name``                      | name to give to spatial              |
|                               | deconvolution results, default =     |
|                               | DWLS                                 |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | return giotto object                 |
+-------------------------------+--------------------------------------+

Value
=====

giotto object or deconvolution results

Seealso
=======

https://github.com/dtsoucas/DWLS for the list(â€œDWLSâ€) bulk deconvolution
method, and c(â€œ\\Sexpr[results=rd]{tools:::Rd_expr_doi("#1")}â€,
â€œ10.1186/s13059-021-02362-7â€)
list(â€œtools:::Rd_expr_doi("10.1186/s13059-021-02362-7")â€) for
list(â€œspatialDWLSâ€) , the spatial implementation used here.
