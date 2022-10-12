=========================
replaceGiottoInstructions
=========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L605

Description
===========

Function to replace all instructions from giotto object

Usage
=====

.. code:: r

   replaceGiottoInstructions(gobject, instructions = NULL)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``instructions``              | new instructions (e.g. result from   |
|                               | createGiottoInstructions)            |
+-------------------------------+--------------------------------------+

Value
=====

giotto object with replaces instructions
