
#install.packages("berryFunctions")
library("berryFunctions")

par(mfrow=c(1,3))

I=100
R=0.2
v=c(sqrt(2)/2, sqrt(2)/2)

for (J in c(30, 100)) {
  if(J==30){
    delta.J=0.1
  }else{
    delta.J=0.03
  }
  
  radius_variance=0
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
  
  plot(data.points, col="white", xlim = c(-1.5, 1.5), ylim = c(-1.5, 1.5),
       xlab = " ", ylab = " ")
  abline(v=-1.5+seq(from=0, to=J)*(3/J),
         h=-1.5+seq(from=0, to=J)*(3/J))
  for (i in 1:J) {
    for (j in 1:J) {
      x=c(-1.5+(3/J)*i, -1.5+(3/J)*j)
      X=cbind(rep(x[1], dim(data.points)[1]), rep(x[2], dim(data.points)[2]))-data.points
      D=X%*%t(X)
      if(min(diag(D))<=R^2){
        if(sum(x*v)<=1){
          circle(x[1], x[2], r=delta.J, col="pink", border=NA)
        }
      }
    }
  }
  
}


plot(data.points, col="white", xlim = c(-1.5, 1.5), ylim = c(-1.5, 1.5),
     xlab = " ", ylab = " ")
for (i in 1:dim(data.points)[1]) {
  circle(data.points[i,1], data.points[i,2], r=R, col="blue", border=NA)
}
for (i in 1:dim(data.points)[1]) {
  if(sum(data.points[i,]*v)<=1){
    circle(data.points[i,1], data.points[i,2], r=R, border="pink")
  }
}
