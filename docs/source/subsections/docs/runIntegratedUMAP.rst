Run integrated UMAP
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/wnn.R#L463
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Run integrated UMAP

Usage
~~~~~

::

   runIntegratedUMAP(
     gobject,
     spat_unit = "cell",
     modality1 = "rna",
     modality2 = "protein",
     k = 20,
     spread = 5,
     min_dist = 0.01,
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | A giotto object                   |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``modality1``                     | modality 1 name. Default = "rna"  |
+-----------------------------------+-----------------------------------+
| ``modality2``                     | modality 2 name. Default =        |
|                                   | "protein"                         |
+-----------------------------------+-----------------------------------+
| ``k``                             | k number                          |
+-----------------------------------+-----------------------------------+
| ``spread``                        | UMAP param: spread                |
+-----------------------------------+-----------------------------------+
| ``min_dist``                      | UMAP param: min_dist              |
+-----------------------------------+-----------------------------------+
| ``...``                           | additional UMAP parameters        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

A Giotto object with integrated UMAP
