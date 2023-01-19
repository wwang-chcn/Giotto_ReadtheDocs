=======================
aggregateStacksPolygons
=======================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3029



===========================

aggregateStacksPolygons

Description
-----------

aggregate polygons from different z-stacks

Usage
-----

.. code:: r

   aggregateStacksPolygons(gobject, spat_units, new_spat_unit = "aggregate")

Arguments
---------

================= ====================================
Argument          Description
================= ====================================
``gobject``       giotto object
``spat_units``    spatial units to aggregate
``new_spat_unit`` new name for aggregated spatial unit
================= ====================================

Value
-----

giotto object

Seealso
-------

Other aggregate stacks:
```aggregateStacksExpression`` <#aggregatestacksexpression>`__ ,
```aggregateStacksLocations`` <#aggregatestackslocations>`__ ,
```aggregateStacksPolygonOverlaps`` <#aggregatestackspolygonoverlaps>`__
, ```aggregateStacks`` <#aggregatestacks>`__
