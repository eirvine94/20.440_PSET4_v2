#
# Author: Edward B. Irvine
# 
# Description:
# First examination of scRNAseq data from Darrah...Seder Nature 2020.
#
# Date created: 3/30/21
#
# Date last updated: 3/30/21
#

##################
##### Housekeeping ------------------------------------------------------------------------------------------------------------------------------
##################

# Load required libraries
library(Seurat)

# Load data
sample_data <- read.csv("Data/xbg.csv", row.names = 1, header = TRUE)










######################
##### Pre-process data -------------------------------------------------------------------------------------------------------------------------
######################

# Initialize Seurat object
sample_seurat <- CreateSeuratObject(counts = sample_data, 
                                         project = "20440_project", 
                                         min.features = 200,
                                         min.cells = 10) 

# Look at summary statistics
sample_seurat

# Make copy of Seurat object just in case
sample_seurat_copy <- sample_seurat










######################
##### Generate QC Plot -------------------------------------------------------------------------------------------------------------------------
######################

### Visualize QC metrics as violin plots
# nFeature_RNA = number of genes in each cell
# nCount_RNA = number of UMI counts in each cell
tiff("Plots/QC_Plot.tiff", units = "in", width = 18.79, height = 6.25, res = 300)
VlnPlot(object = sample_seurat, features = c("nFeature_RNA", "nCount_RNA"), ncol = 2)
dev.off()



