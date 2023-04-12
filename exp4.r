
#Aim : to understand the multiple linear regression model with computation and interpretation using R
#Problem 1: Multiple linear regression
y = c(110,80,70,120,150,90,70,120)
y

x1 = c(30,40,20,50,60,40,20,60)
x1

x2 = c(11,10,7,15,19,12,8,14)
x2

#linear regression of y on x1 and x2

RegModel = lm(y~x1+x2)
RegModel 

#Summary of regression
summary(RegModel)

#install.packages("scatterplot3d")
library(scatterplot3d)
 
#Plot the data set 
scatterplot3d(y,x1,x2)

#RegEq: y = 16.839 - 0.2442*x1 

#Problem 2:Multiple Linear Regression Visualization

data=mtcars
data

X=mtcars$mpg
X

Y=mtcars$disp
Y

Z=mtcars$hp
Z

RegModel = lm(Z~X+Y)
RegModel

#RegEq: Z = -4.2732*X + 0.2614*Y +172.2204

summary(RegModel)

library(scatterplot3d)
graph=scatterplot3d(X,Y,Z)

#Visualize the plane
graph$plane3d(RegModel)

#Conclusion: Multiple linear regression model has been explored and visualized
