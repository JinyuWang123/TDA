# Silhouette Database
Refer to Appendix I of the manuscript
## Organization

### Code for Appendix Figure I.1 (JASA Supplemental material: Figure I.1)
It comes from the [MPEG-7 shape silhouette database](https://dabi.temple.edu/external/shape/MPEG7/dataset.html)
### Code for Appendix Table I.1 (JASA Supplemental material: Table I.1)
[Code-table_I.1](https://github.com/JinyuWang123/TDA/tree/main/Silhouette%20Database/Code_table_I.1) produces the results displayed in Table I.1.

If you want to run a single RMD file to generate Table I.1, please run [overall_table_I.1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Code_table_I.1/overall_table_I.1.Rmd)
## Package Details and Requirements
The statistical implementation of the simulation study requires the installation of the following important R libraries (we can [install R packages from the command line](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-packages)):
* [BGLR](https://cran.r-project.org/web/packages/BGLR/index.html)
* [Rcpp](https://cran.r-project.org/web/packages/Rcpp/index.html)
* [RcppArmadillo](https://cran.r-project.org/web/packages/RcppArmadillo/index.html)
* [RcppParallel](https://cran.r-project.org/web/packages/RcppParallel/index.html)
## Raw Data
A shape database that has been commonly used in image retrieval is the [MPEG-7 shape silhouette database](https://dabi.temple.edu/external/shape/MPEG7/dataset.html). We used a subset of this database which includes three class of objects: Apple, Heart and Children. There were 20 examples for each class for a total of 60 shapes. The shapes are displayed in Fig. 5. 
## Code Usage
Other details of our implementation choices for the algorithm are provided below.
### Conduct the Euler characteristic transformation on the raw data for each shape
For each shape in Fig. 5, first we computed its ECT. Specifically, we computed the ECCs for 72 directions evenly sampled over the interval $[0,2\pi]$; in each direction, we used 100 sublevels. To reproduce this process, we need to run the file [ECT_Computation.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/ECT_Computation.Rmd). The calculated ECT data will be stored in [Data/MRIECs.RData](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Data/MRIECs.RData). This RData file contains a list variable of length 60, where list[1]-list[20] is the ECT data corresponding to apples, list[21]-list[40] is the ECT data corresponding to children, and list[41]-list[60] is the ECT data corresponding to hearts

### Compute the SECT and Conduct Hypothesis test
Refer to [Code-table3](https://github.com/JinyuWang123/TDA/tree/main/Silhouette%20Database/Code_table3)

### Parallel computing in R
After version 2.14, R has a built-in parallel package that enhances R's parallel computing capabilities. Parallel computing uses different cpu cores for computing. Parallel computing can save a lot of time.

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
