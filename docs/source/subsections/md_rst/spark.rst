=====
spark
=====

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L2254


.. role:: raw-latex(raw)
   :format: latex
..

Description
===========

Compute spatially expressed genes with SPARK method

Usage
=====

.. code:: r

   spark(
     gobject,
     spat_loc_name = "raw",
     feat_type = NULL,
     spat_unit = NULL,
     percentage = 0.1,
     min_count = 10,
     expression_values = "raw",
     num_core = 5,
     covariates = NULL,
     return_object = c("data.table", "spark"),
     ...
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name for spatial locations           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``percentage``                | The percentage of cells that are     |
|                               | expressed for analysis               |
+-------------------------------+--------------------------------------+
| ``min_count``                 | minimum number of counts for a gene  |
|                               | to be included                       |
+-------------------------------+--------------------------------------+
| ``expression_values``         | type of values to use (raw by        |
|                               | default)                             |
+-------------------------------+--------------------------------------+
| ``num_core``                  | number of cores to use               |
+-------------------------------+--------------------------------------+
| ``covariates``                | The covariates in experiments,       |
|                               | i.e.Â confounding factors/batch       |
|                               | effect. Column name of giotto cell   |
|                               | metadata.                            |
+-------------------------------+--------------------------------------+
| ``return_object``             | type of result to return (data.table |
|                               | or spark object)                     |
+-------------------------------+--------------------------------------+
| ``list()``                    | Additional parameters to the         |
|                               | ```spark.vc`` <#spark.vc>`__         |
|                               | function                             |
+-------------------------------+--------------------------------------+

Details
=======

This function is a wrapper for the method implemented in the SPARK
package:

-  list(â€œ1. CreateSPARKObjectâ€) list(â€œcreate a SPARK object from a
   Giotto objectâ€)

-  list(â€œ2. spark.vcâ€) list(â€ Fits the count-based spatial model to
   estimate the parameters,:raw-latex:`\n`â€œ,â€ see â€œ,
   list(list(â€spark.vcâ€)), â€ for additional parametersâ€)

-  | list(â€œ3. spark.testâ€) list(â€ Testing multiple kernel matricesâ€)
   | Publication: c(â€œ\\Sexpr[results=rd]{tools:::Rd_expr_doi("#1")}â€,
     â€œ10.1101/810903â€) list(â€œtools:::Rd_expr_doi("10.1101/810903")â€)

Value
=====

data.table with SPARK spatial genes results or the SPARK object
