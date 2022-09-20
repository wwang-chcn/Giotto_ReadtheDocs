=====
depth
=====

:Date: 2022-09-20

``depth``
=========

Find depth of subnesting

Description
-----------

Determines how many max or min layers of subnesting there is, with the
end object (defined by param sig or a list of length 0) being layer 0

Usage
-----

.. code:: r

   depth(this, method = c("max", "min"), sig = "data.frame")

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``this``                      | object to evaluate                   |
+-------------------------------+--------------------------------------+
| ``method``                    | max (default) or min nesting to      |
|                               | detect                               |
+-------------------------------+--------------------------------------+
| ``sig``                       | signature or class to check for.     |
|                               | Default is ‘data.frame’              |
+-------------------------------+--------------------------------------+

Details
-------

https://stackoverflow.com/questions/13432863/determine-level-of-nesting-in-r
