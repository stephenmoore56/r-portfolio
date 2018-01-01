### vectors, data, matrices, subsetting
x=c(2,7,5)
x
y=seq(from=4,length=3,by=3)
seq(1,12)
y
# element-wise operations
x + y
x/y
x*y
# accessing elements; vectors use 1-based indexes
x[2]
x[-1]
x
x[-2] # x without element 2
x[2:3]
x[c(1,2)]
# matrices
z=matrix(seq(1,12),4,3)
z
z[3:4,2:3]
z[,2:3]
z[,1] # we lose matrix status; becomes simple vector
z[,1,drop=FALSE] # preserve matrix
dim(z)
ls()
rm(z)
# generation data
x=runif(50)
y=rnorm(50)
plot(x,y)
plot(x,y,xlab="Random Uniform",ylab="Random Normal",pch='*',col='blue')
par(mfrow=c(2,1))
plot(x,y,xlab="Random Uniform",ylab="Random Normal",pch='*',col='blue')
hist(y)
par(mfrow=c(1,1)) # reset par
data(mtcars)
mtcars
class(mtcars)
attach(mtcars)
plot(x=disp,y=hp)
plot(x=cyl,y=hp)
plot(disp,mpg)
