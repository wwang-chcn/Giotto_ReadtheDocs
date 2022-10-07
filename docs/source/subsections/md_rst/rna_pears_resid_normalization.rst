=============================
rna_pears_resid_normalization
=============================

:Date: 2022-10-06

Description
===========

function for RNA normalization according to Lause/Kobak et al paper
Adapted from
https://gist.github.com/hypercompetent/51a3c428745e1c06d826d76c3671797c#file-pearson_residuals-r

Usage
=====

.. code:: r

   rna_pears_resid_normalization(
     gobject,
     raw_expr,
     feat_type,
     spat_unit,
     theta = 100,
     name = "scaled",
     verbose = TRUE
   )
