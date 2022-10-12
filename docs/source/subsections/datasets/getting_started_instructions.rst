============================
getting_started_instructions
============================

:Date: 2022-10-12

1. How to visualize and save plots in Giotto?
=============================================

| Each Giotto function that creates a plot has 3 important parameters:
| - **show_plot**: to print the plot to the console, default is TRUE
| - **return_plot**: to return the plot as an object, default is TRUE
| - **save_plot**: to automatically save the plot, default is FALSE

These default parameters are automatically stored within the Giotto
object by **createGiottoObject** and are then provided to plotting
functions. To change these parameters, among others, use
**createGiottoInstructions** to specify the changes, then supply the
returned list to the “instructions” argument within
**createGiottoObject**. Alternatively, a named list can be provided to
the “instructions” argument of **createGiottoObject** to specify
parameters.

Besides the three aforementioned plotting parameters,
**createGiottoInstructions** allows the specification of many general
Giotto parameters: a preferred python path, a directory to which plots
and images will be saved, plot size, plot format, etc.

| There are four functions to utilize when setting instructions:
| - **createGiottoInstructions**: creates instructions that can be
  provided to createGiottoObject
| - **showGiottoInstructions**: displays the instructions of a Giotto
  object
| - **changeGiottoInstructions**: replaces 1 or more of the instruction
  parameters (e.g. plotting format)
| - **replaceGiottoInstructions**: replaces all instructions with new
  instructions (e.g after subsetting)

Additionally, plot parameters can always be *manually overwritten*
within the plotting function itself.

Here, we use osmFISH data as an example:

1.1 1. Create Giotto instructions and Giotto object
---------------------------------------------------

| Here, we: - Set show_plot = FALSE to override automatically showing
  plots - Keep return_plot = TRUE to store plots and modify them if
  necessary
| - Set save_plot = TRUE to automatically save each plot

We also specify some other plotting parameters for the automatic saving
functionality.

.. container:: cell

   .. code:: r

      library(Giotto)

      genv_exists = checkGiottoEnvironment()
      if(!genv_exists){
        # The following command need only be run once to install the Giotto environment.
        installGiottoEnvironment()
      }

      # Optional: Specify a Python path. If set to NULL (default), the previously installed
      # Giotto environment will be used.
      my_python_path = NULL # alternatively, "/your/python/path/" if desired.

      # Create instructions to specify your Python path, plot preferences, and
      # save location.

      data_directory = "/path/to/your/data/"
      results_directory = "/path/to/your/results/"

      instrs = createGiottoInstructions(python_path = my_python_path,
                                        show_plot = FALSE,  
                                        return_plot = TRUE,
                                        save_plot = TRUE,
                                        save_dir = results_directory,
                                        plot_format = 'png',
                                        dpi = 200,
                                        height = 9,
                                        width = 9)

1.2 2.Create Giotto object
--------------------------

| To download the data used to create the Giotto Object below, please
  ensure that `wget <https://www.gnu.org/software/wget/?>`__ is
  installed locally. To create the Giotto Object, here we: - Provide an
  expression matrix
| - Provide the cell locations - Provide the previously generated
  instructions file (or an appropriately named list)

.. container:: cell

   .. code:: r

      ## PREPARE osmFISH DATA ####

      # Download dataset 
      getSpatialDataset(dataset = 'osmfish_SS_cortex', directory = data_directory, method = 'wget')

      # Specify path to files
      osm_exprs = paste0(data_directory, "osmFISH_prep_expression.txt")
      osm_locs = paste0(data_directory, "osmFISH_prep_cell_coordinates.txt")
      meta_path = paste0(data_directory, "osmFISH_prep_cell_metadata.txt")

      ## CREATE GIOTTO OBJECT with expression data, location data and instructions
      osm_test <- createGiottoObject(expression = osm_exprs,
                                     spatial_locs = osm_locs,
                                     instructions = instrs)

      ## Add field annotation
      metadata = data.table::fread(file = meta_path)
      osm_test = addCellMetadata(osm_test, new_metadata = metadata,
                                 by_column = T, column_cell_ID = 'CellID')

      # Filter and normalize your data
      osm_test <- filterGiotto(gobject = osm_test, min_det_feats_per_cell = 0)
      osm_test <- normalizeGiotto(gobject = osm_test)

1.3 3. Work with Giotto instructions
------------------------------------

.. container:: cell

   .. code:: r

      # Display the provided Giotto instructions
      showGiottoInstructions(osm_test)

      # Change a previously set parameter, e.g. change dpi = 200 to dpi = 300
      osm_test = changeGiottoInstructions(osm_test, param = 'dpi', new_value = 300)

      # Observe that the instructions have changed
      showGiottoInstructions(osm_test)

1.4 4. Different ways to save a plot
------------------------------------

Here we will show a couple of methods to save plots. Check out
**all_plots_save_function** to access all potential arguments for
save_param. The following examples illustrate:

(1) Saving according to the Giotto instructions (default), if save_plot
    = TRUE (2 & 3) Changing default parameters by providing a named list
    to the save_param parameter
(2) Blocking automatic saving, but modifying and then saving the
    returned ggplot object

.. container:: cell

   .. code:: r

      # 1.Create a plot according to your instructions from the Giotto object (default)
      spatPlot(gobject = osm_test, cell_color = 'ClusterName')

      # 2. Overwrite save_name instruction by providing a named list for save_param
      # save_param takes all parameters of all_plots_save_function
      spatPlot(gobject = osm_test, cell_color = 'ClusterName', save_param = list(save_name = 'mySpatPlot'))

      # 3. Overwrite save_name instruction and add specific subfolder
      # save_folder creates a specific subfolder in save_dir, the instructed save directory.
      spatPlot(gobject = osm_test, 
               cell_color = 'ClusterName', 
               point_size = 1.5,
               save_param = list(save_folder = 'Spatial_Plots', 
                                 save_name = 'original_clusters',
                                 units = 'in', 
                                 base_height = 6, 
                                 base_width = 6))

      # 4. Do not save initially, but instead return as object. Then, modify and save.
      # For example, to create a black background:
      # We can change the parameter 'background_color' to black in the spatPlot function 
      # OR return the ggplot object and change the panel.background to black within theme

      mypl = spatPlot(gobject = osm_test, cell_color = 'ClusterName', save_plot = F)
      mypl = mypl + theme(panel.background = element_rect(fill ='black'),
                          panel.grid = element_blank())
      mypl = mypl + guides(fill = guide_legend(override.aes = list(size=5)))

      # Specify new save location
      spatPlot_folder = paste0(results_directory,'Spatial_Plots/')
      # In case the previous example (3) was not run:
      if(!file.exists(spatPlot_folder)) dir.create(spatPlot_folder, recursive = T)
      # Save plot
      cowplot::save_plot(plot = mypl,
                         filename = 'original_clusters_black.png', 
                         path = spatPlot_folder,
                         device = png(),
                         dpi = 300, 
                         base_height = 10, 
                         base_width = 10)

.. image:: /images/images_pkgdown/getting_started_figs/getting_started_instructions/original_clusters_black.png
   :width: 50.0%
