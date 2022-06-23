.. _combineSpatialCellMetadataInfo:
``combineSpatialCellMetadataInfo``
======================================

combineSpatialCellMetadataInfo

Description
-----------

Combine cell metadata with spatial cell information (e.g. polygon)

Usage
-----

.. code-block:: r

   combineSpatialCellMetadataInfo(gobject, spat_unit = NULL, feat_type = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - Giotto object
   * - ``spat_unit``
     - spatial unit
   * - ``feat_type``
     - feature type(s)


Details
-------

The returned data.table has the following columns: list() 


* 
  sdimx: spatial feature location on the x-axis   

* 
  sdimy: spatial feature location on the y-axis   

* 
  cell_ID: unique cell ID   

* 
  feat: selected feature(s)   

* 
  other columns that are part of the cell metadata

Value
-----

list of data.table(s)
