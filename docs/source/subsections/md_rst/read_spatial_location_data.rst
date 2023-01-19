==========================
read_spatial_location_data
==========================

:Date: 1/19/23

``read_spatial_location_data``
==============================

Read spatial location data

Description
-----------

read spatial locations

Usage
-----

.. code:: r

   read_spatial_location_data(
     gobject,
     spat_loc_list,
     cores = 1,
     provenance = NULL,
     verbose = TRUE
   )

Arguments
---------

================= =================================
Argument          Description
================= =================================
``gobject``       giotto object
``spat_loc_list`` list of spatial locations
``cores``         how many cores to use
``provenance``    provenance information (optional)
``verbose``       be verbose
================= =================================

Value
-----

updated giotto object
