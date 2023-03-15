#problem-1
#import the inbuilt data set "cars"
data = cars
data

#Summary of the data set
summary(data)

#variance of "speed"
v1 = var(data$speed)
v1

#variance of "distance"
v2 = var(data$dist)
v2

#Covarnce between "speed" and "distance"
covariance = cov(data$speed,data$dist)
covariance

#or
covariance = var(data$speed,data$dist)
covariance

#correlation coefficient using Pearson's formula
corr = covariance/(sd(data$speed)*sd(data$dist))
corr

#or
corr = cor(data$speed,data$dist)
corr

#Test for association between paired samples
cor.test(data$speed,data$dist)

cor.test(data$speed,data$dist,method="pearson")

#Test for Spearman's correlation
cor.test(data$speed,data$dist,method="spearman")

#Visualize the samples
plot(data$speed,data$dist)

#Linear regression model of "speed" with respect to "dist"
regression1 = lm(data$speed~data$dist)
regression1

#visualise linear regression line 
abline(regression1)
summary(regression1)

#Linear regression model of "dist" with respect to "speed"
regression2 = lm(data$dist~data$speed)
regression2

#visualise 
abline(regression2)
 
#Problem-2

#The body weight and the BMI of the 12 school going children are given in the following table 
weight = c(15,26,27,2,25.5,27,32,18,22,20,26,24)
weight

bmi = c(13.35,16.12,16.74,16.00,13.59,15.73,15.65,13.85,16.07,12.8,13.65,14.42)
bmi

cor(weight,bmi)

model<-lm(bmi~weight)
summary.lm(model)

##BMI = intercept+weight*weight(25)
  11.364 + 0.343*25
##[1] 19.939
  #Conclusion; The simple correlation linear regression equation have been computed and interpreted 
