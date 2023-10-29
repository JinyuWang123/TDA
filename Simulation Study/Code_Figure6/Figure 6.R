
###############################################################
# Packages
###############################################################

#install.packages("MASS")
library("MASS")
#install.packages("Matrix")
library("Matrix")
#install.packages("vegan")
library("vegan")
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

par(mfrow=c(2,3))

# Range of levels t in [0, T]
T=3
# Number of directions v in S^1
number_directions=40
# Number of levels t in [0, T]
grid_length=40
# Number of simulated shapes in each collection
number_iterations=10
# The thickness of shapes 
R=0.2
# Variance of the random axis lengths
radius_variance=0.05
# The parameter determining the distribution P^{(epsilon)}
epsilon=0

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



###############################################################
# Simulations
###############################################################


SECT_1_list=list()
for (iterations in 1:number_iterations) {
  
  print(paste("Iteration No.: ", as.character(iterations)))
  
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
  
  
  # Computing ECT/PECT/SECT
  
  t_grid=seq(from=0, to=T, length.out = grid_length)
  
  ECT=matrix(NA, ncol = number_directions, nrow = grid_length)
  for (k in 1:number_directions) {
    
    Betti_numbers_matrix=matrix(0, ncol = 2, nrow = grid_length)
    for (i in 1:grid_length) {
      
      direction_k=as.matrix(directions_matrix[k,])
      filtration_levels=data.points%*%direction_k
      sublevel_indices=which(filtration_levels<(t_grid[i]-(T/2)))
      points_of_interest=data.points[sublevel_indices,]
      points_of_interest=as.matrix(points_of_interest)
      if(dim(points_of_interest)[2]==1){points_of_interest=t(points_of_interest)}
      if(dim(points_of_interest)[1]!=0){
        alphaComplexDiag_results=alphaComplexDiag(points_of_interest, printProgress = FALSE)
        alphaComplexDiag_results$diagram[,2:3]=sqrt(alphaComplexDiag_results$diagram[,2:3])
        Betti_numbers=vector()
        for (d in 0:(2-1)) {
          Betti_numbers[d+1]=0
          H=as.matrix(alphaComplexDiag_results$diagram[alphaComplexDiag_results$diagram[,1]==d,])
          if(dim(H)[2]!=3){ H=t(H) }
          if(dim(H)[1]!=0){
            for (j in 1:dim(H)[1]) {
              if( (H[j,2]<=R) & (H[j,3]>R) ){ Betti_numbers[d+1]=Betti_numbers[d+1]+1 }
            } 
          }
        }
        
        Betti_numbers_matrix[i, ]=Betti_numbers  
        
      }  
    }
    
    ECT[,k]=Betti_numbers_matrix[,1]-Betti_numbers_matrix[,2]
    
  }
  
  
  ECT_2D_results=ECT
  PECT=matrix(NA, ncol = number_directions, nrow = grid_length)
  for (i in 1:dim(ECT_2D_results)[2]) {
    PECT[,i]=(T/grid_length)*cumsum(ECT_2D_results[,i])
  }
  
  PECT_2D_results=PECT
  SECT=matrix(NA, ncol = number_directions, nrow = grid_length)
  for (i in 1:dim(PECT_2D_results)[2]) {
    SECT[,i]=PECT_2D_results[,i]-(PECT_2D_results[dim(PECT_2D_results)[1],i]/T)*t_grid
  }
  
  SECT_1_list[[iterations]]=SECT
  
}


###############################################################
### Compute the mean functions of the two SECT collections
###############################################################

M_1=SECT_1_list[[1]]
for (i in 2:number_iterations) {
  M_1=M_1+SECT_1_list[[i]]
}
M_1=(1/number_iterations)*M_1




plot(data.points, xlim = c(-1.5, 1.5), ylim = c(-1.5, 1.5), 
     xlab = " ", ylab = " ")
for (i in 1:dim(data.points)[1]) {
  circle(data.points[i,1], data.points[i,2], r=R, col="blue", border=NA)
}


z=M_1
nrz <- nrow(z)
ncz <- ncol(z)
jet.colors <- colorRampPalette( c("blue", "green") )
nbcol <- 100
color <- jet.colors(nbcol)
zfacet <- z[-1, -1] + z[-1, -ncz] + z[-nrz, -1] + z[-nrz, -ncz]
facetcol <- cut(zfacet, nbcol)


persp(t_grid, S_1_parameters[-length(S_1_parameters)], M_1, 
      xlab = "Levels t", ylab = "Directions v", zlab = " ",
      theta = -35, phi=35,
      zlim = c(-0.5, 1.5), col = color[facetcol], border = "black",
      axes = TRUE)

persp(t_grid, S_1_parameters[-length(S_1_parameters)], M_1, 
      xlab = "Levels t", ylab = "Directions v", zlab = " ",
      theta = 105, phi=35,
      zlim = c(-0.5, 1.5), col = color[facetcol], border = "black",
      axes = TRUE)


