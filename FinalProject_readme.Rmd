---
title: "Block Island Banding Analysis Readme"
author: "Lauren Michael"
date: '`r Sys.Date()`'
output: html_document
---

A simple exploratory analysis of 56 years of bird banding data from Block Island, RI. The goal of this analysis is to begin to answer the question "how has bird abundance changed on Block Island over time?". 

### Technologies Used

-R Studio

### Packages Needed

-Tidyverse
-Lubridate


### Dataframes

#falldataBIBS is all bird banding captures (1968-2016) from September through November of each year at BIBS
falldataBIBS <- read_csv("Combined_Falldata_BIBS.csv")


#BIBS net hour data 1967-2016
BIBSnethours <- read_csv("BIBS_net_hours_1967_2016.csv")

### Description

This script allows you to perform an exploratory analysis of a public, long-term bird banding dataset collected on Block Island. This analysis involves simple time-series figures, boxplots, and barplots to help you visualize how bird abundance has changed on Block Island over time. If you're interested in comparing different species, you can easily swap out the species names in each section to create new facet-wrapped figures. 


For the sake of this project, we only need to use two columns from the dataframe falldataBIBS: BANDING_YEAR (the year each bird was banded) and SPECIES_NAME (the common name of the species of bird that was banded). Additional information about the other columns included in this dataset can be found on the USGS Bird Banding Lab website. 

### AOU Codes

I utilize a few AOU codes in this document. AOU codes are four letter codes used to abreviate bird species. Here are the ones used in this analysis:
GRCA = Gray Catbird
REVI = Red-eyed Vireo
WTSP = White-throated Sparrow
GCKI = Golden-crowned Kinglet
MYWA = Myrtle Warbler
HETH = Hermit Thrush

### Migratory Strategies

Information about migratory strategies for each chosen species was taken from Kamm et al. 2019's recent paper, reference below. 

## References
Kamm, M. D., T. L. Lloyd-Evans, M. Handmaker, and J. M. Reed. 2019. A half-century of changes in migratory landbird numbers along coastal Massachusetts. PLOS ONE 14:1-18. 
