#Poisson's Distribution
#Experiment 6
#Aim: To understand the poisson's distribution
#problem1:A manufacturer of pins knows 2% of pins of his products are defective.if he sells pins in boxes of 20 and find the number of boxes containing for 1000 boxes


#number of trails 
m = 20
m

#probability of success
ps = 0.02

#poisson parameter
lamda = m*ps
lamda

#(1) atleast 2 defective 
p1 = sum(dpois(2:m,lamda))
p1

#for 1000 boxes
round(1000*p1)

#(ii)exactly 2 defectives
p2 = dpois(2,lamda)
p2

#(ii)for 1000 boxes
round(1000*p2)

#(iii) atmost 2 defectives
p3 = sum(dpois(0:2,lamda)) ##ppois(2,lamda)
p3

#(iii) for 1000 boxes
round(1000*p3)

#(iv) plot the distribution
x1 = 0:m
px1 = dpois(x1,lamda)
plot(x1,px1,type = "h",xlab = "values of x",ylab = "Probability distribution of x",main= "Poisson distribution")

#(iv) E(X)
expx = m*ps
expx

#(v) E(x^2)
expx2 = (lamda)^2 + lamda
expx2
