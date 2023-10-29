
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
epsilon=0.075

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

epsilon.indices=c(0, 0.0125, 0.025, 0.0375, 0.05, 0.075, 0.1)
rejection_rates_al_1=c(0.15, 0.16, 0.32, 0.67, 0.92, 0.98, 1)
rejection_rates_al_2=c(0.03, 0.14, 0.22, 0.47, 0.74, 1, 1)
rejection_rates_al_3=c(0.01, 0.1, 0.11, 0.34, 0.66, 0.99,1)

par(mfrow=c(1,1), mar=c(4.2,4.2,0.2,0.2))
plot(epsilon.indices, rejection_rates_al_2, type="l", lwd=1.5,
     ylim = c(0,1),
     xlab = "epsilon", ylab = "Rejection rates", col="darkgreen")
abline(h=0.05, lty=2, col = "red")
lines(epsilon.indices, rejection_rates_al_3, type="l", lwd=1.5, col="grey")
lines(epsilon.indices, rejection_rates_al_1, type="l", lwd=1.5)
lines(epsilon.indices, rejection_rates_al_2, type="p", col="orange", pch=16)
lines(epsilon.indices, rejection_rates_al_3, type="p", col="purple", pch=17)
lines(epsilon.indices, rejection_rates_al_1, type="p", col="red", pch=15)
legend("bottomright", c("Algorithm 1", "Algorithm 2", "Algorithm 3"), 
       col=c("red", "orange", "purple"), pch=c(15, 16, 17))

