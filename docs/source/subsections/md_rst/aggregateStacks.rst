===============
aggregateStacks
===============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3124



===================

aggregateStacks

Description
-----------

aggregate expression matrices from different z-stacks

Usage
-----

.. code:: r

   aggregateStacks(
     gobject,
     spat_units,
     feat_type,
     values,
     summarize_expression = "sum",
     summarize_locations = "mean",
     new_spat_unit = "aggregate"
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_units``                | spatial units to aggregate           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``values``                    | values to use                        |
+-------------------------------+--------------------------------------+
| ``summarize_expression``      | method to summarize expression       |
|                               | information                          |
+-------------------------------+--------------------------------------+
| ``summarize_locations``       | method to summarize spatial location |
|                               | information                          |
+-------------------------------+--------------------------------------+
| ``new_spat_unit``             | new name for aggregated spatial unit |
+-------------------------------+--------------------------------------+

Details
-------

Combines both
```aggregateStacksExpression`` <#aggregatestacksexpression>`__ and
```aggregateStacksLocations`` <#aggregatestackslocations>`__

Value
-----

giotto object

Seealso
-------

Other aggregate stacks:
```aggregateStacksExpression`` <#aggregatestacksexpression>`__ ,
```aggregateStacksLocations`` <#aggregatestackslocations>`__ ,
```aggregateStacksPolygonOverlaps`` <#aggregatestackspolygonoverlaps>`__
, ```aggregateStacksPolygons`` <#aggregatestackspolygons>`__
