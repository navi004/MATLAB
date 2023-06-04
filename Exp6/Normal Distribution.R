##Normal Distribution Ex - 7
#problem 1 : A company finds that time taken by the one of its engineer to complete or repair job has a normal distribution with mean 20 minutes and S.D 5 minutes.State what proportion of jobs take:


#Generating the data x
x = seq(0,40)
x

#find the density function
y = dnorm(x,mean = 20,sd = 5)
y

#plot the normal distribution curve
plot(x,y,type = 'l')

#1.Proportion of jobs take less than 15 minutes
p1 = pnorm(15,mean = 20,sd = 5)
p1

x2 = seq(0,15)
x2

y2 = dnorm(x2,mean=20,sd=5)
y2

polygon(c(0,x2,15),c(0,y2,0),col = 'yellow')

#2.Proportion of jobs take more than 25 minutes
p2 = pnorm(40,mean=20,sd=5)-pnorm(25,mean=20,sd=5)
p2

x1 = seq(25,40)
x1

y1 = dnorm(x1,mean=20,sd=5)
y1

polygon(c(25,x1,40),c(0,y1,0),col = 'red')

#3.Proportion of jobs taken between 15 and 25 minutes
p3 = pnorm(25,mean=20,sd=5)-pnorm(15,mean=20,sd=5)
p3

x3 = seq(15,25)
x3

y3 = dnorm(x3,mean=20,sd=5)
y3

polygon(c(15,x3,25),c(0,y3,0),col='green')

#Probability distribution 
data.frame(p1,p2,p3)

#Conclusion : Poisson distribution and normal distribution have been explored using R
