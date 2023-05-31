##               Experiment - 8
#Testing of hypothesis for two sample means and proportion from real time problems

#Aim : 

##Problem : In a random sample of 500 size the mean is found to be 20.In another independent sample of size 400,the mean is 15.Could the samples have been drawn from the same population with S.D 4?

#input the sample mean
xbar = 20
xbar

ybar = 15
ybar

#input the standard deviation
sigma = 4
sigma

#input the sample size
n1 = 500
n1

n2 = 400
n2

#Test statistics 
z= (xbar-ybar)/(sigma*sqrt((1/n1)+(1/n2)))
z

#Level Significance
alpha = 0.05
alpha

#Two tailed critical value
zalpha = qnorm(1-(alpha/2))
zalpha

#conclusion
if(z<=zalpha){print("Accept Null Hypothesis")}else{print("Reject Null Hypothesis")}


##  Testing of Hypothesis - Two Sample Proportion Test
#Problem : 

#input the sample Proportion
p1 = 0.20
p1

p2 = 0.185
p2

#input the sample size
n1  = 900
n1

n2 = 1600
n2

#To find approximate population proportion
P = (n1*p1+n2*p2)/(n1+n2)
P

Q = 1-P
Q

#Test Statistics 
z = (p1-p2)/sqrt(P*Q*((1/n1)+(1/n2)))
z

#Level of Significance
alpha  = 0.05
alpha

#Two tailed critical value
zalpha = qnorm(1-(alpha/2))
zalpha

#conclusion
if(z<=zalpha){print("Accept Null Hpothesis")}else{print("Reject Null Hypothesis")}

#Conclusion : Testing of Hypothesis for large sample tests using R functions have been explored and concluded
