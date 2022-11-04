=================================
create_spatvector_object_from_dfr
=================================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1071

===========

create terra spatvector from a data.frame where cols 1 and 2 must be x
and y coordinates respectively. Additional columns are set as attributes
to the points where the first additional should be the feat_ID.

Usage
=====

.. code:: r

   create_spatvector_object_from_dfr(x)

Arguments
=========

======== =================
Argument Description
======== =================
``x``    data.frame object
======== =================
