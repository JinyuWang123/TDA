#################################################################
## Figure 6.1
#################################################################


#install.packages("MASS")
library("MASS")
#install.packages("Matrix")
library("Matrix")
#install.packages("vegan")
#library("vegan")
#install.packages("TDA")
library("TDA")
#install.packages("Rcpp")
library("Rcpp")
#install.packages("plotrix")
library("plotrix")
#install.packages("mvtnorm")
library("mvtnorm")
#install.packages("goftest")
library("goftest")
#install.packages("berryFunctions")
library("berryFunctions")




###############################################################
# Basic parameters
###############################################################


par(mfrow=c(2,3), mar=rep(0.2,4))
# Range of levels t in [0, T]
T=3
# Number of directions v in S^1
number_directions=4
# Number of levels t in [0, T]
grid_length=50
# Number of simulated shapes in each collection
number_iterations=100
# The thickness of shapes 
R=0.2
# Variance of the random axis lengths
radius_variance=0.05
# The parameter determining the distribution P^{(epsilon)}
epsilon=0.08

I=100


###############################################################
# Input directions/levels
###############################################################

S_1_parameters=seq(from=0, to=2*pi, length.out = number_directions+1)
directions_function=function(t){ return(c(cos(t), sin(t))) }
directions_matrix=matrix(NA, ncol = 2, nrow = number_directions+1)
for (i in 1:(number_directions+1)) { directions_matrix[i,]=directions_function(S_1_parameters[i]) }
directions_matrix=directions_matrix[-(number_directions+1),]
t_grid=seq(from=0, to=T, length.out = grid_length)


for (iter in 1:3) {
  #### Epsilon = 0
  
  # Experimental data generating
  a=rnorm(1, mean = 1, sd=radius_variance)
  b=rnorm(1, mean = 1, sd=radius_variance)
  t=seq(from=0.2*pi, to=1.8*pi, length.out = I)
  manifold=function(t){ return(c(0.4+a*cos(t), b*sin(t)))}
  X=manifold(t)
  sd.noise=0
  e1=rnorm(I,mean = 0, sd=sd.noise)
  e2=rnorm(I,mean = 0, sd=sd.noise)
  data.points_1=X+cbind(e1,e2)  
  a=rnorm(1, mean = 1, sd=radius_variance)
  b=rnorm(1, mean = 1, sd=radius_variance)
  t=seq(from=1.2*pi, to=2.8*pi, length.out = I)
  manifold=function(t){ return(c(-0.4+a*cos(t), b*sin(t)))}
  X=manifold(t)
  sd.noise=0
  e1=rnorm(I,mean = 0, sd=sd.noise)
  e2=rnorm(I,mean = 0, sd=sd.noise)
  data.points_2=X+cbind(e1,e2)  
  data.points=rbind(data.points_1, data.points_2)
  
  plot(data.points, axes = FALSE, xlab = " ", ylab = " ",
       xlim = c(-1.5, 1.5), ylim = c(-1.5, 1.5))
  for (i in 1:dim(data.points)[1]) {
    circle(data.points[i,1], data.points[i,2], r=R, col="blue", border=NA)
  }
}



for (iter in 1:3) {
  # Experimental data generating
  a=rnorm(1, mean = 1, sd=radius_variance)
  b=rnorm(1, mean = 1, sd=radius_variance)
  I=100
  
  #########################################################
  t=seq(from=((1-epsilon)/5)*pi, to=((9+epsilon)/5)*pi, length.out = I)
  #########################################################
  
  manifold=function(t){ return(c(0.4+a*cos(t), b*sin(t)))}
  X=manifold(t)
  sd.noise=0
  e1=rnorm(I,mean = 0, sd=sd.noise)
  e2=rnorm(I,mean = 0, sd=sd.noise)
  data.points_1=X+cbind(e1,e2)  
  a=rnorm(1, mean = 1, sd=radius_variance)
  b=rnorm(1, mean = 1, sd=radius_variance)
  t=seq(from=1.2*pi, to=2.8*pi, length.out = I)
  manifold=function(t){ return(c(-0.4+a*cos(t), b*sin(t)))}
  X=manifold(t)
  sd.noise=0
  e1=rnorm(I,mean = 0, sd=sd.noise)
  e2=rnorm(I,mean = 0, sd=sd.noise)
  data.points_2=X+cbind(e1,e2)  
  data.points=rbind(data.points_1, data.points_2)
  
  plot(data.points, axes = FALSE, xlab = " ", ylab = " ",
       xlim = c(-1.5, 1.5), ylim = c(-1.5, 1.5))
  for (i in 1:dim(data.points)[1]) {
    circle(data.points[i,1], data.points[i,2], r=R, col="pink", border=NA)
  }
}



