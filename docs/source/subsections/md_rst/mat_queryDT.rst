===========
mat_queryDT
===========

:Date: 1/19/23

``mat_queryDT``
===============

Query Matrix with data.table syntax

Description
-----------

Finds the rows of the Matrix needed to perform the query, converts first
to matrix, transposes, then to data.table after which the query is
performed just as if it had been a cell_ID (rows) by gene (cols)
data.table. Only works when j param is provided.

Usage
-----

.. code:: r

   mat_queryDT(i = NULL, j = NULL, by = cell_ID, mtx)

Arguments
---------

======== =======================================
Argument Description
======== =======================================
``i``    select by row
``j``    select by column or expression to query
``by``   return results by which column
``mtx``  matrix to use
======== =======================================
