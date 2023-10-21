Running the code to calculate the P-value of Algorithms 1, 2 across different parameters (Number of directions, Number of levels and sample size).($\varepsilon$ = 0)


For example, Running [P_value_Algorithm 1(0).Rmd](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table6/P_value_Algorithm%201(0).Rmd) produces the result of P-value of Algorithm 1(Number of directions = 4, Number of levels = 50 and sample size = 50).

Running [P_value_Algorithm 2(0).Rmd](https://github.com/JinyuWang123/TDA/blob/main/Simulation%20Study/Code_table6/P_value_Algorithm%202(0).Rmd) produces the result of P-value of Algorithm 2(Number of directions = 4, Number of levels = 50 and sample size = 50).


### If you want to calculate the P-value of the algorithms at different parameters, you only need to change the values in the part of the code that reads: 

### # Number of directions v in S^1
### number_directions=4
### # Number of levels t in [0, T]
### grid_length=50
### # Number of simulated shapes in each collection
### number_iterations=50



