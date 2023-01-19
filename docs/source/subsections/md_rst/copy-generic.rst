============
copy-generic
============

:Date: 1/19/23

``copy-generic``
================

Copy an entire object

Description
-----------

S4 generic for Giotto’s S4 subobjects to return with full copies of
certain subobjects that usually return referenced information.

Usage
-----

.. code:: r

   copy(x)
   list(list("copy"), list("coordDataDT"))(x)

Arguments
---------

======== ===========================
Argument Description
======== ===========================
``x``    a Giotto S4 class subobject
======== ===========================

Seealso
-------

```copy`` <#copy>`__ ```deepcopy`` <#deepcopy>`__
