b.data <- read.table(header=FALSE, "hw2.txt", sep=" ")

x1 <- b.data$V1
x2 <- b.data$V2

min(x1) # 3.502
max(x1) # 6.229
min(x2) # 2.001
max(x2) # 8

plot(x1, x2, main="Scatterplot Example", 
     xlab="x1 ", ylab="x2 ", xlim=c(1,9), ylim=c(1,9))  ##q1


# (x1-5)^2 +(x2-5^2)/9 = 1  ##q2

N=100
x <- runif(N,4,6)
err <- runif(N,0,0.1)
y <- sqrt(9*(1-(x-5)^2)) +5

for (i in 0:50){
  y[2*i] <- -sqrt(9*(1-(x[2*i]-5)^2)) +5
}
  


plot(x,y,main="Scatterplot",xlim =c(1,9),ylim=c(1,9), xlab="x1", ylab="x2") ## q3


z<- x + x*err*ceiling(runif(1,-2,1))



plot(z,y, main="Scatterplot_w/err",xlim =c(1,9),ylim=c(1,9), xlab="x1", ylab="x2") ## q4

## q5 we can look at their correlations or mean and variance differences.