a=rnorm(1, mean = 1, sd=0)
b=rnorm(1, mean = 1, sd=0)
t=seq(from=0.2*pi, to=1.8*pi, length.out = I)
manifold=function(t){ return(c(0.4+a*cos(t), b*sin(t)))}
X=manifold(t)
sd.noise=0
e1=rnorm(I,mean = 0, sd=sd.noise)
e2=rnorm(I,mean = 0, sd=sd.noise)
data.points_1=X+cbind(e1,e2)  
a=rnorm(1, mean = 1, sd=0)
b=rnorm(1, mean = 1, sd=0)
t=seq(from=1.2*pi, to=2.8*pi, length.out = I)
manifold=function(t){ return(c(-0.4+a*cos(t), b*sin(t)))}
X=manifold(t)
sd.noise=0
e1=rnorm(I,mean = 0, sd=sd.noise)
e2=rnorm(I,mean = 0, sd=sd.noise)
data.points_2=X+cbind(e1,e2)  
data.points=rbind(data.points_1, data.points_2)


# Computing ECT/PECT/SECT

t_grid=seq(from=0, to=T, length.out = grid_length)

ECT=matrix(NA, ncol = number_directions, nrow = grid_length)
for (k in 1:number_directions) {
  
  Betti_numbers_matrix=matrix(0, ncol = 2, nrow = grid_length)
  for (i in 1:grid_length) {
    
    direction_k=as.matrix(directions_matrix[k,])
    filtration_levels=data.points%*%direction_k
    sublevel_indices=which(filtration_levels<(t_grid[i]-(T/2)))
    points_of_interest=data.points[sublevel_indices,]
    points_of_interest=as.matrix(points_of_interest)
    if(dim(points_of_interest)[2]==1){points_of_interest=t(points_of_interest)}
    if(dim(points_of_interest)[1]!=0){
      alphaComplexDiag_results=alphaComplexDiag(points_of_interest, printProgress = FALSE)
      alphaComplexDiag_results$diagram[,2:3]=sqrt(alphaComplexDiag_results$diagram[,2:3])
      Betti_numbers=vector()
      for (d in 0:(2-1)) {
        Betti_numbers[d+1]=0
        H=as.matrix(alphaComplexDiag_results$diagram[alphaComplexDiag_results$diagram[,1]==d,])
        if(dim(H)[2]!=3){ H=t(H) }
        if(dim(H)[1]!=0){
          for (j in 1:dim(H)[1]) {
            if( (H[j,2]<=R) & (H[j,3]>R) ){ Betti_numbers[d+1]=Betti_numbers[d+1]+1 }
          } 
        }
      }
      
      Betti_numbers_matrix[i, ]=Betti_numbers  
      
    }  
  }
  
  ECT[,k]=Betti_numbers_matrix[,1]-Betti_numbers_matrix[,2]
  
}


ECT_2D_results=ECT
PECT=matrix(NA, ncol = number_directions, nrow = grid_length)
for (i in 1:dim(ECT_2D_results)[2]) {
  PECT[,i]=(T/grid_length)*cumsum(ECT_2D_results[,i])
}

PECT_2D_results=PECT
SECT=matrix(NA, ncol = number_directions, nrow = grid_length)
for (i in 1:dim(PECT_2D_results)[2]) {
  SECT[,i]=PECT_2D_results[,i]-(PECT_2D_results[dim(PECT_2D_results)[1],i]/T)*t_grid
}



plot(t_grid, SECT_1_list[[1]][,1], 
     xlim = c(0,3), ylim = c(-0.5, 1.2), 
     type = "l", lwd=0.2, 
     xlab = " ", ylab = " ")
for (i in 2:number_iterations) {
  lines(t_grid, SECT_1_list[[i]][,1], lwd=0.2)
}
lines(t_grid, M_1[,1], type = "l", col="red", lwd=2)
lines(t_grid, SECT[,1], type = "l", col="blue", lwd=2, lty=2)


plot(t_grid, SECT_1_list[[1]][, floor(dim(SECT_1_list[[1]])[2]/4)], 
     xlim = c(0,3), ylim = c(-0.5, 1.2), 
     type = "l", lwd=0.2, 
     xlab = " ", ylab = " ")
for (i in 2:number_iterations) {
  lines(t_grid, SECT_1_list[[i]][, floor(dim(SECT_1_list[[i]])[2]/4)], lwd=0.2)
}
lines(t_grid, M_1[,floor(dim(SECT_1_list[[1]])[2]/4)], type = "l", col="red", lwd=2)
lines(t_grid, SECT[,floor(dim(SECT_1_list[[1]])[2]/4)], type = "l", col="blue", lwd=2, lty=2)


plot(S_1_parameters[-length(S_1_parameters)], SECT_1_list[[1]][floor(dim(SECT_1_list[[1]])[1]/2),], 
     xlim = c(0,6), ylim = c(-0.5, 1.2), 
     type = "l", lwd=0.2, 
     xlab = " ", ylab = " ")
for (i in 2:number_iterations) {
  lines(S_1_parameters[-length(S_1_parameters)], SECT_1_list[[i]][floor(dim(SECT_1_list[[i]])[1]/2),],  
        lwd=0.2)
}
lines(S_1_parameters[-length(S_1_parameters)], M_1[floor(dim(SECT_1_list[[1]])[1]/2),], 
      type = "l", col="red", lwd=2)
lines(S_1_parameters[-length(S_1_parameters)], SECT[floor(dim(SECT_1_list[[1]])[1]/2),], 
      type = "l", col="blue", lwd=2, lty=2)



