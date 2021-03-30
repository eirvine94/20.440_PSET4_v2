
Author: Edward B. Irvine





Overview:
This repo contains the data, code, and output from a preliminary quality control analysis of scRNAseq data derived from the bronchoalveolar lavage (BAL) of BCG vaccinated rhesus macaques.










Data:
Overview -- scRNAseq data derived from the BAL of animals that received either no vaccination, ID BCG vaccination, or IV BCG vaccination.

Original manuscript -- Darrah...Seder. Prevention of tuberculosis in macaques after intravenous BCG immunization. Nature 2020 (PMC7015856)

Available on GEO -- https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE139598 

xbg.csv -- Week 13 data were subseted into chunks of n = 1000 cells. This file represents the final data chunk ~700 cells. This was done to allow the more facile establishment of our computational pipeline.










Folder structure:
Data -- csv file contining chunk of scRNAseq data

Plots -- QC plot as tiff file

Scripts -- R file containing code necessary to run analysis










Installation:
This analysis should be performed in R. Run the First_Pass.R file to peform the analysis. QC_Plot.tiff will subsequently be located in Plots folder.

Requires Seurat version 3.1.5






