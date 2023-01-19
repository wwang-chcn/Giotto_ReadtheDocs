===============
combineMetadata
===============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L4270



===================

combineMetadata

Description
-----------

This function combines the cell metadata with spatial locations and
enrichment results from ```runSpatialEnrich`` <#runspatialenrich>`__

Usage
-----

.. code:: r

   combineMetadata(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     spat_loc_name = "raw",
     spat_enr_names = NULL,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | Giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name of spatial locations to include |
+-------------------------------+--------------------------------------+
| ``spat_enr_names``            | names of spatial enrichment results  |
|                               | to include                           |
+-------------------------------+--------------------------------------+
| ``verbose``                   | verbosity                            |
+-------------------------------+--------------------------------------+

Value
-----

Extended cell metadata in data.table format.
