Extract or replace parts of an object
-------------------------------------

Description
~~~~~~~~~~~

Operators Giotto S4 internal data.tables to extract or replace parts.

Usage
~~~~~

::

   ## S4 method for signature 'coordDataDT'
   x$name

   ## S4 replacement method for signature 'coordDataDT'
   x$name <- value

   ## S4 method for signature 'metaData'
   x$name

   ## S4 replacement method for signature 'metaData'
   x$name <- value

   ## S4 method for signature 'coordDataDT,missing,ANY,missing'
   x[i, j]

   ## S4 method for signature 'coordDataDT,ANY,missing,missing'
   x[i, j]

   ## S4 method for signature 'coordDataDT,ANY,ANY,missing'
   x[i, j]

   ## S4 method for signature 'coordDataDT,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'coordDataDT,missing,missing,ANY'
   x[i, j] <- value

   ## S4 method for signature 'metaData,missing,ANY,missing'
   x[i, j]

   ## S4 method for signature 'metaData,ANY,missing,missing'
   x[i, j]

   ## S4 method for signature 'metaData,ANY,ANY,missing'
   x[i, j]

   ## S4 method for signature 'metaData,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'metaData,missing,missing,ANY'
   x[i, j] <- value

   ## S4 method for signature 'dimObj,ANY,ANY,missing'
   x[i, j]

   ## S4 method for signature 'dimObj,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'dimObj,missing,missing,ANY'
   x[i, j] <- value

   ## S4 method for signature 'exprData,missing,ANY,missing'
   x[i, j]

   ## S4 method for signature 'exprData,ANY,missing,missing'
   x[i, j]

   ## S4 method for signature 'exprData,ANY,ANY,missing'
   x[i, j]

   ## S4 method for signature 'exprData,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'exprData,missing,missing,ANY'
   x[i, j] <- value

   ## S4 method for signature 'spatNetData,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'spatNetData,missing,missing,ANY'
   x[i, j] <- value

   ## S4 method for signature 'nnData,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'nnData,missing,missing,ANY'
   x[i, j] <- value

   ## S4 method for signature 'enrData,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'enrData,missing,missing,ANY'
   x[i, j] <- value

   ## S4 method for signature 'spatGridData,missing,missing,missing'
   x[i, j]

   ## S4 replacement method for signature 'spatGridData,missing,missing,ANY'
   x[i, j] <- value

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``x``                             | Giotto S4 object to extract       |
|                                   | columns from                      |
+-----------------------------------+-----------------------------------+
| ``name``                          | A literal character string        |
|                                   | (possibly backtick quoted).       |
+-----------------------------------+-----------------------------------+
| ``value``                         | value(s) to set This is normally  |
|                                   | matched to the colnames of the    |
|                                   | data.table object within the S4.  |
+-----------------------------------+-----------------------------------+
| ``i, j``                          | indices specifying elements to    |
|                                   | extract or replace. Indices are   |
|                                   | numeric or character vectors or   |
|                                   | empty                             |
+-----------------------------------+-----------------------------------+

:literal:`\`$\`` methods
~~~~~~~~~~~~~~~~~~~~~~~~

Select by colname from giotto S4 data.table coordinates slot.

Select by colname from giotto S4 data.table metaDT slot.

.. _methods-1:

:literal:`\`$<-\`` methods
~~~~~~~~~~~~~~~~~~~~~~~~~~

Set values by colname into giotto S4 data.table coordinates slot. Works
via data.table methods

Set values by colname into giotto S4 data.table metaDT slot. Works via
data.table methods

.. _methods-2:

:literal:`\`[\`` methods
~~~~~~~~~~~~~~~~~~~~~~~~

Select rows (i) and cols (j) from giotto S4 coordinates slot

Return ``coordinates`` slot data.table from giotto S4

Select rows (i) and cols (j) from giotto S4 metaDT slot

Return ``coordinates`` slot data.table from giotto S4

Select rows (i) and cols (j) from giotto S4 exprMat slot

Return ``exprMat`` slot Matrix object from giotto S4

Return ``spatNetData`` slot network data.table object from giotto S4

Return ``nnData`` slot igraph object from giotto S4

Return ``enrData`` slot enrichment data.table object from giotto S4

Return ``spatGridData`` slot enrichment data.table object from giotto S4

.. _methods-3:

:literal:`\`[<-\`` methods
~~~~~~~~~~~~~~~~~~~~~~~~~~

TODO

Return ``coordinates`` slot data.table from giotto S4

Return ``coordinates`` slot data.table from giotto S4

Return ``exprMat`` slot Matrix object from giotto S4

Return ``spatNetData`` slot network data.table object from giotto S4

Return ``nnData`` slot igraph object from giotto S4

Return ``enrData`` slot enrichment data.table object from giotto S4

Return ``spatGridData`` slot enrichment data.table object from giotto S4
