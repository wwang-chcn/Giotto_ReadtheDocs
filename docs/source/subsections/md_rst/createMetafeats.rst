===============
createMetafeats
===============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3574


Description
===========

This function creates an average metafeat/metagene/module for clusters.

Usage
=====

.. code:: r

   createMetafeats(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feat_clusters,
     name = "metafeat",
     return_gobject = TRUE
   )

Arguments
=========

===================== =======================================
Argument              Description
===================== =======================================
``gobject``           Giotto object
``spat_unit``         spatial unit
``feat_type``         feature type
``expression_values`` expression values to use
``feat_clusters``     numerical vector with features as names
``name``              name of the metagene results
``return_gobject``    return giotto object
===================== =======================================

Details
=======

An example for the ‘gene_clusters’ could be like this: cluster_vector =
c(1, 1, 2, 2); names(cluster_vector) = c(‘geneA’, ‘geneB’, ‘geneC’,
‘geneD’)

Value
=====

giotto object
