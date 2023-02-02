aggregateStacksExpression
-------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2854
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
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_units``                    | spatial units to aggregate        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``values``                        | values to use                     |
+-----------------------------------+-----------------------------------+
| ``summarize``                     | method to summarize expression    |
|                                   | information                       |
+-----------------------------------+-----------------------------------+
| ``new_spat_unit``                 | new name for aggregated spatial   |
|                                   | unit                              |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | verbosity                         |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other aggregate stacks: ``aggregateStacksLocations()``,
``aggregateStacksPolygonOverlaps()``, ``aggregateStacksPolygons()``,
``aggregateStacks()``