#######################

epsilon.indices=c(0.00, 0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.08, 0.10)
rejection_rates_al_1=c(0.118, 0.161, 0.315, 0.519, 0.785, 0.910,  0.975, 0.990, 1.000)
rejection_rates_al_2=c(0.046, 0.054, 0.162, 0.343, 0.612, 0.789, 0.931, 0.994, 1.000)
rejection_rates_al_3=c(0.05, 0.05, 0.111, 0.185, 0.335, 0.535, 0.739, 0.983, 0.999)
rejection_rates_FP=c(0.136, 0.153, 0.308, 0.539, 0.810, 0.924, 0.986, 0.997, 1.000)
rejection_rates_CH=c(0.136, 0.141, 0.309, 0.539, 0.806, 0.927, 0.985, 0.997, 1.000)
rejection_rates_CS=c(0.139, 0.148, 0.318, 0.547, 0.807, 0.933, 0.985, 0.997, 1.000)
rejection_rates_L2N=c(0.138, 0.147, 0.319, 0.550, 0.809, 0.931, 0.985, 0.997, 1.000)
rejection_rates_L2B=c(0.139, 0.155, 0.321, 0.557, 0.810, 0.933, 0.985, 0.997, 1.000)
rejection_rates_L2b=c(0.138, 0.147, 0.319, 0.551, 0.803, 0.929, 0.985, 0.997, 1.000)
rejection_rates_FN=c(0.136, 0.144, 0.316, 0.544, 0.807, 0.929, 0.985, 0.997, 1.000)
rejection_rates_FB=c(0.138, 0.147, 0.318, 0.546, 0.808, 0.929, 0.985, 0.997, 1.000)
rejection_rates_Fb=c(0.138, 0.139, 0.309, 0.541, 0.802, 0.925, 0.984, 0.997, 1.000)
rejection_rates_TRP.ANOVA=c(0.073, 0.091, 0.256, 0.510, 0.782, 0.931, 0.980, 0.997, 1.000)
rejection_rates_TRP.ATS=c(0.076, 0.093, 0.258, 0.519, 0.785, 0.932, 0.982, 0.997, 1.000)
rejection_rates_TRP.WTPS=c(0.075, 0.091, 0.261, 0.515, 0.790, 0.929, 0.980, 0.997, 1.000)

par(mfrow=c(1,1), mar=c(4.2,4.2,0.2,0.2))
plot(epsilon.indices, rejection_rates_FP, type = "l", 
     ylim = c(0,1), lwd = 1, col =" grey",
     xlab = "epsilon", ylab = "Rejection rates", )
lines(epsilon.indices, rejection_rates_FP, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_CH, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_CH, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_CS, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_CS, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_L2N, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_L2N, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_L2B, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_L2B, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_L2b, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_L2b, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_FN, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_FN, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_FB, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_FB, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_Fb, lwd = 1, col = "grey")
lines(epsilon.indices, rejection_rates_Fb, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_TRP.ANOVA, lwd = 1, col ="grey")
lines(epsilon.indices, rejection_rates_TRP.ANOVA, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_TRP.ATS, lwd = 1, col ="grey")
lines(epsilon.indices, rejection_rates_TRP.ATS, type = "p", pch= 4, col = "grey", cex = 0.5)
lines(epsilon.indices, rejection_rates_TRP.WTPS, lwd = 1, col ="grey")
lines(epsilon.indices, rejection_rates_TRP.WTPS, type = "p", pch= 4, col = "grey", cex = 0.5)
abline(h=0.05, lty=2, col = "red")
lines(epsilon.indices, rejection_rates_al_3, type="l", lwd=2, col="purple")
lines(epsilon.indices, rejection_rates_al_2, type="l", lwd=2, col="blue")
lines(epsilon.indices, rejection_rates_al_1, type="l", lwd=2, col="red")
lines(epsilon.indices, rejection_rates_al_3, type="p", col="purple", pch=17, cex = 1.3)
lines(epsilon.indices, rejection_rates_al_2, type="p", col="blue", pch=16, cex = 1.3)
lines(epsilon.indices, rejection_rates_al_1, type="p", col="red", pch=15, cex = 1.3)
legend("bottomright", c("Algorithm 1", "Algorithm 2", "Algorithm 3", "Existing fdANOVA methods"), 
       col=c("red", "blue", "purple", "grey"), pch=c(15, 16, 17, 4),
       lty = rep(1, 4), lwd = c(rep(2, 3), 1))
