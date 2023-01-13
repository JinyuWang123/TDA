# Simulation Study
Refer to section 5 of the manuscript
## Purpose
The purpose of this section is to provide the exact scripts/code used to produce to the simulation results in the manuscript.
## Package Details and Requirements
The statistical implementation of the simulation study requires the installation of the following important R libraries (we can [install R packages from the command line](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-packages)):
* [TDA](https://cran.r-project.org/web/packages/TDA/index.html)
* [foreach](https://cran.r-project.org/web/packages/foreach/index.html)
* [doParallel](https://cran.r-project.org/web/packages/doParallel/index.html)
* [Rcpp](https://cran.r-project.org/web/packages/Rcpp/index.html)
## Code Usage
Other details of our implementation choices for the simulation algorithm are provided below.
### Parallel computing in R
After version 2.14, R has a built-in parallel package that enhances R's parallel computing capabilities. Parallel computing uses different cpu cores for computing. For the simulation study, we need to run each algorithm 100 times to calculate the Rejection rates, and parallel computing can save a lot of time.


## Additional Information
1. "Algorithm 1.Rmd": This file provides the source code of the simulation studies showing the performance of Algorithm 1 proposed in MCE.
2. "Algorithm 2.Rmd": This file provides the source code of the simulation studies showing the performance of Algorithm 2 proposed in MCE.
3. "Algorithm 3.Rmd": This file provides the source code of the simulation studies showing the performance of Algorithm 3 proposed in MCE.
