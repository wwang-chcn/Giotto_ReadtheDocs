=========================
replaceGiottoInstructions
=========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L378



=============================

Replace all giotto instructions in giotto object

Description
-----------

Function to replace all instructions from giotto object

Usage
-----

.. code:: r

   replaceGiottoInstructions(gobject, instructions = NULL)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``instructions``              | new instructions (e.g. result from   |
|                               | createGiottoInstructions)            |
+-------------------------------+--------------------------------------+

Value
-----

giotto object with replaces instructions
