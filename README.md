# Randomness of Shapes and Statistical Inference on Shapes via the Smooth Euler Characteristic Transform

In this project, we establish the mathematical foundations for modeling the randomness of shapes and conducting statistical inference on shapes using the smooth Euler characteristic transform. Based on these foundations, we propose two chi-squared statistic-based algorithms for testing hypotheses on random shapes. Simulation studies are presented to validate our mathematical derivations and to compare our algorithms with state-of-the-art methods to demonstrate the utility of our proposed framework. As real applications, we analyze a data set of mandibular molars from four genera of primates and show that our algorithms have the power to detect significant shape differences that recapitulate known morphological variation across suborders. Altogether, our discussions bridge the following fields: algebraic and computational topology, probability theory and stochastic processes, Sobolev spaces and functional analysis, analysis of variance for functional data, and geometric morphometrics.

Details of our results are presented in the following manuscript:

K. Meng, J. Wang, L. Crawford and A. Eloyan. Randomness of Shapes and Statistical Inference on Shapes via the Smooth Euler Characteristic Transform. arXiv preprint arXiv:2204.12699, 2022.

Results in the manuscript were derived by using the R version of the code. Based on the structure of the manuscript, this repositories is divided into three parts:
1. Simulation Study (Section 6 of the manuscript)
2. Silhouette Database (Appendix I of the manuscript)
3. Mandibular Molars (Section 7 of the manuscript)

## Organization

### Code for table 6.1
[Code-table1](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code-table1) produces the results displayed in Table 6.1.

If you want to run a single RMD file to generate Table 1, please run [overall_table1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code-table1/overall_table1.Rmd)
### Code for table2
[Code-table2](https://github.com/JinyuWang123/TDA/tree/main/Mandibular%20Molars/Code_table2) produces the results displayed in Table 2.

If you want to run a single RMD file to generate Table 2, please run [overall_table2.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/Code_table2/overall_table2.Rmd)
### Code for Appendix Table I.1
[Code-table3](https://github.com/JinyuWang123/TDA/tree/main/Silhouette%20Database/Code_table3) produces the results displayed in Table I.1.

If you want to run a single RMD file to generate Table I.1, please run [overall_table3.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/Code_table3/overall_table3.Rmd)
### Code for Appendix Table K.1
[Code-table4](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table4) produces the results displayed in Table K.1.

If you want to run a single RMD file to generate Table K.1, please run [overall_table4.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table4/overall_table4.Rmd)
### Code for Appendix Table 3 (arxiv-table5)
[Code-table5](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table5) produces the results displayed in Table 5.

If you want to run a single RMD file to generate Table 5, please run [overall_table5.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table5/overall_table5.Rmd)
### Code for Appendix Table 4 (arxiv-table6)
[Code-table6](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_table6) produces the results displayed in Table 6.

If you want to run a single RMD file to generate Table 6, please run [overall_table6.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table6/overall_table6.Rmd)
### Code for Figure 1
[Code-Figure1](https://github.com/JinyuWang123/TDA/tree/main/Mandibular%20Molars/Code_Figure1) produces the results displayed in the left panel of Figure 1 (arxiv-figure 1). The right panel of Figure 1 (arxiv-figure 4) comes from the reference [Wang (2021)](https://projecteuclid.org/journals/annals-of-applied-statistics/volume-15/issue-2/A-statistical-pipeline-for-identifying-physical-features-that-differentiate-classes/10.1214/20-AOAS1430.full).

If you want to run a single RMD file to generate Figure 1, please run [Fig1.R
](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/Code_Figure1/Fig1.R)
### Code for Figure 2
Note that Figure 2a and 2c are also given in Figure 5. See the code for Figure 5g and 5h. For replication of these results please code for Figure 5.
### Code for Figure 3
[Code_Figure3](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure3) produces the results displayed in Figure 3.

If you want to run a single RMD file to generate Figure 3, please run [Figure 3.R](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure3/Figure%203.R)

### Code for Appendix Figure 1 (arxiv-Figure5)
[Code_Figure5](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure5) produces the results displayed in Figure 5.

If you want to run a single RMD file to generate Figure 5, please run [Figure 5.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure5/Figure%205.R)
### Code for Appendix Figure 2 (arxiv-Figure6)
[Code-Figure6](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure6) produces the results displayed in Figure 6.

If you want to run a single RMD file to generate Figure 6, please run [Figure 6.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure6/Figure%206.R)
### Code for Appendix Figure 3 (arxiv-Figure7)
[Code-Figure7](https://github.com/JinyuWang123/TDA/tree/main/Simulation%20Study/Code_Figure7) produces the results displayed in Figure 7.

If you want to run a single RMD file to generate Figure 7, please run [Figure 7.R
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_Figure7/Figure%207.R)
### Code for Appendix Figure 4 (arxiv-Figure8)
It comes from the [MPEG-7 shape silhouette database](https://dabi.temple.edu/external/shape/MPEG7/dataset.html)
## The R Environment
Code for this manuscript was run in R (version 4.2, Compatible with version 3.6 - 4.2). R is a widely used, free, and open source software environment for statistical computing and graphics. The most recent version of R can be downloaded from the [Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/). For specific details on how to compile, install, and manage R and R-packages, refer to the manual [R Installation and Administration](https://cran.r-project.org/doc/manuals/r-release/R-admin.html).

For the R package required for different algorithms, please refer to the README.md file for each section (e.g., [Simulation Study](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/README.md), [Silhouette Database](https://github.com/JinyuWang123/TDA/blob/main/Silhouette%20Database/README.md) and [Mandibular Molars](https://github.com/JinyuWang123/TDA/blob/main/Mandibular%20Molars/README.md)).
## Data Availability and Code Usage
Other details and required information of this manuscript are provided in the README.md file for each section. Most of the important code in this article is stored as R Markdown files. R Markdown is a file format for making dynamic documents with R. An R Markdown document is written in markdown (an easy-to-write plain text format) and contains chunks of embedded R code. More information about RMD can be found in the [following links](https://rmarkdown.rstudio.com/articles_intro.html).
## Relevant Citations
K. Meng, J. Wang, L. Crawford and A. Eloyan. Randomness of Shapes and Statistical Inference on Shapes via the Smooth Euler Characteristic Transform. arXiv preprint arXiv:2204.12699, 2022.
## Questions and Feedback
Should you have any questions, please feel free to contact [Kun Meng](mailto:kun_meng@brown.edu) or [Jinyu Wang](mailto:jinyu_wang@brown.edu).
We appreciate any feedback you may have with our repository and instructions.
