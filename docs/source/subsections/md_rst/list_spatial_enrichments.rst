========================
list_spatial_enrichments
========================

:Date: ymd

``list_spatial_enrichments``
============================

list_spatial_enrichments

Description
-----------

return the available spatial enrichment results

Usage
-----

.. code:: r

   list_spatial_enrichments(gobject, spat_unit = NULL, feat_type = NULL)

Arguments
---------

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``spat_unit`` spatial unit (e.g. “cell”)
``feat_type`` feature type (e.g. “rna”, “dna”, “protein”)
============= ===========================================

Value
-----

names and locations of available data as data.table
