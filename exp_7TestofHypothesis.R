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



##Test of Hypothesis - Large Sample Proportion Test

##Problem:The fatality rate of patients is believed to be 17.26% .In a certain year 640 patients suffering from typhoid were treated in a metropolitan hospital and only 63 patiets died.Can you consider the hospital efficient
#Input the data
#Size of the sample
n = 640
n

#Sample proportion
Sprop = 63/n
Sprop

#Population proportion
Pprop = 0.1726
Pprop

#Probability of failure
Q = 1-Pprop
Q

#test statistic
z = (Sprop-Pprop)/sqrt((Pprop*Q)/n)
z

#critical value
E = qnorm(.975) #(1-alpha/2)
E
#Boundries
c(-E,E)

#Conclusion
if(z>-E && z<E){print("Hospital is not efficient")} else{print("Hospital is Efficient")}

