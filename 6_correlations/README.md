# Correlations

## Analysis

We calculate the Pearson correlation coefficient to assess the strength of association between 9 variables for Brazil and each states, by epidemiological week. (R script `code/Correlations.R` uses data found in the `data` folder to calculate the coefficients and produces correlation matrices for each state.)


The variables are as follows:

1.	Social Distancing Policy Stringency (SDPS) Index (named as Stringency Index (STR) in __Fig. 4C__, for simplicity) – __Table S9__
2.	Containment Index (CTN) – __Table S10__
3.	Social Distancing Index (SD) – __Table S11__
4.	Locational Hoover Index for cases (HIc) – __Table S6__
5.	Locational Hoover Index for deaths (HId) – __Table S7__
6.	Percentage of cases in each epidemiological week (PCTc) – __Table S12__
7.	Percentage of deaths in each epidemiological week (PCTd) – __Table S13__
8.	Normalized distance by which the national geographical center of cases shifted in each week (DSTc). Distances were normalized to vary between 0 and 100 – original distances are in __Table S4__
9. Normalized distance by which the national geographical center of deaths shifted in each week (DSTd). Distances were normalized to vary between 0 and 100 – original distances are in __Table S5__




## Manuscript Output
The output of this R script is __Fig. 4C__:`Figure/figure4`, (for Brazil) and __Fig. S3__ (each of the 27 states/Federal District). __Table S8__ presents the summary of the findings by state.


__Author:__ Sun Kim calculated the correlation analysis and produced the visualizations with guidance from Marcia C. Castro, PhD.



### License
The data collected and presented is licensed under the [Creative Commons Attribution 4.0 license](https://creativecommons.org/licenses/by/4.0/), and the underlying code used to format, analyze and display that content is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php).