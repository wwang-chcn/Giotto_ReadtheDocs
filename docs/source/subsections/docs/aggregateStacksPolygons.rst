aggregateStacksPolygons
-----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3029
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

aggregate polygons from different z-stacks

Usage
~~~~~

::

   aggregateStacksPolygons(gobject, spat_units, new_spat_unit = "aggregate")

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_units``                    | spatial units to aggregate        |
+-----------------------------------+-----------------------------------+
| ``new_spat_unit``                 | new name for aggregated spatial   |
|                                   | unit                              |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other aggregate stacks: ``aggregateStacksExpression()``,
``aggregateStacksLocations()``, ``aggregateStacksPolygonOverlaps()``,
``aggregateStacks()``
