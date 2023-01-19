==============
featData-class
==============

:Date: 1/19/23

``featData-class``
==================

Basic class for classes with feature information

Description
-----------

Features in Giotto are a blanket term for any features that are
detected, covering modalities such as, but not limited to rna, protein,
ATAC, and even QC probes. Classes that inherit from this class will
contain a feat_type slot that describes which feature type the data is.
Within slots that deal with classes that contain featData, there is a
nesting structure that usually first nests by spatial unit and then by
feature type
