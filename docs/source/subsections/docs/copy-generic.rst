Copy an entire object
---------------------

Description
~~~~~~~~~~~

S4 generic for Giotto's S4 subobjects to return with full copies of
certain subobjects that usually return referenced information.

Usage
~~~~~

::

   copy(x)

   ## S4 method for signature 'coordDataDT'
   copy(x)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``x``                             | a Giotto S4 class subobject       |
+-----------------------------------+-----------------------------------+

Functions
~~~~~~~~~

-  ``copy(coordDataDT)``: Copy *data.table*-based spatial locations
   object.

See Also
~~~~~~~~

``copy`` ``deepcopy``
