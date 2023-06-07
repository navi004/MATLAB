#Experiment - 8
#Chi2 distribution

#problem1
Five coins are tossed 256 times
# number of heads
#frequency 

#number of coins
n = 5
n

#level of significance
alpha = 0.05 
alpha

#total number of tosses
N = 256
N

#Probability of geting head
P = 0.5
P

x = c(0:n)
x

#Observed frequency
obf = c(5,35,75,84,45,12)
obf

#Expected frequency
exf = (dbinom(x,n,P)*256)
exf

#Check the condition if the observed and expected frequencies sum are equal
sum(obf)
sum(exf)

#output using Chisq distribution
chisq = sum((obf-exf)^2/exf)
cv = chisq   #computation value
cv

#critical value using CHisq-distribution
tv = qchisq(1-alpha,n-1)
tv

#Hypothesis conclusion
if(cv<=tv){print("Accept H0/Fit is good")}else{print("Reject H0/Fit is not good")}

#Test for Independency
#Independent of attributes
#Problem 2:

#input the data
data = matrix(c(69,51,81,20,35,44),ncol=2,byrow=T)
data

#number of data
l = length(data)
l

#output by Chisq-distribution
cv = chisq.test(data)
cv

##
cv = cv$p.value
cv

if(cv>alpha){print("Attributes are independent")}else{print("Attributes are not independent")}

#or

tv = qchisq(1-alpha,2)
tv

if(cv<tv){print("Attributes are independent")}else{print("Attributes are not independent")}
