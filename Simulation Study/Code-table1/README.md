## Organization
Running the code to calculate the rejection rates of Algorithms 1, 2, and 3 across different indices $\varepsilon\in$ \{0, 0.0125, 0.025, 0.0375, 0.05, 0.075, 0.1\} (significance $\alpha = 0.05$).


For example, Running [Algorithm 1.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code-table1/Algorithm%201.Rmd) produces the result of rejection rates of Algorithm 1($\varepsilon$ = 0).

Running [Algorithm 2.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code-table1/Algorithm%202.Rmd) produces the result of rejection rates of Algorithm 2($\varepsilon$ = 0).

Running [Algorithm 3.Rmd](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code-table1/Algorithm%203.Rmd) produces the result of rejection rates of Algorithm 3($\varepsilon$ = 0).

### If you want to calculate the rejection rates of the algorithms at different epsilon values, you only need to change the epsilon value in the part of the code that reads: 

### # The parameter determining the distribution P^{(epsilon)} 
### epsilon=0


### Important Information
If you want to run a single RMD file to generate table1, please run [overall_table1.Rmd
](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code-table1/overall_table1.Rmd)
