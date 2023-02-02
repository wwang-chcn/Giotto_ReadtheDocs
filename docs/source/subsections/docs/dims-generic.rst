Dimensions of giotto objects
----------------------------

Description
~~~~~~~~~~~

Find the dimensions of an object

Usage
~~~~~

::

   ## S4 method for signature 'giottoPoints'
   nrow(x)

   ## S4 method for signature 'giottoPolygon'
   nrow(x)

   ## S4 method for signature 'coordDataDT'
   nrow(x)

   ## S4 method for signature 'exprData'
   nrow(x)

   ## S4 method for signature 'metaData'
   nrow(x)

   ## S4 method for signature 'exprData'
   ncol(x)

   ## S4 method for signature 'metaData'
   ncol(x)

   ## S4 method for signature 'exprData'
   dim(x)

   ## S4 method for signature 'metaData'
   dim(x)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``x``                             | object to check dimensions of     |
+-----------------------------------+-----------------------------------+

Functions
~~~~~~~~~

-  ``nrow(giottoPoints)``: Find rows of giottoPoints object

-  ``nrow(giottoPolygon)``: Find rows of giottoPolygon object

-  ``nrow(coordDataDT)``: Find rows of giotto S4s with data.table based
   ``coordinates`` slots

-  ``nrow(exprData)``: Find rows of giotto S4s with data.table based
   ``coordinates`` slots

-  ``nrow(metaData)``: Find rows of giotto S4s with data.table based
   ``coordinates`` slots

-  ``ncol(exprData)``: Find cols of giotto S4s with Matrix based
   ``exprMat`` slots

-  ``ncol(metaData)``: Find cols of giotto S4s with data.table based
   ``metaDT`` slots

-  ``dim(exprData)``: Find dimensions of giotto S4s with Matrix based
   ``exprMat`` slots

-  ``dim(metaData)``: Find dimensions of giotto S4s with data.table
   based ``metaDT`` slots
