
``select_dimReduction``
===========================

select_dimReduction

Description
-----------

Creates an object that stores a dimension reduction output

Usage
-----

.. code-block:: r

   select_dimReduction(
     gobject,
     reduction = c("cells", "genes"),
     reduction_method = c("pca", "umap", "tsne"),
     name = "pca",
     return_dimObj = FALSE
   )

Value
-----

dim reduction coordinates (default) or dim reduction object
