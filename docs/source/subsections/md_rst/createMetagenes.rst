===============
createMetagenes
===============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L4476



===================

Create metagenes

Description
-----------

This function creates an average metagene for gene clusters.

Usage
-----

.. code:: r

   createMetagenes(
     gobject,
     spat_unit = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     gene_clusters,
     name = "metagene",
     return_gobject = TRUE
   )

Arguments
---------

===================== ====================================
Argument              Description
===================== ====================================
``gobject``           Giotto object
``spat_unit``         spatial unit
``expression_values`` expression values to use
``gene_clusters``     numerical vector with genes as names
``name``              name of the metagene results
``return_gobject``    return giotto object
===================== ====================================

Details
-------

An example for the ‘gene_clusters’ could be like this: cluster_vector =
c(1, 1, 2, 2); names(cluster_vector) = c(‘geneA’, ‘geneB’, ‘geneC’,
‘geneD’)

Value
-----

giotto object
