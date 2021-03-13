# Locational Hoover Index


## Analysis
We assessed the progressive spread of COVID-19 cases and deaths using the locational Hoover index, a measure of the spatial imbalance between any two variables across a geographical area.

### Calculations
The index is calculated as:

<img src = "https://user-images.githubusercontent.com/43140693/111040876-6178b100-8403-11eb-960a-4d8f0f4950d7.png" width = "400px">


*Where:* *H<sub>st</sub>* is the index in state *s* at the end of the period *t*, *p<sub>ist</sub>* is the population of municipality *i* in state *s* at the end of the period *t*, and *a<sub>ist</sub>* is the number of COVID-19 cases (or deaths) in municipality *i* in state *s* at the end of the period *t*. 

__Interpretation:__ Therefore, the locational Hoover index represents any given municipality’s proportion of the overall population of the state to its relative proportion of COVID-19 cases or deaths within a specified period<sup>1</sup>. The index ranges from 0 (zero) to 100 (%), such that higher values indicate more imbalanced distributions (or concentration of events in a few municipalities), while lower values indicate more balanced distributions (or spread of events). 

__Reference(s):__  
1. G. M. Steeves, F. C. Petterini, G. V. Moura, The interiorization of Brazilian violence, policing, and economic growth. *EconomiA* 16, 359-375 (2015).

__Data:__ The inputs for this analysis are:
- Population - `Population.csv`  - 2020 population by municipality

- Case and Death data - `Weekly.Cases.Deaths.csv` - Daily cases and deaths by municipality

The R script `code/Hoover.R` calculates the locational Hoover Index for COVID-19 cases and deaths for Brazil and each state by epidemiological week.


## Manuscript Output
The output of this code is: __Tables S6 and S7__. The temporal trend across epidemological weeks is visualized in __Fig. 3A__ `/figure/Figure3`

__Fig. 3C__ and __Fig. 3D__ (`/figure/Figure3`) are bivariate choropleth maps of the index for cases and deaths for the first week states had epideomiologcal data __Fig. 3C__ and epidemiological week 41 - the last week of analysis __Fig. 3D__. These maps were created in ArcMap. The creation of these maps is explained, but script for reproduction is not included in this repository. ArcMap project files may be available upon request.

__Author:__ Sun Kim calculated the locational Hoover index. Marcia C. Castro, PhD concieved of the analysis and supervised the research.


### License
The data collected and presented is licensed under the [Creative Commons Attribution 4.0 license](https://creativecommons.org/licenses/by/4.0/), and the underlying code used to format, analyze and display that content is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php).
