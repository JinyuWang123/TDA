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
We consider a data set of mandibular molars from two suborders of primates -- Haplorhini ([“dry-nosed” primates](https://gaotingran.com/codes/codes.html));and Strepsirrhini ([“moist-nosed” primates](https://www.morphosource.org/projects/000000C89)) (see Figure 6). In the haplorhine suborder collection, 33 molars came from the genus Tarsius (see Figure 6 and the yellow panels in Figure 1), and 9 molars came from the genus Saimiri (see Figure 6 and the grey panels in Figure 1). In the strepsirrhine suborder collection, 11 molars came from the genus Microcebus (see Figure 6 and the blue panels in Figure 1), and 6 molars came from the genus Mirza (see Figure 6 and the green panels in Figure 1).
