combineSpatialCellFeatureInfo
-----------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L4615
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Combine spatial cell information (e.g. polygon) and spatial feature
information (e.g. transcript locations)

Usage
~~~~~

::

   combineSpatialCellFeatureInfo(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     selected_features = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | Giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type(s)                   |
+-----------------------------------+-----------------------------------+
| ``selected_features``             | select set of features            |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

| The returned data.table has the following columns:

-  sdimx: spatial feature location on the x-axis

-  sdimy: spatial feature location on the y-axis

-  feat_ID: unique feature ID

-  cell_ID: unique cell ID

-  used: how often was the feature used/assigned to a cell

-  feat: selected feature(s)

Value
~~~~~

list of data.table(s)
