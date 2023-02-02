annotateSpatialNetwork
----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_structures.R#L1693
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Annotate spatial network with cell metadata information.

Usage
~~~~~

::

   annotateSpatialNetwork(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     spatial_network_name = "Delaunay_network",
     cluster_column,
     create_full_network = FALSE
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
| ``spatial_network_name``          | name of spatial network to use    |
+-----------------------------------+-----------------------------------+
| ``cluster_column``                | name of column to use for         |
|                                   | clusters                          |
+-----------------------------------+-----------------------------------+
| ``create_full_network``           | convert from reduced to full      |
|                                   | network representation            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

annotated network in data.table format
