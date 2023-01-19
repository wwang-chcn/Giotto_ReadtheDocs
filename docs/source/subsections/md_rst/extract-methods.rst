===============
extract-methods
===============

:Date: 1/19/23

``extract-methods``
===================

Extract or replace parts of an object

Description
-----------

Operators Giotto S4 internal data.tables to extract or replace parts.

Usage
-----

.. code:: r

   list(list("$"), list("coordDataDT"))(x, name)
   list(list("$"), list("coordDataDT"))(x, name) <- value
   list(list("$"), list("metaData"))(x, name)
   list(list("$"), list("metaData"))(x, name) <- value
   list(list("["), list("coordDataDT,missing,ANY,missing"))(x, i, j)
   list(list("["), list("coordDataDT,ANY,missing,missing"))(x, i, j)
   list(list("["), list("coordDataDT,ANY,ANY,missing"))(x, i, j)
   list(list("["), list("coordDataDT,missing,missing,missing"))(x, i, j)
   list(list("["), list("coordDataDT,missing,missing,ANY"))(x, i, j) <- value
   list(list("["), list("metaData,missing,ANY,missing"))(x, i, j)
   list(list("["), list("metaData,ANY,missing,missing"))(x, i, j)
   list(list("["), list("metaData,ANY,ANY,missing"))(x, i, j)
   list(list("["), list("metaData,missing,missing,missing"))(x, i, j)
   list(list("["), list("metaData,missing,missing,ANY"))(x, i, j) <- value
   list(list("["), list("dimObj,ANY,ANY,missing"))(x, i, j)
   list(list("["), list("dimObj,missing,missing,missing"))(x, i, j)
   list(list("["), list("dimObj,missing,missing,ANY"))(x, i, j) <- value
   list(list("["), list("exprData,missing,ANY,missing"))(x, i, j)
   list(list("["), list("exprData,ANY,missing,missing"))(x, i, j)
   list(list("["), list("exprData,ANY,ANY,missing"))(x, i, j)
   list(list("["), list("exprData,missing,missing,missing"))(x, i, j)
   list(list("["), list("exprData,missing,missing,ANY"))(x, i, j) <- value
   list(list("["), list("spatNetData,missing,missing,missing"))(x, i, j)
   list(list("["), list("spatNetData,missing,missing,ANY"))(x, i, j) <- value
   list(list("["), list("nnData,missing,missing,missing"))(x, i, j)
   list(list("["), list("nnData,missing,missing,ANY"))(x, i, j) <- value
   list(list("["), list("enrData,missing,missing,missing"))(x, i, j)
   list(list("["), list("enrData,missing,missing,ANY"))(x, i, j) <- value
   list(list("["), list("spatGridData,missing,missing,missing"))(x, i, j)
   list(list("["), list("spatGridData,missing,missing,ANY"))(x, i, j) <- value

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``x``                         | Giotto S4 object to extract columns  |
|                               | from                                 |
+-------------------------------+--------------------------------------+
| ``name``                      | A literal character string (possibly |
|                               | backtick quoted).                    |
+-------------------------------+--------------------------------------+
| ``value``                     | value(s) to set This is normally     |
|                               | matched to the colnames of the       |
|                               | data.table object within the S4.     |
+-------------------------------+--------------------------------------+
| ``i, j``                      | indices specifying elements to       |
|                               | extract or replace. Indices are      |
|                               | numeric or character vectors or      |
|                               | empty                                |
+-------------------------------+--------------------------------------+
