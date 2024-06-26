# Randomness of Shapes and Statistical Inference on Shapes via the Smooth Euler Characteristic Transform

In this article, we establish the mathematical foundations for modeling the randomness of shapes and conducting statistical inference on shapes using the smooth Euler characteristic transform. Based on these foundations, we propose two Chi-squared statistic-based algorithms for testing hypotheses on random shapes. Simulation studies are presented to validate our mathematical derivations and to compare our algorithms with state-of-the-art methods to demonstrate the utility of our proposed framework. As real applications, we analyze a dataset of mandibular molars from four genera of primates and show that our algorithms have the power to detect significant shape differences that recapitulate known morphological variation across suborders. Altogether, our discussions bridge the following fields: algebraic and computational topology, probability theory and stochastic processes, Sobolev spaces and functional analysis, analysis of variance for functional data, and geometric morphometrics. Supplementary materials for this article are available online, including a standardized description of the materials available for reproducing the work.

Details of our results are presented in the following manuscript:

[Meng, K., Wang, J., Crawford, L., & Eloyan, A. (2024). Randomness of Shapes and Statistical Inference on Shapes via the Smooth Euler Characteristic Transform. Journal of the American Statistical Association, 1–25. https://doi.org/10.1080/01621459.2024.2353947](https://doi.org/10.1080/01621459.2024.2353947)

Results in the manuscript were derived by using the R version of the code. Based on the structure of the manuscript, this repository is divided into three parts:
1. Simulation Study (Section 6 of the manuscript)
2. Silhouette Database (Appendix I of the manuscript)
3. Mandibular Molars (Section 7 of the manuscript)

## Organization

### Code for Table 6.1 (JASA: Table 1)
Note that Table 6.1 is part of Table J.1. See the code for Table J.1.
### Code for Table 7.1 (JASA: Table 2)
[Code-table_7.1](https://github.com/JinyuWang123/TDA/tree/main/Mandibular%20Molars/Code_table_7.1) produces the results displayed in Table 7.1.

If you want to run a single RMD file to generate Table 7.1, please run [overall_table_7.1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/Code_table_7.1/overall_table_7.1.Rmd)
### Code for Appendix Table I.1 (JASA Supplemental material: Table I.1)
[Code-table_I.1](https://github.com/JinyuWang123/TDA/tree/main/Silhouette%20Database/Code_table_I.1) produces the results displayed in Table I.1.

If you want to run a single RMD file to generate Table I.1, please run [overall_table_I.1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Code_table_I.1/overall_table_I.1.Rmd)
### Code for Appendix Table J.1 (JASA Supplemental material: Table J.1)
[Code-tableJ.1](https://github.com/JinyuWang123/TDA/tree/b5175d47ae4e2624a01b432bc577678d07a2fdc3/Simulation%20Study/Table%20J.1) produces the results displayed in Table J.1.

If you want to run a single RMD file to generate Table J.1, please run [overall_tableJ.1.Rmd
](https://github.com/JinyuWang123/TDA/blob/397f79407c7a5d758814f393d28a79c98e1653be/Simulation%20Study/Table%20J.1/overall_tableJ.Rmd)
### Code for Appendix Table K.1 (JASA Supplemental material: Table K.1)
[Code_table_K.1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table_K.1) produces the results displayed in Table K.1.

If you want to run a single RMD file to generate Table K.1, please run [overall_table_K.1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table_K.1/overall_table_K.1.Rmd)
### Code for Appendix Table K.2 (JASA Supplemental material: Table K.2)
[Code_table_K.2](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table_K.2) produces the results displayed in Table K.2.

If you want to run a single RMD file to generate Table k.2, please run [overall_table_K.2.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table_K.2/overall_table_K.2.Rmd)
### Code for Appendix Table K.3 (JASA Supplemental material: Table K.3)
[Code_table_K.3](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table_K.3) produces the results displayed in Table K.3.

If you want to run a single RMD file to generate Table K.3, please run [overall_table_K.3.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table_K.3/overall_table_K.3.Rmd)
### Code for Figure 1.1 (JASA: Figure 1)
[Code_Figure_1.1](https://github.com/JinyuWang123/TDA/tree/main/Mandibular%20Molars/Code_Figure_1.1) produces the results displayed in the left panel of Figure 1.1. The right panel of Figure 1.1 comes from the reference [Wang (2021)](https://projecteuclid.org/journals/annals-of-applied-statistics/volume-15/issue-2/A-statistical-pipeline-for-identifying-physical-features-that-differentiate-classes/10.1214/20-AOAS1430.full).

If you want to run a single RMD file to generate Figure 1.1, please run [Fig1.1.R
](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/Code_Figure_1.1/Fig1.1.R)
### Code for Figure 3.1 (JASA: Figure 2)
Note that Figure 3.1(a) and 3.1(c) are also given in Figure D.1. See the code for Figure D.1(g) and D.1(h). For replication of these results, please code for Figure D.1.
### Code for Figure 6.1 (JASA: Figure 3)
[Code_Figure_6.1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_6.1) produces the results displayed in Figure 6.1.

If you want to run a single RMD file to generate Figure 6.1, please run [Figure_6.1.R](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_6.1/Figure%206.1.R)

### Code for Appendix Figure D.1 (JASA Supplemental material: Figure D.1)
[Code_Figure_D.1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_D.1) produces the results displayed in Figure D.1.

If you want to run a single RMD file to generate Figure D.1, please run [Figure_D.1.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_D.1/Figure_D.1.R)
### Code for Appendix Figure D.2 (JASA Supplemental material: Figure D.2)
[Code_Figure_D.2](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_D.2) produces the results displayed in Figure D.2.

If you want to run a single RMD file to generate Figure D.2, please run [Figure_D.2.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_D.2/Figure_D.2.R)
### Code for Appendix Figure D.3 (JASA Supplemental material: Figure D.3)
[Code_Figure_D.3](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure_D.3) produces the results displayed in Figure D.3.

If you want to run a single RMD file to generate Figure D.3, please run [Figure_D.3.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure_D.3/Figure_D.3.R)
### Code for Appendix Figure I.1 (JASA Supplemental material: Figure I.1)
It comes from the [MPEG-7 shape silhouette database](https://dabi.temple.edu/external/shape/MPEG7/dataset.html)
## The R Environment
Code for this manuscript was run in R (version 4.2, Compatible with version 3.6 - 4.2). R is a widely used, free, and open source software environment for statistical computing and graphics. The most recent version of R can be downloaded from the [Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/). For specific details on how to compile, install, and manage R and R-packages, refer to the manual [R Installation and Administration](https://cran.r-project.org/doc/manuals/r-release/R-admin.html).

For the R package required for different algorithms, please refer to the README.md file for each section (e.g., [Simulation Study](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/README.md), [Silhouette Database](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/README.md) and [Mandibular Molars](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/README.md)).
## Data Availability and Code Usage
Other details and required information of this manuscript are provided in the README.md file for each section. Most of the important code in this article is stored as R Markdown files. R Markdown is a file format for making dynamic documents with R. An R Markdown document is written in markdown (an easy-to-write plain text format) and contains chunks of embedded R code. More information about RMD can be found in the [following links](https://rmarkdown.rstudio.com/articles_intro.html).
## Relevant Citations
Meng, K., Wang, J., Crawford, L., & Eloyan, A. (2024). Randomness of Shapes and Statistical Inference on Shapes via the Smooth Euler Characteristic Transform. Journal of the American Statistical Association, 1–25. [https://doi.org/10.1080/01621459.2024.2353947](https://doi.org/10.1080/01621459.2024.2353947)
## Questions and Feedback
Should you have any questions, please feel free to contact [Kun Meng](mailto:kun_meng@brown.edu) or [Jinyu Wang](mailto:jinyu_wang@brown.edu).
We appreciate any feedback you may have with our repository and instructions.
