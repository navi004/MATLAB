#Problem: Four coins are tossed simultaneously. What is the probability of getting 2 heads 
  
 #number of trials 
 n=4 
 n 
  
 #probability of success 
 p=0.5 
 p 
  
 # (1) probability of hetting exactly 2 heads 
 dbinom(2,n,p)  #pmf 
 ###pbinom(2,n,p)  #cdf 
  
 # (2) probability of getting atleast 2 heads 
 sum(dbinom(2:4,n,p)) 
 ###or 
 1-pbinom(1,n,p) 
  
 # (3) probability of getting atmost 2 heads 
 sum(dbinom(0:2,n,p)) 
 ###or 
 pbinom(2,n,p) #cdf P(X<=2) 
  
 # (4) Expectation of x 
 x = 0:n 
 px = dbinom(x,n,p) 
 Ex = weighted.mean(x,px) 
 Ex 
 ###Exx = weighted.mean(x*x,px) 
  
 # (5) variance of x 
 Varx = weighted.mean(x*x,px)-(weighted.mean(x,px))^2 
 Varx 
  
 # (6) Visualize probability distribution 
 plot(x,px,type="h",xlab="vales of x",ylab="Probability distribution of x",main="Binomial Distribution") 
  
 #Conclusion: ...
