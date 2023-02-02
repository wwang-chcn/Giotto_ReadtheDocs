Add sub cellular 3D coordinates to Giotto object
------------------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1351
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Add sub cellular 3D coordinates to Giotto object

Usage
~~~~~

::

   addGiottoPoints3D(gobject, coords, feat_type = "rna")

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | A Giotto object.                  |
+-----------------------------------+-----------------------------------+
| ``coords``                        | A data.frame or 'spatVector' with |
|                                   | at least xyz coordinates and      |
|                                   | feature ids.                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | a character. The feat_type must   |
|                                   | previously exist in the Giotto    |
|                                   | object. Default = "rna".          |
+-----------------------------------+-----------------------------------+

Value
~~~~~

A Giotto object with a 'spatVector' object in the feat_info slot
