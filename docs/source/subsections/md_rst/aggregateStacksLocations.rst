aggregateStacksLocations
------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2951
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

aggregate expression matrices from different z-stacks

Usage
~~~~~

::

   aggregateStacksLocations(
     gobject,
     spat_units,
     values = "raw",
     summarize = "mean",
     new_spat_unit = "aggregate"
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_units``                    | spatial units to aggregate        |
+-----------------------------------+-----------------------------------+
| ``values``                        | values to use                     |
+-----------------------------------+-----------------------------------+
| ``summarize``                     | method to summarize spatial       |
|                                   | location information              |
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
``aggregateStacksPolygonOverlaps()``, ``aggregateStacksPolygons()``,
``aggregateStacks()``
