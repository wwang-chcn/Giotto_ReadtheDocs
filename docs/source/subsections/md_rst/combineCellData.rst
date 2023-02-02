combineCellData
---------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2783
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

combine cell data information

Usage
~~~~~

::

   combineCellData(
     gobject,
     feat_type = "rna",
     include_spat_locs = TRUE,
     spat_loc_name = "raw",
     include_poly_info = TRUE,
     poly_info = "cell"
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``include_spat_locs``             | include information about spatial |
|                                   | locations                         |
+-----------------------------------+-----------------------------------+
| ``spat_loc_name``                 | spatial location name             |
+-----------------------------------+-----------------------------------+
| ``include_poly_info``             | include information about polygon |
+-----------------------------------+-----------------------------------+
| ``poly_info``                     | polygon information name          |
+-----------------------------------+-----------------------------------+

Value
~~~~~

data.table with combined spatial information
