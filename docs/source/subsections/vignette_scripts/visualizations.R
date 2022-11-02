library(Giotto)

# Specify path from which data may be retrieved/stored
data_directory = paste0(getwd(),'/gobject_visual_data/')
# alternatively, "/path/to/where/the/data/lives/"

# Specify path to which results may be saved
results_directory = paste0(getwd(),'/gobject_visual_results/')
# alternatively, "/path/to/store/the/results/"

# Ensure Giotto environment lives local to the machine
genv_exists = checkGiottoEnvironment()
if(!genv_exists){
  # The following command need only be run once to install the Giotto environment.
  installGiottoEnvironment()
}

# Optional: Specify a path to a Python executable within a conda or miniconda
# environment. If set to NULL (default), the Python executable within the previously
# installed Giotto environment will be used.
my_python_path = NULL # alternatively, "/local/python/path/python" if desired.

# Get the dataset
getSpatialDataset(dataset = 'merfish_preoptic', directory = data_directory, method = 'wget')

### Giotto instructions and data preparation
# Optional: Set Giotto instructions
instrs = createGiottoInstructions(save_plot = TRUE,
                                  show_plot = TRUE,
                                  save_dir = results_directory,
                                  python_path = my_python_path)

# Create file paths to feed data into Giotto object
expr_path = paste0(data_directory, "merFISH_3D_data_expression.txt.gz")
loc_path = paste0(data_directory, "merFISH_3D_data_cell_locations.txt")
meta_path = paste0(data_directory, "merFISH_3D_metadata.txt")

### Create Giotto object
testobj <- createGiottoObject(expression = expr_path,
                              spatial_locs = loc_path,
                              instructions = instrs)


# Add additional metadata
metadata = data.table::fread(meta_path)

testobj = addCellMetadata(testobj,
                          new_metadata = metadata$layer_ID,
                          vector_name = 'layer_ID')

testobj = addCellMetadata(testobj,
                          new_metadata = metadata$orig_cell_types,
                          vector_name = 'orig_cell_types')

### Process the Giotto Object
# Note that for the purposes of this tutorial, the entire dataset will be visualized.
# Thus, filter parameters are set to 0, so as to not remove any cells.
# Note that since adjustment is not required, adjust_params is set to NULL.

testobj <- processGiotto(testobj,
                         filter_params = list(expression_threshold = 0,
                                              feat_det_in_min_cells = 0,
                                              min_det_feats_per_cell = 0),
                         norm_params = list(norm_methods = 'standard',
                                            scale_feats = TRUE,
                                            scalefactor = 1000),
                         stat_params = list(expression_values = 'normalized'),
                         adjust_params = NULL)

# 2D
spatPlot(gobject = testobj, point_size = 1.5)
# 3D
spatPlot3D(gobject = testobj, point_size = 1, axis_scale = 'real')

# Run PCA
testobj <- runPCA(gobject = testobj, feats_to_use = NULL, scale_unit = FALSE, center = TRUE)
# Run UMAP
testobj <- runUMAP(gobject = testobj, dimensions_to_use = 1:8, n_components = 3, n_threads = 4)
# Plot UMAP in 2D
plotUMAP_2D(gobject = testobj, point_size = 1.5)
# Plot UMAP 3D
plotUMAP_3D(gobject = testobj, point_size = 1.5)

# Create a k Nearest Network for clustering
testobj <- createNearestNetwork(gobject = testobj, dimensions_to_use = 1:8, k = 10)

# Preform Leiden clustering
testobj <- doLeidenCluster(gobject = testobj,
                           resolution = 0.25,
                           n_iterations = 200,
                           name = 'leiden_0.25.200')

# Plot the clusters upon the UMAP
plotUMAP_3D(gobject = testobj, cell_color = 'leiden_0.25.200', point_size = 1.5,
            show_center_label = F, save_param = list(save_name = 'leiden_0.25.200_UMAP_3D'))

spatPlot2D(gobject = testobj,
           point_size = 1.0,
           cell_color = 'leiden_0.25.200',
           group_by = 'layer_ID',
           cow_n_col = 2,
           group_by_subset = c(260, 160, 60, -40, -140, -240))

# Plot cell_color as a representation of the number of features/ cell ("nr_feats")
spatPlot2D(gobject = testobj, point_size = 1.5,
           cell_color = 'nr_feats', color_as_factor = F,
           group_by = 'layer_ID', cow_n_col = 2, group_by_subset = c(260, 160, 60, -40, -140, -240))

# Plot a heatmap of clusters
showClusterHeatmap(gobject = testobj, cluster_column = 'leiden_0.25.200', save_plot = T)

# Plot a dendogram to explore cluster similarity
showClusterDendrogram(testobj, h = 0.5, rotate = T, cluster_column = 'leiden_0.25.200')

markers = findMarkers_one_vs_all(gobject = testobj,
                                 method = 'gini',
                                 expression_values = 'normalized',
                                 cluster_column = 'leiden_0.25.200',
                                 min_feats = 1, rank_score = 2)
markers[, head(.SD, 2), by = 'cluster']

# Create a violinplot
topgini_genes = unique(markers[, head(.SD, 2), by = 'cluster']$feats)
violinPlot(testobj, feats = topgini_genes, cluster_column = 'leiden_0.25.200', strip_position = 'right')

# Create a heatmap of top gini genes by cluster
plotMetaDataHeatmap(testobj, expression_values = 'scaled',
                    metadata_cols = c('leiden_0.25.200'),
                    selected_feats = topgini_genes)

