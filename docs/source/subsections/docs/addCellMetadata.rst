Add cell metadata
-----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3371
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Adds cell metadata to the giotto object

Usage
~~~~~

::

   addCellMetadata(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     new_metadata,
     vector_name = NULL,
     by_column = FALSE,
     column_cell_ID = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``new_metadata``                  | new cell metadata to use          |
|                                   | (data.table, data.frame, ...)     |
+-----------------------------------+-----------------------------------+
| ``vector_name``                   | (optional) custom name if you     |
|                                   | provide a single vector           |
+-----------------------------------+-----------------------------------+
| ``by_column``                     | merge metadata based on *cell_ID* |
|                                   | column in ``pDataDT`` (default =  |
|                                   | FALSE)                            |
+-----------------------------------+-----------------------------------+
| ``column_cell_ID``                | column name of new metadata to    |
|                                   | use if by_column = TRUE           |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

You can add additional cell metadata in two manners:

-  1. Provide a data.table or data.frame with cell annotations in the
   same order as the *cell_ID* column in pDataDT(gobject)

-  2. Provide a data.table or data.frame with cell annotations and
   specify which column contains the cell IDs, these cell IDs need to
   match with the *cell_ID* column in pDataDT(gobject)

Value
~~~~~

giotto object
