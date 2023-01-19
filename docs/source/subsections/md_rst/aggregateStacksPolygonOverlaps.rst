==============================
aggregateStacksPolygonOverlaps
==============================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3076



==================================

aggregateStacksPolygonOverlaps

Description
-----------

aggregate polygons overlap information from different z-stacks

Usage
-----

.. code:: r

   aggregateStacksPolygonOverlaps(
     gobject,
     spat_units,
     feat_type,
     new_spat_unit = "aggregate"
   )

Arguments
---------

================= ==========================================
Argument          Description
================= ==========================================
``gobject``       giotto object
``spat_units``    spatial units to aggregate
``feat_type``     feature type used for overlap calculations
``new_spat_unit`` new name for aggregated spatial unit
================= ==========================================

Value
-----

giotto object

Seealso
-------

Other aggregate stacks:
```aggregateStacksExpression`` <#aggregatestacksexpression>`__ ,
```aggregateStacksLocations`` <#aggregatestackslocations>`__ ,
```aggregateStacksPolygons`` <#aggregatestackspolygons>`__ ,
```aggregateStacks`` <#aggregatestacks>`__
