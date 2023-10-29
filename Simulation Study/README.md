# Simulation Study
Refer to section 6 of the manuscript
## Organization

### Code for table1
[Code-table1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code-table1) produces the results displayed in Table 1.
If you want to run a single RMD file to generate table1, please run [overall_table1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code-table1/overall_table1.Rmd)
### Code for table4-Appendix Table 2
[Code-table4](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table4) produces the results displayed in Table 4.
If you want to run a single RMD file to generate table4, please run [overall_table4.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table4/overall_table4.Rmd)
### Code for table5-Appendix Table 3
[Code-table5](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table5) produces the results displayed in Table 5.
If you want to run a single RMD file to generate table5, please run [overall_table5.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table5/overall_table5.Rmd)
### Code for table6-Appendix Table 4
[Code-table6](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table6) produces the results displayed in Table 6.
If you want to run a single RMD file to generate table6, please run [overall_table6.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table6/overall_table6.Rmd)
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

