
``createGiottoInstructions``
================================

createGiottoInstructions

Description
-----------

Function to set global instructions for giotto functions

Usage
-----

.. code-block:: r

   createGiottoInstructions(
     python_path = NULL,
     show_plot = NULL,
     return_plot = NULL,
     save_plot = NULL,
     save_dir = NULL,
     plot_format = NULL,
     dpi = NULL,
     units = NULL,
     height = NULL,
     width = NULL,
     is_docker = FALSE
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``python_path``
     - path to python binary to use
   * - ``show_plot``
     - print plot to console, default = TRUE
   * - ``return_plot``
     - return plot as object, default = TRUE
   * - ``save_plot``
     - automatically save plot, dafault = FALSE
   * - ``save_dir``
     - path to directory where to save plots
   * - ``plot_format``
     - format of plots (defaults to png)
   * - ``dpi``
     - resolution for raster images
   * - ``units``
     - units of format (defaults to in)
   * - ``height``
     - height of plots
   * - ``width``
     - width of  plots
   * - ``is_docker``
     - using docker implementation of Giotto (defaults to FALSE)


Details
-------

This is a simple guide to help explain the different Giotto instructions:
-------------------------------------------------------------------------


* 
  Instructions can be set at the beginning of each workflow with `\ ``createGiottoInstructions`` <#creategiottoinstructions>`_    

* 
  The provided instructions for a giotto object can be viewed with `\ ``showGiottoInstructions`` <#showgiottoinstructions>`_   

* 
  One or more parameters can be changed with `\ ``changeGiottoInstructions`` <#changegiottoinstructions>`_    

* 
  All instructions can be replaced with the `\ ``replaceGiottoInstructions`` <#replacegiottoinstructions>`_ function  

The following list of parameters can be provided to save_param:
---------------------------------------------------------------


* 
  python_path: here you can provide the path to your custom python binary (only at beginning of script)   

* 
  show_plot: TRUE or FALSE, show the plot to the console  

* 
  return_plot: TRUE or FALSE, return the ggplot object (e.g. to further modify or save the plot)  

* 
  save_plot: TRUE or FALSE, automatically save the plot to your designated save_dir   

* 
  save_dir: directory to save the plot to  

* 
  plot_format: default picture format to use, default is .png  

* 
  dpi: default dpi for each plot if plot is in raster format  

* 
  units: default plotting units (e.g. in)  

* 
  height: default height of plot  

* 
  width: default width of plot  

  #' Specific saving instructions can also be directly provided for each plotting function.
  See `\ ``showSaveParameters`` <#showsaveparameters>`_ for more details

Value
-----

named vector with giotto instructions

Seealso
-------

More online information can be found here `https://rubd.github.io/Giotto_site/articles/instructions_and_plotting.html <https://rubd.github.io/Giotto_site/articles/instructions_and_plotting.html>`_

Examples
--------

.. code-block:: r

   instructions <- createGiottoInstruction(python_path = '/path/to/python',
   save_plot = TRUE,
   save_dir = '/path/to/working/dir')


   giotto_object <- createGiottoObject(raw_exprs = '/path/to/expression/matrix',
   spatial_locs = '/path/to/spatial/locations',
   instructions = instructions)