# Plot the UMAP, annotated by cell type.
plotUMAP_3D(testobj,
            cell_color = 'orig_cell_types',
            save_param = list(save_name = 'Original_Cell_Types_UMAP_3D'))

# Manually assign Leiden clusters to a cell type
cluster_range = unique(testobj@cell_metadata$cell$rna$leiden_0.25.200)

# Note that cell types were condensed (i.e. "Endothelial 1", "Endothelial 2", ... were
# combined into one cell type "Endothelial")
manual_cluster = c('Inhibitory', 'Excitatory', 'Inhibitory', 'Astrocyte', 'OD Mature',
                   'Endothelial', 'Microglia', 'OD Mature', 'OD Immature', 'Astrocyte',
                   'Ependymal', 'Pericytes', 'Ambiguous', 'Microglia', 'Inhibitory', 'Inhibitory')

names(manual_cluster) = as.character(sort(cluster_range))

testobj = annotateGiotto(gobject = testobj,
                         annotation_vector = manual_cluster,
                         cluster_column = 'leiden_0.25.200',
                         name = 'cell_types')

cell_types_in_plot = c('Inhibitory', 'Excitatory','OD Mature', 'OD Immature',
                       'Astrocyte', 'Microglia', 'Ependymal','Endothelial',
                       'Pericytes', 'Ambiguous')

# This Giotto function will provide a distinct color palette. Colors
# may change each time the function is run.
mycolorcode = getDistinctColors(length(cell_types_in_plot))

names(mycolorcode) = cell_types_in_plot

# Visualize the assigned types in the UMAP
plotUMAP_3D(testobj, cell_color = 'cell_types', point_size = 1.5,
            cell_color_code = mycolorcode,
            save_param = list(save_name = 'manual_cluster_typing_UMAP_3D'))

spatPlot2D(gobject = testobj, point_size = 1.0,
          cell_color = 'cell_types', group_by = 'layer_ID',
          cell_color_code = mycolorcode, cow_n_col = 2,
          group_by_subset = c(seq(260, -290, -100)))

spatPlot3D(testobj,
           cell_color = 'cell_types', axis_scale = 'real',
           sdimx = 'sdimx', sdimy = 'sdimy', sdimz = 'sdimz',
           show_grid = F, cell_color_code = mycolorcode)

spatPlot2D(gobject = testobj, point_size = 1.0,
           cell_color = 'cell_types', cell_color_code = mycolorcode,
           select_cell_groups = c('Microglia', 'Ependymal', 'Endothelial'), show_other_cells = F,
           group_by = 'layer_ID', cow_n_col = 2, group_by_subset = c(seq(260, -290, -100)))

spatPlot3D(testobj,
           cell_color = 'cell_types', axis_scale = 'real',
           sdimx = 'sdimx', sdimy = 'sdimy', sdimz = 'sdimz',
           show_grid = F, cell_color_code = mycolorcode,
           select_cell_groups = c('Microglia', 'Ependymal', 'Endothelial'), show_other_cells = F)

### Spatial Networks
# The following fuction provides insight to the Delaunay Network. It has been
# omitted graphically for the sake of this tutorial, but will be shown in-console
# if this command is run.
plotStatDelaunayNetwork(gobject= testobj,
                        method = 'delaunayn_geometry',
                        maximum_distance = 50,
                        show_plot = T,
                        save_plot = F)

# Create Spatial Network using Delaunay geometry
testobj = createSpatialNetwork(gobject = testobj,
                               delaunay_method = 'delaunayn_geometry',
                               minimum_k = 2,
                               maximum_distance_delaunay = 50)

# Create Spatial Networks using k-nearest neighbor with varying specifications
testobj <- createSpatialNetwork(gobject = testobj,
                                method = 'kNN',
                                k = 5,
                                name = 'spatial_network')

testobj <- createSpatialNetwork(gobject = testobj,
                                method = 'kNN',
                                k = 10,
                                name = 'large_network')

testobj <- createSpatialNetwork(gobject = testobj,
                                method = 'kNN',
                                k = 100,
                                maximum_distance_knn = 200,
                                minimum_k = 2,
                                name = 'distance_network')

# Now, visualize the different spatial networks in one layer of the dataset
# Here layer 260 is selected, and only high expressing cells are included
cell_metadata = pDataDT(testobj)
highexp_ids = cell_metadata[layer_ID==260][total_expr>=100]$cell_ID
subtestobj = subsetGiotto(testobj, cell_ids = highexp_ids)

# Re-annotate the subset Giotto Object
subtestobj = annotateGiotto(gobject = subtestobj,
                            annotation_vector = manual_cluster,
                            cluster_column = 'leiden_0.25.200',
                            name = 'cell_types')

spatPlot(gobject = subtestobj, show_network = T,
         network_color = 'blue', spatial_network_name = 'Delaunay_network',
         point_size = 1.5, cell_color = 'cell_types',
         save_param = list(save_name = 'Delaunay_network_spatPlot'))

spatPlot(gobject = subtestobj, show_network = T,
         network_color = 'blue', spatial_network_name = 'spatial_network',
         point_size = 2.5, cell_color = 'cell_types',
         save_param = list(save_name = 'spatial_network_spatPlot'))

spatPlot(gobject = subtestobj, show_network = T,
         network_color = 'blue', spatial_network_name = 'large_network',
         point_size = 2.5, cell_color = 'cell_types',
         save_param = list(save_name = 'large_network_spatPlot'))

spatPlot(gobject = subtestobj, show_network = T,
         network_color = 'blue', spatial_network_name = 'distance_network',
         point_size = 2.5, cell_color = 'cell_types',
         save_param = list(save_name = 'distance_network_spatPlot'))