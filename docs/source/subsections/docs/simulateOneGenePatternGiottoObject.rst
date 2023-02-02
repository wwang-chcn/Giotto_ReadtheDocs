simulateOneGenePatternGiottoObject
----------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L4118
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Create a simulated spatial pattern for one selected gnee

Usage
~~~~~

::

   simulateOneGenePatternGiottoObject(
     gobject,
     pattern_name = "pattern",
     pattern_cell_ids = NULL,
     gene_name = NULL,
     spatial_prob = 0.95,
     gradient_direction = NULL,
     show_pattern = TRUE,
     pattern_colors = c(`in` = "green", out = "red"),
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``pattern_name``                  | name of spatial pattern           |
+-----------------------------------+-----------------------------------+
| ``pattern_cell_ids``              | cell ids that make up the spatial |
|                                   | pattern                           |
+-----------------------------------+-----------------------------------+
| ``gene_name``                     | selected gene                     |
+-----------------------------------+-----------------------------------+
| ``spatial_prob``                  | probability for a high expressing |
|                                   | gene value to be part of the      |
|                                   | spatial pattern                   |
+-----------------------------------+-----------------------------------+
| ``gradient_direction``            | direction of gradient             |
+-----------------------------------+-----------------------------------+
| ``show_pattern``                  | show the discrete spatial pattern |
+-----------------------------------+-----------------------------------+
| ``pattern_colors``                | 2 color vector for the spatial    |
|                                   | pattern                           |
+-----------------------------------+-----------------------------------+
| ``...``                           | additional parameters for         |
|                                   | (re-)normalizing                  |
+-----------------------------------+-----------------------------------+

Value
~~~~~

Reprocessed Giotto object for which one gene has a forced spatial
pattern
