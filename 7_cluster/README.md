# Hierarchical Cluster

## Analysis
We conducted a hierarchical cluster analysis by defining a dissimilarity measure between pairs of observations using a Euclidean distance and the average linkage method. It was based on five metrics for each state:

#### Data inputs
* cumulative deaths per 100,000 people, 
* maximum percentage of deaths in a week, 
* maximum value of SD in a week,
* epidemiological week when the locational Hoover Index for deaths (HId) became lower than 50, 
* maximum estimated value of the effective reproduction number *(R<sub>t</sub>)* in a week. The *R<sub>t</sub>* (presented in __Table S14__) was extracted from Observatório Covid-19 Brazil ([Observatório Covid-19 Brazil](https://covid19br.github.io/)). 

All data for the analysis is contained in `data/hclust_input.csv`.

The R script `code/Hclust.R` was developed to run the hierarchical cluster analysis.

## Manuscript Output
The results are visualized in  __Fig. 4D__, produced in ArcMap.

__Author:__ Sun Kim conducted the cluster analysis and produced the visualizations. Marcia C. Castro, PhD conceived of the research and supervised the analysis.


### License
The data collected and presented is licensed under the [Creative Commons Attribution 4.0 license](https://creativecommons.org/licenses/by/4.0/), and the underlying code used to format, analyze and display that content is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php).