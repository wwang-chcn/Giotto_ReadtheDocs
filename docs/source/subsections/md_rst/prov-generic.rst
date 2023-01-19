============
prov-generic
============

:Date: 1/19/23

``prov-generic``
================

Provenance information

Description
-----------

access and set provenance slot of S4 subobject

Usage
-----

.. code:: r

   prov(x)
   list(list("prov"), list("provData"))(x)
   list(list("prov"), list("provData"))(x) <- value

Arguments
---------

========= ===========================
Argument  Description
========= ===========================
``x``     a Giotto S4 class subobject
``value`` value to set as provenance
========= ===========================
