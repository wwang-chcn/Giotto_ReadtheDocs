aggregateStacks
---------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3124
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
| ``summarize_expression``          | method to summarize expression    |
|                                   | information                       |
+-----------------------------------+-----------------------------------+
| ``summarize_locations``           | method to summarize spatial       |
|                                   | location information              |
+-----------------------------------+-----------------------------------+
| ``new_spat_unit``                 | new name for aggregated spatial   |
|                                   | unit                              |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Combines both ``aggregateStacksExpression`` and
``aggregateStacksLocations``

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other aggregate stacks: ``aggregateStacksExpression()``,
``aggregateStacksLocations()``, ``aggregateStacksPolygonOverlaps()``,
``aggregateStacksPolygons()``
