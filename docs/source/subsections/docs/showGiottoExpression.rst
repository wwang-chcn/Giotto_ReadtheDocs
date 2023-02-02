showGiottoExpression
--------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2417
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

shows the available matrices

Usage
~~~~~

::

   showGiottoExpression(gobject, nrows = 4, ncols = 4)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``nrows``                         | number of rows to print for each  |
|                                   | matrix (ignored for sparse        |
|                                   | matrices)                         |
+-----------------------------------+-----------------------------------+
| ``ncols``                         | number of columns to print for    |
|                                   | each matrix (ignored for sparse   |
|                                   | matrices)                         |
+-----------------------------------+-----------------------------------+

Value
~~~~~

prints the name and small subset of available matrices

See Also
~~~~~~~~

Other functions to show data in giotto object:
``showGiottoCellMetadata()``, ``showGiottoDimRed()``,
``showGiottoFeatInfo()``, ``showGiottoFeatMetadata()``,
``showGiottoImageNames()``, ``showGiottoNearestNetworks()``,
``showGiottoSpatEnrichments()``, ``showGiottoSpatGrids()``,
``showGiottoSpatLocs()``, ``showGiottoSpatNetworks()``,
``showGiottoSpatialInfo()``
