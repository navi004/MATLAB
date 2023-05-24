##Test of hypothesis for one sample mean and proportion from real time problems

##Test of hypothesis - Large sample mean test

##Problem 1:Suppose the mean weight of king penguins in an Antarctica colony last year was 15.4
##.In a sample of 34 penguins samwe time this year in the same colony the mean pwnguin weight is the 
##14.6 kg.

##Input the sample mean
xbar = 14.6
xbar

##Input the population mean
mu0 = 15.4
mu0

##Input the standard deviation
sigma = 2.5
sigma

##Input the sample size
n = 35
n

##Test Statistic
z = (xbar-mu0)/(sigma/sqrt(n))
z

##Level of significance
alpha = 0.05
alpha

##Two tailed critical value
zhalfalpha = qnorm(1-(alpha/2))
zhalfalpha

c(-zhalfalpha,zhalfalpha)
##To find p-value
pval = 2*pnorm(z)
pval

#conclusion
if(pval>alpha){print("Accept Null hypothesis")} else{print("Reject Null Hypothesis")}
