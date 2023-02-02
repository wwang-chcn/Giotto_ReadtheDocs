S4 giottoLargeImage Class
-------------------------

Description
~~~~~~~~~~~

class to handle images too large to load in normally through magick

Slots
~~~~~

``name``
   name of large Giotto image

``raster_object``
   terra raster object

``extent``
   tracks the extent of the raster object. Note that most processes
   should rely on the extent of the raster object instead of this.

``overall_extent``
   terra extent object covering the original extent of image

``scale_factor``
   image scaling relative to spatial locations

``resolution``
   spatial location units covered per pixel

``max_intensity``
   value to set as maximum intensity in color scaling

``min_intensity``
   minimum value found

``is_int``
   values are integers

``file_path``
   file path to the image if given

``OS_platform``
   Operating System to run Giotto analysis on
