# Silhouette Database
Refer to Appendix I of the manuscript
## Organization

### Code for table1
[Code-table1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code-table1) produces the results displayed in Table 1.
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
Based on the calculated [ECT](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Data/MRIECs.RData), we can calculate the SECT. And then We applied Algorithms 1 and Algorithms 2 to the three classes of shapes to test the null hypothesis that the shapes are different between the pairs of groups and presented the results in Table 2 (e.g., [Algorithm1_Apple_vs_Child.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Algorithm1_Apple_vs_Child.Rmd) and [Algorithm2_Apple_vs_Child.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Algorithm2_Apple_vs_Child.Rmd)).

In addition to testing the difference between shape classes, we applied the algorithms within each shape class. Specifically, for each shape class, we randomly split the class into two halves and applied the algorithms to test the difference between the two halves. We repeated the random splitting procedure 100 times and presented the corresponding p-values in Table 2 (rows 4-6) (e.g., [Algorithm1_Apple_vs_Apple.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Algorithm1_Apple_vs_Apple.Rmd) and [Algorithm2_Apple_vs_Apple.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Algorithm2_Apple_vs_Apple.Rmd)). 
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
