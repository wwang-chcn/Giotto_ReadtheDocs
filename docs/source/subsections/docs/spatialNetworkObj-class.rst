S4 spatialNetworkObj Class
--------------------------

Description
~~~~~~~~~~~

Framework to store spatial network information

Details
~~~~~~~

The generic access operators work with the data within the ``networkDT``
slot (filtered).

Slots
~~~~~

``name``
   name of spatialNetworkObj

``method``
   method used to generate spatial network

``parameters``
   additional method-specific parameters used during spatial network
   generation

``outputObj``
   network geometry object

``networkDT``
   data.table of network connections, distances, and weightings

``networkDT_before_filter``
   unfiltered data.table of network connections, distances, and
   weightings

``cellShapeObj``
   network cell shape information

``crossSectionObjects``
   crossSectionObjects (see ``create_crossSection_object``)

``spat_unit``
   spatial unit tag

``provenance``
   origin of aggregated information (if applicable)

``misc``
   misc
