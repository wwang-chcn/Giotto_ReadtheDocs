===========
set_cell_id
===========

:Date: 1/19/23

``set_cell_id``
===============

Set cell IDs for a given spatial unit

Description
-----------

Data for each spatial unit is expected to agree on a single set of
cell_IDs that are shared across any feature types. These cell_IDs are
stored within the giotto object’s ``cell_ID`` slot. Getters and setters
for this slot directly retrieve (get) or replace (set) this slot. Set
``cell_IDs`` ``NULL`` in order to delete the entry.

Usage
-----

.. code:: r

   set_cell_id(gobject, spat_unit = NULL, cell_IDs, set_defaults = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell”)           |
+-------------------------------+--------------------------------------+
| ``cell_IDs``                  | character vector of cell IDs to set  |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Value
-----

giotto object with set cell_ID slot

Seealso
-------

get_cell_id

Other functions to set data in giotto object:
```get_cell_id`` <#getcellid>`__ , ```get_feat_id`` <#getfeatid>`__ ,
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_cell_metadata`` <#setcellmetadata>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feat_id`` <#setfeatid>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_feature_metadata`` <#setfeaturemetadata>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_multiomics`` <#setmultiomics>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
