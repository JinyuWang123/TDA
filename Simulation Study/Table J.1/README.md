
## Organization
Running the code to calculate the rejection rates of Algorithms 1, 2, 3 and the existing fdANOVA methods (i.e., FP, CH, CS, L2N, L2B, L2b, FN, FB, Fb, TRP-ANOVA, TRP-ATS, TRP-WTPS) across different indices $\varepsilon\in$ \{0, 0.01, 0.02, 0.03, 0.04 0.05, 0.06, 0.08, 0.1\} (significance level $\alpha = 0.05$).


Running [Algorithm 1.Rmd](https://github.com/JinyuWang123/TDA/blob/197cc4a85b58e1bb22d84756c1476c10998d4b62/Simulation%20Study/Table%20J.1/Algorithm%201.Rmd) produces the result of rejection rates of Algorithm 1($\varepsilon$ = 0).

Running [Algorithm 2.Rmd](https://github.com/JinyuWang123/TDA/blob/ee08fe3ae1ff7de2eae6f915531e18d985d31077/Simulation%20Study/Table%20J.1/Algorithm%202.Rmd) produces the result of rejection rates of Algorithm 2($\varepsilon$ = 0).

Running [Algorithm 3.Rmd](https://github.com/JinyuWang123/TDA/blob/ee08fe3ae1ff7de2eae6f915531e18d985d31077/Simulation%20Study/Table%20J.1/Algorithm%203.Rmd) produces the result of rejection rates of Algorithm 3($\varepsilon$ = 0).

Running [Existing fdANOVA methods.Rmd](https://github.com/JinyuWang123/TDA/blob/ee08fe3ae1ff7de2eae6f915531e18d985d31077/Simulation%20Study/Table%20J.1/Existing%20fdANOVA%20methods.Rmd) produces the result of rejection rates of the existing fdANOVA methods (i.e., FP, CH, CS, L2N, L2B, L2b, FN, FB, Fb, TRP-ANOVA, TRP-ATS, TRP-WTPS).

### If you want to calculate the rejection rates of the algorithms at different epsilon values, you only need to change the epsilon value in the part of the code that reads: 

### # The parameter determining the distribution P^{(epsilon)} 
### epsilon=0

If you want to run a single RMD file to generate Table J.1, please run [overall_tableJ.1.Rmd
](https://github.com/JinyuWang123/TDA/blob/397f79407c7a5d758814f393d28a79c98e1653be/Simulation%20Study/Table%20J.1/overall_tableJ.Rmd)
