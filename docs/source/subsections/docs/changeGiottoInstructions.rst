Change giotto instruction(s) associated with giotto object
----------------------------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L323
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to change one or more instructions from giotto object

Usage
~~~~~

::

   changeGiottoInstructions(
     gobject,
     params = NULL,
     new_values = NULL,
     return_gobject = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``params``                        | parameter(s) to change            |
+-----------------------------------+-----------------------------------+
| ``new_values``                    | new value(s) for parameter(s)     |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | (boolean) return giotto object    |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object with one or more changed instructions
