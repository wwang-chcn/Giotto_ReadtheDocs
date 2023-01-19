==============
fread_colmatch
==============

:Date: 1/19/23

``fread_colmatch``
==================

Fread rows based on column matches

Description
-----------

Fread rows based on column matches

Usage
-----

.. code:: r

   fread_colmatch(file, col, sep = NULL, values_to_match, verbose = FALSE, ...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``file``                      | path to file to load                 |
+-------------------------------+--------------------------------------+
| ``col``                       | name of col to match from            |
+-------------------------------+--------------------------------------+
| ``sep``                       | grep term to match as column         |
|                               | delimiters within the file           |
+-------------------------------+--------------------------------------+
| ``values_to_match``           | values in ``col`` to match given as  |
|                               | a vector                             |
+-------------------------------+--------------------------------------+
| ``verbose``                   | whether to print the grep command    |
+-------------------------------+--------------------------------------+
| ``...``                       | additional parameters to pass to     |
|                               | ```fread`` <#fread>`__               |
+-------------------------------+--------------------------------------+
