======================
get_spatial_enrichment
======================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2050



==========================

Get spatial enrichment

Description
-----------

Function to get a spatial enrichment data.table

Usage
-----

.. code:: r

   get_spatial_enrichment(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     enrichm_name = "DWLS",
     output = c("spatEnrObj", "data.table"),
     copy_obj = TRUE,
     set_defaults = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``enrichm_name``              | name of spatial enrichment results.  |
|                               | Default â€œDWLSâ€                       |
+-------------------------------+--------------------------------------+
| ``output``                    | what format in which to get          |
|                               | information (e.g.Â â€œdata.tableâ€)      |
+-------------------------------+--------------------------------------+
| ``copy_obj``                  | whether to deep copy/duplicate when  |
|                               | getting the object (default = TRUE)  |
|                               | expression and spat_info are not     |
|                               | expected to exist.                   |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Value
-----

data.table with fractions

Seealso
-------

Other spatial enrichment data accessor functions:
```set_spatial_enrichment`` <#setspatialenrichment>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_multiomics`` <#getmultiomics>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
