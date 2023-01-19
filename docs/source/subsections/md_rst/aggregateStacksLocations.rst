========================
aggregateStacksLocations
========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2951



============================

aggregateStacksLocations

Description
-----------

aggregate expression matrices from different z-stacks

Usage
-----

.. code:: r

   aggregateStacksLocations(
     gobject,
     spat_units,
     values = "raw",
     summarize = "mean",
     new_spat_unit = "aggregate"
   )

Arguments
---------

================= ================================================
Argument          Description
================= ================================================
``gobject``       giotto object
``spat_units``    spatial units to aggregate
``values``        values to use
``summarize``     method to summarize spatial location information
``new_spat_unit`` new name for aggregated spatial unit
================= ================================================

Value
-----

giotto object

Seealso
-------

Other aggregate stacks:
```aggregateStacksExpression`` <#aggregatestacksexpression>`__ ,
```aggregateStacksPolygonOverlaps`` <#aggregatestackspolygonoverlaps>`__
, ```aggregateStacksPolygons`` <#aggregatestackspolygons>`__ ,
```aggregateStacks`` <#aggregatestacks>`__
