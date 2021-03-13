# Social Distancing Index

## Analysis
We obtained a measure of social isolation, __Social Distancing Index - SD__, from [In Loco](https://mapabrasileirodacovid.inloco.com.br/pt/), based on anonymized locational data from over 60 million mobile devices. The index is calculated daily, as the percentage of individuals staying at home, i.e., within a radius of 450 meters of the location estimated to be their home. The home location was defined by the frequency of nighttime signals.

We used the daily state-level data to obtain weekly information, (using the epidemiological week as temporal reference) by calculating averages. We also calculated an aggregated index for Brazil by taking a weighted average of state-level indices, weighted by the 2020 population estimates obtained from the [Brazilian Institute of Geography and Statistics](https://www.ibge.gov.br/estatisticas/sociais/populacao/9103-estimativas-de-populacao.html?=&t=o-que-eb).

[GooCOVID-19 Community Mobility Reports](https://www.google.com/covid19/mobility/) includes six mobility sub-indices: retail and recreation, grocery and pharmacy, parks, transit stations, workplaces, and residential.

We used Ordinary Least Squares (OLS) to model the weekly In Loco’s SD across states using Google’s six sub-indices between epidemiological weeks 9 and 41.

__Data:__ The Social Distancing Index dataset is presented in the Correlations' data folder: `6_correlations/data/social-distancing.csv`


### License
The data collected and presented is licensed under the [Creative Commons Attribution 4.0 license](https://creativecommons.org/licenses/by/4.0/), and the underlying code used to format, analyze and display that content is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php).