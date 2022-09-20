=========================
replaceGiottoInstructions
=========================

:Date: 2022-09-20

``replaceGiottoInstructions``
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
