#Paired t-test

#Problem - 1(Student's Test):

sample1 = c(19,17,15,21,16,18,16,14)
sample1

sample2 = c(15,14,15,19,15,18,16,20)
sample2

#Is the difference between the sample means significant?

#output using t-distribution
t = t.test(sample1,sample2)    
t

#test - statistics
cv = t$statistic
cv

#Critical value
tv = qt(0.975,14)
tv

#conclusion 
if(cv <= tv){print("We Cannot Reject Ho")}else{print("Reject Ho")}
