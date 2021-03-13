# Spatiotemporal

## Analysis
We analyzed  spatiotemporal clusters (the duration as well as the location of clusters) of daily cases and deaths of COVID-19 across Brazilian municipalities. The spatiotemporal analyses were conducted in [SaTScan](https://www.satscan.org/) using data found in `1_Spatiotemporal/data/`

__SaTScan Software__: For information about SaTScan please see the [Official user guide](https://www.satscan.org/cgi-bin/satscan/register.pl/SaTScan_Users_Guide.pdf?todo=process_userguide_download) 

### Guidance
The following specifications were used in SaTScan to conduct the spatiotemporal analysis.


__Input tab__  
* Case file: `Daily.Cases.Deaths.csv`  
* Population file: `Population.csv` 
* Coordinates file: `Coordinates.dbf` (Lat/Long)  
* Time precision: Day  
* Study Period: 02/25/2020 ~ 10/10/2020  

__Analysis tab__  
* Type of analysis: Space-Time (retrospective analysis)  
* Probability model: Poisson  
* Scan For Areas with: high rates
* Time aggregation: 1 day
* Advanced:  
    * _Spatial window:_ Maximum spatial cluster size – 5 percent of the population at risk
    * _Temporal window:_ Maximum temporal cluster size – 6 percent of the study period
    * _Cluster restrictions:_ Minimum number of cases – 120 (for deaths)

__Output tab__  
* Text output format  
    * _Main results file_ – choose directory and filename to save  
* Geographical output: Shapefile for GIS software  
* Column Output Format: cluster information, stratified cluster information etc. – check all for dBase  
    * Using these outputs, mapping was done using ArcMap


## Manuscript Output
The cluster information produced in SaTScan was then used to generate __Fig. 1C__ and __Fig. 1D__ (`/figure/Figure1`) in ArcMap v 10.6.1.

__Tables S2 and S3__ present the estimated relative risk for each cylindrical window, representing the ratio of the risk within the window to the risk outside the window.

__Author:__ Sun Kim conducted the SaTScan analysis as described above. Marcia C. Castro conceptualized and supervised the research.

### License
The data collected and presented is licensed under the [Creative Commons Attribution 4.0 license](https://creativecommons.org/licenses/by/4.0/), and the underlying code used to format, analyze and display that content is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php).