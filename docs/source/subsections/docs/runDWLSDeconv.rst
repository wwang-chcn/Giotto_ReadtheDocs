runDWLSDeconv
-------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1849
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to perform DWLS deconvolution based on single cell expression
data

Usage
~~~~~

::

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
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use          |
+-----------------------------------+-----------------------------------+
| ``logbase``                       | base used for log normalization   |
+-----------------------------------+-----------------------------------+
| ``cluster_column``                | name of cluster column            |
+-----------------------------------+-----------------------------------+
| ``sign_matrix``                   | sig matrix for deconvolution      |
+-----------------------------------+-----------------------------------+
| ``n_cell``                        | number of cells per spot          |
+-----------------------------------+-----------------------------------+
| ``cutoff``                        | cut off (default = 2)             |
+-----------------------------------+-----------------------------------+
| ``name``                          | name to give to spatial           |
|                                   | deconvolution results, default =  |
|                                   | DWLS                              |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | return giotto object              |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object or deconvolution results

See Also
~~~~~~~~

https://github.com/dtsoucas/DWLS for the *DWLS* bulk deconvolution
method, and
`doi:10.1186/s13059-021-02362-7 <https://doi.org/10.1186/s13059-021-02362-7>`__
for *spatialDWLS*, the spatial implementation used here.
