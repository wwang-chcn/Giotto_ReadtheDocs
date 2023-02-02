Basic class for classes with spatial information
------------------------------------------------

Description
~~~~~~~~~~~

Classes that inherit from this class will contain a spat_unit slot that
describes which spatial unit the data belongs to. This is most relevant
to aggregated information. Subcellular information such as poly data in
``spatial_info`` slot essentially define their own spatial units. Within
slots that deal with classes that contain spatData, there is a nesting
structure that first nests by spatial unit.
