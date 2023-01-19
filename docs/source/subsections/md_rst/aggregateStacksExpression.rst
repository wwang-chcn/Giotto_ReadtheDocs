=========================
aggregateStacksExpression
=========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2854



=============================

aggregateStacksExpression

Description
-----------

aggregate expression matrices from different z-stacks

Usage
-----

.. code:: r

   aggregateStacksExpression(
     gobject,
     spat_units,
     feat_type,
     values = "raw",
     summarize = "sum",
     new_spat_unit = "aggregate",
     verbose = TRUE
   )

Arguments
---------

================= ==========================================
Argument          Description
================= ==========================================
``gobject``       giotto object
``spat_units``    spatial units to aggregate
``feat_type``     feature type
``values``        values to use
``summarize``     method to summarize expression information
``new_spat_unit`` new name for aggregated spatial unit
``verbose``       verbosity
================= ==========================================

Value
-----

giotto object

Seealso
-------

Other aggregate stacks:
```aggregateStacksLocations`` <#aggregatestackslocations>`__ ,
```aggregateStacksPolygonOverlaps`` <#aggregatestackspolygonoverlaps>`__
, ```aggregateStacksPolygons`` <#aggregatestackspolygons>`__ ,
```aggregateStacks`` <#aggregatestacks>`__
