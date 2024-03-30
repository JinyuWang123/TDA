# Simulation Study
Refer to section 6 of the manuscript
## Organization

### Code for Table 6.1
Note that Table 6.1 is part of Table J.1. See the code for Table J.1.
### Code for Appendix Table J.1
[Code-table1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code-table1) produces the simulation results for the algorithm 1,2,3.

[Code-tableJ.1](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Table%20J.1/Existing%20fdANOVA%20methods.Rmd) produces the simulation results for the existing fdANOVA methods (i.e., FP, CH, CS, L2N, L2B, L2b, FN, FB, Fb, TRP-ANOVA, TRP-ATS, TRP-WTPS).
### Code for Appendix Table K.1
[Code_table_K.1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table_K.1) produces the results displayed in Table K.1.

If you want to run a single RMD file to generate Table K.1, please run [overall_table_K.1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table_K.1/overall_table_K.1.Rmd)
### Code for Appendix Table K.2
[Code_table_K.2](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table_K.2) produces the results displayed in Table K.2.

If you want to run a single RMD file to generate Table k.2, please run [overall_table_K.2.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table_K.2/overall_table_K.2.Rmd)
### Code for Appendix Table K.3
[Code_table_K.3](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table_K.3) produces the results displayed in Table K.3.

If you want to run a single RMD file to generate Table K.3, please run [overall_table_K.3.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table_K.3/overall_table_K.3.Rmd)
### Code for Figure 3.1
Note that Figure 3.1(a) and 3.1(c) are also given in Figure D.1. See the code for Figure D.1(g) and D.1(h). For replication of these results please code for Figure D.1.
### Code for Figure 6.1
[Code_Figure_6.1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_6.1) produces the results displayed in Figure 6.1.

If you want to run a single RMD file to generate Figure 6.1, please run [Figure_6.1.R](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_6.1/Figure%206.1.R)
### Code for Appendix Figure D.1
[Code_Figure_D.1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_D.1) produces the results displayed in Figure D.1.

If you want to run a single RMD file to generate Figure D.1, please run [Figure_D.1.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_D.1/Figure_D.1.R)
### Code for Appendix Figure D.2
[Code_Figure_D.2](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_D.2) produces the results displayed in Figure D.2.

If you want to run a single RMD file to generate Figure D.2, please run [Figure_D.2.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_D.2/Figure_D.2.R)
### Code for Appendix Figure D.3
[Code_Figure_D.3](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_D.3) produces the results displayed in Figure D.3.

If you want to run a single RMD file to generate Figure D.3, please run [Figure_D.3.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_D.3/Figure_D.3.R)
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

