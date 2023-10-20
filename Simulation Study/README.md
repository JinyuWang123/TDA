# Simulation Study
Refer to section 6 of the manuscript
## Organization
### Code-table1
Code-table1 produces the results displayed in Table 1.
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

Before parallel computing, we need to check the number of cores our computer can use by using the following command.
```ruby
library(parallel) 
detectCores()
```
For example, the number of cores my computer can use is 16, so I use the following command to conduct parallel computing.
```ruby
cl <- makeCluster(16)
registerDoParallel(cl)
```

