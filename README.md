# Spatiotemporal pattern of COVID-19 spread in Brazil 
 
 ![Nation_cases_centroids.gif](2_geographic_center/gif/Nation_cases_centroids.gif)
 
 # Introduction
Here we provide the data and pipeline for:  **Spatiotemporal pattern of COVID-19 spread in Brazil**

### Citation

> Castro M C, Kim S, Barbeira L, et al. Spatiotemporal pattern of COVID-19 spread in Brazil. *In press*.


# Abstract

Brazil has been severely hit by COVID-19, with rapid spatial spread of both cases and deaths. We use daily data on reported cases and deaths to understand, measure, and compare the spatiotemporal pattern of the spread across municipalities. Indicators of clustering, trajectories, speed, and intensity of the movement of COVID-19 to interior areas, combined with indices of policy measures show that while no single narrative explains the diversity in the spread, an overall failure of implementing prompt, coordinated, and equitable responses in a context of stark local inequalities fueled disease spread. This resulted in high and unequal infection and mortality burdens. With a current surge in cases and deaths and several variants of concern in circulation, failure to mitigate the spread could further aggravate the burden.

__One Sentence Summary:__ The spread of COVID-19 cases and deaths in Brazil exposes the failure to control the epidemic resulting in a high and unequal burden across the country.

![Figure 1](figures/Figure1.png "Figure 1")

__Figure 1__ *Cumulative number of COVID-19 cases (A) and deaths (B) per 100,000 people by municipality. Dark lines on the maps show state boundaries. State acronyms by region, North: AC=Acre, AP=Amapá, AM=Amazonas, PA=Pará, RO=Rondônia, RR=Roraima, and TO=Tocantins; Northeast: AL=Alagoas, BA=Bahia, CE=Ceará, MA=Maranhão, PB=Paraíba, PE=Pernambuco, PI=Piauí, RN=Rio Grande do Norte, and SE=Sergipe; Center-west: DF=Distrito Federal, GO=Goiás, MT=Mato Grosso, and MS=Mato Grosso do Sul; Southeast: ES=Espírito Santo; MG=Minas Gerais; RJ=Rio de Janeiro; and SP=São Paulo; South: PR=Paraná; RS=Rio Grande do Sul; and SC=Santa Catarina. Spatiotemporal clustering of cases (C) and deaths (D) across Brazilian municipalities. Color and number codes in the clusters and the table on the left are the same, and the table indicates the interval during which each cluster was statistically significant. Clusters were assessed with the space-time scan statistic (see supplementary materials).*

# Organization
We have organized this repo by method. Within each of the methods folders are separate `code`, `data`, and `README.md` files. For additional information see the `README.md` files for each method: 
- `1_spatiotemporal`  — the spatiotemporal clusters analysis.
- `2_geographical_center`  — the geographical center analysis. (Includes supplementary .gif files)
- `3_hoover` —  the Locational Hoover Index.
- `4_policy_response ` - the policy response indicators
- `5_social_distancing ` - the social distancing index
- `6_correlations` — the Pearson correlations
- `7_cluster` - the hierarchical cluster analysis
- `Figures` - All figures from the main document 


# Correspondence
For any issues with anonymization or major issues with the functionality of the script please [create an issue](https://github.com/mcastrolab/Brazil_Covid19_spatiotemporal/issues).

## License
The data collected and presented is licensed under the [Creative Commons Attribution 4.0 license](https://creativecommons.org/licenses/by/4.0/), and the underlying code used to format, analyze and display that content is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php). 


# Authors


- __Marcia C Castro__: Department of Global Health and Population, Harvard TH Chan School of Public Health | ![Twitter](http://i.imgur.com/wWzX9uB.png): [\@marciacastrorj](https://twitter.com/marciacastrorj))
- __Sun Kim__: Department of Global Health and Population, Harvard TH Chan School of Public Health | ![Twitter](http://i.imgur.com/wWzX9uB.png): [\@SunKim0710](https://twitter.com/SunKim0710)) 
- __Lorena Barberia__: Department of Political Science, University of São Paulo (USP), Sao Paulo, SO, Brazil | ![Twitter](http://i.imgur.com/wWzX9uB.png): [\@lorenagbarberia](https://twitter.com/lorenagbarberia)) 
- __Ana Freitas Ribeiro__: Universidade Nove de Julho, São Paulo, SP, Brazil; Universidade Municipal de São Caetano do Sul, São Cetano do Sul, SP, Brazil.
- __Susie Gurzenda__: Department of Global Health and Population, Harvard TH Chan School of Public Health | ![Twitter](http://i.imgur.com/wWzX9uB.png): [\@susiegurzenda](https://twitter.com/susiegurzenda))
- __Karina Braga Ribeiro__: Faculdade de Ciências Médicas da Santa Casa de São Paulo, Department of Collective Health, São Paulo, SP, Brazil | ![Twitter](http://i.imgur.com/wWzX9uB.png): [\@kbribeiro](https://twitter.com/kbribeiro))
- __Erin Abbott__: Center for Geographical Analysis, Harvard University, Cambridge, MA, USA. | ![Twitter](http://i.imgur.com/wWzX9uB.png): [\@Erin_Abbott1](https://twitter.com/Erin_Abbott1)) 
- __Jeffrey Blossom__: Center for Geographical Analysis, Harvard University, Cambridge, MA, USA. | <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-link-45deg" viewBox="0 0 16 16">
  <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
  <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
</svg> [projects.iq.harvard.edu/jeffblossom](https://projects.iq.harvard.edu/jeffblossom/home)
- __Beatriz Rache__: Instituto de Estudos para Políticas de Saúde (IEPS), São Paulo, SP, Brazil | ![Twitter](http://i.imgur.com/wWzX9uB.png): [\@beatrizrache](https://twitter.com/beatrizrache)) 
- __Burton H Singer__: Emerging Pathogens Institute, University of Florida, Gainesville, FL, USA
