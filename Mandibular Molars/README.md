# Mandibular Molars
Refer to section 6.2 of the manuscript
## Purpose
The purpose of this section is to provide the exact scripts/code used to produce to the real data results in the manuscript.
## Package Details and Requirements
The statistical implementation of the simulation study requires the installation of the following important R libraries (we can [install R packages from the command line](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-packages)):
* [Rvcg](https://cran.r-project.org/web/packages/Rvcg/index.html)
* [Morpho](https://cran.r-project.org/web/packages/Morpho/index.html)
* [rgl](https://cran.r-project.org/web/packages/rgl/index.html)

And To install the sinatra package, we will use the [remotes](https://cran.r-project.org/web/packages/remotes/index.html) package and run the command:
```ruby
remotes::install_github('lcrawlab/SINATRA') 
```
Next, to load the package, use the command:
```ruby
library(sinatra)
```
## Raw Data
We consider a data set of mandibular molars from two suborders of primates -- Haplorhini ([“dry-nosed” primates](https://gaotingran.com/codes/codes.html));and Strepsirrhini ([“moist-nosed” primates](https://www.morphosource.org/projects/000000C89)) (see Figure 6). In the haplorhine suborder collection, 33 molars came from the genus Tarsius ([Boyer et al. (2011)](https://doi.org/10.1073/pnas.1112822108), [Gao (2015, 2021)](https://doi.org/10.1016/j.acha.2019.08.001)) (see Figure 6 and the yellow panels in Figure 1), and 9 molars came from the genus Saimiri ([St Clair and Boyer (2016)](https://onlinelibrary.wiley.com/doi/10.1002/ajpa.23021)) (see Figure 6 and the grey panels in Figure 1). In the strepsirrhine suborder collection, 11 molars came from the genus Microcebus  ([Boyer et al. (2011)](https://doi.org/10.1073/pnas.1112822108), [Gao (2015, 2021)](https://doi.org/10.1016/j.acha.2019.08.001)) (see Figure 6 and the blue panels in Figure 1), and 6 molars came from the genus Mirza  ([Boyer et al. (2011)](https://doi.org/10.1073/pnas.1112822108), [Gao (2015, 2021)](https://doi.org/10.1016/j.acha.2019.08.001)) (see Figure 6 and the green panels in Figure 1).
## Code Usage
Other details of our implementation choices for the algorithm are provided below.
### Align the ECCSs
Before applying Algorithms 1 and 2, we performed the ECT on the raw data and normalized the polygon meshes by aligning the ECCs. The details of the ECT-based alignment procedure are given in [Wang et al. (2021)](https://projecteuclid.org/journals/annals-of-applied-statistics/volume-15/issue-2/A-statistical-pipeline-for-identifying-physical-features-that-differentiate-classes/10.1214/20-AOAS1430.full) (particularly, Section 4 of its Supplementary Material). The aligned molars are presented in Figure 1. To reproduce the Figure 1, we can run the [Fig1.R](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/Fig1.R).
### Conduct the Euler characteristic transformation on the raw data for each tooth
For each shape in Fig. 6, first we computed its ECT. Specifically, we computed the ECCs for 2918 directions; in each direction, we used 100 sublevels. To reproduce this process, we need to run the file [ECT_computation.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/ECT_computation.Rmd). The calculated ECT data will be stored in [alignment_ECT](https://github.com/JinyuWang123/TDA/tree/main/Mandibular%20Molars/alignment_ECT).

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
